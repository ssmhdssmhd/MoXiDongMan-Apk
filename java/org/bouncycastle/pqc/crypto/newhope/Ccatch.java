package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.ab2;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.catch, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccatch {

    /* renamed from: do, reason: not valid java name */
    public static final int f32238do = 12287;

    /* renamed from: for, reason: not valid java name */
    public static final int f32239for = 262143;

    /* renamed from: if, reason: not valid java name */
    public static final int f32240if = 18;

    /* renamed from: do, reason: not valid java name */
    public static short m35641do(short s) {
        int i = s & ab2.f80for;
        return (short) (i - (((i * 5) >>> 16) * Cgoto.f32249for));
    }

    /* renamed from: if, reason: not valid java name */
    public static short m35642if(int i) {
        return (short) (((((i * f32238do) & f32239for) * Cgoto.f32249for) + i) >>> 18);
    }
}
