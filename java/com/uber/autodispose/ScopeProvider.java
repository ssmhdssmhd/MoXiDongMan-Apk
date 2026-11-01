package com.uber.autodispose;

import android.support.v4.gl;
import android.support.v4.u10;
import io.reactivex.CompletableSource;

@u10("Use TestScopeProvider instead")
/* loaded from: classes2.dex */
public interface ScopeProvider {
    public static final ScopeProvider UNBOUND = new ScopeProvider() { // from class: android.support.v4.fs1
        @Override // com.uber.autodispose.ScopeProvider
        public final CompletableSource requestScope() {
            return np.v();
        }
    };

    @gl
    CompletableSource requestScope() throws Exception;
}
