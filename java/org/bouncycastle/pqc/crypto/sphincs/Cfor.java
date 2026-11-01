package org.bouncycastle.pqc.crypto.sphincs;

import android.support.v4.ib1;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final int f32341do = 12;

    /* renamed from: for, reason: not valid java name */
    public static int m35788for(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35789if(int i, int[] iArr) {
        int i2 = 16;
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c = 0;
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = iArr[5];
        int i9 = iArr[6];
        int i10 = 7;
        int i11 = iArr[7];
        int i12 = 8;
        int i13 = iArr[8];
        int i14 = iArr[9];
        int i15 = iArr[10];
        int i16 = iArr[11];
        int i17 = iArr[12];
        int i18 = iArr[13];
        int i19 = iArr[14];
        int iM35788for = iArr[15];
        int iM35788for2 = i19;
        int iM35788for3 = i18;
        int iM35788for4 = i17;
        int i20 = i16;
        int i21 = i15;
        int i22 = i14;
        int i23 = i13;
        int iM35788for5 = i11;
        int iM35788for6 = i9;
        int iM35788for7 = i8;
        int iM35788for8 = i7;
        int i24 = i6;
        int i25 = i5;
        int i26 = i4;
        int i27 = i3;
        int i28 = i;
        while (i28 > 0) {
            int i29 = i27 + iM35788for8;
            int iM35788for9 = m35788for(iM35788for4 ^ i29, i2);
            int i30 = i23 + iM35788for9;
            int iM35788for10 = m35788for(iM35788for8 ^ i30, 12);
            int i31 = i29 + iM35788for10;
            int iM35788for11 = m35788for(iM35788for9 ^ i31, i12);
            int i32 = i30 + iM35788for11;
            int iM35788for12 = m35788for(iM35788for10 ^ i32, i10);
            int i33 = i26 + iM35788for7;
            int iM35788for13 = m35788for(iM35788for3 ^ i33, i2);
            int i34 = i22 + iM35788for13;
            int iM35788for14 = m35788for(iM35788for7 ^ i34, 12);
            int i35 = i33 + iM35788for14;
            int iM35788for15 = m35788for(iM35788for13 ^ i35, i12);
            int i36 = i34 + iM35788for15;
            int iM35788for16 = m35788for(iM35788for14 ^ i36, i10);
            int i37 = i25 + iM35788for6;
            int iM35788for17 = m35788for(iM35788for2 ^ i37, i2);
            int i38 = i21 + iM35788for17;
            int iM35788for18 = m35788for(iM35788for6 ^ i38, 12);
            int i39 = i37 + iM35788for18;
            int iM35788for19 = m35788for(iM35788for17 ^ i39, i12);
            int i40 = i38 + iM35788for19;
            int iM35788for20 = m35788for(iM35788for18 ^ i40, i10);
            int i41 = i24 + iM35788for5;
            int iM35788for21 = m35788for(iM35788for ^ i41, i2);
            int i42 = i20 + iM35788for21;
            int iM35788for22 = m35788for(iM35788for5 ^ i42, 12);
            int i43 = i41 + iM35788for22;
            int iM35788for23 = m35788for(iM35788for21 ^ i43, i12);
            int i44 = i42 + iM35788for23;
            int iM35788for24 = m35788for(iM35788for22 ^ i44, 7);
            int i45 = i31 + iM35788for16;
            int iM35788for25 = m35788for(iM35788for23 ^ i45, 16);
            int i46 = i40 + iM35788for25;
            int iM35788for26 = m35788for(iM35788for16 ^ i46, 12);
            i27 = i45 + iM35788for26;
            iM35788for = m35788for(iM35788for25 ^ i27, 8);
            i21 = i46 + iM35788for;
            iM35788for7 = m35788for(iM35788for26 ^ i21, 7);
            int i47 = i35 + iM35788for20;
            int iM35788for27 = m35788for(iM35788for11 ^ i47, 16);
            int i48 = i44 + iM35788for27;
            int iM35788for28 = m35788for(iM35788for20 ^ i48, 12);
            i26 = i47 + iM35788for28;
            iM35788for4 = m35788for(iM35788for27 ^ i26, 8);
            i20 = i48 + iM35788for4;
            iM35788for6 = m35788for(iM35788for28 ^ i20, 7);
            int i49 = i39 + iM35788for24;
            int iM35788for29 = m35788for(iM35788for15 ^ i49, 16);
            int i50 = i32 + iM35788for29;
            int iM35788for30 = m35788for(iM35788for24 ^ i50, 12);
            i25 = i49 + iM35788for30;
            iM35788for3 = m35788for(iM35788for29 ^ i25, 8);
            i23 = i50 + iM35788for3;
            iM35788for5 = m35788for(iM35788for30 ^ i23, 7);
            int i51 = i43 + iM35788for12;
            i2 = 16;
            int iM35788for31 = m35788for(iM35788for19 ^ i51, 16);
            int i52 = i36 + iM35788for31;
            int iM35788for32 = m35788for(iM35788for12 ^ i52, 12);
            i24 = i51 + iM35788for32;
            iM35788for2 = m35788for(iM35788for31 ^ i24, 8);
            i22 = i52 + iM35788for2;
            iM35788for8 = m35788for(iM35788for32 ^ i22, 7);
            i28 -= 2;
            c = 0;
            i12 = 8;
            i10 = 7;
        }
        iArr[c] = i27;
        iArr[1] = i26;
        iArr[2] = i25;
        iArr[3] = i24;
        iArr[4] = iM35788for8;
        iArr[5] = iM35788for7;
        iArr[6] = iM35788for6;
        iArr[7] = iM35788for5;
        iArr[8] = i23;
        iArr[9] = i22;
        iArr[10] = i21;
        iArr[11] = i20;
        iArr[12] = iM35788for4;
        iArr[13] = iM35788for3;
        iArr[14] = iM35788for2;
        iArr[15] = iM35788for;
    }

    /* renamed from: do, reason: not valid java name */
    public void m35790do(byte[] bArr, byte[] bArr2) {
        int[] iArr = new int[16];
        for (int i = 0; i < 16; i++) {
            iArr[i] = ib1.m3357final(bArr2, i * 4);
        }
        m35789if(12, iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            ib1.m3347break(iArr[i2], bArr, i2 * 4);
        }
    }
}
