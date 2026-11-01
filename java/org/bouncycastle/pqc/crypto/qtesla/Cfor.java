package org.bouncycastle.pqc.crypto.qtesla;

import android.support.v4.bf;
import android.support.v4.dq1;

/* renamed from: org.bouncycastle.pqc.crypto.qtesla.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor {

    /* renamed from: do, reason: not valid java name */
    public static final int f32286do = 168;

    /* renamed from: if, reason: not valid java name */
    public static final int f32287if = 136;

    /* renamed from: do, reason: not valid java name */
    public static void m35715do(byte[] bArr, int i, int i2, short s, byte[] bArr2, int i3, int i4) {
        bf bfVar = new bf(128, null, new byte[]{(byte) s, (byte) (s >> 8)});
        bfVar.update(bArr2, i3, i4);
        bfVar.doFinal(bArr, i, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m35716for(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        dq1 dq1Var = new dq1(128);
        dq1Var.update(bArr2, i3, i4);
        dq1Var.doFinal(bArr, i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35717if(byte[] bArr, int i, int i2, short s, byte[] bArr2, int i3, int i4) {
        bf bfVar = new bf(256, null, new byte[]{(byte) s, (byte) (s >> 8)});
        bfVar.update(bArr2, i3, i4);
        bfVar.doFinal(bArr, i, i2);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m35718new(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        dq1 dq1Var = new dq1(256);
        dq1Var.update(bArr2, i3, i4);
        dq1Var.doFinal(bArr, i, i2);
    }
}
