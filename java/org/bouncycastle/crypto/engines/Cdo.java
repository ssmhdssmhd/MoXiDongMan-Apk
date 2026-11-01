package org.bouncycastle.crypto.engines;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import java.lang.reflect.Array;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.bouncycastle.util.encoders.Cfor;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: org.bouncycastle.crypto.engines.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements BlockCipher {

    /* renamed from: else, reason: not valid java name */
    public static final int f29658else = 16;

    /* renamed from: do, reason: not valid java name */
    private byte[][] f29663do;

    /* renamed from: if, reason: not valid java name */
    private static final byte[][] f29660if = {Cfor.m36332if("517cc1b727220a94fe13abe8fa9a6ee0"), Cfor.m36332if("6db14acc9e21c820ff28b1d5ef5de2b0"), Cfor.m36332if("db92371d2126e9700324977504e8c90e")};

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f29659for = {NativeJavaObject.CONVERSION_NONE, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, t3.f6382default, 4, -57, 35, -61, t3.f6397package, -106, 5, -102, 7, 18, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, t3.f6381continue, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, Cfinal.f15506do, -113, -110, -99, 56, -11, Celse.f30385final, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, t3.f6387finally, -60, -89, 126, 61, 100, 93, t3.f6398private, 115, 96, -127, 79, -36, 34, ExifInterface.START_CODE, -112, -120, 70, -18, -72, t3.f6409throws, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, t3.f6403strictfp, -90, -76, -58, -24, -35, 116, t3.f6399protected, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, t3.f6412volatile, -98, ExifInterface.MARKER_APP1, -8, -104, 17, 105, ExifInterface.MARKER_EOI, -114, -108, -101, t3.f6394interface, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, t3.f6385extends};

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f29661new = {-30, 78, 84, -4, -108, -62, 74, -52, 98, 13, 106, 70, 60, 77, -117, -47, 94, -6, 100, -53, -76, -105, -66, 43, Celse.f30385final, 119, 46, 3, -45, t3.f6398private, 89, -63, t3.f6412volatile, 6, 65, 107, 85, -16, -103, 105, -22, -100, t3.f6397package, -82, NativeJavaObject.CONVERSION_NONE, -33, -25, -69, 0, 115, 102, -5, -106, 76, -123, -28, 58, 9, 69, -86, 15, -18, 16, -21, 45, Byte.MAX_VALUE, -12, 41, -84, -49, -83, -111, -115, 120, -56, -107, -7, 47, -50, -51, 8, 122, -120, 56, 92, -125, ExifInterface.START_CODE, 40, 71, -37, -72, -57, -109, -92, 18, 83, -1, -121, 14, 49, 54, 33, 88, 72, 1, -114, 55, 116, 50, -54, -23, -79, -73, -85, 12, -41, -60, 86, 66, 38, 7, -104, 96, ExifInterface.MARKER_EOI, -74, -71, 17, Cfinal.f15506do, -20, 32, -116, -67, -96, -55, -124, 4, 73, 35, -15, 79, 80, t3.f6399protected, 19, -36, -40, -64, -98, 87, -29, -61, 123, 101, 59, 2, -113, 62, -24, 37, -110, -27, t3.f6382default, -35, -3, t3.f6387finally, -87, -65, -44, -102, 126, -59, 57, 103, -2, 118, -99, 67, -89, ExifInterface.MARKER_APP1, -48, -11, 104, -14, t3.f6381continue, 52, 112, 5, -93, -118, -43, 121, -122, -88, 48, -58, 81, 75, t3.f6394interface, -90, 39, -10, 53, -46, 110, 36, t3.f6385extends, -126, 95, -38, -26, 117, -94, -17, 44, -78, t3.f6403strictfp, -97, 93, 111, Byte.MIN_VALUE, 10, 114, 68, -101, 108, -112, 11, 91, 51, 125, 90, 82, -13, 97, -95, -9, -80, -42, Utf8.REPLACEMENT_BYTE, 124, 109, -19, t3.f6409throws, -32, -91, 61, 34, -77, -8, -119, -34, 113, 26, -81, -70, -75, -127};

    /* renamed from: try, reason: not valid java name */
    private static final byte[] f29662try = {82, 9, 106, -43, 48, 54, -91, 56, -65, Cfinal.f15506do, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, ExifInterface.MARKER_EOI, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, t3.f6385extends, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, t3.f6382default, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, Celse.f30385final, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, t3.f6394interface, -113, -54, Utf8.REPLACEMENT_BYTE, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, t3.f6403strictfp, 117, -33, 110, 71, -15, 26, 113, t3.f6412volatile, 41, -59, -119, 111, -73, 98, 14, -86, t3.f6397package, -66, t3.f6381continue, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, t3.f6399protected, -35, -88, 51, -120, 7, -57, 49, -79, 18, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, t3.f6398private, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, ExifInterface.START_CODE, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, t3.f6387finally, 43, 4, 126, -70, 119, -42, 38, ExifInterface.MARKER_APP1, 105, t3.f6409throws, NativeJavaObject.CONVERSION_NONE, 85, 33, 12, 125};

    /* renamed from: case, reason: not valid java name */
    private static final byte[] f29657case = {48, 104, -103, t3.f6381continue, -121, -71, 33, 120, 80, 57, -37, ExifInterface.MARKER_APP1, 114, 9, 98, 60, 62, 126, 94, -114, -15, -96, -52, -93, ExifInterface.START_CODE, t3.f6412volatile, -5, -74, -42, 32, -60, -115, -127, 101, -11, -119, -53, -99, 119, -58, 87, 67, 86, t3.f6387finally, -44, Cfinal.f15506do, 26, 77, -64, NativeJavaObject.CONVERSION_NONE, 108, -29, -73, -56, 100, 106, 83, -86, 56, -104, 12, -12, -101, -19, Byte.MAX_VALUE, 34, 118, -81, -35, 58, 11, 88, 103, -120, 6, -61, 53, 13, 1, -117, -116, -62, -26, 95, 2, 36, 117, -109, 102, t3.f6394interface, -27, -30, 84, -40, 16, -50, 122, -24, 8, 44, 18, -105, 50, -85, -76, 39, 10, 35, -33, -17, -54, ExifInterface.MARKER_EOI, -72, -6, -36, 49, 107, -47, -83, t3.f6398private, 73, -67, 81, -106, -18, -28, -88, 65, -38, -1, -51, 85, -122, 54, -66, 97, 82, -8, -69, 14, -126, 72, 105, -102, -32, 71, -98, 92, 4, 75, 52, t3.f6382default, 121, 38, -89, -34, 41, -82, -110, -41, -124, -23, -46, -70, 93, -13, -59, -80, -65, -92, 59, 113, 68, 70, 43, -4, -21, 111, -43, -10, t3.f6409throws, -2, 124, 112, 90, 125, -3, 47, t3.f6397package, -125, t3.f6385extends, -91, -111, t3.f6399protected, 5, -107, 116, -87, -63, 91, 74, -123, 109, 19, 7, 79, 78, 69, -78, 15, -55, t3.f6403strictfp, -90, Celse.f30385final, -20, 115, -112, 123, -49, 89, -113, -95, -7, 45, -14, -79, 0, -108, 55, -97, -48, 46, -100, 110, 40, Utf8.REPLACEMENT_BYTE, Byte.MIN_VALUE, -16, 61, -45, 37, -118, -75, -25, 66, -77, -57, -22, -9, 76, 17, 51, 3, -94, -84, 96};

    /* renamed from: break, reason: not valid java name */
    public static byte[][] m33469break(boolean z, byte[] bArr) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i = (length >>> 3) - 2;
        byte[][] bArr2 = f29660if;
        byte[] bArr3 = bArr2[i];
        byte[] bArr4 = bArr2[(i + 1) % 3];
        byte[] bArr5 = bArr2[(i + 2) % 3];
        byte[] bArr6 = new byte[16];
        byte[] bArr7 = new byte[16];
        System.arraycopy(bArr, 0, bArr6, 0, 16);
        System.arraycopy(bArr, 16, bArr7, 0, length - 16);
        byte[] bArr8 = new byte[16];
        byte[] bArr9 = new byte[16];
        byte[] bArr10 = new byte[16];
        byte[] bArr11 = new byte[16];
        System.arraycopy(bArr6, 0, bArr8, 0, 16);
        System.arraycopy(bArr8, 0, bArr9, 0, 16);
        m33476for(bArr9, bArr3);
        m33473const(bArr9, bArr7);
        System.arraycopy(bArr9, 0, bArr10, 0, 16);
        m33478if(bArr10, bArr4);
        m33473const(bArr10, bArr8);
        System.arraycopy(bArr10, 0, bArr11, 0, 16);
        m33476for(bArr11, bArr5);
        m33473const(bArr11, bArr9);
        int i2 = (i * 2) + 12;
        byte[][] bArr12 = (byte[][]) Array.newInstance((Class<?>) byte.class, i2 + 1, 16);
        m33471catch(bArr12[0], bArr8, bArr9, 19);
        m33471catch(bArr12[1], bArr9, bArr10, 19);
        m33471catch(bArr12[2], bArr10, bArr11, 19);
        m33471catch(bArr12[3], bArr11, bArr8, 19);
        m33471catch(bArr12[4], bArr8, bArr9, 31);
        m33471catch(bArr12[5], bArr9, bArr10, 31);
        m33471catch(bArr12[6], bArr10, bArr11, 31);
        m33471catch(bArr12[7], bArr11, bArr8, 31);
        m33471catch(bArr12[8], bArr8, bArr9, 67);
        m33471catch(bArr12[9], bArr9, bArr10, 67);
        m33471catch(bArr12[10], bArr10, bArr11, 67);
        m33471catch(bArr12[11], bArr11, bArr8, 67);
        m33471catch(bArr12[12], bArr8, bArr9, 97);
        if (i2 > 12) {
            m33471catch(bArr12[13], bArr9, bArr10, 97);
            m33471catch(bArr12[14], bArr10, bArr11, 97);
            if (i2 > 14) {
                m33471catch(bArr12[15], bArr11, bArr8, 97);
                m33471catch(bArr12[16], bArr8, bArr9, 109);
            }
        }
        if (!z) {
            m33472class(bArr12);
            for (int i3 = 1; i3 < i2; i3++) {
                m33474do(bArr12[i3]);
            }
        }
        return bArr12;
    }

    /* renamed from: case, reason: not valid java name */
    public static byte m33470case(byte b) {
        return f29662try[b & 255];
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m33471catch(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        int i4 = 8 - i3;
        int i5 = bArr3[15 - i2] & 255;
        int i6 = 0;
        while (i6 < 16) {
            int i7 = bArr3[(i6 - i2) & 15] & 255;
            bArr[i6] = (byte) (((i5 << i4) | (i7 >>> i3)) ^ (bArr2[i6] & 255));
            i6++;
            i5 = i7;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m33472class(byte[][] bArr) {
        int length = bArr.length;
        int i = length / 2;
        int i2 = length - 1;
        for (int i3 = 0; i3 < i; i3++) {
            byte[] bArr2 = bArr[i3];
            int i4 = i2 - i3;
            bArr[i3] = bArr[i4];
            bArr[i4] = bArr2;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m33473const(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < 16; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m33474do(byte[] bArr) {
        byte b = bArr[0];
        byte b2 = bArr[1];
        byte b3 = bArr[2];
        byte b4 = bArr[3];
        byte b5 = bArr[4];
        byte b6 = bArr[5];
        byte b7 = bArr[6];
        byte b8 = bArr[7];
        byte b9 = bArr[8];
        byte b10 = bArr[9];
        byte b11 = bArr[10];
        byte b12 = bArr[11];
        byte b13 = bArr[12];
        byte b14 = bArr[13];
        byte b15 = bArr[14];
        byte b16 = bArr[15];
        bArr[0] = (byte) ((((((b4 ^ b5) ^ b7) ^ b9) ^ b10) ^ b14) ^ b15);
        bArr[1] = (byte) ((((((b3 ^ b6) ^ b8) ^ b9) ^ b10) ^ b13) ^ b16);
        bArr[2] = (byte) ((((((b2 ^ b5) ^ b7) ^ b11) ^ b12) ^ b13) ^ b16);
        bArr[3] = (byte) ((((((b ^ b6) ^ b8) ^ b11) ^ b12) ^ b14) ^ b15);
        int i = b ^ b3;
        bArr[4] = (byte) (((((i ^ b6) ^ b9) ^ b12) ^ b15) ^ b16);
        int i2 = b2 ^ b4;
        bArr[5] = (byte) (((((i2 ^ b5) ^ b10) ^ b11) ^ b15) ^ b16);
        bArr[6] = (byte) (((((i ^ b8) ^ b10) ^ b11) ^ b13) ^ b14);
        bArr[7] = (byte) (((((i2 ^ b7) ^ b9) ^ b12) ^ b13) ^ b14);
        int i3 = b ^ b2;
        bArr[8] = (byte) (((((i3 ^ b5) ^ b8) ^ b11) ^ b14) ^ b16);
        bArr[9] = (byte) (((((i3 ^ b6) ^ b7) ^ b12) ^ b13) ^ b15);
        int i4 = b3 ^ b4;
        bArr[10] = (byte) (((((i4 ^ b6) ^ b7) ^ b9) ^ b14) ^ b16);
        bArr[11] = (byte) (((((i4 ^ b5) ^ b8) ^ b10) ^ b13) ^ b15);
        int i5 = b2 ^ b3;
        bArr[12] = (byte) (((((i5 ^ b7) ^ b8) ^ b10) ^ b12) ^ b13);
        int i6 = b ^ b4;
        bArr[13] = (byte) (((((i6 ^ b7) ^ b8) ^ b9) ^ b11) ^ b14);
        bArr[14] = (byte) (((((i6 ^ b5) ^ b6) ^ b10) ^ b12) ^ b15);
        bArr[15] = (byte) (((((i5 ^ b5) ^ b6) ^ b9) ^ b11) ^ b16);
    }

    /* renamed from: else, reason: not valid java name */
    public static byte m33475else(byte b) {
        return f29657case[b & 255];
    }

    /* renamed from: for, reason: not valid java name */
    public static void m33476for(byte[] bArr, byte[] bArr2) {
        m33473const(bArr, bArr2);
        m33477goto(bArr);
        m33474do(bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m33477goto(byte[] bArr) {
        bArr[0] = m33479new(bArr[0]);
        bArr[1] = m33481try(bArr[1]);
        bArr[2] = m33470case(bArr[2]);
        bArr[3] = m33475else(bArr[3]);
        bArr[4] = m33479new(bArr[4]);
        bArr[5] = m33481try(bArr[5]);
        bArr[6] = m33470case(bArr[6]);
        bArr[7] = m33475else(bArr[7]);
        bArr[8] = m33479new(bArr[8]);
        bArr[9] = m33481try(bArr[9]);
        bArr[10] = m33470case(bArr[10]);
        bArr[11] = m33475else(bArr[11]);
        bArr[12] = m33479new(bArr[12]);
        bArr[13] = m33481try(bArr[13]);
        bArr[14] = m33470case(bArr[14]);
        bArr[15] = m33475else(bArr[15]);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m33478if(byte[] bArr, byte[] bArr2) {
        m33473const(bArr, bArr2);
        m33480this(bArr);
        m33474do(bArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte m33479new(byte b) {
        return f29659for[b & 255];
    }

    /* renamed from: this, reason: not valid java name */
    public static void m33480this(byte[] bArr) {
        bArr[0] = m33470case(bArr[0]);
        bArr[1] = m33475else(bArr[1]);
        bArr[2] = m33479new(bArr[2]);
        bArr[3] = m33481try(bArr[3]);
        bArr[4] = m33470case(bArr[4]);
        bArr[5] = m33475else(bArr[5]);
        bArr[6] = m33479new(bArr[6]);
        bArr[7] = m33481try(bArr[7]);
        bArr[8] = m33470case(bArr[8]);
        bArr[9] = m33475else(bArr[9]);
        bArr[10] = m33479new(bArr[10]);
        bArr[11] = m33481try(bArr[11]);
        bArr[12] = m33470case(bArr[12]);
        bArr[13] = m33475else(bArr[13]);
        bArr[14] = m33479new(bArr[14]);
        bArr[15] = m33481try(bArr[15]);
    }

    /* renamed from: try, reason: not valid java name */
    public static byte m33481try(byte b) {
        return f29661new[b & 255];
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "ARIA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof gr0) {
            this.f29663do = m33469break(z, ((gr0) cipherParameters).m2770do());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to ARIA init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (this.f29663do == null) {
            throw new IllegalStateException("ARIA engine not initialised");
        }
        if (i > bArr.length - 16) {
            throw new tw("input buffer too short");
        }
        if (i2 > bArr2.length - 16) {
            throw new f91("output buffer too short");
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, i, bArr3, 0, 16);
        int length = this.f29663do.length - 3;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + 1;
            m33476for(bArr3, this.f29663do[i3]);
            m33478if(bArr3, this.f29663do[i4]);
            i3 = i4 + 1;
        }
        int i5 = i3 + 1;
        m33476for(bArr3, this.f29663do[i3]);
        m33473const(bArr3, this.f29663do[i5]);
        m33480this(bArr3);
        m33473const(bArr3, this.f29663do[i5 + 1]);
        System.arraycopy(bArr3, 0, bArr2, i2, 16);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
