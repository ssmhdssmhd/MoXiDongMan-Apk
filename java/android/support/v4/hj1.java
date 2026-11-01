package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* loaded from: classes3.dex */
public class hj1 implements BlockCipher {

    /* renamed from: for, reason: not valid java name */
    private static byte[] f2424for = {ExifInterface.MARKER_EOI, 120, -7, -60, t3.f6398private, -35, -75, -19, 40, -23, -3, 121, 74, -96, -40, -99, -58, 126, 55, -125, 43, 118, 83, -114, 98, 76, 100, -120, 68, -117, -5, -94, t3.f6387finally, -102, 89, -11, -121, -77, 79, 19, 97, 69, 109, -115, 9, -127, 125, 50, -67, -113, Cfinal.f15506do, -21, -122, -73, 123, 11, -16, -107, 33, 34, 92, 107, 78, -126, 84, -42, 101, -109, -50, 96, -78, t3.f6403strictfp, 115, 86, -64, t3.f6409throws, -89, -116, -15, -36, 18, 117, -54, t3.f6399protected, 59, -66, -28, -47, 66, 61, -44, 48, -93, 60, -74, 38, 111, -65, 14, -38, 70, 105, 7, 87, 39, -14, t3.f6412volatile, -101, Celse.f30385final, -108, 67, 3, -8, 17, -57, -10, -112, -17, 62, -25, 6, -61, -43, 47, -56, 102, t3.f6394interface, -41, 8, -24, -22, -34, Byte.MIN_VALUE, 82, -18, -9, -124, -86, 114, -84, 53, 77, 106, ExifInterface.START_CODE, -106, 26, -46, 113, 90, t3.f6382default, 73, 116, 75, -97, -48, 94, 4, t3.f6397package, -92, -20, -62, -32, 65, 110, 15, 81, -53, -52, 36, -111, -81, 80, -95, -12, 112, 57, -103, 124, 58, -123, 35, -72, -76, 122, -4, 2, 54, 91, 37, 85, -105, 49, 45, 93, -6, -104, -29, -118, -110, -82, 5, -33, 41, 16, 103, 108, -70, -55, -45, 0, -26, -49, ExifInterface.MARKER_APP1, -98, -88, 44, NativeJavaObject.CONVERSION_NONE, t3.f6385extends, 1, Utf8.REPLACEMENT_BYTE, 88, -30, -119, -87, 13, 56, 52, t3.f6381continue, -85, 51, -1, -80, -69, 72, 12, 95, -71, -79, -51, 46, -59, -13, -37, 71, -27, -91, -100, 119, 10, -90, 32, 104, -2, Byte.MAX_VALUE, -63, -83};

    /* renamed from: new, reason: not valid java name */
    private static final int f2425new = 8;

    /* renamed from: do, reason: not valid java name */
    private int[] f2426do;

    /* renamed from: if, reason: not valid java name */
    private boolean f2427if;

