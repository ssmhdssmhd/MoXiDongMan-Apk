package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeOperator;
import io.reactivex.MaybeSource;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class a<T, R> extends Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeOperator<? extends R, ? super T> f26084if;

    public a(MaybeSource<T> maybeSource, MaybeOperator<? extends R, ? super T> maybeOperator) {
        super(maybeSource);
        this.f26084if = maybeOperator;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        try {
            this.f26120do.subscribe((MaybeObserver) Cif.m29468else(this.f26084if.apply(maybeObserver), "The operator returned a null MaybeObserver"));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, maybeObserver);
        }
    }
}
