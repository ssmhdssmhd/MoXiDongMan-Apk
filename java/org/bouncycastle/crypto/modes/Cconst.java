package org.bouncycastle.crypto.modes;

import android.support.v4.q3;

/* renamed from: org.bouncycastle.crypto.modes.const, reason: invalid class name */
/* loaded from: classes3.dex */
class Cconst {
    /* renamed from: do, reason: not valid java name */
    public static byte[] m33725do(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, bArr.length - i, bArr2, 0, i);
        return bArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m33726for(byte[] bArr, int i, int i2) {
        if (bArr.length < i + i2) {
            i = bArr.length - i2;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, i2, bArr2, 0, i);
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m33727if(byte[] bArr, int i) {
        return q3.m6397volatile(bArr, i);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m33728new(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }
}
