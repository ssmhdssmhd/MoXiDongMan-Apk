package com.uber.autodispose.lifecycle;

import android.support.v4.a51;
import android.support.v4.gl;
import android.support.v4.u10;
import com.uber.autodispose.ScopeProvider;
import io.reactivex.Cnew;
import io.reactivex.CompletableSource;

@u10("Use TestLifecycleScopeProvider instead")
/* loaded from: classes2.dex */
public interface LifecycleScopeProvider<E> extends ScopeProvider {
    @gl
    CorrespondingEventsFunction<E> correspondingEvents();

    @gl
    Cnew<E> lifecycle();

    @a51
    E peekLifecycle();

    @Override // com.uber.autodispose.ScopeProvider
    CompletableSource requestScope();
}