    /* renamed from: do, reason: not valid java name */
    private void m3047do(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM3050new = ((bArr[i + 7] & 255) << 8) + (bArr[i + 6] & 255);
        int iM3050new2 = ((bArr[i + 5] & 255) << 8) + (bArr[i + 4] & 255);
        int iM3050new3 = ((bArr[i + 3] & 255) << 8) + (bArr[i + 2] & 255);
        int iM3050new4 = ((bArr[i + 1] & 255) << 8) + (bArr[i + 0] & 255);
        for (int i3 = 60; i3 >= 44; i3 -= 4) {
            iM3050new = m3050new(iM3050new, 11) - ((((iM3050new2 ^ (-1)) & iM3050new4) + (iM3050new3 & iM3050new2)) + this.f2426do[i3 + 3]);
            iM3050new2 = m3050new(iM3050new2, 13) - ((((iM3050new3 ^ (-1)) & iM3050new) + (iM3050new4 & iM3050new3)) + this.f2426do[i3 + 2]);
            iM3050new3 = m3050new(iM3050new3, 14) - ((((iM3050new4 ^ (-1)) & iM3050new2) + (iM3050new & iM3050new4)) + this.f2426do[i3 + 1]);
            iM3050new4 = m3050new(iM3050new4, 15) - ((((iM3050new ^ (-1)) & iM3050new3) + (iM3050new2 & iM3050new)) + this.f2426do[i3]);
        }
        int[] iArr = this.f2426do;
        int iM3050new5 = iM3050new - iArr[iM3050new2 & 63];
        int iM3050new6 = iM3050new2 - iArr[iM3050new3 & 63];
        int iM3050new7 = iM3050new3 - iArr[iM3050new4 & 63];
        int iM3050new8 = iM3050new4 - iArr[iM3050new5 & 63];
        for (int i4 = 40; i4 >= 20; i4 -= 4) {
            iM3050new5 = m3050new(iM3050new5, 11) - ((((iM3050new6 ^ (-1)) & iM3050new8) + (iM3050new7 & iM3050new6)) + this.f2426do[i4 + 3]);
            iM3050new6 = m3050new(iM3050new6, 13) - ((((iM3050new7 ^ (-1)) & iM3050new5) + (iM3050new8 & iM3050new7)) + this.f2426do[i4 + 2]);
            iM3050new7 = m3050new(iM3050new7, 14) - ((((iM3050new8 ^ (-1)) & iM3050new6) + (iM3050new5 & iM3050new8)) + this.f2426do[i4 + 1]);
            iM3050new8 = m3050new(iM3050new8, 15) - ((((iM3050new5 ^ (-1)) & iM3050new7) + (iM3050new6 & iM3050new5)) + this.f2426do[i4]);
        }
        int[] iArr2 = this.f2426do;
        int iM3050new9 = iM3050new5 - iArr2[iM3050new6 & 63];
        int iM3050new10 = iM3050new6 - iArr2[iM3050new7 & 63];
        int iM3050new11 = iM3050new7 - iArr2[iM3050new8 & 63];
        int iM3050new12 = iM3050new8 - iArr2[iM3050new9 & 63];
        for (int i5 = 16; i5 >= 0; i5 -= 4) {
            iM3050new9 = m3050new(iM3050new9, 11) - ((((iM3050new10 ^ (-1)) & iM3050new12) + (iM3050new11 & iM3050new10)) + this.f2426do[i5 + 3]);
            iM3050new10 = m3050new(iM3050new10, 13) - ((((iM3050new11 ^ (-1)) & iM3050new9) + (iM3050new12 & iM3050new11)) + this.f2426do[i5 + 2]);
            iM3050new11 = m3050new(iM3050new11, 14) - ((((iM3050new12 ^ (-1)) & iM3050new10) + (iM3050new9 & iM3050new12)) + this.f2426do[i5 + 1]);
            iM3050new12 = m3050new(iM3050new12, 15) - ((((iM3050new9 ^ (-1)) & iM3050new11) + (iM3050new10 & iM3050new9)) + this.f2426do[i5]);
        }
        bArr2[i2 + 0] = (byte) iM3050new12;
        bArr2[i2 + 1] = (byte) (iM3050new12 >> 8);
        bArr2[i2 + 2] = (byte) iM3050new11;
        bArr2[i2 + 3] = (byte) (iM3050new11 >> 8);
        bArr2[i2 + 4] = (byte) iM3050new10;
        bArr2[i2 + 5] = (byte) (iM3050new10 >> 8);
        bArr2[i2 + 6] = (byte) iM3050new9;
        bArr2[i2 + 7] = (byte) (iM3050new9 >> 8);
    }

