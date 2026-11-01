package com.uber.autodispose;

import android.support.v4.g91;
import android.support.v4.i5;
import android.support.v4.np;
import com.uber.autodispose.Cthrows;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Consumer;
import java.util.concurrent.Callable;

/* renamed from: com.uber.autodispose.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrows {
    private Cthrows() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ CompletableSource m24675for(ScopeProvider scopeProvider) throws Exception {
        try {
            return scopeProvider.requestScope();
        } catch (g91 e) {
            Consumer<? super g91> consumerM3269for = i5.m3269for();
            if (consumerM3269for == null) {
                return np.m5299instanceof(e);
            }
            consumerM3269for.accept(e);
            return np.m5304super();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static np m24676if(final ScopeProvider scopeProvider) {
        return np.m5305switch(new Callable() { // from class: android.support.v4.hs1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Cthrows.m24675for(scopeProvider);
            }
        });
    }
}
