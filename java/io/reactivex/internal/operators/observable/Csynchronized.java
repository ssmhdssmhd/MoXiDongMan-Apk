package io.reactivex.internal.operators.observable;

import android.support.v4.l10;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.observable.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csynchronized<T> extends Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    private final Action f26892for;

    /* renamed from: if, reason: not valid java name */
    private final Consumer<? super Disposable> f26893if;

    public Csynchronized(Cnew<T> cnew, Consumer<? super Disposable> consumer, Action action) {
        super(cnew);
        this.f26893if = consumer;
        this.f26892for = action;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new l10(observer, this.f26893if, this.f26892for));
    }
}
