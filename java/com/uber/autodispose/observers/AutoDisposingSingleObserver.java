package com.uber.autodispose.observers;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;

/* loaded from: classes2.dex */
public interface AutoDisposingSingleObserver<T> extends SingleObserver<T>, Disposable {
    SingleObserver<? super T> delegateObserver();
}
