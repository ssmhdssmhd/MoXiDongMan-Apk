package org.chromium.base.supplier;

import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public interface Supplier<T> {

    /* renamed from: org.chromium.base.supplier.Supplier$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ boolean f33221do = false;
    }

    static {
        boolean z = Cdo.f33221do;
    }

    @Nullable
    T get();

    boolean hasValue();
}
