package org.bouncycastle.crypto.engines;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: org.bouncycastle.crypto.engines.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements BlockCipher {

    /* renamed from: else, reason: not valid java name */
    private static final int f29698else = 16;

    /* renamed from: goto, reason: not valid java name */
    private static final int f29699goto = 255;

    /* renamed from: do, reason: not valid java name */
    private boolean f29702do;

    /* renamed from: if, reason: not valid java name */
    private boolean f29704if;

    /* renamed from: this, reason: not valid java name */
    private static final int[] f29700this = {-1600231809, 1003262091, -1233459112, 1286239154, -957401297, -380665154, 1426019237, -237801700, 283453434, -563598051, -1336506174, -1276722691};

    /* renamed from: break, reason: not valid java name */
    private static final byte[] f29697break = {112, -126, 44, -20, -77, 39, -64, -27, -28, -123, 87, 53, -22, 12, -82, 65, 35, -17, 107, -109, 69, t3.f6398private, -91, 33, -19, 14, 79, 78, t3.f6412volatile, 101, -110, -67, -122, -72, -81, -113, 124, -21, t3.f6399protected, -50, 62, 48, -36, 95, 94, -59, 11, 26, -90, ExifInterface.MARKER_APP1, 57, -54, -43, 71, 93, 61, ExifInterface.MARKER_EOI, 1, 90, -42, 81, 86, 108, 77, -117, 13, -102, 102, -5, -52, -80, 45, 116, 18, 43, 32, -16, -79, -124, -103, -33, 76, -53, -62, 52, 126, 118, 5, 109, -73, -87, 49, -47, t3.f6387finally, 4, -41, t3.f6409throws, 88, 58, 97, -34, t3.f6381continue, 17, t3.f6403strictfp, 50, 15, -100, t3.f6385extends, 83, t3.f6397package, -14, 34, -2, 68, -49, -78, -61, -75, 122, -111, 36, 8, -24, -88, 96, -4, 105, 80, -86, -48, -96, 125, -95, -119, 98, -105, 84, 91, t3.f6394interface, -107, -32, -1, 100, -46, 16, -60, 0, 72, -93, -9, 117, -37, -118, 3, -26, -38, 9, Utf8.REPLACEMENT_BYTE, -35, -108, -121, 92, -125, 2, -51, 74, -112, 51, 115, 103, -10, -13, -99, Byte.MAX_VALUE, -65, -30, 82, -101, -40, 38, -56, 55, -58, 59, -127, -106, 111, 75, 19, -66, NativeJavaObject.CONVERSION_NONE, 46, -23, 121, -89, -116, -97, 110, Celse.f30385final, -114, 41, -11, -7, -74, 47, -3, -76, 89, 120, -104, 6, 106, -25, 70, 113, -70, -44, 37, -85, 66, -120, -94, -115, -6, 114, 7, -71, 85, -8, -18, -84, 10, 54, 73, ExifInterface.START_CODE, 104, 60, 56, -15, -92, Cfinal.f15506do, 40, -45, 123, -69, -55, 67, -63, t3.f6382default, -29, -83, -12, 119, -57, Byte.MIN_VALUE, -98};

    /* renamed from: for, reason: not valid java name */
    private int[] f29703for = new int[96];

    /* renamed from: new, reason: not valid java name */
    private int[] f29705new = new int[8];

    /* renamed from: try, reason: not valid java name */
    private int[] f29706try = new int[12];

    /* renamed from: case, reason: not valid java name */
    private int[] f29701case = new int[4];

    /* renamed from: break, reason: not valid java name */
    private int m33514break(byte[] bArr, int i, byte[] bArr2, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            this.f29701case[i3] = m33519do(bArr, (i3 * 4) + i);
            int[] iArr = this.f29701case;
            iArr[i3] = iArr[i3] ^ this.f29705new[i3];
        }
        m33524if(this.f29701case, this.f29703for, 0);
        m33524if(this.f29701case, this.f29703for, 4);
        m33524if(this.f29701case, this.f29703for, 8);
        m33522for(this.f29701case, this.f29706try, 0);
        m33524if(this.f29701case, this.f29703for, 12);
        m33524if(this.f29701case, this.f29703for, 16);
        m33524if(this.f29701case, this.f29703for, 20);
        m33522for(this.f29701case, this.f29706try, 4);
        m33524if(this.f29701case, this.f29703for, 24);
        m33524if(this.f29701case, this.f29703for, 28);
        m33524if(this.f29701case, this.f29703for, 32);
        m33522for(this.f29701case, this.f29706try, 8);
        m33524if(this.f29701case, this.f29703for, 36);
        m33524if(this.f29701case, this.f29703for, 40);
        m33524if(this.f29701case, this.f29703for, 44);
        int[] iArr2 = this.f29701case;
        int i4 = iArr2[2];
        int[] iArr3 = this.f29705new;
        iArr2[2] = i4 ^ iArr3[4];
        iArr2[3] = iArr2[3] ^ iArr3[5];
        iArr2[0] = iArr2[0] ^ iArr3[6];
        iArr2[1] = iArr3[7] ^ iArr2[1];
        m33515case(iArr2[2], bArr2, i2);
        m33515case(this.f29701case[3], bArr2, i2 + 4);
        m33515case(this.f29701case[0], bArr2, i2 + 8);
        m33515case(this.f29701case[1], bArr2, i2 + 12);
        return 16;
    }

    /* renamed from: case, reason: not valid java name */
    private void m33515case(int i, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[(3 - i3) + i2] = (byte) i;
            i >>>= 8;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m33516catch(int i, int i2) {
        return (i >>> i2) + (i << (32 - i2));
    }

    /* renamed from: class, reason: not valid java name */
    private static void m33517class(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = i3 + 0;
        int i5 = i2 + 0;
        int i6 = i2 + 1;
        int i7 = 32 - i;
        iArr2[i4] = (iArr[i5] << i) | (iArr[i6] >>> i7);
        int i8 = i3 + 1;
        int i9 = i2 + 2;
        iArr2[i8] = (iArr[i6] << i) | (iArr[i9] >>> i7);
        int i10 = i3 + 2;
        int i11 = i2 + 3;
        iArr2[i10] = (iArr[i9] << i) | (iArr[i11] >>> i7);
        int i12 = i3 + 3;
        iArr2[i12] = (iArr[i11] << i) | (iArr[i5] >>> i7);
        iArr[i5] = iArr2[i4];
        iArr[i6] = iArr2[i8];
        iArr[i9] = iArr2[i10];
        iArr[i11] = iArr2[i12];
    }

    /* renamed from: const, reason: not valid java name */
    private static void m33518const(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = i3 + 0;
        int i5 = i2 + 1;
        int i6 = i - 32;
        int i7 = i2 + 2;
        int i8 = 64 - i;
        iArr2[i4] = (iArr[i5] << i6) | (iArr[i7] >>> i8);
        int i9 = i3 + 1;
        int i10 = i2 + 3;
        iArr2[i9] = (iArr[i7] << i6) | (iArr[i10] >>> i8);
        int i11 = i3 + 2;
        int i12 = i2 + 0;
        iArr2[i11] = (iArr[i10] << i6) | (iArr[i12] >>> i8);
        int i13 = i3 + 3;
        iArr2[i13] = (iArr[i5] >>> i8) | (iArr[i12] << i6);
        iArr[i12] = iArr2[i4];
        iArr[i5] = iArr2[i9];
        iArr[i7] = iArr2[i11];
        iArr[i10] = iArr2[i13];
    }

    /* renamed from: do, reason: not valid java name */
    private int m33519do(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            i2 = (i2 << 8) + (bArr[i3 + i] & 255);
        }
        return i2;
    }

    /* renamed from: else, reason: not valid java name */
    private byte m33520else(byte b, int i) {
        return (byte) (((b & 255) >>> (8 - i)) | (b << i));
    }

    /* renamed from: final, reason: not valid java name */
    private int m33521final(int i) {
        return m33520else(f29697break[i], 1) & 255;
    }

    /* renamed from: for, reason: not valid java name */
    private void m33522for(int[] iArr, int[] iArr2, int i) {
        iArr[1] = iArr[1] ^ m33523goto(iArr[0] & iArr2[i + 0], 1);
        iArr[0] = iArr[0] ^ (iArr2[i + 1] | iArr[1]);
        iArr[2] = iArr[2] ^ (iArr2[i + 3] | iArr[3]);
        iArr[3] = m33523goto(iArr2[i + 2] & iArr[2], 1) ^ iArr[3];
    }

    /* renamed from: goto, reason: not valid java name */
    private static int m33523goto(int i, int i2) {
        return (i << i2) + (i >>> (32 - i2));
    }

    /* renamed from: if, reason: not valid java name */
    private void m33524if(int[] iArr, int[] iArr2, int i) {
        int i2 = iArr[0] ^ iArr2[i + 0];
        int iM33528throw = m33528throw(i2 & 255) | (m33526super((i2 >>> 8) & 255) << 8) | (m33521final((i2 >>> 16) & 255) << 16);
        byte[] bArr = f29697break;
        int i3 = ((bArr[(i2 >>> 24) & 255] & 255) << 24) | iM33528throw;
        int i4 = iArr[1] ^ iArr2[i + 1];
        int iM33523goto = m33523goto((m33521final((i4 >>> 24) & 255) << 24) | (bArr[i4 & 255] & 255) | (m33528throw((i4 >>> 8) & 255) << 8) | (m33526super((i4 >>> 16) & 255) << 16), 8);
        int i5 = i3 ^ iM33523goto;
        int iM33523goto2 = m33523goto(iM33523goto, 8) ^ i5;
        int iM33516catch = m33516catch(i5, 8) ^ iM33523goto2;
        iArr[2] = (m33523goto(iM33523goto2, 16) ^ iM33516catch) ^ iArr[2];
        iArr[3] = m33523goto(iM33516catch, 8) ^ iArr[3];
        int i6 = iArr[2] ^ iArr2[i + 2];
        int iM33528throw2 = ((bArr[(i6 >>> 24) & 255] & 255) << 24) | m33528throw(i6 & 255) | (m33526super((i6 >>> 8) & 255) << 8) | (m33521final((i6 >>> 16) & 255) << 16);
        int i7 = iArr2[i + 3] ^ iArr[3];
        int iM33523goto3 = m33523goto((m33521final((i7 >>> 24) & 255) << 24) | (bArr[i7 & 255] & 255) | (m33528throw((i7 >>> 8) & 255) << 8) | (m33526super((i7 >>> 16) & 255) << 16), 8);
        int i8 = iM33528throw2 ^ iM33523goto3;
        int iM33523goto4 = m33523goto(iM33523goto3, 8) ^ i8;
        int iM33516catch2 = m33516catch(i8, 8) ^ iM33523goto4;
        iArr[0] = (m33523goto(iM33523goto4, 16) ^ iM33516catch2) ^ iArr[0];
        iArr[1] = iArr[1] ^ m33523goto(iM33516catch2, 8);
    }

    /* renamed from: new, reason: not valid java name */
    private static void m33525new(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = i3 + 2;
        int i5 = i2 + 0;
        int i6 = i2 + 1;
        int i7 = 32 - i;
        iArr2[i4] = (iArr[i5] << i) | (iArr[i6] >>> i7);
        int i8 = i3 + 3;
        int i9 = i2 + 2;
        iArr2[i8] = (iArr[i6] << i) | (iArr[i9] >>> i7);
        int i10 = i3 + 0;
        int i11 = i2 + 3;
        iArr2[i10] = (iArr[i9] << i) | (iArr[i11] >>> i7);
        int i12 = i3 + 1;
        iArr2[i12] = (iArr[i11] << i) | (iArr[i5] >>> i7);
        iArr[i5] = iArr2[i4];
        iArr[i6] = iArr2[i8];
        iArr[i9] = iArr2[i10];
        iArr[i11] = iArr2[i12];
    }

    /* renamed from: super, reason: not valid java name */
    private int m33526super(int i) {
        return m33520else(f29697break[i], 7) & 255;
    }

    /* renamed from: this, reason: not valid java name */
    private int m33527this(byte[] bArr, int i, byte[] bArr2, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            this.f29701case[i3] = m33519do(bArr, (i3 * 4) + i);
            int[] iArr = this.f29701case;
            iArr[i3] = iArr[i3] ^ this.f29705new[i3];
        }
        m33524if(this.f29701case, this.f29703for, 0);
        m33524if(this.f29701case, this.f29703for, 4);
        m33524if(this.f29701case, this.f29703for, 8);
        m33522for(this.f29701case, this.f29706try, 0);
        m33524if(this.f29701case, this.f29703for, 12);
        m33524if(this.f29701case, this.f29703for, 16);
        m33524if(this.f29701case, this.f29703for, 20);
        m33522for(this.f29701case, this.f29706try, 4);
        m33524if(this.f29701case, this.f29703for, 24);
        m33524if(this.f29701case, this.f29703for, 28);
        m33524if(this.f29701case, this.f29703for, 32);
        int[] iArr2 = this.f29701case;
        int i4 = iArr2[2];
        int[] iArr3 = this.f29705new;
        iArr2[2] = iArr3[4] ^ i4;
        iArr2[3] = iArr2[3] ^ iArr3[5];
        iArr2[0] = iArr2[0] ^ iArr3[6];
        iArr2[1] = iArr3[7] ^ iArr2[1];
        m33515case(iArr2[2], bArr2, i2);
        m33515case(this.f29701case[3], bArr2, i2 + 4);
        m33515case(this.f29701case[0], bArr2, i2 + 8);
        m33515case(this.f29701case[1], bArr2, i2 + 12);
        return 16;
    }

    /* renamed from: throw, reason: not valid java name */
    private int m33528throw(int i) {
        return f29697break[m33520else((byte) i, 1) & 255] & 255;
    }

    /* renamed from: try, reason: not valid java name */
    private static void m33529try(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = i3 + 2;
        int i5 = i2 + 1;
        int i6 = i - 32;
        int i7 = i2 + 2;
        int i8 = 64 - i;
        iArr2[i4] = (iArr[i5] << i6) | (iArr[i7] >>> i8);
        int i9 = i3 + 3;
        int i10 = i2 + 3;
        iArr2[i9] = (iArr[i7] << i6) | (iArr[i10] >>> i8);
        int i11 = i3 + 0;
        int i12 = i2 + 0;
        iArr2[i11] = (iArr[i10] << i6) | (iArr[i12] >>> i8);
        int i13 = i3 + 1;
        iArr2[i13] = (iArr[i5] >>> i8) | (iArr[i12] << i6);
        iArr[i12] = iArr2[i4];
        iArr[i5] = iArr2[i9];
        iArr[i7] = iArr2[i11];
        iArr[i10] = iArr2[i13];
    }

    /* renamed from: while, reason: not valid java name */
    private void m33530while(boolean z, byte[] bArr) {
        int[] iArr = new int[8];
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[4];
        int length = bArr.length;
        if (length != 16) {
            if (length == 24) {
                iArr[0] = m33519do(bArr, 0);
                iArr[1] = m33519do(bArr, 4);
                iArr[2] = m33519do(bArr, 8);
                iArr[3] = m33519do(bArr, 12);
                iArr[4] = m33519do(bArr, 16);
                iArr[5] = m33519do(bArr, 20);
                iArr[6] = iArr[4] ^ (-1);
                iArr[7] = iArr[5] ^ (-1);
            } else {
                if (length != 32) {
                    throw new IllegalArgumentException("key sizes are only 16/24/32 bytes.");
                }
                iArr[0] = m33519do(bArr, 0);
                iArr[1] = m33519do(bArr, 4);
                iArr[2] = m33519do(bArr, 8);
                iArr[3] = m33519do(bArr, 12);
                iArr[4] = m33519do(bArr, 16);
                iArr[5] = m33519do(bArr, 20);
                iArr[6] = m33519do(bArr, 24);
                iArr[7] = m33519do(bArr, 28);
            }
            this.f29704if = false;
        } else {
            this.f29704if = true;
            iArr[0] = m33519do(bArr, 0);
            iArr[1] = m33519do(bArr, 4);
            iArr[2] = m33519do(bArr, 8);
            iArr[3] = m33519do(bArr, 12);
            iArr[7] = 0;
            iArr[6] = 0;
            iArr[5] = 0;
            iArr[4] = 0;
        }
        for (int i = 0; i < 4; i++) {
            iArr2[i] = iArr[i] ^ iArr[i + 4];
        }
        m33524if(iArr2, f29700this, 0);
        for (int i2 = 0; i2 < 4; i2++) {
            iArr2[i2] = iArr2[i2] ^ iArr[i2];
        }
        m33524if(iArr2, f29700this, 4);
        if (this.f29704if) {
            int[] iArr5 = this.f29705new;
            if (z) {
                iArr5[0] = iArr[0];
                iArr5[1] = iArr[1];
                iArr5[2] = iArr[2];
                iArr5[3] = iArr[3];
                m33517class(15, iArr, 0, this.f29703for, 4);
                m33517class(30, iArr, 0, this.f29703for, 12);
                m33517class(15, iArr, 0, iArr4, 0);
                int[] iArr6 = this.f29703for;
                iArr6[18] = iArr4[2];
                iArr6[19] = iArr4[3];
                m33517class(17, iArr, 0, this.f29706try, 4);
                m33517class(17, iArr, 0, this.f29703for, 24);
                m33517class(17, iArr, 0, this.f29703for, 32);
                int[] iArr7 = this.f29703for;
                iArr7[0] = iArr2[0];
                iArr7[1] = iArr2[1];
                iArr7[2] = iArr2[2];
                iArr7[3] = iArr2[3];
                m33517class(15, iArr2, 0, iArr7, 8);
                m33517class(15, iArr2, 0, this.f29706try, 0);
                m33517class(15, iArr2, 0, iArr4, 0);
                int[] iArr8 = this.f29703for;
                iArr8[16] = iArr4[0];
                iArr8[17] = iArr4[1];
                m33517class(15, iArr2, 0, iArr8, 20);
                m33518const(34, iArr2, 0, this.f29703for, 28);
                m33517class(17, iArr2, 0, this.f29705new, 4);
                return;
            }
            iArr5[4] = iArr[0];
            iArr5[5] = iArr[1];
            iArr5[6] = iArr[2];
            iArr5[7] = iArr[3];
            m33525new(15, iArr, 0, this.f29703for, 28);
            m33525new(30, iArr, 0, this.f29703for, 20);
            m33525new(15, iArr, 0, iArr4, 0);
            int[] iArr9 = this.f29703for;
            iArr9[16] = iArr4[0];
            iArr9[17] = iArr4[1];
            m33525new(17, iArr, 0, this.f29706try, 0);
            m33525new(17, iArr, 0, this.f29703for, 8);
            m33525new(17, iArr, 0, this.f29703for, 0);
            int[] iArr10 = this.f29703for;
            iArr10[34] = iArr2[0];
            iArr10[35] = iArr2[1];
            iArr10[32] = iArr2[2];
            iArr10[33] = iArr2[3];
            m33525new(15, iArr2, 0, iArr10, 24);
            m33525new(15, iArr2, 0, this.f29706try, 4);
            m33525new(15, iArr2, 0, iArr4, 0);
            int[] iArr11 = this.f29703for;
            iArr11[18] = iArr4[2];
            iArr11[19] = iArr4[3];
            m33525new(15, iArr2, 0, iArr11, 12);
            m33529try(34, iArr2, 0, this.f29703for, 4);
            m33517class(17, iArr2, 0, this.f29705new, 0);
            return;
        }
        for (int i3 = 0; i3 < 4; i3++) {
            iArr3[i3] = iArr2[i3] ^ iArr[i3 + 4];
        }
        m33524if(iArr3, f29700this, 8);
        int[] iArr12 = this.f29705new;
        if (z) {
            iArr12[0] = iArr[0];
            iArr12[1] = iArr[1];
            iArr12[2] = iArr[2];
            iArr12[3] = iArr[3];
            m33518const(45, iArr, 0, this.f29703for, 16);
            m33517class(15, iArr, 0, this.f29706try, 4);
            m33517class(17, iArr, 0, this.f29703for, 32);
            m33518const(34, iArr, 0, this.f29703for, 44);
            m33517class(15, iArr, 4, this.f29703for, 4);
            m33517class(15, iArr, 4, this.f29706try, 0);
            m33517class(30, iArr, 4, this.f29703for, 24);
            m33518const(34, iArr, 4, this.f29703for, 36);
            m33517class(15, iArr2, 0, this.f29703for, 8);
            m33517class(30, iArr2, 0, this.f29703for, 20);
            int[] iArr13 = this.f29706try;
            iArr13[8] = iArr2[1];
            iArr13[9] = iArr2[2];
            iArr13[10] = iArr2[3];
            iArr13[11] = iArr2[0];
            m33518const(49, iArr2, 0, this.f29703for, 40);
            int[] iArr14 = this.f29703for;
            iArr14[0] = iArr3[0];
            iArr14[1] = iArr3[1];
            iArr14[2] = iArr3[2];
            iArr14[3] = iArr3[3];
            m33517class(30, iArr3, 0, iArr14, 12);
            m33517class(30, iArr3, 0, this.f29703for, 28);
            m33518const(51, iArr3, 0, this.f29705new, 4);
            return;
        }
        iArr12[4] = iArr[0];
        iArr12[5] = iArr[1];
        iArr12[6] = iArr[2];
        iArr12[7] = iArr[3];
        m33529try(45, iArr, 0, this.f29703for, 28);
        m33525new(15, iArr, 0, this.f29706try, 4);
        m33525new(17, iArr, 0, this.f29703for, 12);
        m33529try(34, iArr, 0, this.f29703for, 0);
        m33525new(15, iArr, 4, this.f29703for, 40);
        m33525new(15, iArr, 4, this.f29706try, 8);
        m33525new(30, iArr, 4, this.f29703for, 20);
        m33529try(34, iArr, 4, this.f29703for, 8);
        m33525new(15, iArr2, 0, this.f29703for, 36);
        m33525new(30, iArr2, 0, this.f29703for, 24);
        int[] iArr15 = this.f29706try;
        iArr15[2] = iArr2[1];
        iArr15[3] = iArr2[2];
        iArr15[0] = iArr2[3];
        iArr15[1] = iArr2[0];
        m33529try(49, iArr2, 0, this.f29703for, 4);
        int[] iArr16 = this.f29703for;
        iArr16[46] = iArr3[0];
        iArr16[47] = iArr3[1];
        iArr16[44] = iArr3[2];
        iArr16[45] = iArr3[3];
        m33525new(30, iArr3, 0, iArr16, 32);
        m33525new(30, iArr3, 0, this.f29703for, 16);
        m33518const(51, iArr3, 0, this.f29705new, 0);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Camellia";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("only simple KeyParameter expected.");
        }
        m33530while(z, ((gr0) cipherParameters).m2770do());
        this.f29702do = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException {
        if (!this.f29702do) {
            throw new IllegalStateException("Camellia is not initialized");
        }
        if (i + 16 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 16 <= bArr2.length) {
            return this.f29704if ? m33527this(bArr, i, bArr2, i2) : m33514break(bArr, i, bArr2, i2);
        }
        throw new f91("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
