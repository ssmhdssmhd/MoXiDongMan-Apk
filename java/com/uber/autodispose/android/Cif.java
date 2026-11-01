package com.uber.autodispose.android;

import android.view.View;
import com.uber.autodispose.ScopeProvider;
import io.reactivex.CompletableSource;
import java.util.Objects;

/* renamed from: com.uber.autodispose.android.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif implements ScopeProvider {

    /* renamed from: do, reason: not valid java name */
    private final View f20747do;

    private Cif(View view) {
        this.f20747do = view;
    }

    /* renamed from: do, reason: not valid java name */
    public static ScopeProvider m24567do(View view) {
        Objects.requireNonNull(view, "view == null");
        return new Cif(view);
    }

    @Override // com.uber.autodispose.ScopeProvider
    public CompletableSource requestScope() {
        return new Cdo(this.f20747do);
    }
}
