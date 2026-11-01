package android.support.v4;

/* loaded from: classes3.dex */
public abstract class lg2 {

    /* renamed from: do, reason: not valid java name */
    public static final int f3651do = 10;

    /* renamed from: for, reason: not valid java name */
    private static final int f3652for = 33554431;

    /* renamed from: if, reason: not valid java name */
    private static final int f3653if = 16777215;

    /* renamed from: new, reason: not valid java name */
    private static final int f3654new = 67108863;

    /* renamed from: try, reason: not valid java name */
    private static final int[] f3655try = {34513072, 59165138, 4688974, 3500415, 6194736, 33281959, 54535759, 32551604, 163342, 5703241};

    private lg2() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m4652abstract(int[] iArr) {
        iArr[0] = iArr[0] - 1;
    }

    /* renamed from: break, reason: not valid java name */
    public static void m4653break(int i, int[] iArr, int[] iArr2) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 10; i3++) {
            int i4 = iArr[i3];
            int i5 = iArr2[i3];
            int i6 = (i4 ^ i5) & i2;
            iArr[i3] = i4 ^ i6;
            iArr2[i3] = i5 ^ i6;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m4654case(int i, int[] iArr) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 10; i3++) {
            iArr[i3] = (iArr[i3] ^ i2) - i2;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m4655catch(byte[] bArr, int i, int[] iArr) {
        m4656class(bArr, i, iArr, 0);
        m4656class(bArr, i + 16, iArr, 5);
        iArr[9] = iArr[9] & 16777215;
    }

    /* renamed from: class, reason: not valid java name */
    private static void m4656class(byte[] bArr, int i, int[] iArr, int i2) {
        int iM4657const = m4657const(bArr, i + 0);
        int iM4657const2 = m4657const(bArr, i + 4);
        int iM4657const3 = m4657const(bArr, i + 8);
        int iM4657const4 = m4657const(bArr, i + 12);
        iArr[i2 + 0] = iM4657const & f3654new;
        iArr[i2 + 1] = ((iM4657const >>> 26) | (iM4657const2 << 6)) & f3654new;
        iArr[i2 + 2] = ((iM4657const3 << 12) | (iM4657const2 >>> 20)) & f3652for;
        iArr[i2 + 3] = ((iM4657const4 << 19) | (iM4657const3 >>> 13)) & f3654new;
        iArr[i2 + 4] = iM4657const4 >>> 7;
    }

    /* renamed from: const, reason: not valid java name */
    private static int m4657const(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 8);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] << t3.f6397package) | i4 | ((bArr[i5] & 255) << 16);
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m4658continue(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            iArr[i] = 0;
        }
    }

    /* renamed from: default, reason: not valid java name */
    private static void m4659default(int[] iArr, int i) {
        int i2 = iArr[9];
        int i3 = 16777215 & i2;
        int i4 = (((i2 >> 24) + i) * 19) + iArr[0];
        iArr[0] = i4 & f3654new;
        int i5 = (i4 >> 26) + iArr[1];
        iArr[1] = i5 & f3654new;
        int i6 = (i5 >> 26) + iArr[2];
        iArr[2] = i6 & f3652for;
        int i7 = (i6 >> 25) + iArr[3];
        iArr[3] = i7 & f3654new;
        int i8 = (i7 >> 26) + iArr[4];
        iArr[4] = i8 & f3652for;
        int i9 = (i8 >> 25) + iArr[5];
        iArr[5] = i9 & f3654new;
        int i10 = (i9 >> 26) + iArr[6];
        iArr[6] = i10 & f3654new;
        int i11 = (i10 >> 26) + iArr[7];
        iArr[7] = f3652for & i11;
        int i12 = (i11 >> 25) + iArr[8];
        iArr[8] = f3654new & i12;
        iArr[9] = (i12 >> 26) + i3;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4660do(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 10; i++) {
            iArr3[i] = iArr[i] + iArr2[i];
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m4661else(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 0; i3 < 10; i3++) {
            iArr2[i2 + i3] = iArr[i + i3];
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m4662extends(int[] iArr, int i, int[] iArr2) {
        m4664finally(iArr, iArr2);
        while (true) {
            i--;
            if (i <= 0) {
                return;
            } else {
                m4664finally(iArr2, iArr2);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m4663final(int[] iArr, byte[] bArr, int i) {
        m4676super(iArr, 0, bArr, i);
        m4676super(iArr, 5, bArr, i + 16);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m4664finally(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        long j = i;
        long j2 = j * j;
        long j3 = i2 * 2;
        long j4 = j * j3;
        long j5 = i3 * 2;
        long j6 = i2;
        long j7 = (j * j5) + (j6 * j6);
        long j8 = i4 * 2;
        long j9 = (j3 * j5) + (j * j8);
        long j10 = i5 * 2;
        long j11 = (i3 * j5) + (j * j10) + (j6 * j8);
        long j12 = (j3 * j10) + (j8 * j5);
        long j13 = i4;
        long j14 = (j5 * j10) + (j13 * j13);
        long j15 = j13 * j10;
        long j16 = i5 * j10;
        int i11 = i10 * 2;
        long j17 = i6;
        long j18 = j17 * j17;
        long j19 = i7 * 2;
        long j20 = j17 * j19;
        long j21 = i8 * 2;
        long j22 = i7;
        long j23 = (j17 * j21) + (j22 * j22);
        long j24 = i9 * 2;
        long j25 = (j19 * j21) + (j17 * j24);
        long j26 = i11;
        long j27 = (i8 * j21) + (j17 * j26) + (j22 * j24);
        long j28 = i9;
        long j29 = j2 - (((j19 * j26) + (j24 * j21)) * 38);
        long j30 = j4 - (((j21 * j26) + (j28 * j28)) * 38);
        long j31 = j7 - ((j28 * j26) * 38);
        long j32 = j9 - ((i10 * j26) * 38);
        long j33 = j12 - j18;
        long j34 = j14 - j20;
        long j35 = j15 - j23;
        long j36 = j16 - j25;
        int i12 = i2 + i7;
        int i13 = i3 + i8;
        int i14 = i4 + i9;
        int i15 = i5 + i10;
        long j37 = i + i6;
        long j38 = j37 * j37;
        long j39 = i12 * 2;
        long j40 = j37 * j39;
        long j41 = i13 * 2;
        long j42 = i12;
        long j43 = (j37 * j41) + (j42 * j42);
        long j44 = i14 * 2;
        long j45 = (j39 * j41) + (j37 * j44);
        long j46 = i15 * 2;
        long j47 = (i13 * j41) + (j37 * j46) + (j42 * j44);
        long j48 = (j39 * j46) + (j44 * j41);
        long j49 = i14;
        long j50 = (j41 * j46) + (j49 * j49);
        long j51 = j49 * j46;
        long j52 = i15 * j46;
        long j53 = j36 + (j45 - j32);
        int i16 = ((int) j53) & f3654new;
        long j54 = (j53 >> 26) + ((j47 - j11) - j27);
        int i17 = ((int) j54) & f3652for;
        long j55 = j29 + ((((j54 >> 25) + j48) - j33) * 38);
        iArr2[0] = ((int) j55) & f3654new;
        long j56 = (j55 >> 26) + j30 + ((j50 - j34) * 38);
        iArr2[1] = ((int) j56) & f3654new;
        long j57 = (j56 >> 26) + j31 + ((j51 - j35) * 38);
        iArr2[2] = ((int) j57) & f3652for;
        long j58 = (j57 >> 25) + j32 + ((j52 - j36) * 38);
        iArr2[3] = ((int) j58) & f3654new;
        long j59 = (j58 >> 26) + j11 + (38 * j27);
        iArr2[4] = ((int) j59) & f3652for;
        long j60 = (j59 >> 25) + j33 + (j38 - j29);
        iArr2[5] = ((int) j60) & f3654new;
        long j61 = (j60 >> 26) + j34 + (j40 - j30);
        iArr2[6] = ((int) j61) & f3654new;
        long j62 = (j61 >> 26) + j35 + (j43 - j31);
        iArr2[7] = ((int) j62) & f3652for;
        long j63 = (j62 >> 25) + i16;
        iArr2[8] = ((int) j63) & f3654new;
        iArr2[9] = i17 + ((int) (j63 >> 26));
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4665for(int[] iArr, int i) {
        iArr[i] = iArr[i] + 1;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int[] m4666goto() {
        return new int[10];
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4667if(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m4668import(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            i |= iArr[i2];
        }
        return i == 0;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m4669native(int[] iArr, int i, int[] iArr2) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        long j = i;
        long j2 = i4 * j;
        int i12 = ((int) j2) & f3652for;
        long j3 = i6 * j;
        int i13 = ((int) j3) & f3652for;
        long j4 = i9 * j;
        int i14 = ((int) j4) & f3652for;
        long j5 = i11 * j;
        int i15 = ((int) j5) & f3652for;
        long j6 = ((j5 >> 25) * 38) + (i2 * j);
        iArr2[0] = ((int) j6) & f3654new;
        long j7 = (j3 >> 25) + (i7 * j);
        iArr2[5] = ((int) j7) & f3654new;
        long j8 = (j6 >> 26) + (i3 * j);
        iArr2[1] = ((int) j8) & f3654new;
        long j9 = (j2 >> 25) + (i5 * j);
        iArr2[3] = ((int) j9) & f3654new;
        long j10 = (j7 >> 26) + (i8 * j);
        iArr2[6] = ((int) j10) & f3654new;
        long j11 = (j4 >> 25) + (i10 * j);
        iArr2[8] = ((int) j11) & f3654new;
        iArr2[2] = i12 + ((int) (j8 >> 26));
        iArr2[4] = i13 + ((int) (j9 >> 26));
        iArr2[7] = i14 + ((int) (j10 >> 26));
        iArr2[9] = i15 + ((int) (j11 >> 26));
    }

    /* renamed from: new, reason: not valid java name */
    public static void m4670new(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i = 0; i < 10; i++) {
            int i2 = iArr[i];
            int i3 = iArr2[i];
            iArr3[i] = i2 + i3;
            iArr4[i] = i2 - i3;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m4671package(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM4666goto = m4666goto();
        int[] iArrM4666goto2 = m4666goto();
        m4673public(iArr, iArr2, iArrM4666goto);
        m4664finally(iArr2, iArrM4666goto2);
        m4673public(iArrM4666goto, iArrM4666goto2, iArrM4666goto);
        m4664finally(iArrM4666goto2, iArrM4666goto2);
        m4673public(iArrM4666goto2, iArrM4666goto, iArrM4666goto2);
        int[] iArrM4666goto3 = m4666goto();
        int[] iArrM4666goto4 = m4666goto();
        m4680throws(iArrM4666goto2, iArrM4666goto3, iArrM4666goto4);
        m4673public(iArrM4666goto4, iArrM4666goto, iArrM4666goto4);
        int[] iArrM4666goto5 = m4666goto();
        m4664finally(iArrM4666goto4, iArrM4666goto5);
        m4673public(iArrM4666goto5, iArr2, iArrM4666goto5);
        m4672private(iArrM4666goto5, iArr, iArrM4666goto3);
        m4675static(iArrM4666goto3);
        if (m4668import(iArrM4666goto3)) {
            m4661else(iArrM4666goto4, 0, iArr3, 0);
            return true;
        }
        m4660do(iArrM4666goto5, iArr, iArrM4666goto3);
        m4675static(iArrM4666goto3);
        if (!m4668import(iArrM4666goto3)) {
            return false;
        }
        m4673public(iArrM4666goto4, f3655try, iArr3);
        return true;
    }

    /* renamed from: private, reason: not valid java name */
    public static void m4672private(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 10; i++) {
            iArr3[i] = iArr[i] - iArr2[i];
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m4673public(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = iArr[0];
        int i2 = iArr2[0];
        int i3 = iArr[1];
        int i4 = iArr2[1];
        int i5 = iArr[2];
        int i6 = iArr2[2];
        int i7 = iArr[3];
        int i8 = iArr2[3];
        int i9 = iArr[4];
        int i10 = iArr2[4];
        int i11 = iArr[5];
        int i12 = iArr2[5];
        int i13 = iArr[6];
        int i14 = iArr2[6];
        int i15 = iArr[7];
        int i16 = iArr2[7];
        int i17 = iArr[8];
        int i18 = iArr2[8];
        int i19 = iArr[9];
        int i20 = iArr2[9];
        long j = i;
        long j2 = i2;
        long j3 = j * j2;
        long j4 = i4;
        long j5 = i3;
        long j6 = (j * j4) + (j5 * j2);
        long j7 = i6;
        long j8 = i5;
        long j9 = (j * j7) + (j5 * j4) + (j8 * j2);
        long j10 = ((j5 * j7) + (j8 * j4)) << 1;
        long j11 = i8;
        long j12 = j * j11;
        long j13 = i7;
        long j14 = j10 + j12 + (j13 * j2);
        long j15 = (j8 * j7) << 1;
        long j16 = i10;
        long j17 = (j * j16) + (j5 * j11) + (j13 * j4);
        long j18 = i9;
        long j19 = j15 + j17 + (j2 * j18);
        long j20 = ((((j5 * j16) + (j8 * j11)) + (j13 * j7)) + (j18 * j4)) << 1;
        long j21 = (((j8 * j16) + (j18 * j7)) << 1) + (j13 * j11);
        long j22 = (j13 * j16) + (j18 * j11);
        long j23 = (j18 * j16) << 1;
        long j24 = i11;
        long j25 = i12;
        long j26 = j24 * j25;
        long j27 = i14;
        long j28 = i13;
        long j29 = (j24 * j27) + (j28 * j25);
        long j30 = i16;
        long j31 = i15;
        long j32 = (j24 * j30) + (j28 * j27) + (j31 * j25);
        long j33 = i18;
        long j34 = i17;
        long j35 = (((j28 * j30) + (j31 * j27)) << 1) + (j24 * j33) + (j34 * j25);
        long j36 = (j31 * j30) << 1;
        long j37 = i20;
        long j38 = (j24 * j37) + (j28 * j33) + (j34 * j27);
        long j39 = i19;
        long j40 = j36 + j38 + (j25 * j39);
        long j41 = j3 - (((((j28 * j37) + (j31 * j33)) + (j34 * j30)) + (j39 * j27)) * 76);
        long j42 = j6 - (((((j31 * j37) + (j39 * j30)) << 1) + (j34 * j33)) * 38);
        long j43 = j9 - (((j34 * j37) + (j33 * j39)) * 38);
        long j44 = j14 - ((j39 * j37) * 76);
        long j45 = j20 - j26;
        long j46 = j21 - j29;
        long j47 = j22 - j32;
        long j48 = j23 - j35;
        int i21 = i + i11;
        int i22 = i3 + i13;
        int i23 = i5 + i15;
        int i24 = i6 + i16;
        int i25 = i7 + i17;
        int i26 = i9 + i19;
        long j49 = i21;
        long j50 = i2 + i12;
        long j51 = i4 + i14;
        long j52 = i22;
        long j53 = (j49 * j51) + (j52 * j50);
        long j54 = i24;
        long j55 = i23;
        long j56 = (j49 * j54) + (j52 * j51) + (j55 * j50);
        long j57 = ((j52 * j54) + (j55 * j51)) << 1;
        long j58 = i8 + i18;
        long j59 = i25;
        long j60 = i10 + i20;
        long j61 = i26;
        long j62 = ((((j52 * j60) + (j55 * j58)) + (j59 * j54)) + (j61 * j51)) << 1;
        long j63 = (((j55 * j60) + (j61 * j54)) << 1) + (j59 * j58);
        long j64 = j48 + ((j57 + ((j49 * j58) + (j59 * j50))) - j44);
        int i27 = ((int) j64) & f3654new;
        long j65 = (j64 >> 26) + (((((j55 * j54) << 1) + ((((j49 * j60) + (j52 * j58)) + (j59 * j51)) + (j50 * j61))) - j19) - j40);
        int i28 = ((int) j65) & f3652for;
        long j66 = j41 + ((((j65 >> 25) + j62) - j45) * 38);
        iArr3[0] = ((int) j66) & f3654new;
        long j67 = (j66 >> 26) + j42 + ((j63 - j46) * 38);
        iArr3[1] = ((int) j67) & f3654new;
        long j68 = (j67 >> 26) + j43 + ((((j59 * j60) + (j61 * j58)) - j47) * 38);
        iArr3[2] = ((int) j68) & f3652for;
        long j69 = (j68 >> 25) + j44 + ((((j61 * j60) << 1) - j48) * 38);
        iArr3[3] = ((int) j69) & f3654new;
        long j70 = (j69 >> 26) + j19 + (j40 * 38);
        iArr3[4] = ((int) j70) & f3652for;
        long j71 = (j70 >> 25) + j45 + ((j49 * j50) - j41);
        iArr3[5] = ((int) j71) & f3654new;
        long j72 = (j71 >> 26) + j46 + (j53 - j42);
        iArr3[6] = ((int) j72) & f3654new;
        long j73 = (j72 >> 26) + j47 + (j56 - j43);
        iArr3[7] = ((int) j73) & f3652for;
        long j74 = (j73 >> 25) + i27;
        iArr3[8] = ((int) j74) & f3654new;
        iArr3[9] = i28 + ((int) (j74 >> 26));
    }

    /* renamed from: return, reason: not valid java name */
    public static void m4674return(int[] iArr, int[] iArr2) {
        for (int i = 0; i < 10; i++) {
            iArr2[i] = -iArr[i];
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m4675static(int[] iArr) {
        int i = (iArr[9] >>> 23) & 1;
        m4659default(iArr, i);
        m4659default(iArr, -i);
    }

    /* renamed from: super, reason: not valid java name */
    private static void m4676super(int[] iArr, int i, byte[] bArr, int i2) {
        int i3 = iArr[i + 0];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        m4679throw((i4 << 26) | i3, bArr, i2 + 0);
        m4679throw((i4 >>> 6) | (i5 << 20), bArr, i2 + 4);
        m4679throw((i5 >>> 12) | (i6 << 13), bArr, i2 + 8);
        m4679throw((i7 << 7) | (i6 >>> 19), bArr, i2 + 12);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m4677switch(int[] iArr) {
        iArr[0] = 1;
        for (int i = 1; i < 10; i++) {
            iArr[i] = 0;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int[] m4678this(int i) {
        return new int[i * 10];
    }

    /* renamed from: throw, reason: not valid java name */
    private static void m4679throw(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 8);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >>> 16);
        bArr[i4 + 1] = (byte) (i >>> 24);
    }

    /* renamed from: throws, reason: not valid java name */
    private static void m4680throws(int[] iArr, int[] iArr2, int[] iArr3) {
        m4664finally(iArr, iArr2);
        m4673public(iArr, iArr2, iArr2);
        int[] iArrM4666goto = m4666goto();
        m4664finally(iArr2, iArrM4666goto);
        m4673public(iArr, iArrM4666goto, iArrM4666goto);
        m4662extends(iArrM4666goto, 2, iArrM4666goto);
        m4673public(iArr2, iArrM4666goto, iArrM4666goto);
        int[] iArrM4666goto2 = m4666goto();
        m4662extends(iArrM4666goto, 5, iArrM4666goto2);
        m4673public(iArrM4666goto, iArrM4666goto2, iArrM4666goto2);
        int[] iArrM4666goto3 = m4666goto();
        m4662extends(iArrM4666goto2, 5, iArrM4666goto3);
        m4673public(iArrM4666goto, iArrM4666goto3, iArrM4666goto3);
        m4662extends(iArrM4666goto3, 10, iArrM4666goto);
        m4673public(iArrM4666goto2, iArrM4666goto, iArrM4666goto);
        m4662extends(iArrM4666goto, 25, iArrM4666goto2);
        m4673public(iArrM4666goto, iArrM4666goto2, iArrM4666goto2);
        m4662extends(iArrM4666goto2, 25, iArrM4666goto3);
        m4673public(iArrM4666goto, iArrM4666goto3, iArrM4666goto3);
        m4662extends(iArrM4666goto3, 50, iArrM4666goto);
        m4673public(iArrM4666goto2, iArrM4666goto, iArrM4666goto);
        m4662extends(iArrM4666goto, 125, iArrM4666goto2);
        m4673public(iArrM4666goto, iArrM4666goto2, iArrM4666goto2);
        m4662extends(iArrM4666goto2, 2, iArrM4666goto);
        m4673public(iArrM4666goto, iArr, iArr3);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m4681try(int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = i4 + (i3 >> 25);
        int i12 = i3 & f3652for;
        int i13 = i6 + (i5 >> 25);
        int i14 = i5 & f3652for;
        int i15 = i9 + (i8 >> 25);
        int i16 = i8 & f3652for;
        int i17 = i + ((i10 >> 25) * 38);
        int i18 = i10 & f3652for;
        int i19 = i2 + (i17 >> 26);
        int i20 = i17 & f3654new;
        int i21 = i7 + (i13 >> 26);
        int i22 = i13 & f3654new;
        int i23 = i12 + (i19 >> 26);
        int i24 = i19 & f3654new;
        int i25 = i14 + (i11 >> 26);
        int i26 = i11 & f3654new;
        int i27 = i16 + (i21 >> 26);
        int i28 = i21 & f3654new;
        int i29 = i18 + (i15 >> 26);
        int i30 = i15 & f3654new;
        iArr[0] = i20;
        iArr[1] = i24;
        iArr[2] = i23;
        iArr[3] = i26;
        iArr[4] = i25;
        iArr[5] = i22;
        iArr[6] = i28;
        iArr[7] = i27;
        iArr[8] = i30;
        iArr[9] = i29;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m4682while(int[] iArr, int[] iArr2) {
        int[] iArrM4666goto = m4666goto();
        int[] iArrM4666goto2 = m4666goto();
        m4680throws(iArr, iArrM4666goto, iArrM4666goto2);
        m4662extends(iArrM4666goto2, 3, iArrM4666goto2);
        m4673public(iArrM4666goto2, iArrM4666goto, iArr2);
    }
}
