package com.google.common.base;

import android.support.v4.ki0;

@ki0
/* renamed from: com.google.common.base.case, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Ccase {
    public static Ccase compile(String str) {
        return Cnative.m15117if(str);
    }

    public static boolean isPcreLike() {
        return Cnative.m15119this();
    }

    public abstract int flags();

    public abstract Ctry matcher(CharSequence charSequence);

    public abstract String pattern();

    public abstract String toString();
}