    /* renamed from: for, reason: not valid java name */
    private int[] m3048for(byte[] bArr, int i) {
        int[] iArr = new int[128];
        for (int i2 = 0; i2 != bArr.length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        int length = bArr.length;
        if (length < 128) {
            int i3 = iArr[length - 1];
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                i3 = f2424for[(i3 + iArr[i4]) & 255] & 255;
                int i6 = length + 1;
                iArr[length] = i3;
                if (i6 >= 128) {
                    break;
                }
                length = i6;
                i4 = i5;
            }
        }
        int i7 = (i + 7) >> 3;
        int i8 = 128 - i7;
        int i9 = f2424for[(255 >> ((-i) & 7)) & iArr[i8]] & 255;
        iArr[i8] = i9;
        for (int i10 = i8 - 1; i10 >= 0; i10--) {
            i9 = f2424for[i9 ^ iArr[i10 + i7]] & 255;
            iArr[i10] = i9;
        }
        int[] iArr2 = new int[64];
        for (int i11 = 0; i11 != 64; i11++) {
            int i12 = i11 * 2;
            iArr2[i11] = iArr[i12] + (iArr[i12 + 1] << 8);
        }
        return iArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private void m3049if(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM3050new = ((bArr[i + 7] & 255) << 8) + (bArr[i + 6] & 255);
        int iM3050new2 = ((bArr[i + 5] & 255) << 8) + (bArr[i + 4] & 255);
        int iM3050new3 = ((bArr[i + 3] & 255) << 8) + (bArr[i + 2] & 255);
        int iM3050new4 = ((bArr[i + 1] & 255) << 8) + (bArr[i + 0] & 255);
        for (int i3 = 0; i3 <= 16; i3 += 4) {
            iM3050new4 = m3050new(iM3050new4 + ((iM3050new ^ (-1)) & iM3050new3) + (iM3050new2 & iM3050new) + this.f2426do[i3], 1);
            iM3050new3 = m3050new(iM3050new3 + ((iM3050new4 ^ (-1)) & iM3050new2) + (iM3050new & iM3050new4) + this.f2426do[i3 + 1], 2);
            iM3050new2 = m3050new(iM3050new2 + ((iM3050new3 ^ (-1)) & iM3050new) + (iM3050new4 & iM3050new3) + this.f2426do[i3 + 2], 3);
            iM3050new = m3050new(iM3050new + ((iM3050new2 ^ (-1)) & iM3050new4) + (iM3050new3 & iM3050new2) + this.f2426do[i3 + 3], 5);
        }
        int[] iArr = this.f2426do;
        int iM3050new5 = iM3050new4 + iArr[iM3050new & 63];
        int iM3050new6 = iM3050new3 + iArr[iM3050new5 & 63];
        int iM3050new7 = iM3050new2 + iArr[iM3050new6 & 63];
        int iM3050new8 = iM3050new + iArr[iM3050new7 & 63];
        for (int i4 = 20; i4 <= 40; i4 += 4) {
            iM3050new5 = m3050new(iM3050new5 + ((iM3050new8 ^ (-1)) & iM3050new6) + (iM3050new7 & iM3050new8) + this.f2426do[i4], 1);
            iM3050new6 = m3050new(iM3050new6 + ((iM3050new5 ^ (-1)) & iM3050new7) + (iM3050new8 & iM3050new5) + this.f2426do[i4 + 1], 2);
            iM3050new7 = m3050new(iM3050new7 + ((iM3050new6 ^ (-1)) & iM3050new8) + (iM3050new5 & iM3050new6) + this.f2426do[i4 + 2], 3);
            iM3050new8 = m3050new(iM3050new8 + ((iM3050new7 ^ (-1)) & iM3050new5) + (iM3050new6 & iM3050new7) + this.f2426do[i4 + 3], 5);
        }
        int[] iArr2 = this.f2426do;
        int iM3050new9 = iM3050new5 + iArr2[iM3050new8 & 63];
        int iM3050new10 = iM3050new6 + iArr2[iM3050new9 & 63];
        int iM3050new11 = iM3050new7 + iArr2[iM3050new10 & 63];
        int iM3050new12 = iM3050new8 + iArr2[iM3050new11 & 63];
        for (int i5 = 44; i5 < 64; i5 += 4) {
            iM3050new9 = m3050new(iM3050new9 + ((iM3050new12 ^ (-1)) & iM3050new10) + (iM3050new11 & iM3050new12) + this.f2426do[i5], 1);
            iM3050new10 = m3050new(iM3050new10 + ((iM3050new9 ^ (-1)) & iM3050new11) + (iM3050new12 & iM3050new9) + this.f2426do[i5 + 1], 2);
            iM3050new11 = m3050new(iM3050new11 + ((iM3050new10 ^ (-1)) & iM3050new12) + (iM3050new9 & iM3050new10) + this.f2426do[i5 + 2], 3);
            iM3050new12 = m3050new(iM3050new12 + ((iM3050new11 ^ (-1)) & iM3050new9) + (iM3050new10 & iM3050new11) + this.f2426do[i5 + 3], 5);
        }
        bArr2[i2 + 0] = (byte) iM3050new9;
        bArr2[i2 + 1] = (byte) (iM3050new9 >> 8);
        bArr2[i2 + 2] = (byte) iM3050new10;
        bArr2[i2 + 3] = (byte) (iM3050new10 >> 8);
        bArr2[i2 + 4] = (byte) iM3050new11;
        bArr2[i2 + 5] = (byte) (iM3050new11 >> 8);
        bArr2[i2 + 6] = (byte) iM3050new12;
        bArr2[i2 + 7] = (byte) (iM3050new12 >> 8);
    }

    /* renamed from: new, reason: not valid java name */
    private int m3050new(int i, int i2) {
        int i3 = i & 65535;
        return (i3 >> (16 - i2)) | (i3 << i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC2";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f2427if = z;
        if (cipherParameters instanceof ij1) {
            ij1 ij1Var = (ij1) cipherParameters;
            this.f2426do = m3048for(ij1Var.m2770do(), ij1Var.m3472if());
        } else if (cipherParameters instanceof gr0) {
            byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
            this.f2426do = m3048for(bArrM2770do, bArrM2770do.length * 8);
        } else {
            throw new IllegalArgumentException("invalid parameter passed to RC2 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.f2426do == null) {
            throw new IllegalStateException("RC2 engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        if (this.f2427if) {
            m3049if(bArr, i, bArr2, i2);
            return 8;
        }
        m3047do(bArr, i, bArr2, i2);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
