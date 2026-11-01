package com.uber.autodispose;

import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.if, reason: invalid class name */
/* loaded from: classes2.dex */
enum Cif implements Disposable {
    DISPOSED;

    public static boolean dispose(AtomicReference<Disposable> atomicReference) {
        Disposable andSet;
        Disposable disposable = atomicReference.get();
        Cif cif = DISPOSED;
        if (disposable == cif || (andSet = atomicReference.getAndSet(cif)) == cif) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.dispose();
        return true;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return true;
    }
}
