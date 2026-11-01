package org.bouncycastle.pqc.crypto.qtesla;

import android.support.v4.q3;

/* renamed from: org.bouncycastle.pqc.crypto.qtesla.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase {

    /* renamed from: break, reason: not valid java name */
    public static final int f32261break = 1504;

    /* renamed from: case, reason: not valid java name */
    public static final int f32262case = 2720;

    /* renamed from: catch, reason: not valid java name */
    public static final int f32263catch = 2976;

    /* renamed from: class, reason: not valid java name */
    public static final int f32264class = 3104;

    /* renamed from: const, reason: not valid java name */
    public static final int f32265const = 14880;

    /* renamed from: do, reason: not valid java name */
    public static final int f32266do = 32;

    /* renamed from: else, reason: not valid java name */
    public static final int f32267else = 2848;

    /* renamed from: final, reason: not valid java name */
    public static final int f32268final = 39712;

    /* renamed from: for, reason: not valid java name */
    public static final int f32269for = 32;

    /* renamed from: goto, reason: not valid java name */
    public static final int f32270goto = 2848;

    /* renamed from: if, reason: not valid java name */
    public static final int f32271if = 32;

    /* renamed from: import, reason: not valid java name */
    public static final int f32272import = 5184;

    /* renamed from: native, reason: not valid java name */
    public static final int f32273native = 12352;

    /* renamed from: new, reason: not valid java name */
    public static final int f32274new = 64;

    /* renamed from: super, reason: not valid java name */
    public static final int f32275super = 1344;

    /* renamed from: this, reason: not valid java name */
    public static final int f32276this = 6176;

    /* renamed from: throw, reason: not valid java name */
    public static final int f32277throw = 2112;

    /* renamed from: try, reason: not valid java name */
    public static final int f32278try = 1376;

    /* renamed from: while, reason: not valid java name */
    public static final int f32279while = 2368;

    /* renamed from: break, reason: not valid java name */
    private static long m35680break(long j, int i, long j2) {
        return (j + (((j2 * j) & 4294967295L) * i)) >> 32;
    }

    /* renamed from: case, reason: not valid java name */
    private static void m35681case(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 1; i2 < 512; i2 *= 2) {
            int i3 = 0;
            while (i3 < 512) {
                int i4 = i + 1;
                long j = iArr2[i];
                int i5 = i3;
                while (i5 < i3 + i2) {
                    int i6 = i5 + i2;
                    iArr[i5] = iArr[i6] + iArr[i5];
                    iArr[i6] = m35703this((r11 - iArr[i6]) * j, Ctry.f32299catch, Ctry.f32322return);
                    i5++;
                }
                i3 = i5 + i2;
                i = i4;
            }
        }
        for (int i7 = 0; i7 < 256; i7++) {
            iArr[i7] = m35703this(iArr[i7] * 1081347, Ctry.f32299catch, Ctry.f32322return);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m35682catch(int[] iArr, int[] iArr2, int i, int i2, long j) {
        int i3 = 0;
        for (int i4 = i >> 1; i4 > 0; i4 >>= 1) {
            int i5 = 0;
            while (i5 < i) {
                int i6 = i3 + 1;
                long j2 = iArr2[i3];
                int i7 = i5;
                while (i7 < i5 + i4) {
                    int iM35703this = m35703this(iArr[r7] * j2, i2, j);
                    iArr[i7 + i4] = iArr[i7] - iM35703this;
                    iArr[i7] = iArr[i7] + iM35703this;
                    i7++;
                }
                i5 = i7 + i4;
                i3 = i6;
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static void m35683class(long[] jArr, long[] jArr2) {
        int i = 0;
        for (int i2 = 1024; i2 > 0; i2 >>= 1) {
            int i3 = 0;
            while (i3 < 2048) {
                int i4 = i + 1;
                int i5 = (int) jArr2[i];
                int i6 = i3;
                while (i6 < i3 + i2) {
                    int i7 = i6 + i2;
                    long jM35693if = m35693if(m35680break(i5 * jArr[i7], Ctry.f32325super, Ctry.f32303default), Ctry.f32325super, 15, 34);
                    jArr[i7] = m35693if(jArr[i6] + (2259451906L - jM35693if), Ctry.f32325super, 15, 34);
                    jArr[i6] = m35693if(jArr[i6] + jM35693if, Ctry.f32325super, 15, 34);
                    i6++;
                }
                i3 = i6 + i2;
                i = i4;
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m35684const(long[] jArr, long[] jArr2) {
        int i = 0;
        for (int i2 = 512; i2 > 0; i2 >>= 1) {
            int i3 = 0;
            while (i3 < 1024) {
                int i4 = i + 1;
                long j = jArr2[i];
                int i5 = i3;
                while (i5 < i3 + i2) {
                    int i6 = i5 + i2;
                    long jM35680break = m35680break(jArr[i6] * j, Ctry.f32300class, Ctry.f32323static);
                    jArr[i6] = jArr[i5] + (485978113 - jM35680break);
                    jArr[i5] = jArr[i5] + jM35680break;
                    i5++;
                }
                i3 = i5 + i2;
                i = i4;
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static void m35685default(int[] iArr, short[] sArr, int[] iArr2, short[] sArr2, int i, int i2) {
        q3.g(iArr, 0);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr2[i3];
            for (int i5 = 0; i5 < i4; i5++) {
                iArr[i5] = iArr[i5] - (sArr2[i3] * sArr[(i + i5) - i4]);
            }
            for (int i6 = i4; i6 < i; i6++) {
                iArr[i6] = iArr[i6] + (sArr2[i3] * sArr[i6 - i4]);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m35686do(int i, int i2, int i3, int i4) {
        return i - (((int) ((i * i3) >> i4)) * i2);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m35687else(long[] jArr, int i, long[] jArr2, int i2) {
        int i3 = 0;
        for (int i4 = 1; i4 < 2048; i4 *= 2) {
            int i5 = 0;
            while (i5 < 2048) {
                int i6 = i3 + 1;
                long j = jArr2[i2 + i3];
                int i7 = i5;
                while (i7 < i5 + i4) {
                    int i8 = i + i7;
                    long j2 = jArr[i8];
                    int i9 = i8 + i4;
                    jArr[i8] = m35693if(jArr[i9] + j2, Ctry.f32325super, 15, 34);
                    jArr[i9] = m35693if(m35680break((j2 + (2259451906L - jArr[i9])) * j, Ctry.f32325super, Ctry.f32303default), Ctry.f32325super, 15, 34);
                    i7++;
                }
                i5 = i7 + i4;
                i3 = i6;
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m35688extends(int[] iArr, int[] iArr2, int[] iArr3, short[] sArr, int i, int i2) {
        q3.g(iArr, 0);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr3[i3];
            for (int i5 = 0; i5 < i4; i5++) {
                iArr[i5] = iArr[i5] - (sArr[i3] * iArr2[(i + i5) - i4]);
            }
            for (int i6 = i4; i6 < i; i6++) {
                iArr[i6] = iArr[i6] + (sArr[i3] * iArr2[i6 - i4]);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m35689final(int[] iArr, int[] iArr2, int[] iArr3, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = iArr2[i2] + iArr3[i2];
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m35690finally(long[] jArr, int i, int[] iArr, int i2, int[] iArr2, short[] sArr, int i3, int i4, int i5, int i6, int i7) {
        q3.j(jArr, 0L);
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = iArr2[i8];
            for (int i10 = 0; i10 < i9; i10++) {
                int i11 = i + i10;
                jArr[i11] = jArr[i11] - (sArr[i8] * iArr[((i2 + i3) + i10) - i9]);
            }
            for (int i12 = i9; i12 < i3; i12++) {
                int i13 = i + i12;
                jArr[i13] = jArr[i13] + (sArr[i8] * iArr[(i2 + i12) - i9]);
            }
        }
        for (int i14 = 0; i14 < i3; i14++) {
            int i15 = i + i14;
            jArr[i15] = m35693if(jArr[i15], i5, i6, i7);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m35691for(int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, long j) {
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = m35703this(iArr2[i3] * iArr3[i3], i2, j);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m35692goto(long[] jArr, int i, long[] jArr2, int i2) {
        int i3 = 1;
        int i4 = 0;
        while (true) {
            if (i3 >= 1024) {
                return;
            }
            int i5 = 0;
            while (i5 < 1024) {
                int i6 = i4 + 1;
                long j = jArr2[i2 + i4];
                int i7 = i5;
                while (i7 < i5 + i3) {
                    int i8 = i + i7;
                    long j2 = jArr[i8];
                    int i9 = i8 + i3;
                    jArr[i8] = j2 + jArr[i9];
                    jArr[i9] = m35680break(j * (j2 + (971956226 - jArr[i9])), Ctry.f32300class, Ctry.f32323static);
                    i7++;
                }
                i5 = i7 + i3;
                i4 = i6;
            }
            int i10 = i3 * 2;
            int i11 = 0;
            for (int i12 = 1024; i11 < i12; i12 = 1024) {
                int i13 = i4 + 1;
                long j3 = jArr2[i2 + i4];
                int i14 = i11;
                while (i14 < i11 + i10) {
                    int i15 = i + i14;
                    long j4 = jArr[i15];
                    int i16 = i15 + i10;
                    jArr[i15] = m35693if(j4 + jArr[i16], Ctry.f32300class, 1, 29);
                    jArr[i16] = m35680break(j3 * (j4 + (971956226 - jArr[i16])), Ctry.f32300class, Ctry.f32323static);
                    i14++;
                    i11 = i11;
                }
                i11 = i14 + i10;
                i4 = i13;
            }
            i3 = i10 * 2;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static long m35693if(long j, int i, int i2, int i3) {
        return j - (((i2 * j) >> i3) * i);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m35694import(long[] jArr, int i, long[] jArr2, int i2, long[] jArr3, int i3, int i4, int i5, long j) {
        m35696new(jArr, i, jArr2, i2, jArr3, i3, i4, i5, j);
        if (i5 == 485978113) {
            m35692goto(jArr, i, Cgoto.f32290if, 0);
        }
        if (i5 == 1129725953) {
            m35687else(jArr, i, Cgoto.f32291new, 0);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m35695native(long[] jArr, long[] jArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = jArr2[i2];
        }
        if (i == 1024) {
            m35684const(jArr, Cgoto.f32288do);
        }
        if (i == 2048) {
            m35683class(jArr, Cgoto.f32289for);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m35696new(long[] jArr, int i, long[] jArr2, int i2, long[] jArr3, int i3, int i4, int i5, long j) {
        for (int i6 = 0; i6 < i4; i6++) {
            jArr[i + i6] = m35680break(jArr2[i2 + i6] * jArr3[i3 + i6], i5, j);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static void m35697package(long[] jArr, int i, byte[] bArr, int i2, int[] iArr, short[] sArr, int i3, int i4) {
        q3.j(jArr, 0L);
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = iArr[i5];
            for (int i7 = 0; i7 < i6; i7++) {
                int i8 = i + i7;
                jArr[i8] = jArr[i8] - (sArr[i5] * bArr[((i2 + i3) + i7) - i6]);
            }
            for (int i9 = i6; i9 < i3; i9++) {
                int i10 = i + i9;
                jArr[i10] = jArr[i10] + (sArr[i5] * bArr[(i2 + i9) - i6]);
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m35698public(long[] jArr, int i, long[] jArr2, int i2, long[] jArr3, int i3, int i4, int i5, int i6, int i7) {
        for (int i8 = 0; i8 < i4; i8++) {
            jArr[i + i8] = m35693if(jArr2[i2 + i8] - jArr3[i3 + i8], i5, i6, i7);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m35699return(int[] iArr, int[] iArr2, int[] iArr3, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = iArr2[i3] - iArr3[i3];
            iArr[i3] = iArr[i3] + ((iArr[i3] >> 31) & i2);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m35700static(int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, long j, int i3) {
        for (int i4 = 0; i4 < i; i4++) {
            iArr[i4] = m35703this(i3 * (iArr2[i4] - iArr3[i4]), i2, j);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m35701super(long[] jArr, int i, long[] jArr2, int i2, long[] jArr3, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            jArr[i + i5] = jArr2[i2 + i5] + jArr3[i3 + i5];
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m35702switch(int[] iArr, byte[] bArr, int i, int i2, int i3, long j, int i4, int i5, int i6) {
        byte[] bArr2;
        int i7;
        int i8;
        int i9;
        byte[] bArr3;
        int i10;
        int i11 = (i4 + 7) / 8;
        int i12 = (1 << i4) - 1;
        int i13 = i5;
        int i14 = i13 * 168;
        byte[] bArr4 = new byte[i14];
        byte[] bArr5 = bArr4;
        Cfor.m35715do(bArr4, 0, i14, (short) 0, bArr, i, 32);
        short s = (short) 1;
        int i15 = 0;
        int i16 = 0;
        while (i15 < i2) {
            if (i16 > (i13 * 168) - (i11 * 4)) {
                bArr2 = bArr5;
                Cfor.m35715do(bArr2, 0, 168, s, bArr, i, 32);
                s = (short) (s + 1);
                i13 = 1;
                i16 = 0;
            } else {
                bArr2 = bArr5;
            }
            int iM35712if = Cdo.m35712if(bArr2, i16) & i12;
            int i17 = i16 + i11;
            int iM35712if2 = Cdo.m35712if(bArr2, i17) & i12;
            int i18 = i17 + i11;
            int iM35712if3 = Cdo.m35712if(bArr2, i18) & i12;
            int i19 = i18 + i11;
            int iM35712if4 = Cdo.m35712if(bArr2, i19) & i12;
            int i20 = i19 + i11;
            if (iM35712if >= i3 || i15 >= i2) {
                i7 = i12;
                i8 = i13;
                i9 = i20;
                bArr3 = bArr2;
            } else {
                i7 = i12;
                i8 = i13;
                long j2 = iM35712if;
                i9 = i20;
                bArr3 = bArr2;
                iArr[i15] = m35703this(j2 * i6, i3, j);
                i15++;
            }
            if (iM35712if2 < i3 && i15 < i2) {
                iArr[i15] = m35703this(iM35712if2 * i6, i3, j);
                i15++;
            }
            if (iM35712if3 >= i3 || i15 >= i2) {
                i10 = i11;
            } else {
                i10 = i11;
                iArr[i15] = m35703this(iM35712if3 * i6, i3, j);
                i15++;
            }
            if (iM35712if4 < i3 && i15 < i2) {
                iArr[i15] = m35703this(iM35712if4 * i6, i3, j);
                i15++;
            }
            i11 = i10;
            bArr5 = bArr3;
            i12 = i7;
            i16 = i9;
            i13 = i8;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static int m35703this(long j, int i, long j2) {
        return (int) ((j + (((j2 * j) & 4294967295L) * i)) >> 32);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m35704throw(int[] iArr, int[] iArr2, int[] iArr3, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = iArr2[i3] + iArr3[i3];
            iArr[i3] = iArr[i3] + ((iArr[i3] >> 31) & i2);
            iArr[i3] = iArr[i3] - i2;
            iArr[i3] = iArr[i3] + ((iArr[i3] >> 31) & i2);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m35705throws(long[] jArr, byte[] bArr, int i, int i2, int i3, int i4, long j, int i5, int i6, int i7) {
        int i8;
        byte[] bArr2;
        int i9;
        int i10;
        int i11;
        byte[] bArr3;
        int i12 = (i5 + 7) / 8;
        int i13 = (1 << i5) - 1;
        int i14 = i6;
        int i15 = i14 * 168;
        byte[] bArr4 = new byte[i15];
        Cfor.m35715do(bArr4, 0, i15, (short) 0, bArr, i, 32);
        short s = (short) 1;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            int i18 = i2 * i3;
            if (i16 >= i18) {
                return;
            }
            if (i17 > (i14 * 168) - (i12 * 4)) {
                i8 = i18;
                Cfor.m35715do(bArr4, 0, 168, s, bArr, i, 32);
                bArr2 = bArr4;
                s = (short) (s + 1);
                i14 = 1;
                i17 = 0;
            } else {
                i8 = i18;
                bArr2 = bArr4;
            }
            int iM35712if = Cdo.m35712if(bArr2, i17) & i13;
            int i19 = i17 + i12;
            int iM35712if2 = Cdo.m35712if(bArr2, i19) & i13;
            int i20 = i19 + i12;
            int iM35712if3 = Cdo.m35712if(bArr2, i20) & i13;
            int i21 = i20 + i12;
            int iM35712if4 = Cdo.m35712if(bArr2, i21) & i13;
            int i22 = i21 + i12;
            if (iM35712if >= i4 || i16 >= i8) {
                i9 = i13;
                i10 = i14;
                i11 = i22;
                bArr3 = bArr2;
            } else {
                i9 = i13;
                i10 = i14;
                long j2 = iM35712if;
                i11 = i22;
                bArr3 = bArr2;
                jArr[i16] = m35680break(j2 * i7, i4, j);
                i16++;
            }
            if (iM35712if2 < i4 && i16 < i8) {
                jArr[i16] = m35680break(iM35712if2 * i7, i4, j);
                i16++;
            }
            if (iM35712if3 < i4 && i16 < i8) {
                jArr[i16] = m35680break(iM35712if3 * i7, i4, j);
                i16++;
            }
            if (iM35712if4 >= i4 || i16 >= i8) {
                i14 = i10;
            } else {
                jArr[i16] = m35680break(iM35712if4 * i7, i4, j);
                i14 = i10;
                i16++;
            }
            bArr4 = bArr3;
            i13 = i9;
            i17 = i11;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static void m35706try(int[] iArr, int[] iArr2, int i, int i2, long j, int i3, int i4, int i5) {
        int i6 = 1;
        int i7 = 0;
        while (i6 < i) {
            int i8 = 0;
            while (i8 < i) {
                int i9 = i7 + 1;
                long j2 = iArr2[i7];
                int i10 = i8;
                while (i10 < i8 + i6) {
                    int i11 = iArr[i10];
                    if (i6 == 16) {
                        iArr[i10] = m35686do(iArr[i10 + i6] + i11, i2, i4, i5);
                    } else {
                        iArr[i10] = iArr[i10 + i6] + i11;
                    }
                    iArr[i10 + i6] = m35703this((i11 - iArr[r12]) * j2, i2, j);
                    i10++;
                    i6 = i6;
                }
                i8 = i10 + i6;
                i7 = i9;
            }
            i6 *= 2;
        }
        for (int i12 = 0; i12 < i / 2; i12++) {
            iArr[i12] = m35703this(i3 * iArr[i12], i2, j);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static void m35707while(int[] iArr, int[] iArr2, int[] iArr3, int i, int i2, long j, int[] iArr4) {
        int[] iArr5 = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            iArr5[i3] = iArr3[i3];
        }
        m35682catch(iArr5, iArr4, i, i2, j);
        m35691for(iArr, iArr2, iArr5, i, i2, j);
        if (i2 == 4205569) {
            m35681case(iArr, Celse.f32283if);
        }
        if (i2 == 4206593) {
            m35706try(iArr, Celse.f32284new, 1024, Ctry.f32301const, Ctry.f32326switch, Ctry.u0, 1021, 32);
        }
        if (i2 == 8404993) {
            m35706try(iArr, Celse.f32280case, 1024, Ctry.f32307final, Ctry.f32330throws, Ctry.v0, 511, 32);
        }
    }
}
