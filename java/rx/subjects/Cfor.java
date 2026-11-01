package rx.subjects;

import android.support.v4.s80;
import android.support.v4.u22;
import android.support.v4.u6;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;

/* renamed from: rx.subjects.for, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfor<T> extends u22<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Cif<T> f36206if;

    /* renamed from: rx.subjects.for$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Producer, Subscription, Observer<T> {
        private static final long serialVersionUID = 6451806817170721536L;
        public final y22<? super T> actual;
        public final Cif<T> parent;
        public long produced;

        public Cdo(Cif<T> cif, y22<? super T> y22Var) {
            this.parent = cif;
            this.actual = y22Var;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (get() != Long.MIN_VALUE) {
                this.actual.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.actual.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j = get();
            if (j != Long.MIN_VALUE) {
                long j2 = this.produced;
                if (j != j2) {
                    this.produced = j2 + 1;
                    this.actual.onNext(t);
                } else {
                    unsubscribe();
                    this.actual.onError(new zz0("PublishSubject: could not emit value due to lack of requests"));
                }
            }
        }

        @Override // rx.Producer
        public void request(long j) {
            long j2;
            if (u6.m8253break(j)) {
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE) {
                        return;
                    }
                } while (!compareAndSet(j2, u6.m8255do(j2, j)));
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.remove(this);
            }
        }
    }

    /* renamed from: rx.subjects.for$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Cdo<T>[]> implements Observable.OnSubscribe<T>, Observer<T> {
        public static final Cdo[] EMPTY = new Cdo[0];
        public static final Cdo[] TERMINATED = new Cdo[0];
        private static final long serialVersionUID = -7568940796666027140L;
        public Throwable error;

        public Cif() {
            lazySet(EMPTY);
        }

        public boolean add(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = get();
                if (cdoArr == TERMINATED) {
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        @Override // rx.Observer
        public void onCompleted() {
            for (Cdo<T> cdo : getAndSet(TERMINATED)) {
                cdo.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.error = th;
            ArrayList arrayList = null;
            for (Cdo<T> cdo : getAndSet(TERMINATED)) {
                try {
                    cdo.onError(th);
                } catch (Throwable th2) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(th2);
                }
            }
            s80.m7299new(arrayList);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            for (Cdo<T> cdo : get()) {
                cdo.onNext(t);
            }
        }

        public void remove(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = get();
                if (cdoArr == TERMINATED || cdoArr == EMPTY) {
                    return;
                }
                int length = cdoArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cdoArr[i2] == cdo) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cdoArr2 = EMPTY;
                } else {
                    Cdo[] cdoArr3 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                    cdoArr2 = cdoArr3;
                }
            } while (!compareAndSet(cdoArr, cdoArr2));
        }

        @Override // rx.functions.Action1
        public void call(y22<? super T> y22Var) {
            Cdo<T> cdo = new Cdo<>(this, y22Var);
            y22Var.add(cdo);
            y22Var.setProducer(cdo);
            if (add(cdo)) {
                if (cdo.isUnsubscribed()) {
                    remove(cdo);
                }
            } else {
                Throwable th = this.error;
                if (th != null) {
                    y22Var.onError(th);
                } else {
                    y22Var.onCompleted();
                }
            }
        }
    }

    public Cfor(Cif<T> cif) {
        super(cif);
        this.f36206if = cif;
    }

    public static <T> Cfor<T> g6() {
        return new Cfor<>(new Cif());
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36206if.get().length != 0;
    }

    public Throwable h6() {
        if (this.f36206if.get() == Cif.TERMINATED) {
            return this.f36206if.error;
        }
        return null;
    }

    public boolean i6() {
        return this.f36206if.get() == Cif.TERMINATED && this.f36206if.error == null;
    }

    public boolean j6() {
        return this.f36206if.get() == Cif.TERMINATED && this.f36206if.error != null;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f36206if.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f36206if.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36206if.onNext(t);
    }
}
