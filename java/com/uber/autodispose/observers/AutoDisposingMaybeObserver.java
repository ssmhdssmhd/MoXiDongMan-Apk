package com.uber.autodispose.observers;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;

/* loaded from: classes2.dex */
public interface AutoDisposingMaybeObserver<T> extends MaybeObserver<T>, Disposable {
    MaybeObserver<? super T> delegateObserver();
}
