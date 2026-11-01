package rx.internal.operators;

import android.support.v4.b02;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Cif;
import rx.Single;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class c3<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f34565do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f34566for;

    /* renamed from: if, reason: not valid java name */
    public final long f34567if;

    /* renamed from: new, reason: not valid java name */
    public final Cif f34568new;

    /* renamed from: try, reason: not valid java name */
    public final Single.OnSubscribe<? extends T> f34569try;

    /* renamed from: rx.internal.operators.c3$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> implements Action0 {

        /* renamed from: for, reason: not valid java name */
        public final AtomicBoolean f34570for = new AtomicBoolean();

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f34571if;

        /* renamed from: new, reason: not valid java name */
        public final Single.OnSubscribe<? extends T> f34572new;

        /* renamed from: rx.internal.operators.c3$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0516do<T> extends b02<T> {

            /* renamed from: if, reason: not valid java name */
            public final b02<? super T> f34573if;

            public C0516do(b02<? super T> b02Var) {
                this.f34573if = b02Var;
            }

            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(T t) {
                this.f34573if.mo416if(t);
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                this.f34573if.onError(th);
            }
        }

        public Cdo(b02<? super T> b02Var, Single.OnSubscribe<? extends T> onSubscribe) {
            this.f34571if = b02Var;
            this.f34572new = onSubscribe;
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f34570for.compareAndSet(false, true)) {
                try {
                    Single.OnSubscribe<? extends T> onSubscribe = this.f34572new;
                    if (onSubscribe == null) {
                        this.f34571if.onError(new TimeoutException());
                    } else {
                        C0516do c0516do = new C0516do(this.f34571if);
                        this.f34571if.m415do(c0516do);
                        onSubscribe.call(c0516do);
                    }
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            if (this.f34570for.compareAndSet(false, true)) {
                try {
                    this.f34571if.mo416if(t);
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            if (!this.f34570for.compareAndSet(false, true)) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            try {
                this.f34571if.onError(th);
            } finally {
                unsubscribe();
            }
        }
    }

    public c3(Single.OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Cif cif, Single.OnSubscribe<? extends T> onSubscribe2) {
        this.f34565do = onSubscribe;
        this.f34567if = j;
        this.f34566for = timeUnit;
        this.f34568new = cif;
        this.f34569try = onSubscribe2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var, this.f34569try);
        Cif.Cdo cdoMo971do = this.f34568new.mo971do();
        cdo.m415do(cdoMo971do);
        b02Var.m415do(cdo);
        cdoMo971do.mo38375for(cdo, this.f34567if, this.f34566for);
        this.f34565do.call(cdo);
    }
}
