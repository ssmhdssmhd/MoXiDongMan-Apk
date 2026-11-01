package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;
import rx.internal.util.Cnew;

/* renamed from: rx.internal.operators.case, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ccase<T> extends Observable<T> {

    /* renamed from: if, reason: not valid java name */
    private final Cdo<T> f34574if;

    /* renamed from: rx.internal.operators.case$do, reason: invalid class name */
    public static final class Cdo<T> extends Cnew implements Observer<T> {

        /* renamed from: catch, reason: not valid java name */
        public static final Cfor<?>[] f34575catch = new Cfor[0];

        /* renamed from: break, reason: not valid java name */
        public boolean f34576break;

        /* renamed from: case, reason: not valid java name */
        public final Observable<? extends T> f34577case;

        /* renamed from: else, reason: not valid java name */
        public final ww1 f34578else;

        /* renamed from: goto, reason: not valid java name */
        public volatile Cfor<?>[] f34579goto;

        /* renamed from: this, reason: not valid java name */
        public volatile boolean f34580this;

        /* renamed from: rx.internal.operators.case$do$do, reason: invalid class name and collision with other inner class name */
        public class C0517do extends y22<T> {
            public C0517do() {
            }

            @Override // rx.Observer
            public void onCompleted() throws Throwable {
                Cdo.this.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) throws Throwable {
                Cdo.this.onError(th);
            }

            @Override // rx.Observer
            public void onNext(T t) throws Throwable {
                Cdo.this.onNext(t);
            }
        }

        public Cdo(Observable<? extends T> observable, int i) {
            super(i);
            this.f34577case = observable;
            this.f34579goto = f34575catch;
            this.f34578else = new ww1();
        }

        /* renamed from: break, reason: not valid java name */
        public void m38421break() throws Throwable {
            for (Cfor<?> cfor : this.f34579goto) {
                cfor.replay();
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public void m38422catch(Cfor<T> cfor) {
            synchronized (this.f34578else) {
                Cfor<?>[] cforArr = this.f34579goto;
                int length = cforArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cforArr[i2].equals(cfor)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    this.f34579goto = f34575catch;
                    return;
                }
                Cfor<?>[] cforArr2 = new Cfor[length - 1];
                System.arraycopy(cforArr, 0, cforArr2, 0, i);
                System.arraycopy(cforArr, i + 1, cforArr2, i, (length - i) - 1);
                this.f34579goto = cforArr2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: goto, reason: not valid java name */
        public void m38423goto(Cfor<T> cfor) {
            synchronized (this.f34578else) {
                Cfor<?>[] cforArr = this.f34579goto;
                int length = cforArr.length;
                Cfor<?>[] cforArr2 = new Cfor[length + 1];
                System.arraycopy(cforArr, 0, cforArr2, 0, length);
                cforArr2[length] = cfor;
                this.f34579goto = cforArr2;
            }
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            if (this.f34576break) {
                return;
            }
            this.f34576break = true;
            m38922do(Creturn.m38688if());
            this.f34578else.unsubscribe();
            m38421break();
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            if (this.f34576break) {
                return;
            }
            this.f34576break = true;
            m38922do(Creturn.m38686for(th));
            this.f34578else.unsubscribe();
            m38421break();
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            if (this.f34576break) {
                return;
            }
            m38922do(Creturn.m38682break(t));
            m38421break();
        }

        /* renamed from: this, reason: not valid java name */
        public void m38424this() {
            C0517do c0517do = new C0517do();
            this.f34578else.m9298if(c0517do);
            this.f34577case.r5(c0517do);
            this.f34580this = true;
        }
    }

    /* renamed from: rx.internal.operators.case$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = -2557562030197141021L;
        public final y22<? super T> child;
        public Object[] currentBuffer;
        public int currentIndexInBuffer;
        public boolean emitting;
        public int index;
        public boolean missed;
        public final Cdo<T> state;

        public Cfor(y22<? super T> y22Var, Cdo<T> cdo) {
            this.child = y22Var;
            this.state = cdo;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() < 0;
        }

        public long produced(long j) {
            return addAndGet(-j);
        }

        /* JADX WARN: Removed duplicated region for block: B:105:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void replay() throws Throwable {
            boolean z;
            y22<? super T> y22Var;
            synchronized (this) {
                boolean z2 = true;
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                try {
                    y22Var = this.child;
                } catch (Throwable th) {
                    th = th;
                    z = false;
                }
                while (true) {
                    long j = get();
                    if (j < 0) {
                        return;
                    }
                    int iM38927try = this.state.m38927try();
                    if (iM38927try != 0) {
                        Object[] objArrM38924for = this.currentBuffer;
                        if (objArrM38924for == null) {
                            objArrM38924for = this.state.m38924for();
                            this.currentBuffer = objArrM38924for;
                        }
                        int length = objArrM38924for.length - 1;
                        int i = this.index;
                        int i2 = this.currentIndexInBuffer;
                        try {
                            if (j == 0) {
                                Object obj = objArrM38924for[i2];
                                if (Creturn.m38683case(obj)) {
                                    y22Var.onCompleted();
                                    unsubscribe();
                                    return;
                                } else if (Creturn.m38685else(obj)) {
                                    y22Var.onError(Creturn.m38689new(obj));
                                    unsubscribe();
                                    return;
                                }
                            } else if (j > 0) {
                                int i3 = 0;
                                while (i < iM38927try && j > 0) {
                                    if (y22Var.isUnsubscribed()) {
                                        return;
                                    }
                                    if (i2 == length) {
                                        objArrM38924for = (Object[]) objArrM38924for[length];
                                        i2 = 0;
                                    }
                                    Object obj2 = objArrM38924for[i2];
                                    try {
                                        if (Creturn.m38684do(y22Var, obj2)) {
                                            try {
                                                unsubscribe();
                                                return;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                z = true;
                                                try {
                                                    s80.m7301try(th);
                                                    unsubscribe();
                                                    if (Creturn.m38685else(obj2) || Creturn.m38683case(obj2)) {
                                                        return;
                                                    }
                                                    y22Var.onError(rx.exceptions.Cif.addValueAsLastCause(th, Creturn.m38691try(obj2)));
                                                    return;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                }
                                            }
                                        } else {
                                            i2++;
                                            i++;
                                            j--;
                                            i3++;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        z = false;
                                    }
                                }
                                if (y22Var.isUnsubscribed()) {
                                    return;
                                }
                                this.index = i;
                                this.currentIndexInBuffer = i2;
                                this.currentBuffer = objArrM38924for;
                                produced(i3);
                            }
                            synchronized (this) {
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            z = true;
                        }
                        throw th;
                    }
                    try {
                        synchronized (this) {
                            try {
                                if (!this.missed) {
                                    this.emitting = false;
                                    return;
                                }
                                this.missed = false;
                            } catch (Throwable th6) {
                                th = th6;
                                z2 = false;
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                    }
                    try {
                        throw th;
                    } catch (Throwable th8) {
                        z = z2;
                        th = th8;
                    }
                    if (!z) {
                        synchronized (this) {
                            this.emitting = false;
                        }
                    }
                    throw th;
                }
            }
        }

        @Override // rx.Producer
        public void request(long j) throws Throwable {
            long j2;
            long j3;
            do {
                j2 = get();
                if (j2 < 0) {
                    return;
                }
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = Long.MAX_VALUE;
                }
            } while (!compareAndSet(j2, j3));
            replay();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (get() < 0 || getAndSet(-1L) < 0) {
                return;
            }
            this.state.m38422catch(this);
        }
    }

    /* renamed from: rx.internal.operators.case$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicBoolean implements Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -2817751667698696782L;
        public final Cdo<T> state;

        public Cif(Cdo<T> cdo) {
            this.state = cdo;
        }

        @Override // rx.functions.Action1
        public void call(y22<? super T> y22Var) {
            Cfor<T> cfor = new Cfor<>(y22Var, this.state);
            this.state.m38423goto(cfor);
            y22Var.add(cfor);
            y22Var.setProducer(cfor);
            if (get() || !compareAndSet(false, true)) {
                return;
            }
            this.state.m38424this();
        }
    }

    private Ccase(Observable.OnSubscribe<T> onSubscribe, Cdo<T> cdo) {
        super(onSubscribe);
        this.f34574if = cdo;
    }

    public static <T> Ccase<T> e6(Observable<? extends T> observable) {
        return f6(observable, 16);
    }

    public static <T> Ccase<T> f6(Observable<? extends T> observable, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacityHint > 0 required");
        }
        Cdo cdo = new Cdo(observable, i);
        return new Ccase<>(new Cif(cdo), cdo);
    }

    public boolean g6() {
        return this.f34574if.f34579goto.length != 0;
    }

    public boolean h6() {
        return this.f34574if.f34580this;
    }
}
