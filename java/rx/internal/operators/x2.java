package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import java.util.Objects;
import rx.Single;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class x2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final Single<? extends T> f35575do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<Throwable, ? extends Single<? extends T>> f35576if;

    /* renamed from: rx.internal.operators.x2$do, reason: invalid class name */
    public static class Cdo implements Func1<Throwable, Single<? extends T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Single f35577do;

        public Cdo(Single single) {
            this.f35577do = single;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Single<? extends T> call(Throwable th) {
            return this.f35577do;
        }
    }

    /* renamed from: rx.internal.operators.x2$if, reason: invalid class name */
    public class Cif extends b02<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ b02 f35579if;

        public Cif(b02 b02Var) {
            this.f35579if = b02Var;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f35579if.mo416if(t);
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            try {
                x2.this.f35576if.call(th).u(this.f35579if);
            } catch (Throwable th2) {
                s80.m7293case(th2, this.f35579if);
            }
        }
    }

    private x2(Single<? extends T> single, Func1<Throwable, ? extends Single<? extends T>> func1) {
        Objects.requireNonNull(single, "originalSingle must not be null");
        Objects.requireNonNull(func1, "resumeFunctionInCaseOfError must not be null");
        this.f35575do = single;
        this.f35576if = func1;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> x2<T> m38792for(Single<? extends T> single, Single<? extends T> single2) {
        Objects.requireNonNull(single2, "resumeSingleInCaseOfError must not be null");
        return new x2<>(single, new Cdo(single2));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> x2<T> m38793if(Single<? extends T> single, Func1<Throwable, ? extends Single<? extends T>> func1) {
        return new x2<>(single, func1);
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cif cif = new Cif(b02Var);
        b02Var.m415do(cif);
        this.f35575do.u(cif);
    }
}
