package io.reactivex.internal.util;

import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor implements Consumer<Disposable> {

    /* renamed from: do, reason: not valid java name */
    public Disposable f27439do;

    @Override // io.reactivex.functions.Consumer
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void accept(Disposable disposable) throws Exception {
        this.f27439do = disposable;
    }
}
