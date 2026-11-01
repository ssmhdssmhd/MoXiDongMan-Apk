package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.aq1;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse {

    /* renamed from: do, reason: not valid java name */
    private static final boolean f32241do = false;

    /* renamed from: for, reason: not valid java name */
    public static final int f32242for = 1024;

    /* renamed from: if, reason: not valid java name */
    public static final int f32243if = 32;

    /* renamed from: new, reason: not valid java name */
    public static final int f32244new = 1824;

    /* renamed from: try, reason: not valid java name */
    public static final int f32245try = 2048;

    /* renamed from: case, reason: not valid java name */
    public static void m35644case(SecureRandom secureRandom, byte[] bArr, short[] sArr) {
        byte[] bArr2 = new byte[32];
        secureRandom.nextBytes(bArr2);
        m35646else(bArr2);
        short[] sArr2 = new short[1024];
        m35652try(sArr2, bArr2);
        byte[] bArr3 = new byte[32];
        secureRandom.nextBytes(bArr3);
        Cthis.m35667new(sArr, bArr3, (byte) 0);
        Cthis.m35665goto(sArr);
        short[] sArr3 = new short[1024];
        Cthis.m35667new(sArr3, bArr3, (byte) 1);
        Cthis.m35665goto(sArr3);
        short[] sArr4 = new short[1024];
        Cthis.m35661case(sArr2, sArr, sArr4);
        short[] sArr5 = new short[1024];
        Cthis.m35662do(sArr4, sArr3, sArr5);
        m35647for(bArr, sArr5, bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m35645do(short[] sArr, byte[] bArr, byte[] bArr2) {
        Cthis.m35666if(sArr, bArr2);
        System.arraycopy(bArr2, Cgoto.f32251new, bArr, 0, 32);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m35646else(byte[] bArr) {
        aq1 aq1Var = new aq1(256);
        aq1Var.update(bArr, 0, 32);
        aq1Var.doFinal(bArr, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m35647for(byte[] bArr, short[] sArr, byte[] bArr2) {
        Cthis.m35663else(bArr, sArr);
        System.arraycopy(bArr2, 0, bArr, Cgoto.f32251new, 32);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m35648goto(byte[] bArr, short[] sArr, byte[] bArr2) {
        short[] sArr2 = new short[1024];
        short[] sArr3 = new short[1024];
        m35649if(sArr2, sArr3, bArr2);
        short[] sArr4 = new short[1024];
        Cthis.m35661case(sArr, sArr2, sArr4);
        Cthis.m35664for(sArr4);
        Cif.m35655case(bArr, sArr4, sArr3);
        m35646else(bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35649if(short[] sArr, short[] sArr2, byte[] bArr) {
        Cthis.m35666if(sArr, bArr);
        for (int i = 0; i < 256; i++) {
            int i2 = i * 4;
            int i3 = bArr[i + Cgoto.f32251new] & 255;
            sArr2[i2 + 0] = (short) (i3 & 3);
            sArr2[i2 + 1] = (short) ((i3 >>> 2) & 3);
            sArr2[i2 + 2] = (short) ((i3 >>> 4) & 3);
            sArr2[i2 + 3] = (short) (i3 >>> 6);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m35650new(byte[] bArr, short[] sArr, short[] sArr2) {
        Cthis.m35663else(bArr, sArr);
        for (int i = 0; i < 256; i++) {
            int i2 = i * 4;
            bArr[i + Cgoto.f32251new] = (byte) ((sArr2[i2 + 3] << 6) | sArr2[i2] | (sArr2[i2 + 1] << 2) | (sArr2[i2 + 2] << 4));
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m35651this(SecureRandom secureRandom, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        short[] sArr = new short[1024];
        byte[] bArr4 = new byte[32];
        m35645do(sArr, bArr4, bArr3);
        short[] sArr2 = new short[1024];
        m35652try(sArr2, bArr4);
        byte[] bArr5 = new byte[32];
        secureRandom.nextBytes(bArr5);
        short[] sArr3 = new short[1024];
        Cthis.m35667new(sArr3, bArr5, (byte) 0);
        Cthis.m35665goto(sArr3);
        short[] sArr4 = new short[1024];
        Cthis.m35667new(sArr4, bArr5, (byte) 1);
        Cthis.m35665goto(sArr4);
        short[] sArr5 = new short[1024];
        Cthis.m35661case(sArr2, sArr3, sArr5);
        Cthis.m35662do(sArr5, sArr4, sArr5);
        short[] sArr6 = new short[1024];
        Cthis.m35661case(sArr, sArr3, sArr6);
        Cthis.m35664for(sArr6);
        short[] sArr7 = new short[1024];
        Cthis.m35667new(sArr7, bArr5, (byte) 2);
        Cthis.m35662do(sArr6, sArr7, sArr6);
        short[] sArr8 = new short[1024];
        Cif.m35660try(sArr8, sArr6, bArr5, (byte) 3);
        m35650new(bArr2, sArr5, sArr8);
        Cif.m35655case(bArr, sArr6, sArr8);
        m35646else(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m35652try(short[] sArr, byte[] bArr) {
        Cthis.m35668this(sArr, bArr);
    }
}
