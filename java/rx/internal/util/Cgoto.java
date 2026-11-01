package rx.internal.util;

import android.support.v4.b02;
import rx.Cif;
import rx.Single;
import rx.functions.Action0;
import rx.functions.Func1;

/* renamed from: rx.internal.util.goto, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cgoto<T> extends Single<T> {

    /* renamed from: if, reason: not valid java name */
    public final T f35839if;

    /* renamed from: rx.internal.util.goto$do, reason: invalid class name */
    public class Cdo implements Single.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f35840do;

        public Cdo(Object obj) {
            this.f35840do = obj;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            b02Var.mo416if((Object) this.f35840do);
        }
    }

    /* renamed from: rx.internal.util.goto$for, reason: invalid class name */
    public static final class Cfor<T> implements Single.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        private final rx.internal.schedulers.Cif f35841do;

        /* renamed from: if, reason: not valid java name */
        private final T f35842if;

        public Cfor(rx.internal.schedulers.Cif cif, T t) {
            this.f35841do = cif;
            this.f35842if = t;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            b02Var.m415do(this.f35841do.m38851new(new Ctry(b02Var, this.f35842if)));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.internal.util.goto$if, reason: invalid class name */
    public class Cif<R> implements Single.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35843do;

        /* renamed from: rx.internal.util.goto$if$do, reason: invalid class name */
        public class Cdo extends b02<R> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ b02 f35846if;

            public Cdo(b02 b02Var) {
                this.f35846if = b02Var;
            }

            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(R r) {
                this.f35846if.mo416if(r);
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                this.f35846if.onError(th);
            }
        }

        public Cif(Func1 func1) {
            this.f35843do = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super R> b02Var) {
            Single single = (Single) this.f35843do.call(Cgoto.this.f35839if);
            if (single instanceof Cgoto) {
                b02Var.mo416if(((Cgoto) single).f35839if);
                return;
            }
            Cdo cdo = new Cdo(b02Var);
            b02Var.m415do(cdo);
            single.u(cdo);
        }
    }

    /* renamed from: rx.internal.util.goto$new, reason: invalid class name */
    public static final class Cnew<T> implements Single.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        private final rx.Cif f35847do;

        /* renamed from: if, reason: not valid java name */
        private final T f35848if;

        public Cnew(rx.Cif cif, T t) {
            this.f35847do = cif;
            this.f35848if = t;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            Cif.Cdo cdoMo971do = this.f35847do.mo971do();
            b02Var.m415do(cdoMo971do);
            cdoMo971do.mo38376if(new Ctry(b02Var, this.f35848if));
        }
    }

    /* renamed from: rx.internal.util.goto$try, reason: invalid class name */
    public static final class Ctry<T> implements Action0 {

        /* renamed from: do, reason: not valid java name */
        private final b02<? super T> f35849do;

        /* renamed from: if, reason: not valid java name */
        private final T f35850if;

        public Ctry(b02<? super T> b02Var, T t) {
            this.f35849do = b02Var;
            this.f35850if = t;
        }

        @Override // rx.functions.Action0
        public void call() {
            try {
                this.f35849do.mo416if(this.f35850if);
            } catch (Throwable th) {
                this.f35849do.onError(th);
            }
        }
    }

    public Cgoto(T t) {
        super(new Cdo(t));
        this.f35839if = t;
    }

    public static <T> Cgoto<T> b0(T t) {
        return new Cgoto<>(t);
    }

    public T c0() {
        return this.f35839if;
    }

    public <R> Single<R> d0(Func1<? super T, ? extends Single<? extends R>> func1) {
        return Single.m38265const(new Cif(func1));
    }

    public Single<T> e0(rx.Cif cif) {
        return cif instanceof rx.internal.schedulers.Cif ? Single.m38265const(new Cfor((rx.internal.schedulers.Cif) cif, this.f35839if)) : Single.m38265const(new Cnew(cif, this.f35839if));
    }
}
