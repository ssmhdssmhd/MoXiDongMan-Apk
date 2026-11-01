package rx.internal.operators;

import android.support.v4.b02;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Single;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class b3<T, U> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f34532do;

    /* renamed from: if, reason: not valid java name */
    public final Single<? extends U> f34533if;

    /* renamed from: rx.internal.operators.b3$do, reason: invalid class name */
    public static final class Cdo<T, U> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final AtomicBoolean f34534for = new AtomicBoolean();

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f34535if;

        /* renamed from: new, reason: not valid java name */
        public final b02<U> f34536new;

        /* renamed from: rx.internal.operators.b3$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0514do extends b02<U> {
            public C0514do() {
            }

            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(U u) {
                onError(new CancellationException("Single::takeUntil(Single) - Stream was canceled before emitting a terminal event."));
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                Cdo.this.onError(th);
            }
        }

        public Cdo(b02<? super T> b02Var) {
            this.f34535if = b02Var;
            C0514do c0514do = new C0514do();
            this.f34536new = c0514do;
            m415do(c0514do);
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            if (this.f34534for.compareAndSet(false, true)) {
                unsubscribe();
                this.f34535if.mo416if(t);
            }
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            if (!this.f34534for.compareAndSet(false, true)) {
                Cif.m39151protected(th);
            } else {
                unsubscribe();
                this.f34535if.onError(th);
            }
        }
    }

    public b3(Single.OnSubscribe<T> onSubscribe, Single<? extends U> single) {
        this.f34532do = onSubscribe;
        this.f34533if = single;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        b02Var.m415do(cdo);
        this.f34533if.u(cdo.f34536new);
        this.f34532do.call(cdo);
    }
}
