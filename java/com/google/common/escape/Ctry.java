package com.google.common.escape;

import android.support.v4.ki0;

@ki0(emulated = true)
/* renamed from: com.google.common.escape.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final ThreadLocal<char[]> f14928do = new Cdo();

    /* renamed from: com.google.common.escape.try$do, reason: invalid class name */
    public static class Cdo extends ThreadLocal<char[]> {
        @Override // java.lang.ThreadLocal
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    private Ctry() {
    }

    /* renamed from: do, reason: not valid java name */
    public static char[] m16615do() {
        return f14928do.get();
    }
}
