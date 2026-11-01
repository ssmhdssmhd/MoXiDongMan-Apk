package rx.internal.operators;

import android.support.v4.b02;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Single;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class m2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f35096do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f35097for;

    /* renamed from: if, reason: not valid java name */
    public final long f35098if;

    /* renamed from: new, reason: not valid java name */
    public final Cif f35099new;

    /* renamed from: rx.internal.operators.m2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> implements Action0 {

        /* renamed from: case, reason: not valid java name */
        public T f35100case;

        /* renamed from: else, reason: not valid java name */
        public Throwable f35101else;

        /* renamed from: for, reason: not valid java name */
        public final Cif.Cdo f35102for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f35103if;

        /* renamed from: new, reason: not valid java name */
        public final long f35104new;

        /* renamed from: try, reason: not valid java name */
        public final TimeUnit f35105try;

        public Cdo(b02<? super T> b02Var, Cif.Cdo cdo, long j, TimeUnit timeUnit) {
            this.f35103if = b02Var;
            this.f35102for = cdo;
            this.f35104new = j;
            this.f35105try = timeUnit;
        }

        @Override // rx.functions.Action0
        public void call() {
            try {
                Throwable th = this.f35101else;
                if (th != null) {
                    this.f35101else = null;
                    this.f35103if.onError(th);
                } else {
                    T t = this.f35100case;
                    this.f35100case = null;
                    this.f35103if.mo416if(t);
                }
            } finally {
                this.f35102for.unsubscribe();
            }
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f35100case = t;
            this.f35102for.mo38375for(this, this.f35104new, this.f35105try);
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f35101else = th;
            this.f35102for.mo38375for(this, this.f35104new, this.f35105try);
        }
    }

    public m2(Single.OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Cif cif) {
        this.f35096do = onSubscribe;
        this.f35099new = cif;
        this.f35098if = j;
        this.f35097for = timeUnit;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cif.Cdo cdoMo971do = this.f35099new.mo971do();
        Cdo cdo = new Cdo(b02Var, cdoMo971do, this.f35098if, this.f35097for);
        b02Var.m415do(cdoMo971do);
        b02Var.m415do(cdo);
        this.f35096do.call(cdo);
    }
}
