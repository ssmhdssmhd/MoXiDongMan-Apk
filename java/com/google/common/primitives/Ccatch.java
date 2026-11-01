package com.google.common.primitives;

import android.support.v4.ki0;

@ki0
/* renamed from: com.google.common.primitives.catch, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccatch {

    /* renamed from: do, reason: not valid java name */
    public final String f15494do;

    /* renamed from: if, reason: not valid java name */
    public final int f15495if;

    private Ccatch(String str, int i) {
        this.f15494do = str;
        this.f15495if = i;
    }

    /* renamed from: do, reason: not valid java name */
    public static Ccatch m17506do(String str) {
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char cCharAt = str.charAt(0);
        int i = 16;
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (cCharAt == '#') {
            str = str.substring(1);
        } else if (cCharAt != '0' || str.length() <= 1) {
            i = 10;
        } else {
            str = str.substring(1);
            i = 8;
        }
        return new Ccatch(str, i);
    }
}
