package com.uber.autodispose;

import android.support.v4.fy0;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;

/* renamed from: com.uber.autodispose.this, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthis<T> extends fy0<T> implements MaybeSubscribeProxy<T> {

    /* renamed from: do, reason: not valid java name */
    private final MaybeSource<T> f20802do;

    /* renamed from: if, reason: not valid java name */
    private final CompletableSource f20803if;

    public Cthis(MaybeSource<T> maybeSource, CompletableSource completableSource) {
        this.f20802do = maybeSource;
        this.f20803if = completableSource;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f20802do.subscribe(new Csuper(this.f20803if, maybeObserver));
    }
}
