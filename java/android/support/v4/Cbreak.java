package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import java.lang.reflect.Array;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: android.support.v4.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak implements BlockCipher {

    /* renamed from: catch, reason: not valid java name */
    private static final int f510catch = -2139062144;

    /* renamed from: class, reason: not valid java name */
    private static final int f511class = 2139062143;

    /* renamed from: const, reason: not valid java name */
    private static final int f512const = 27;

    /* renamed from: final, reason: not valid java name */
    private static final int f513final = -1061109568;

    /* renamed from: super, reason: not valid java name */
    private static final int f515super = 1061109567;

    /* renamed from: throw, reason: not valid java name */
    private static final int f517throw = 16;

    /* renamed from: case, reason: not valid java name */
    private int f518case;

    /* renamed from: do, reason: not valid java name */
    private int f519do;

    /* renamed from: else, reason: not valid java name */
    private boolean f520else;

    /* renamed from: for, reason: not valid java name */
    private int f521for;

    /* renamed from: if, reason: not valid java name */
    private int[][] f522if = null;

    /* renamed from: new, reason: not valid java name */
    private int f523new;

    /* renamed from: try, reason: not valid java name */
    private int f524try;

    /* renamed from: goto, reason: not valid java name */
    private static final byte[] f514goto = {NativeJavaObject.CONVERSION_NONE, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, t3.f6382default, 4, -57, 35, -61, t3.f6397package, -106, 5, -102, 7, 18, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, t3.f6381continue, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, Cfinal.f15506do, -113, -110, -99, 56, -11, Celse.f30385final, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, t3.f6387finally, -60, -89, 126, 61, 100, 93, t3.f6398private, 115, 96, -127, 79, -36, 34, ExifInterface.START_CODE, -112, -120, 70, -18, -72, t3.f6409throws, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, t3.f6403strictfp, -90, -76, -58, -24, -35, 116, t3.f6399protected, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, t3.f6412volatile, -98, ExifInterface.MARKER_APP1, -8, -104, 17, 105, ExifInterface.MARKER_EOI, -114, -108, -101, t3.f6394interface, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, t3.f6385extends};

    /* renamed from: this, reason: not valid java name */
    private static final byte[] f516this = {82, 9, 106, -43, 48, 54, -91, 56, -65, Cfinal.f15506do, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, ExifInterface.MARKER_EOI, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, t3.f6385extends, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, t3.f6382default, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, Celse.f30385final, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, t3.f6394interface, -113, -54, Utf8.REPLACEMENT_BYTE, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, t3.f6403strictfp, 117, -33, 110, 71, -15, 26, 113, t3.f6412volatile, 41, -59, -119, 111, -73, 98, 14, -86, t3.f6397package, -66, t3.f6381continue, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, t3.f6399protected, -35, -88, 51, -120, 7, -57, 49, -79, 18, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, t3.f6398private, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, ExifInterface.START_CODE, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, t3.f6387finally, 43, 4, 126, -70, 119, -42, 38, ExifInterface.MARKER_APP1, 105, t3.f6409throws, NativeJavaObject.CONVERSION_NONE, 85, 33, 12, 125};

    /* renamed from: break, reason: not valid java name */
    private static final int[] f509break = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    /* renamed from: break, reason: not valid java name */
    private static int m617break(int i) {
        byte[] bArr = f514goto;
        return (bArr[(i >> 24) & 255] << t3.f6397package) | (bArr[i & 255] & 255) | ((bArr[(i >> 8) & 255] & 255) << 8) | ((bArr[(i >> 16) & 255] & 255) << 16);
    }

    /* renamed from: case, reason: not valid java name */
    private static int m618case(int i) {
        int iM626this = m626this(i, 8) ^ i;
        int iM620do = i ^ m620do(iM626this);
        int iM624if = iM626this ^ m624if(iM620do);
        return iM620do ^ (iM624if ^ m626this(iM624if, 16));
    }

    /* renamed from: catch, reason: not valid java name */
    private void m619catch(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        this.f521for = i3;
        int i4 = i2 + 1;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.f521for = i5;
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.f521for = i7;
        int i8 = i6 + 1;
        this.f521for = i7 | (bArr[i6] << t3.f6397package);
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.f523new = i10;
        int i11 = i9 + 1;
        int i12 = ((bArr[i9] & 255) << 8) | i10;
        this.f523new = i12;
        int i13 = i11 + 1;
        int i14 = i12 | ((bArr[i11] & 255) << 16);
        this.f523new = i14;
        int i15 = i13 + 1;
        this.f523new = i14 | (bArr[i13] << t3.f6397package);
        int i16 = i15 + 1;
        int i17 = bArr[i15] & 255;
        this.f524try = i17;
        int i18 = i16 + 1;
        int i19 = ((bArr[i16] & 255) << 8) | i17;
        this.f524try = i19;
        int i20 = i18 + 1;
        int i21 = i19 | ((bArr[i18] & 255) << 16);
        this.f524try = i21;
        int i22 = i20 + 1;
        this.f524try = i21 | (bArr[i20] << t3.f6397package);
        int i23 = i22 + 1;
        int i24 = bArr[i22] & 255;
        this.f518case = i24;
        int i25 = i23 + 1;
        int i26 = ((bArr[i23] & 255) << 8) | i24;
        this.f518case = i26;
        int i27 = i26 | ((bArr[i25] & 255) << 16);
        this.f518case = i27;
        this.f518case = (bArr[i25 + 1] << t3.f6397package) | i27;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m620do(int i) {
        return (((i & f510catch) >>> 7) * 27) ^ ((f511class & i) << 1);
    }

    /* renamed from: else, reason: not valid java name */
    private static int m621else(int i) {
        int iM626this = m626this(i, 8);
        int i2 = i ^ iM626this;
        return m620do(i2) ^ (iM626this ^ m626this(i2, 16));
    }

    /* renamed from: for, reason: not valid java name */
    private void m622for(int[][] iArr) {
        int i = this.f521for;
        int i2 = this.f519do;
        int i3 = i ^ iArr[i2][0];
        int i4 = this.f523new ^ iArr[i2][1];
        int i5 = this.f524try ^ iArr[i2][2];
        int i6 = i2 - 1;
        int i7 = iArr[i2][3] ^ this.f518case;
        while (true) {
            byte[] bArr = f516this;
            int i8 = i3 & 255;
            if (i6 <= 1) {
                int iM618case = m618case((((bArr[i8] & 255) ^ ((bArr[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i5 >> 16) & 255] & 255) << 16)) ^ (bArr[(i4 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][0];
                int iM618case2 = m618case((((bArr[i4 & 255] & 255) ^ ((bArr[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr[(i5 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][1];
                int iM618case3 = m618case((((bArr[i5 & 255] & 255) ^ ((bArr[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i7 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][2];
                int iM618case4 = m618case((bArr[(i3 >> 24) & 255] << t3.f6397package) ^ (((bArr[i7 & 255] & 255) ^ ((bArr[(i5 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i4 >> 16) & 255] & 255) << 16))) ^ iArr[i6][3];
                this.f521for = ((((bArr[iM618case & 255] & 255) ^ ((bArr[(iM618case4 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case3 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case2 >> 24) & 255] << t3.f6397package)) ^ iArr[0][0];
                this.f523new = ((((bArr[iM618case2 & 255] & 255) ^ ((bArr[(iM618case >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case4 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case3 >> 24) & 255] << t3.f6397package)) ^ iArr[0][1];
                this.f524try = ((((bArr[iM618case3 & 255] & 255) ^ ((bArr[(iM618case2 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case4 >> 24) & 255] << t3.f6397package)) ^ iArr[0][2];
                this.f518case = iArr[0][3] ^ ((((bArr[iM618case4 & 255] & 255) ^ ((bArr[(iM618case3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case2 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case >> 24) & 255] << t3.f6397package));
                return;
            }
            int iM618case5 = m618case((((bArr[i8] & 255) ^ ((bArr[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i5 >> 16) & 255] & 255) << 16)) ^ (bArr[(i4 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][0];
            int iM618case6 = m618case((((bArr[i4 & 255] & 255) ^ ((bArr[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr[(i5 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][1];
            int iM618case7 = m618case((((bArr[i5 & 255] & 255) ^ ((bArr[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i7 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][2];
            int iM618case8 = m618case((bArr[(i3 >> 24) & 255] << t3.f6397package) ^ (((bArr[i7 & 255] & 255) ^ ((bArr[(i5 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i4 >> 16) & 255] & 255) << 16)));
            int i9 = i6 - 1;
            int i10 = iM618case8 ^ iArr[i6][3];
            int iM618case9 = m618case((((bArr[iM618case5 & 255] & 255) ^ ((bArr[(i10 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case7 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case6 >> 24) & 255] << t3.f6397package)) ^ iArr[i9][0];
            int iM618case10 = m618case((((bArr[iM618case6 & 255] & 255) ^ ((bArr[(iM618case5 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i10 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case7 >> 24) & 255] << t3.f6397package)) ^ iArr[i9][1];
            int iM618case11 = m618case((((bArr[iM618case7 & 255] & 255) ^ ((bArr[(iM618case6 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case5 >> 16) & 255] & 255) << 16)) ^ (bArr[(i10 >> 24) & 255] << t3.f6397package)) ^ iArr[i9][2];
            int iM618case12 = m618case((((bArr[i10 & 255] & 255) ^ ((bArr[(iM618case7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM618case6 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM618case5 >> 24) & 255] << t3.f6397package));
            int i11 = i9 - 1;
            i7 = iArr[i9][3] ^ iM618case12;
            i3 = iM618case9;
            i4 = iM618case10;
            i5 = iM618case11;
            i6 = i11;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m623goto(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = this.f521for;
        bArr[i] = (byte) i3;
        int i4 = i2 + 1;
        bArr[i2] = (byte) (i3 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i3 >> 16);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i3 >> 24);
        int i7 = i6 + 1;
        int i8 = this.f523new;
        bArr[i6] = (byte) i8;
        int i9 = i7 + 1;
        bArr[i7] = (byte) (i8 >> 8);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i8 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i8 >> 24);
        int i12 = i11 + 1;
        int i13 = this.f524try;
        bArr[i11] = (byte) i13;
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 8);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 16);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (i13 >> 24);
        int i17 = i16 + 1;
        int i18 = this.f518case;
        bArr[i16] = (byte) i18;
        int i19 = i17 + 1;
        bArr[i17] = (byte) (i18 >> 8);
        bArr[i19] = (byte) (i18 >> 16);
        bArr[i19 + 1] = (byte) (i18 >> 24);
    }

    /* renamed from: if, reason: not valid java name */
    private static int m624if(int i) {
        int i2 = (f515super & i) << 2;
        int i3 = i & f513final;
        int i4 = i3 ^ (i3 >>> 1);
        return (i4 >>> 5) ^ (i2 ^ (i4 >>> 2));
    }

    /* renamed from: new, reason: not valid java name */
    private void m625new(int[][] iArr) {
        int i = this.f521for ^ iArr[0][0];
        int i2 = this.f523new ^ iArr[0][1];
        int i3 = this.f524try ^ iArr[0][2];
        int i4 = this.f518case ^ iArr[0][3];
        int i5 = 1;
        while (i5 < this.f519do - 1) {
            byte[] bArr = f514goto;
            int iM621else = m621else((((bArr[i & 255] & 255) ^ ((bArr[(i2 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i4 >> 24) & 255] << t3.f6397package)) ^ iArr[i5][0];
            int iM621else2 = m621else((((bArr[i2 & 255] & 255) ^ ((bArr[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i4 >> 16) & 255] & 255) << 16)) ^ (bArr[(i >> 24) & 255] << t3.f6397package)) ^ iArr[i5][1];
            int iM621else3 = m621else((((bArr[i3 & 255] & 255) ^ ((bArr[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i >> 16) & 255] & 255) << 16)) ^ (bArr[(i2 >> 24) & 255] << t3.f6397package)) ^ iArr[i5][2];
            int iM621else4 = m621else(((((bArr[(i >> 8) & 255] & 255) << 8) ^ (bArr[i4 & 255] & 255)) ^ ((bArr[(i2 >> 16) & 255] & 255) << 16)) ^ (bArr[(i3 >> 24) & 255] << t3.f6397package));
            int i6 = i5 + 1;
            int i7 = iM621else4 ^ iArr[i5][3];
            int iM621else5 = m621else((((bArr[iM621else & 255] & 255) ^ ((bArr[(iM621else2 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM621else3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i7 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][0];
            int iM621else6 = m621else((((bArr[iM621else2 & 255] & 255) ^ ((bArr[(iM621else3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM621else >> 24) & 255] << t3.f6397package)) ^ iArr[i6][1];
            int iM621else7 = m621else((((bArr[iM621else3 & 255] & 255) ^ ((bArr[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM621else >> 16) & 255] & 255) << 16)) ^ (bArr[(iM621else2 >> 24) & 255] << t3.f6397package)) ^ iArr[i6][2];
            int iM621else8 = m621else((((bArr[i7 & 255] & 255) ^ ((bArr[(iM621else >> 8) & 255] & 255) << 8)) ^ ((bArr[(iM621else2 >> 16) & 255] & 255) << 16)) ^ (bArr[(iM621else3 >> 24) & 255] << t3.f6397package));
            int i8 = i6 + 1;
            int i9 = iM621else8 ^ iArr[i6][3];
            i2 = iM621else6;
            i4 = i9;
            i = iM621else5;
            i3 = iM621else7;
            i5 = i8;
        }
        byte[] bArr2 = f514goto;
        int iM621else9 = m621else((((bArr2[i & 255] & 255) ^ ((bArr2[(i2 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i4 >> 24) & 255] << t3.f6397package)) ^ iArr[i5][0];
        int iM621else10 = m621else((((bArr2[i2 & 255] & 255) ^ ((bArr2[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i4 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i >> 24) & 255] << t3.f6397package)) ^ iArr[i5][1];
        int iM621else11 = m621else((((bArr2[i3 & 255] & 255) ^ ((bArr2[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i >> 16) & 255] & 255) << 16)) ^ (bArr2[(i2 >> 24) & 255] << t3.f6397package)) ^ iArr[i5][2];
        int iM621else12 = m621else(((((bArr2[(i >> 8) & 255] & 255) << 8) ^ (bArr2[i4 & 255] & 255)) ^ ((bArr2[(i2 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i3 >> 24) & 255] << t3.f6397package));
        int i10 = i5 + 1;
        int i11 = iM621else12 ^ iArr[i5][3];
        this.f521for = iArr[i10][0] ^ ((((bArr2[iM621else9 & 255] & 255) ^ ((bArr2[(iM621else10 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iM621else11 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i11 >> 24) & 255] << t3.f6397package));
        this.f523new = ((((bArr2[iM621else10 & 255] & 255) ^ ((bArr2[(iM621else11 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i11 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iM621else9 >> 24) & 255] << t3.f6397package)) ^ iArr[i10][1];
        this.f524try = ((((bArr2[iM621else11 & 255] & 255) ^ ((bArr2[(i11 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iM621else9 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iM621else10 >> 24) & 255] << t3.f6397package)) ^ iArr[i10][2];
        this.f518case = iArr[i10][3] ^ ((((bArr2[i11 & 255] & 255) ^ ((bArr2[(iM621else9 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iM621else10 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iM621else11 >> 24) & 255] << t3.f6397package));
    }

    /* renamed from: this, reason: not valid java name */
    private static int m626this(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    /* renamed from: try, reason: not valid java name */
    private int[][] m627try(byte[] bArr, boolean z) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i = length >> 2;
        int i2 = i + 6;
        this.f519do = i2;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2 + 1, 4);
        if (i == 4) {
            int iM3357final = ib1.m3357final(bArr, 0);
            iArr[0][0] = iM3357final;
            int iM3357final2 = ib1.m3357final(bArr, 4);
            iArr[0][1] = iM3357final2;
            int iM3357final3 = ib1.m3357final(bArr, 8);
            iArr[0][2] = iM3357final3;
            int iM3357final4 = ib1.m3357final(bArr, 12);
            iArr[0][3] = iM3357final4;
            for (int i3 = 1; i3 <= 10; i3++) {
                iM3357final ^= m617break(m626this(iM3357final4, 8)) ^ f509break[i3 - 1];
                iArr[i3][0] = iM3357final;
                iM3357final2 ^= iM3357final;
                iArr[i3][1] = iM3357final2;
                iM3357final3 ^= iM3357final2;
                iArr[i3][2] = iM3357final3;
                iM3357final4 ^= iM3357final3;
                iArr[i3][3] = iM3357final4;
            }
        } else if (i == 6) {
            int iM3357final5 = ib1.m3357final(bArr, 0);
            iArr[0][0] = iM3357final5;
            int iM3357final6 = ib1.m3357final(bArr, 4);
            iArr[0][1] = iM3357final6;
            int iM3357final7 = ib1.m3357final(bArr, 8);
            iArr[0][2] = iM3357final7;
            int iM3357final8 = ib1.m3357final(bArr, 12);
            iArr[0][3] = iM3357final8;
            int iM3357final9 = ib1.m3357final(bArr, 16);
            iArr[1][0] = iM3357final9;
            int iM3357final10 = ib1.m3357final(bArr, 20);
            iArr[1][1] = iM3357final10;
            int iM617break = iM3357final5 ^ (m617break(m626this(iM3357final10, 8)) ^ 1);
            iArr[1][2] = iM617break;
            int i4 = iM3357final6 ^ iM617break;
            iArr[1][3] = i4;
            int i5 = iM3357final7 ^ i4;
            iArr[2][0] = i5;
            int i6 = iM3357final8 ^ i5;
            iArr[2][1] = i6;
            int i7 = iM3357final9 ^ i6;
            iArr[2][2] = i7;
            int i8 = iM3357final10 ^ i7;
            iArr[2][3] = i8;
            int i9 = 2;
            for (int i10 = 3; i10 < 12; i10 += 3) {
                int iM617break2 = m617break(m626this(i8, 8)) ^ i9;
                int i11 = i9 << 1;
                int i12 = iM617break ^ iM617break2;
                iArr[i10][0] = i12;
                int i13 = i4 ^ i12;
                iArr[i10][1] = i13;
                int i14 = i5 ^ i13;
                iArr[i10][2] = i14;
                int i15 = i6 ^ i14;
                iArr[i10][3] = i15;
                int i16 = i7 ^ i15;
                int i17 = i10 + 1;
                iArr[i17][0] = i16;
                int i18 = i8 ^ i16;
                iArr[i17][1] = i18;
                int iM617break3 = m617break(m626this(i18, 8)) ^ i11;
                i9 = i11 << 1;
                iM617break = i12 ^ iM617break3;
                iArr[i17][2] = iM617break;
                i4 = i13 ^ iM617break;
                iArr[i17][3] = i4;
                i5 = i14 ^ i4;
                int i19 = i10 + 2;
                iArr[i19][0] = i5;
                i6 = i15 ^ i5;
                iArr[i19][1] = i6;
                i7 = i16 ^ i6;
                iArr[i19][2] = i7;
                i8 = i18 ^ i7;
                iArr[i19][3] = i8;
            }
            int iM617break4 = (m617break(m626this(i8, 8)) ^ i9) ^ iM617break;
            iArr[12][0] = iM617break4;
            int i20 = iM617break4 ^ i4;
            iArr[12][1] = i20;
            int i21 = i20 ^ i5;
            iArr[12][2] = i21;
            iArr[12][3] = i21 ^ i6;
        } else {
            if (i != 8) {
                throw new IllegalStateException("Should never get here");
            }
            int iM3357final11 = ib1.m3357final(bArr, 0);
            iArr[0][0] = iM3357final11;
            int iM3357final12 = ib1.m3357final(bArr, 4);
            iArr[0][1] = iM3357final12;
            int iM3357final13 = ib1.m3357final(bArr, 8);
            iArr[0][2] = iM3357final13;
            int iM3357final14 = ib1.m3357final(bArr, 12);
            iArr[0][3] = iM3357final14;
            int iM3357final15 = ib1.m3357final(bArr, 16);
            iArr[1][0] = iM3357final15;
            int iM3357final16 = ib1.m3357final(bArr, 20);
            iArr[1][1] = iM3357final16;
            int iM3357final17 = ib1.m3357final(bArr, 24);
            iArr[1][2] = iM3357final17;
            int iM3357final18 = ib1.m3357final(bArr, 28);
            iArr[1][3] = iM3357final18;
            int i22 = 1;
            for (int i23 = 2; i23 < 14; i23 += 2) {
                int iM617break5 = m617break(m626this(iM3357final18, 8)) ^ i22;
                i22 <<= 1;
                iM3357final11 ^= iM617break5;
                iArr[i23][0] = iM3357final11;
                iM3357final12 ^= iM3357final11;
                iArr[i23][1] = iM3357final12;
                iM3357final13 ^= iM3357final12;
                iArr[i23][2] = iM3357final13;
                iM3357final14 ^= iM3357final13;
                iArr[i23][3] = iM3357final14;
                iM3357final15 ^= m617break(iM3357final14);
                int i24 = i23 + 1;
                iArr[i24][0] = iM3357final15;
                iM3357final16 ^= iM3357final15;
                iArr[i24][1] = iM3357final16;
                iM3357final17 ^= iM3357final16;
                iArr[i24][2] = iM3357final17;
                iM3357final18 ^= iM3357final17;
                iArr[i24][3] = iM3357final18;
            }
            int iM617break6 = (m617break(m626this(iM3357final18, 8)) ^ i22) ^ iM3357final11;
            iArr[14][0] = iM617break6;
            int i25 = iM617break6 ^ iM3357final12;
            iArr[14][1] = i25;
            int i26 = i25 ^ iM3357final13;
            iArr[14][2] = i26;
            iArr[14][3] = i26 ^ iM3357final14;
        }
        if (!z) {
            for (int i27 = 1; i27 < this.f519do; i27++) {
                for (int i28 = 0; i28 < 4; i28++) {
                    iArr[i27][i28] = m618case(iArr[i27][i28]);
                }
            }
        }
        return iArr;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f522if = m627try(((gr0) cipherParameters).m2770do(), z);
            this.f520else = z;
        } else {
            throw new IllegalArgumentException("invalid parameter passed to AES init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.f522if == null) {
            throw new IllegalStateException("AES engine not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        boolean z = this.f520else;
        m619catch(bArr, i);
        int[][] iArr = this.f522if;
        if (z) {
            m625new(iArr);
        } else {
            m622for(iArr);
        }
        m623goto(bArr2, i2);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
