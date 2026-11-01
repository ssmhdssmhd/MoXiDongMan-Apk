package com.uber.autodispose.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes2.dex */
public interface AutoDisposingObserver<T> extends Observer<T>, Disposable {
    Observer<? super T> delegateObserver();
}
