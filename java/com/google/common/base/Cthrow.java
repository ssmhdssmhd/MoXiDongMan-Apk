package com.google.common.base;

import android.support.v4.b51;
import android.support.v4.ki0;
import java.util.Arrays;

@ki0
/* renamed from: com.google.common.base.throw, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthrow extends Cbreak {
    private Cthrow() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m15205do(@b51 Object obj, @b51 Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: if, reason: not valid java name */
    public static int m15206if(@b51 Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
