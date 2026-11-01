package io.reactivex.disposables;

import android.support.v4.b41;
import io.reactivex.functions.Action;
import io.reactivex.internal.util.Ccase;

/* renamed from: io.reactivex.disposables.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo extends Cnew<Action> {
    private static final long serialVersionUID = -8219729196779211169L;

    public Cdo(Action action) {
        super(action);
    }

    @Override // io.reactivex.disposables.Cnew
    public void onDisposed(@b41 Action action) {
        try {
            action.run();
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }
}
