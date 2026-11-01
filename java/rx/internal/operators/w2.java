package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import java.util.Arrays;
import rx.Single;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class w2<T, Resource> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Func0<Resource> f35532do;

    /* renamed from: for, reason: not valid java name */
    public final Action1<? super Resource> f35533for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super Resource, ? extends Single<? extends T>> f35534if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f35535new;

    /* renamed from: rx.internal.operators.w2$do, reason: invalid class name */
    public class Cdo extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ b02 f35536for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f35537if;

        public Cdo(Object obj, b02 b02Var) {
            this.f35537if = obj;
            this.f35536for = b02Var;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            w2 w2Var = w2.this;
            if (w2Var.f35535new) {
                try {
                    w2Var.f35533for.call((Object) this.f35537if);
                } catch (Throwable th) {
                    s80.m7301try(th);
                    this.f35536for.onError(th);
                    return;
                }
            }
            this.f35536for.mo416if(t);
            w2 w2Var2 = w2.this;
            if (w2Var2.f35535new) {
                return;
            }
            try {
                w2Var2.f35533for.call((Object) this.f35537if);
            } catch (Throwable th2) {
                s80.m7301try(th2);
                Cif.m39151protected(th2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            w2.this.m38782if(this.f35536for, this.f35537if, th);
        }
    }

    public w2(Func0<Resource> func0, Func1<? super Resource, ? extends Single<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        this.f35532do = func0;
        this.f35534if = func1;
        this.f35533for = action1;
        this.f35535new = z;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        try {
            Resource resourceCall = this.f35532do.call();
            try {
                Single<? extends T> singleCall = this.f35534if.call(resourceCall);
                if (singleCall == null) {
                    m38782if(b02Var, resourceCall, new NullPointerException("The single"));
                    return;
                }
                Cdo cdo = new Cdo(resourceCall, b02Var);
                b02Var.m415do(cdo);
                singleCall.u(cdo);
            } catch (Throwable th) {
                m38782if(b02Var, resourceCall, th);
            }
        } catch (Throwable th2) {
            s80.m7301try(th2);
            b02Var.onError(th2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m38782if(b02<? super T> b02Var, Resource resource, Throwable th) {
        s80.m7301try(th);
        if (this.f35535new) {
            try {
                this.f35533for.call(resource);
            } catch (Throwable th2) {
                s80.m7301try(th2);
                th = new rx.exceptions.Cdo(Arrays.asList(th, th2));
            }
        }
        b02Var.onError(th);
        if (this.f35535new) {
            return;
        }
        try {
            this.f35533for.call(resource);
        } catch (Throwable th3) {
            s80.m7301try(th3);
            Cif.m39151protected(th3);
        }
    }
}
