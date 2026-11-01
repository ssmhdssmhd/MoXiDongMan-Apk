package com.uber.autodispose;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;

/* renamed from: com.uber.autodispose.case, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccase extends np implements CompletableSubscribeProxy {

    /* renamed from: do, reason: not valid java name */
    private final np f20762do;

    /* renamed from: if, reason: not valid java name */
    private final CompletableSource f20763if;

    public Ccase(np npVar, CompletableSource completableSource) {
        this.f20762do = npVar;
        this.f20763if = completableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f20762do.subscribe(new Cfinal(this.f20763if, completableObserver));
    }
}
