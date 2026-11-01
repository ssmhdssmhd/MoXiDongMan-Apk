package rx.internal.operators;

import android.support.v4.dq;
import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.internal.util.Ctry;

/* loaded from: classes4.dex */
public final class k2<R> implements Observable.Operator<R, Observable<?>[]> {

    /* renamed from: do, reason: not valid java name */
    public final FuncN<? extends R> f35024do;

    /* renamed from: rx.internal.operators.k2$do, reason: invalid class name */
    public static final class Cdo<R> extends AtomicLong {
        public static final int THRESHOLD;
        private static final long serialVersionUID = 5995274816189928317L;
        public final Observer<? super R> child;
        private final dq childSubscription;
        public int emitted;
        private AtomicLong requested;
        private volatile Object[] subscribers;
        private final FuncN<? extends R> zipFunction;

        /* renamed from: rx.internal.operators.k2$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0530do extends y22 {

            /* renamed from: do, reason: not valid java name */
            public final Ctry f35025do = Ctry.m38931case();

            public C0530do() {
            }

            /* renamed from: do, reason: not valid java name */
            public void m38595do(long j) {
                request(j);
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f35025do.m38935class();
                Cdo.this.tick();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.child.onError(th);
            }

            @Override // rx.Observer
            public void onNext(Object obj) {
                try {
                    this.f35025do.m38938final(obj);
                } catch (zz0 e) {
                    onError(e);
                }
                Cdo.this.tick();
            }

            @Override // android.support.v4.y22
            public void onStart() {
                request(Ctry.f35868new);
            }
        }

        static {
            double d = Ctry.f35868new;
            Double.isNaN(d);
            THRESHOLD = (int) (d * 0.7d);
        }

        public Cdo(y22<? super R> y22Var, FuncN<? extends R> funcN) {
            dq dqVar = new dq();
            this.childSubscription = dqVar;
            this.child = y22Var;
            this.zipFunction = funcN;
            y22Var.add(dqVar);
        }

        public void start(Observable[] observableArr, AtomicLong atomicLong) {
            Object[] objArr = new Object[observableArr.length];
            for (int i = 0; i < observableArr.length; i++) {
                C0530do c0530do = new C0530do();
                objArr[i] = c0530do;
                this.childSubscription.m1488do(c0530do);
            }
            this.requested = atomicLong;
            this.subscribers = objArr;
            for (int i2 = 0; i2 < observableArr.length; i2++) {
                observableArr[i2].r5((C0530do) objArr[i2]);
            }
        }

        public void tick() {
            Object[] objArr = this.subscribers;
            if (objArr == null || getAndIncrement() != 0) {
                return;
            }
            int length = objArr.length;
            Observer<? super R> observer = this.child;
            AtomicLong atomicLong = this.requested;
            while (true) {
                Object[] objArr2 = new Object[length];
                boolean z = true;
                for (int i = 0; i < length; i++) {
                    Ctry ctry = ((C0530do) objArr[i]).f35025do;
                    Object objM38943super = ctry.m38943super();
                    if (objM38943super == null) {
                        z = false;
                    } else {
                        if (ctry.m38944this(objM38943super)) {
                            observer.onCompleted();
                            this.childSubscription.unsubscribe();
                            return;
                        }
                        objArr2[i] = ctry.m38940goto(objM38943super);
                    }
                }
                if (z && atomicLong.get() > 0) {
                    try {
                        observer.onNext(this.zipFunction.call(objArr2));
                        atomicLong.decrementAndGet();
                        this.emitted++;
                        for (Object obj : objArr) {
                            Ctry ctry2 = ((C0530do) obj).f35025do;
                            ctry2.m38945throw();
                            if (ctry2.m38944this(ctry2.m38943super())) {
                                observer.onCompleted();
                                this.childSubscription.unsubscribe();
                                return;
                            }
                        }
                        if (this.emitted > THRESHOLD) {
                            for (Object obj2 : objArr) {
                                ((C0530do) obj2).m38595do(this.emitted);
                            }
                            this.emitted = 0;
                        }
                    } catch (Throwable th) {
                        s80.m7300this(th, observer, objArr2);
                        return;
                    }
                } else if (decrementAndGet() <= 0) {
                    return;
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.k2$for, reason: invalid class name */
    public final class Cfor extends y22<Observable[]> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f35027do;

        /* renamed from: for, reason: not valid java name */
        public final Cif<R> f35028for;

        /* renamed from: if, reason: not valid java name */
        public final Cdo<R> f35029if;

        /* renamed from: new, reason: not valid java name */
        public boolean f35030new;

        public Cfor(y22<? super R> y22Var, Cdo<R> cdo, Cif<R> cif) {
            this.f35027do = y22Var;
            this.f35029if = cdo;
            this.f35028for = cif;
        }

        @Override // rx.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Observable[] observableArr) {
            if (observableArr == null || observableArr.length == 0) {
                this.f35027do.onCompleted();
            } else {
                this.f35030new = true;
                this.f35029if.start(observableArr, this.f35028for);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35030new) {
                return;
            }
            this.f35027do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35027do.onError(th);
        }
    }

    /* renamed from: rx.internal.operators.k2$if, reason: invalid class name */
    public static final class Cif<R> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1216676403723546796L;
        public final Cdo<R> zipper;

        public Cif(Cdo<R> cdo) {
            this.zipper = cdo;
        }

        @Override // rx.Producer
        public void request(long j) {
            u6.m8259if(this, j);
            this.zipper.tick();
        }
    }

    public k2(FuncN<? extends R> funcN) {
        this.f35024do = funcN;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super Observable[]> call(y22<? super R> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f35024do);
        Cif cif = new Cif(cdo);
        Cfor cfor = new Cfor(y22Var, cdo, cif);
        y22Var.add(cfor);
        y22Var.setProducer(cif);
        return cfor;
    }

    public k2(Func2 func2) {
        this.f35024do = rx.functions.Cif.m38360else(func2);
    }

    public k2(Func3 func3) {
        this.f35024do = rx.functions.Cif.m38363goto(func3);
    }

    public k2(Func4 func4) {
        this.f35024do = rx.functions.Cif.m38366this(func4);
    }

    public k2(Func5 func5) {
        this.f35024do = rx.functions.Cif.m38354break(func5);
    }

    public k2(Func6 func6) {
        this.f35024do = rx.functions.Cif.m38356catch(func6);
    }

    public k2(Func7 func7) {
        this.f35024do = rx.functions.Cif.m38357class(func7);
    }

    public k2(Func8 func8) {
        this.f35024do = rx.functions.Cif.m38358const(func8);
    }

    public k2(Func9 func9) {
        this.f35024do = rx.functions.Cif.m38361final(func9);
    }
}
