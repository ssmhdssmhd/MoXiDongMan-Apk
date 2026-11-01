package io.reactivex.processors;

import android.support.v4.a01;
import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.r6;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.processors.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry<T> extends Cfor<T> {

    /* renamed from: new, reason: not valid java name */
    public static final Cdo[] f27531new = new Cdo[0];

    /* renamed from: try, reason: not valid java name */
    public static final Cdo[] f27532try = new Cdo[0];

    /* renamed from: for, reason: not valid java name */
    public Throwable f27533for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27534if = new AtomicReference<>(f27532try);

    /* renamed from: io.reactivex.processors.try$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 3562861878281475070L;
        public final Subscriber<? super T> downstream;
        public final Ctry<T> parent;

        public Cdo(Subscriber<? super T> subscriber, Ctry<T> ctry) {
            this.downstream = subscriber;
            this.parent = ctry;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.T7(this);
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        public boolean isFull() {
            return get() == 0;
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onError(th);
            } else {
                jp1.l(th);
            }
        }

        public void onNext(T t) {
            long j = get();
            if (j == Long.MIN_VALUE) {
                return;
            }
            if (j != 0) {
                this.downstream.onNext(t);
                r6.m6774case(this, 1L);
            } else {
                cancel();
                this.downstream.onError(new a01("Could not emit value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6777if(this, j);
            }
        }
    }

    @b41
    @gl
    public static <T> Ctry<T> R7() {
        return new Ctry<>();
    }

    @Override // io.reactivex.processors.Cfor
    @a51
    public Throwable L7() {
        if (this.f27534if.get() == f27531new) {
            return this.f27533for;
        }
        return null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        return this.f27534if.get() == f27531new && this.f27533for == null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27534if.get().length != 0;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        return this.f27534if.get() == f27531new && this.f27533for != null;
    }

    public boolean Q7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27534if.get();
            if (cdoArr == f27531new) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27534if.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    public boolean S7(T t) {
        if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        Cdo<T>[] cdoArr = this.f27534if.get();
        for (Cdo<T> cdo : cdoArr) {
            if (cdo.isFull()) {
                return false;
            }
        }
        for (Cdo<T> cdo2 : cdoArr) {
            cdo2.onNext(t);
        }
        return true;
    }

    public void T7(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27534if.get();
            if (cdoArr == f27531new || cdoArr == f27532try) {
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
                cdoArr2 = f27532try;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27534if.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo<T> cdo = new Cdo<>(subscriber, this);
        subscriber.onSubscribe(cdo);
        if (Q7(cdo)) {
            if (cdo.isCancelled()) {
                T7(cdo);
            }
        } else {
            Throwable th = this.f27533for;
            if (th != null) {
                subscriber.onError(th);
            } else {
                subscriber.onComplete();
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        Cdo<T>[] cdoArr = this.f27534if.get();
        Cdo<T>[] cdoArr2 = f27531new;
        if (cdoArr == cdoArr2) {
            return;
        }
        for (Cdo<T> cdo : this.f27534if.getAndSet(cdoArr2)) {
            cdo.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        Cdo<T>[] cdoArr = this.f27534if.get();
        Cdo<T>[] cdoArr2 = f27531new;
        if (cdoArr == cdoArr2) {
            jp1.l(th);
            return;
        }
        this.f27533for = th;
        for (Cdo<T> cdo : this.f27534if.getAndSet(cdoArr2)) {
            cdo.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (Cdo<T> cdo : this.f27534if.get()) {
            cdo.onNext(t);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f27534if.get() == f27531new) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }
}
