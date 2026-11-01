package com.uber.autodispose;

import android.support.v4.jz1;
import io.reactivex.CompletableSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;

/* renamed from: com.uber.autodispose.class, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cclass<T> extends jz1<T> implements SingleSubscribeProxy<T> {

    /* renamed from: do, reason: not valid java name */
    private final SingleSource<T> f20766do;

    /* renamed from: if, reason: not valid java name */
    private final CompletableSource f20767if;

    public Cclass(SingleSource<T> singleSource, CompletableSource completableSource) {
        this.f20766do = singleSource;
        this.f20767if = completableSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f20766do.subscribe(new Cwhile(this.f20767if, singleObserver));
    }
}
