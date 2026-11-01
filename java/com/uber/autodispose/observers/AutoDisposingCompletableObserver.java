package com.uber.autodispose.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;

/* loaded from: classes2.dex */
public interface AutoDisposingCompletableObserver extends CompletableObserver, Disposable {
    CompletableObserver delegateObserver();
}
