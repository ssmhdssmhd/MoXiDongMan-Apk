package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableOperator;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class a0<R, T> extends Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final ObservableOperator<? extends R, ? super T> f26377if;

    public a0(ObservableSource<T> observableSource, ObservableOperator<? extends R, ? super T> observableOperator) {
        super(observableSource);
        this.f26377if = observableOperator;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        try {
            this.f26500do.subscribe((Observer) Cif.m29468else(this.f26377if.apply(observer), "Operator " + this.f26377if + " returned a null Observer"));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
