package org.chromium.base.supplier;

import org.chromium.base.supplier.Supplier;

/* renamed from: org.chromium.base.supplier.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final /* synthetic */ class Cif {
    /* renamed from: do, reason: not valid java name */
    public static boolean m37202do(Supplier _this) {
        Object obj = _this.get();
        if (Supplier.Cdo.f33221do || obj == _this.get()) {
            return obj != null;
        }
        throw new AssertionError("Value provided by #get() must not change.");
    }
}
