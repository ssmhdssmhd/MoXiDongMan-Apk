package org.bouncycastle.pqc.crypto.qtesla;

import java.security.SecureRandom;

/* renamed from: org.bouncycastle.pqc.crypto.qtesla.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis {
    /* renamed from: abstract, reason: not valid java name */
    public static int m35742abstract(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        return m35761package(bArr, bArr2, i, i2, bArr3, 1024, 48, Ctry.f32301const, Ctry.f32326switch, 23, 1048575, 21, 910, Ctry.u0, Ccase.f32262case, 38, Ctry.q0, 1021, 32, Celse.f32282for);
    }

    /* renamed from: break, reason: not valid java name */
    public static int m35743break(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        return m35744case(bArr, bArr2, secureRandom, 1024, 48, Ctry.f32307final, Ctry.f32330throws, 24, 38, Ctry.r0, 12.0d, Celse.f32285try, 1147, 1233);
    }

    /* renamed from: case, reason: not valid java name */
    private static int m35744case(byte[] bArr, byte[] bArr2, SecureRandom secureRandom, int i, int i2, int i3, long j, int i4, int i5, int i6, double d, int[] iArr, int i7, int i8) {
        int[] iArr2;
        int i9;
        int i10;
        int[] iArr3;
        int[] iArr4;
        int i11;
        int[] iArr5;
        int[] iArr6;
        boolean z;
        int i12;
        int i13;
        byte[] bArr3 = new byte[32];
        byte[] bArr4 = new byte[128];
        int[] iArr7 = new int[i];
        int[] iArr8 = new int[i];
        int[] iArr9 = new int[i];
        int[] iArr10 = new int[i];
        secureRandom.nextBytes(bArr3);
        if (i3 == 4205569) {
            i9 = Ctry.f32299catch;
            iArr2 = iArr10;
            Cfor.m35716for(bArr4, 0, 128, bArr3, 0, 32);
        } else {
            iArr2 = iArr10;
            i9 = Ctry.f32299catch;
        }
        if (i3 == 4206593 || i3 == 8404993) {
            i10 = Ctry.f32301const;
            Cfor.m35718new(bArr4, 0, 128, bArr3, 0, 32);
        } else {
            i10 = Ctry.f32301const;
        }
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i3 == i9) {
                i15++;
                Cbreak.m35677new(iArr8, i14, bArr4, i14, i15);
            }
            if (i3 == i10) {
                int i16 = i15 + 1;
                iArr3 = iArr9;
                iArr4 = iArr8;
                Cbreak.m35679try(iArr8, 0, bArr4, 0, i16, i, d, Cbreak.f32258if);
                i15 = i16;
            } else {
                iArr3 = iArr9;
                iArr4 = iArr8;
            }
            if (i3 == 8404993) {
                int i17 = i15 + 1;
                Cbreak.m35679try(iArr4, 0, bArr4, 0, i17, i, d, Cbreak.f32257for);
                i11 = i7;
                i15 = i17;
            } else {
                i11 = i7;
            }
            iArr5 = iArr4;
            if (!m35755for(iArr5, i11, i, i2)) {
                break;
            }
            iArr8 = iArr5;
            iArr9 = iArr3;
            i14 = 0;
            i10 = Ctry.f32301const;
        }
        while (true) {
            if (i3 == i9) {
                i15++;
                Cbreak.m35677new(iArr7, 0, bArr4, 32, i15);
            }
            if (i3 == 4206593) {
                int i18 = i15 + 1;
                i12 = 0;
                z = true;
                iArr6 = iArr5;
                Cbreak.m35679try(iArr7, 0, bArr4, 32, i18, i, d, Cbreak.f32258if);
                i15 = i18;
            } else {
                iArr6 = iArr5;
                z = true;
                i12 = 0;
            }
            if (i3 == 8404993) {
                int i19 = i15 + 1;
                Cbreak.m35679try(iArr7, 0, bArr4, 32, i19, i, d, Cbreak.f32257for);
                i13 = i8;
                i15 = i19;
            } else {
                i13 = i8;
            }
            if (m35755for(iArr7, i13, i, i2) != z) {
                break;
            }
            iArr5 = iArr6;
            i9 = Ctry.f32299catch;
        }
        Ccase.m35702switch(iArr3, bArr4, 64, i, i3, j, i4, i5, i6);
        Ccase.m35707while(iArr2, iArr3, iArr7, i, i3, j, iArr);
        int[] iArr11 = iArr2;
        int[] iArr12 = iArr6;
        Ccase.m35704throw(iArr11, iArr11, iArr12, i, i3);
        if (i3 == 4205569) {
            Cnew.m35722class(bArr2, iArr7, iArr12, bArr4, 64);
            Cnew.m35736super(bArr, iArr11, bArr4, 64, 512, 23);
        }
        if (i3 == 4206593) {
            Cnew.m35723const(bArr2, iArr7, iArr12, bArr4, 64);
            Cnew.m35736super(bArr, iArr11, bArr4, 64, 1024, 23);
        }
        if (i3 == 8404993) {
            Cnew.m35726final(bArr2, iArr7, iArr12, bArr4, 64);
            Cnew.m35741while(bArr, iArr11, bArr4, 64);
        }
        return i12;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m35745catch(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        return m35772try(bArr, bArr2, secureRandom, 1024, 4, 25, Ctry.f32300class, Ctry.f32323static, 29, 108, Ctry.p0, 10.0d, Cgoto.f32288do, 554, 554);
    }

    /* renamed from: class, reason: not valid java name */
    private static void m35746class(byte[] bArr, int i, int[] iArr, byte[] bArr2, int i2, int i3, int i4, int i5) {
        int i6 = i3 + 64;
        byte[] bArr3 = new byte[i6];
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = ((i5 / 2) - iArr[i7]) >> 31;
            iArr[i7] = ((i8 ^ (-1)) & iArr[i7]) | ((iArr[i7] - i5) & i8);
            int i9 = 1 << i4;
            int i10 = iArr[i7] & (i9 - 1);
            int i11 = ((1 << (i4 - 1)) - i10) >> 31;
            bArr3[i7] = (byte) ((iArr[i7] - ((i10 & (i11 ^ (-1))) | ((i10 - i9) & i11))) >> i4);
        }
        System.arraycopy(bArr2, i2, bArr3, i3, 64);
        if (i5 == 4205569) {
            Cfor.m35716for(bArr, i, 32, bArr3, 0, i6);
        }
        if (i5 == 4206593 || i5 == 8404993) {
            Cfor.m35718new(bArr, i, 32, bArr3, 0, i6);
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m35747const(byte[] bArr, int i, long[] jArr, byte[] bArr2, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i3;
        int i8 = i4;
        int i9 = i7 * i8;
        int i10 = i9 + 64;
        byte[] bArr3 = new byte[i10];
        int i11 = 0;
        while (i11 < i8) {
            int i12 = i7 * i11;
            int i13 = 0;
            while (i13 < i7) {
                long j = jArr[i12];
                long j2 = ((i6 / 2) - j) >> 63;
                int i14 = 1 << i5;
                long j3 = ((1 << (i5 - 1)) - ((i14 - 1) & (((j - i6) & j2) | (j & (j2 ^ (-1)))))) >> 63;
                bArr3[i12] = (byte) ((r6 - (((j3 ^ (-1)) & r12) | ((r12 - i14) & j3))) >> i5);
                i13++;
                i7 = i3;
                i12++;
                i11 = i11;
            }
            i11++;
            i7 = i3;
            i8 = i4;
        }
        System.arraycopy(bArr2, i2, bArr3, i9, 64);
        if (i6 == 485978113) {
            Cfor.m35716for(bArr, i, 32, bArr3, 0, i10);
        }
        if (i6 == 1129725953) {
            Cfor.m35718new(bArr, i, 32, bArr3, 0, i10);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m35748continue(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        return m35761package(bArr, bArr2, i, i2, bArr3, 1024, 48, Ctry.f32307final, Ctry.f32330throws, 24, 2097151, 22, 1233, Ctry.v0, 2848, 38, Ctry.r0, 511, 32, Celse.f32285try);
    }

    /* renamed from: default, reason: not valid java name */
    private static boolean m35749default(int[] iArr, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i2 - i3;
            if (iArr[i4] < (-i5) || iArr[i4] > i5) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m35750do(int i) {
        int i2 = i >> 31;
        return (i ^ i2) - i2;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m35751else(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        return m35744case(bArr, bArr2, secureRandom, 512, 30, Ctry.f32299catch, Ctry.f32322return, 23, 19, Ctry.o0, 27.0d, Celse.f32281do, 1586, 1586);
    }

    /* renamed from: extends, reason: not valid java name */
    private static boolean m35752extends(long[] jArr, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i2 - i3;
            if (jArr[i4] < (-i5) || jArr[i4] > i5) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    private static int m35753final(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom, int i3, int i4, int i5, int i6, long j, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        int[] iArr;
        long[] jArr4;
        short[] sArr;
        long[] jArr5;
        byte[] bArr4;
        long[] jArr6;
        int i18;
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[128];
        byte[] bArr8 = new byte[32];
        int[] iArr2 = new int[i5];
        short[] sArr2 = new short[i5];
        int i19 = i3 * i4;
        long[] jArr7 = new long[i19];
        long[] jArr8 = new long[i19];
        long[] jArr9 = new long[i3];
        long[] jArr10 = new long[i3];
        long[] jArr11 = new long[i3];
        long[] jArr12 = new long[i3];
        long[] jArr13 = new long[i19];
        secureRandom.nextBytes(bArr8);
        System.arraycopy(bArr8, 0, bArr7, 32, 32);
        System.arraycopy(bArr3, i15 - 32, bArr7, 0, 32);
        if (i6 == 485978113) {
            jArr = jArr9;
            jArr2 = jArr8;
            jArr3 = jArr7;
            jArr4 = jArr10;
            sArr = sArr2;
            iArr = iArr2;
            Cfor.m35716for(bArr7, 64, 64, bArr2, 0, i2);
            Cfor.m35716for(bArr6, 0, 32, bArr7, 0, 128);
        } else {
            jArr = jArr9;
            jArr2 = jArr8;
            jArr3 = jArr7;
            iArr = iArr2;
            jArr4 = jArr10;
            sArr = sArr2;
        }
        if (i6 == 1129725953) {
            Cfor.m35718new(bArr7, 64, 64, bArr2, 0, i2);
            Cfor.m35718new(bArr6, 0, 32, bArr7, 0, 128);
        }
        Ccase.m35705throws(jArr3, bArr3, i15 - 64, i3, i4, i6, j, i7, i13, i14);
        int i20 = 0;
        boolean zM35771throws = false;
        while (true) {
            int i21 = i20 + 1;
            Cbreak.m35670break(jArr, bArr6, 0, i21, i3, i6, i8, i9);
            long[] jArr14 = jArr;
            long[] jArr15 = jArr4;
            Ccase.m35695native(jArr15, jArr14, i3);
            int i22 = 0;
            while (i22 < i4) {
                int i23 = i3 * i22;
                Ccase.m35694import(jArr2, i23, jArr3, i23, jArr15, 0, i3, i6, j);
                i22++;
                jArr15 = jArr15;
                jArr14 = jArr14;
            }
            long[] jArr16 = jArr15;
            long[] jArr17 = jArr14;
            m35747const(bArr5, 0, jArr2, bArr7, 64, i3, i4, i10, i6);
            Cbreak.m35676if(iArr, sArr, bArr5, 0, i3, i5);
            Ccase.m35697package(jArr12, 0, bArr3, 0, iArr, sArr, i3, i5);
            Ccase.m35701super(jArr11, 0, jArr17, 0, jArr12, 0, i3);
            long[] jArr18 = jArr11;
            if (!m35765static(jArr18, i3, i8, i11)) {
                int i24 = 0;
                while (true) {
                    if (i24 >= i4) {
                        jArr5 = jArr18;
                        break;
                    }
                    int i25 = i3 * i24;
                    int i26 = i24 + 1;
                    jArr5 = jArr18;
                    Ccase.m35697package(jArr13, i25, bArr3, i3 * i26, iArr, sArr, i3, i5);
                    long[] jArr19 = jArr2;
                    Ccase.m35698public(jArr19, i25, jArr2, i25, jArr13, i25, i3, i6, i16, i17);
                    zM35771throws = m35771throws(jArr19, i25, i3, i10, i6, i12);
                    if (zM35771throws) {
                        break;
                    }
                    i24 = i26;
                    jArr18 = jArr5;
                }
                if (!zM35771throws) {
                    break;
                }
                i20 = i21;
                jArr4 = jArr16;
                jArr = jArr17;
                jArr11 = jArr5;
            } else {
                jArr11 = jArr18;
                i20 = i21;
                jArr4 = jArr16;
                jArr = jArr17;
            }
        }
        if (i6 == 485978113) {
            bArr4 = bArr5;
            jArr6 = jArr5;
            i18 = 0;
            Cnew.m35735static(bArr, 0, bArr4, 0, jArr6);
        } else {
            bArr4 = bArr5;
            jArr6 = jArr5;
            i18 = 0;
        }
        if (i6 == 1129725953) {
            Cnew.m35733public(bArr, i18, bArr4, i18, jArr6);
        }
        return i18;
    }

    /* renamed from: finally, reason: not valid java name */
    private static int m35754finally(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, int i3, int i4, int i5, int i6, long j, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, long[] jArr) {
        byte[] bArr4;
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        byte[] bArr8 = new byte[64];
        int i16 = i3 * i4;
        int[] iArr = new int[i16];
        int[] iArr2 = new int[i5];
        short[] sArr = new short[i5];
        long[] jArr2 = new long[i16];
        long[] jArr3 = new long[i3];
        long[] jArr4 = new long[i3];
        long[] jArr5 = new long[i16];
        long[] jArr6 = new long[i16];
        if (i2 < i11) {
            return -1;
        }
        if (i6 == 485978113) {
            Cnew.m35721catch(bArr5, jArr3, bArr2, i);
        }
        if (i6 == 1129725953) {
            Cnew.m35738this(bArr5, jArr3, bArr2, i);
        }
        if (m35752extends(jArr3, i3, i8, i10)) {
            return -2;
        }
        if (i6 == 485978113) {
            Cnew.m35725else(iArr, bArr7, 0, bArr3);
        }
        if (i6 == 1129725953) {
            Cnew.m35740try(iArr, bArr7, 0, bArr3);
        }
        Ccase.m35705throws(jArr6, bArr7, 0, i3, i4, i6, j, i7, i12, i13);
        Cbreak.m35676if(iArr2, sArr, bArr5, 0, i3, i5);
        Ccase.m35695native(jArr4, jArr3, i3);
        int i17 = i4;
        int i18 = 0;
        while (i18 < i17) {
            int i19 = i3 * i18;
            Ccase.m35694import(jArr2, i19, jArr6, i19, jArr4, 0, i3, i6, j);
            Ccase.m35690finally(jArr5, i19, iArr, i19, iArr2, sArr, i3, i5, i6, i14, i15);
            Ccase.m35698public(jArr2, i19, jArr2, i19, jArr5, i19, i3, i6, i14, i15);
            i18++;
            i17 = i4;
        }
        if (i6 == 485978113) {
            bArr4 = bArr;
            Cfor.m35716for(bArr8, 0, 64, bArr, 0, bArr4.length);
        } else {
            bArr4 = bArr;
        }
        if (i6 == 1129725953) {
            Cfor.m35718new(bArr8, 0, 64, bArr, 0, bArr4.length);
        }
        m35747const(bArr6, 0, jArr2, bArr8, 0, i3, i4, i9, i6);
        return !Cdo.m35713new(bArr5, 0, bArr6, 0, 32) ? -3 : 0;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m35755for(int[] iArr, int i, int i2, int i3) {
        int i4;
        int[] iArr2 = new int[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            iArr2[i5] = m35750do(iArr[i5]);
        }
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            while (true) {
                i4 = i2 - 1;
                if (i8 < i4) {
                    int i9 = i8 + 1;
                    int i10 = (iArr2[i9] - iArr2[i8]) >> 31;
                    int i11 = i10 ^ (-1);
                    int i12 = (iArr2[i9] & i10) | (iArr2[i8] & i11);
                    iArr2[i9] = (i10 & iArr2[i8]) | (iArr2[i9] & i11);
                    iArr2[i8] = i12;
                    i8 = i9;
                }
            }
            i6 += iArr2[i4];
            i2--;
        }
        return i6 > i;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m35756goto(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        return m35772try(bArr, bArr2, secureRandom, 2048, 5, 40, Ctry.f32325super, Ctry.f32303default, 31, 180, Ctry.s0, 10.0d, Cgoto.f32289for, 901, 901);
    }

    /* renamed from: if, reason: not valid java name */
    private static long m35757if(long j) {
        long j2 = j >> 63;
        return (j ^ j2) - j2;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m35758import(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom) {
        return m35767super(bArr, bArr2, i, i2, bArr3, secureRandom, 1024, 48, Ctry.f32301const, Ctry.f32326switch, 23, 1048575, 20, 21, 910, 910, 38, Ctry.q0, 1021, 32, Celse.f32282for);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m35759native(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom) {
        return m35767super(bArr, bArr2, i, i2, bArr3, secureRandom, 1024, 48, Ctry.f32307final, Ctry.f32330throws, 24, 2097151, 21, 22, 1233, 1147, 38, Ctry.r0, 511, 32, Celse.f32285try);
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m35760new(long[] jArr, int i, int i2, int i3, int i4) {
        int i5;
        short[] sArr = new short[i3];
        for (int i6 = 0; i6 < i3; i6++) {
            sArr[i6] = (short) m35757if(jArr[i + i6]);
        }
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            while (true) {
                i5 = i3 - 1;
                if (i9 < i5) {
                    int i10 = i9 + 1;
                    short s = (short) ((sArr[i10] - sArr[i9]) >> 15);
                    int i11 = s ^ (-1);
                    short s2 = (short) ((sArr[i10] & s) | (sArr[i9] & i11));
                    sArr[i10] = (short) ((s & sArr[i9]) | (sArr[i10] & i11));
                    sArr[i9] = s2;
                    i9 = i10;
                }
            }
            i7 += sArr[i5];
            i3--;
        }
        return i7 > i2;
    }

    /* renamed from: package, reason: not valid java name */
    private static int m35761package(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        short[] sArr;
        int[] iArr6;
        int i16;
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[64];
        int[] iArr7 = new int[i3];
        int[] iArr8 = new int[i4];
        short[] sArr2 = new short[i4];
        int[] iArr9 = new int[i3];
        int[] iArr10 = new int[i3];
        int[] iArr11 = new int[i3];
        int[] iArr12 = new int[i3];
        if (i2 < i11) {
            return -1;
        }
        if (i5 == 4205569 || i5 == 4206593) {
            iArr2 = iArr12;
            iArr3 = iArr11;
            iArr4 = iArr10;
            iArr5 = iArr9;
            sArr = sArr2;
            iArr6 = iArr8;
            Cnew.m35728goto(bArr4, iArr10, bArr2, i, i3, i8);
        } else {
            iArr2 = iArr12;
            iArr3 = iArr11;
            iArr4 = iArr10;
            iArr5 = iArr9;
            sArr = sArr2;
            iArr6 = iArr8;
        }
        if (i5 == 8404993) {
            Cnew.m35719break(bArr4, iArr4, bArr2, i);
        }
        if (m35749default(iArr4, i3, i7, i9)) {
            return -2;
        }
        if (i5 == 4205569 || i5 == 4206593) {
            i16 = Ctry.f32307final;
            Cnew.m35732new(iArr7, bArr6, 0, bArr3, i3, i6);
        } else {
            i16 = Ctry.f32307final;
        }
        if (i5 == i16) {
            Cnew.m35720case(iArr7, bArr6, 0, bArr3);
        }
        Ccase.m35702switch(iArr2, bArr6, 0, i3, i5, j, i6, i12, i13);
        Cbreak.m35676if(iArr6, sArr, bArr4, 0, i3, i4);
        Ccase.m35688extends(iArr3, iArr7, iArr6, sArr, i3, i4);
        int[] iArr13 = iArr5;
        Ccase.m35707while(iArr13, iArr2, iArr4, i3, i5, j, iArr);
        Ccase.m35700static(iArr13, iArr5, iArr3, i3, i5, j, i10);
        if (i5 == 4205569) {
            Cfor.m35716for(bArr7, 0, 64, bArr, 0, bArr.length);
        }
        if (i5 == 4206593 || i5 == i16) {
            Cfor.m35718new(bArr7, 0, 64, bArr, 0, bArr.length);
        }
        m35746class(bArr5, 0, iArr5, bArr7, 0, i3, i8, i5);
        return !Cdo.m35713new(bArr4, 0, bArr5, 0, 32) ? -3 : 0;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m35762private(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        return m35761package(bArr, bArr2, i, i2, bArr3, 512, 30, Ctry.f32299catch, Ctry.f32322return, 23, 1048575, 21, 1586, Ctry.t0, Ccase.f32278try, 19, Ctry.o0, 1021, 32, Celse.f32281do);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m35763public(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom) {
        return m35753final(bArr, bArr2, i, i2, bArr3, secureRandom, 1024, 4, 25, Ctry.f32300class, Ctry.f32323static, 29, 2097151, 21, 22, 554, 554, 108, Ctry.p0, Ccase.f32272import, 1, 29);
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m35764return(int[] iArr, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i; i4++) {
            if (m35750do(iArr[i4]) > i2 - i3) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: static, reason: not valid java name */
    private static boolean m35765static(long[] jArr, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i; i4++) {
            if (m35757if(jArr[i4]) > i2 - i3) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m35766strictfp(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        return m35754finally(bArr, bArr2, i, i2, bArr3, 1024, 4, 25, Ctry.f32300class, Ctry.f32323static, 29, 2097151, 22, 554, 2848, 108, Ctry.p0, 1, 29, Cgoto.f32288do);
    }

    /* renamed from: super, reason: not valid java name */
    private static int m35767super(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        int[] iArr2;
        int[] iArr3;
        short[] sArr;
        short[] sArr2;
        int[] iArr4;
        int[] iArr5;
        short[] sArr3;
        int[] iArr6;
        int[] iArr7;
        int[] iArr8;
        int[] iArr9;
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[128];
        byte[] bArr7 = new byte[64];
        byte[] bArr8 = new byte[32];
        int[] iArr10 = new int[i4];
        short[] sArr4 = new short[i4];
        short[] sArr5 = new short[i3];
        short[] sArr6 = new short[i3];
        int[] iArr11 = new int[i3];
        int[] iArr12 = new int[i3];
        int[] iArr13 = new int[i3];
        int[] iArr14 = new int[i3];
        int[] iArr15 = new int[i3];
        int[] iArr16 = new int[i3];
        if (i5 == 4205569) {
            Cnew.m35724do(bArr7, sArr5, sArr6, bArr3);
        }
        if (i5 == 4206593) {
            Cnew.m35729if(bArr7, sArr5, sArr6, bArr3);
        }
        if (i5 == 8404993) {
            Cnew.m35727for(bArr7, sArr5, sArr6, bArr3);
        }
        secureRandom.nextBytes(bArr8);
        System.arraycopy(bArr8, 0, bArr6, 32, 32);
        System.arraycopy(bArr7, 32, bArr6, 0, 32);
        if (i5 == 4205569) {
            iArr3 = iArr12;
            sArr = sArr6;
            sArr2 = sArr5;
            iArr2 = iArr13;
            sArr3 = sArr4;
            iArr6 = iArr15;
            iArr4 = iArr10;
            Cfor.m35716for(bArr6, 64, 64, bArr2, 0, i2);
            iArr5 = iArr14;
            Cfor.m35716for(bArr5, 0, 32, bArr6, 0, 128);
        } else {
            iArr2 = iArr13;
            iArr3 = iArr12;
            sArr = sArr6;
            sArr2 = sArr5;
            iArr4 = iArr10;
            iArr5 = iArr14;
            sArr3 = sArr4;
            iArr6 = iArr15;
        }
        if (i5 == 4206593 || i5 == 8404993) {
            iArr7 = iArr5;
            Cfor.m35718new(bArr6, 64, 64, bArr2, 0, i2);
            Cfor.m35718new(bArr5, 0, 32, bArr6, 0, 128);
        } else {
            iArr7 = iArr5;
        }
        int[] iArr17 = iArr2;
        Ccase.m35702switch(iArr11, bArr7, 0, i3, i5, j, i6, i12, i13);
        int i16 = 0;
        while (true) {
            int i17 = i16 + 1;
            Cbreak.m35678this(iArr17, bArr5, 0, i17, i3, i5, i7, i8);
            Ccase.m35707while(iArr3, iArr11, iArr17, i3, i5, j, iArr);
            m35746class(bArr4, 0, iArr3, bArr6, 64, i3, i9, i5);
            Cbreak.m35676if(iArr4, sArr3, bArr4, 0, i3, i4);
            Ccase.m35685default(iArr6, sArr2, iArr4, sArr3, i3, i4);
            int[] iArr18 = iArr6;
            int[] iArr19 = iArr17;
            Ccase.m35689final(iArr7, iArr19, iArr18, i3);
            if (!m35764return(iArr7, i3, i7, i10)) {
                Ccase.m35685default(iArr16, sArr, iArr4, sArr3, i3, i4);
                iArr8 = iArr3;
                iArr9 = iArr16;
                Ccase.m35699return(iArr8, iArr8, iArr9, i3, i5);
                if (!m35768switch(iArr8, i3, i9, i5, i11)) {
                    break;
                }
            } else {
                iArr8 = iArr3;
                iArr9 = iArr16;
            }
            iArr3 = iArr8;
            iArr16 = iArr9;
            iArr17 = iArr19;
            iArr6 = iArr18;
            i16 = i17;
        }
        if (i5 == 4205569) {
            Cnew.m35731native(bArr, 0, bArr4, 0, iArr7, i3, i9);
        }
        if (i5 == 4206593) {
            Cnew.m35731native(bArr, 0, bArr4, 0, iArr7, i3, i9);
        }
        if (i5 != 8404993) {
            return 0;
        }
        Cnew.m35734return(bArr, 0, bArr4, 0, iArr7);
        return 0;
    }

    /* renamed from: switch, reason: not valid java name */
    private static boolean m35768switch(int[] iArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i3 / 2;
            int i7 = (i6 - iArr[i5]) >> 31;
            int i8 = ((i7 ^ (-1)) & iArr[i5]) | ((iArr[i5] - i3) & i7);
            int i9 = 1 << (i2 - 1);
            if (((((m35750do(i8) - (i6 - i4)) ^ (-1)) >>> 31) | (((m35750do(i8 - ((((i8 + i9) - 1) >> i2) << i2)) - (i9 - i4)) ^ (-1)) >>> 31)) == 1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m35769this(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        return m35744case(bArr, bArr2, secureRandom, 1024, 48, Ctry.f32301const, Ctry.f32326switch, 23, 38, Ctry.q0, 9.0d, Celse.f32282for, 910, 910);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m35770throw(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom) {
        return m35767super(bArr, bArr2, i, i2, bArr3, secureRandom, 512, 30, Ctry.f32299catch, Ctry.f32322return, 23, 1048575, 20, 21, 1586, 1586, 19, Ctry.o0, 1021, 32, Celse.f32281do);
    }

    /* renamed from: throws, reason: not valid java name */
    private static boolean m35771throws(long[] jArr, int i, int i2, int i3, int i4, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = i + i6;
            long j = ((i4 / 2) - jArr[i7]) >> 63;
            long j2 = ((j ^ (-1)) & jArr[i7]) | ((jArr[i7] - i4) & j);
            long jM35757if = ((m35757if(j2) - (r4 - i5)) ^ (-1)) >>> 63;
            int i8 = 1 << (i3 - 1);
            if (((((m35757if(j2 - (((int) (((i8 + j2) - 1) >> i3)) << i3)) - (i8 - i5)) ^ (-1)) >>> 63) | jM35757if) == 1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    private static int m35772try(byte[] bArr, byte[] bArr2, SecureRandom secureRandom, int i, int i2, int i3, int i4, long j, int i5, int i6, int i7, double d, long[] jArr, int i8, int i9) {
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        long[] jArr5;
        int i10;
        int i11;
        long[] jArr6;
        byte[] bArr3 = bArr;
        byte[] bArr4 = new byte[32];
        int i12 = (i2 + 3) * 32;
        byte[] bArr5 = new byte[i12];
        long[] jArr7 = new long[i];
        long[] jArr8 = new long[i];
        int i13 = i * i2;
        long[] jArr9 = new long[i13];
        long[] jArr10 = new long[i13];
        long[] jArr11 = new long[i13];
        secureRandom.nextBytes(bArr4);
        if (i4 == 485978113) {
            i10 = Ctry.f32300class;
            jArr2 = jArr11;
            jArr3 = jArr10;
            jArr4 = jArr9;
            jArr5 = jArr8;
            Cfor.m35716for(bArr5, 0, i12, bArr4, 0, 32);
        } else {
            jArr2 = jArr11;
            jArr3 = jArr10;
            jArr4 = jArr9;
            jArr5 = jArr8;
            i10 = Ctry.f32300class;
        }
        if (i4 == 1129725953) {
            i11 = Ctry.f32325super;
            Cfor.m35718new(bArr5, 0, i12, bArr4, 0, 32);
        } else {
            i11 = Ctry.f32325super;
        }
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i15 < i2) {
            while (true) {
                if (i4 == i10) {
                    i16++;
                    jArr6 = jArr4;
                    Cbreak.m35673else(jArr6, i * i15, bArr5, i15 * 32, i16);
                } else {
                    jArr6 = jArr4;
                }
                if (i4 == i11) {
                    i16++;
                    Cbreak.m35671case(jArr6, i * i15, bArr5, i15 * 32, i16);
                }
                if (!m35760new(jArr6, i * i15, i8, i, i3)) {
                    break;
                }
                jArr4 = jArr6;
            }
            i15++;
            jArr4 = jArr6;
        }
        long[] jArr12 = jArr4;
        while (true) {
            if (i4 == i10) {
                i16++;
                Cbreak.m35673else(jArr7, i14, bArr5, i2 * 32, i16);
            }
            if (i4 == i11) {
                i16++;
                Cbreak.m35671case(jArr7, i14, bArr5, i2 * 32, i16);
            }
            if (!m35760new(jArr7, i14, i9, i, i3)) {
                break;
            }
            bArr3 = bArr3;
            i10 = Ctry.f32300class;
            i14 = 0;
        }
        int i17 = (i2 + 1) * 32;
        Ccase.m35705throws(jArr3, bArr5, i17, i, i2, i4, j, i5, i6, i7);
        long[] jArr13 = jArr5;
        Ccase.m35695native(jArr13, jArr7, i);
        int i18 = 0;
        while (i18 < i2) {
            int i19 = i * i18;
            int i20 = i18;
            Ccase.m35694import(jArr2, i19, jArr3, i19, jArr13, 0, i, i4, j);
            Ccase.m35701super(jArr2, i19, jArr2, i19, jArr12, i19, i);
            for (int i21 = 0; i21 < i; i21++) {
                long j2 = i4;
                int i22 = i19 + i21;
                long[] jArr14 = jArr2;
                jArr14[i22] = jArr14[i22] - (j2 & ((j2 - jArr14[i22]) >> 63));
            }
            i18 = i20 + 1;
        }
        long[] jArr15 = jArr2;
        Cnew.m35737switch(bArr2, jArr7, jArr12, bArr5, i17, i, i2);
        if (i4 == 485978113) {
            Cnew.m35730import(bArr, jArr15, bArr5, i17);
        }
        if (i4 == 1129725953) {
            Cnew.m35739throw(bArr, jArr15, bArr5, i17);
        }
        return 0;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m35773volatile(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        return m35754finally(bArr, bArr2, i, i2, bArr3, 2048, 5, 40, Ctry.f32325super, Ctry.f32303default, 31, Ctry.f32296abstract, 24, 901, Ccase.f32276this, 180, Ctry.s0, 15, 34, Cgoto.f32289for);
    }

    /* renamed from: while, reason: not valid java name */
    public static int m35774while(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, SecureRandom secureRandom) {
        return m35753final(bArr, bArr2, i, i2, bArr3, secureRandom, 2048, 5, 40, Ctry.f32325super, Ctry.f32303default, 31, Ctry.f32296abstract, 23, 24, 901, 901, 180, Ctry.s0, Ccase.f32273native, 15, 34);
    }
}
