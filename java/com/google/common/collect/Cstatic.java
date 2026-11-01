package com.google.common.collect;

import android.support.v4.ki0;

@ki0
/* renamed from: com.google.common.collect.static, reason: invalid class name */
/* loaded from: classes2.dex */
public enum Cstatic {
    OPEN(false),
    CLOSED(true);

    public final boolean inclusive;

    Cstatic(boolean z) {
        this.inclusive = z;
    }

    public static Cstatic forBoolean(boolean z) {
        return z ? CLOSED : OPEN;
    }

    public Cstatic flip() {
        return forBoolean(!this.inclusive);
    }
}
