package com.facebook.soloader;

import android.annotation.TargetApi;
import android.os.Trace;
import android.support.v4.w10;
import android.support.v4.y41;

@w10
@TargetApi(18)
/* renamed from: com.facebook.soloader.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final int f10633do = 127;

    /* renamed from: do, reason: not valid java name */
    public static void m12159do(String str, @y41 String str2, String str3) {
        String str4 = str + str2 + str3;
        if (str4.length() > 127 && str2 != null) {
            str4 = str + str2.substring(0, (127 - str.length()) - str3.length()) + str3;
        }
        Trace.beginSection(str4);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m12160if() {
        Trace.endSection();
    }
}
