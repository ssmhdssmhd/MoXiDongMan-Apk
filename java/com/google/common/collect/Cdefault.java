package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;

@ki0
/* renamed from: com.google.common.collect.default, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdefault {
    /* renamed from: do, reason: not valid java name */
    public static void m15740do(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public static long m15741for(long j, String str) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + j);
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static int m15742if(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m15743new(int i, String str) {
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " must be positive but was: " + i);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m15744try(boolean z) {
        af1.u(z, "no calls to next() since the last call to remove()");
    }
}
