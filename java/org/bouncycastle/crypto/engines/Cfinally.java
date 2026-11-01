package org.bouncycastle.crypto.engines;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.t3;
import android.support.v4.tw;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Cfinal;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Celse;
import org.mozilla.javascript.NativeJavaObject;

/* renamed from: org.bouncycastle.crypto.engines.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinally implements BlockCipher {

    /* renamed from: for, reason: not valid java name */
    private static final int f29692for = 16;

    /* renamed from: do, reason: not valid java name */
    private final int[] f29695do = new int[4];

    /* renamed from: if, reason: not valid java name */
    private int[] f29696if;

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f29693new = {-42, -112, -23, -2, -52, ExifInterface.MARKER_APP1, 61, -73, t3.f6385extends, -74, t3.f6409throws, -62, 40, -5, 44, 5, 43, 103, -102, 118, ExifInterface.START_CODE, -66, 4, -61, -86, 68, 19, 38, 73, -122, 6, -103, -100, 66, 80, -12, -111, -17, -104, 122, 51, 84, 11, 67, -19, -49, -84, 98, -28, -77, t3.f6403strictfp, -87, -55, 8, -24, -107, Byte.MIN_VALUE, -33, -108, -6, 117, -113, Utf8.REPLACEMENT_BYTE, -90, 71, 7, -89, -4, -13, 115, t3.f6387finally, -70, -125, 89, 60, t3.f6398private, -26, -123, 79, -88, 104, 107, -127, -78, 113, 100, -38, -117, -8, -21, 15, 75, 112, 86, -99, 53, t3.f6394interface, 36, 14, 94, NativeJavaObject.CONVERSION_NONE, 88, -47, -94, 37, 34, 124, 59, 1, 33, 120, -121, -44, 0, 70, 87, -97, -45, 39, 82, 76, 54, 2, -25, -96, -60, -56, -98, -22, -65, -118, -46, Cfinal.f15506do, -57, 56, -75, -93, -9, -14, -50, -7, 97, t3.f6382default, -95, -32, -82, 93, -92, -101, 52, 26, 85, -83, -109, 50, 48, -11, -116, -79, -29, t3.f6412volatile, -10, -30, 46, -126, 102, -54, 96, -64, 41, 35, -85, 13, 83, 78, 111, -43, -37, 55, 69, -34, -3, -114, 47, 3, -1, 106, 114, 109, 108, 91, 81, -115, t3.f6381continue, -81, -110, -69, -35, Celse.f30385final, Byte.MAX_VALUE, 17, ExifInterface.MARKER_EOI, 92, 65, t3.f6399protected, 16, 90, -40, 10, -63, 49, -120, -91, -51, 123, -67, 45, 116, -48, 18, -72, -27, -76, -80, -119, 105, -105, 74, 12, -106, 119, 126, 101, -71, -15, 9, -59, 110, -58, -124, t3.f6397package, -16, 125, -20, 58, -36, 77, 32, 121, -18, 95, 62, -41, -53, 57, 72};

    /* renamed from: try, reason: not valid java name */
    private static final int[] f29694try = {462357, 472066609, 943670861, 1415275113, 1886879365, -1936483679, -1464879427, -993275175, -521670923, -66909679, 404694573, 876298825, 1347903077, 1819507329, -2003855715, -1532251463, -1060647211, -589042959, -117504499, 337322537, 808926789, 1280531041, 1752135293, -2071227751, -1599623499, -1128019247, -656414995, -184876535, 269950501, 741554753, 1213159005, 1684763257};

    /* renamed from: case, reason: not valid java name */
    private static final int[] f29691case = {-1548633402, 1453994832, 1736282519, -1301273892};

    /* renamed from: break, reason: not valid java name */
    private int m33503break(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: case, reason: not valid java name */
    private int m33504case(int i) {
        return m33503break(i, 23) ^ (m33503break(i, 13) ^ i);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m33505catch(int i) {
        byte[] bArr = f29693new;
        return (bArr[i & 255] & 255) | ((bArr[(i >> 24) & 255] & 255) << 24) | ((bArr[(i >> 16) & 255] & 255) << 16) | ((bArr[(i >> 8) & 255] & 255) << 8);
    }

    /* renamed from: do, reason: not valid java name */
    private int m33506do(int[] iArr, int i) {
        return m33507else((iArr[3] ^ (iArr[1] ^ iArr[2])) ^ i) ^ iArr[0];
    }

    /* renamed from: else, reason: not valid java name */
    private int m33507else(int i) {
        return m33513try(m33505catch(i));
    }

    /* renamed from: for, reason: not valid java name */
    private int m33508for(int[] iArr, int i) {
        return m33507else((iArr[1] ^ (iArr[3] ^ iArr[0])) ^ i) ^ iArr[2];
    }

    /* renamed from: goto, reason: not valid java name */
    private int m33509goto(int i) {
        return m33504case(m33505catch(i));
    }

    /* renamed from: if, reason: not valid java name */
    private int m33510if(int[] iArr, int i) {
        return m33507else((iArr[0] ^ (iArr[2] ^ iArr[3])) ^ i) ^ iArr[1];
    }

    /* renamed from: new, reason: not valid java name */
    private int m33511new(int[] iArr, int i) {
        return m33507else((iArr[2] ^ (iArr[0] ^ iArr[1])) ^ i) ^ iArr[3];
    }

    /* renamed from: this, reason: not valid java name */
    private int[] m33512this(boolean z, byte[] bArr) {
        int[] iArr = new int[32];
        int[] iArr2 = {ib1.m3354do(bArr, 0), ib1.m3354do(bArr, 4), ib1.m3354do(bArr, 8), ib1.m3354do(bArr, 12)};
        int i = iArr2[0];
        int[] iArr3 = f29691case;
        int[] iArr4 = {i ^ iArr3[0], iArr2[1] ^ iArr3[1], iArr2[2] ^ iArr3[2], iArr2[3] ^ iArr3[3]};
        if (z) {
            int i2 = iArr4[0];
            int i3 = (iArr4[1] ^ iArr4[2]) ^ iArr4[3];
            int[] iArr5 = f29694try;
            iArr[0] = i2 ^ m33509goto(i3 ^ iArr5[0]);
            iArr[1] = iArr4[1] ^ m33509goto(((iArr4[2] ^ iArr4[3]) ^ iArr[0]) ^ iArr5[1]);
            iArr[2] = iArr4[2] ^ m33509goto(((iArr4[3] ^ iArr[0]) ^ iArr[1]) ^ iArr5[2]);
            iArr[3] = iArr4[3] ^ m33509goto(((iArr[0] ^ iArr[1]) ^ iArr[2]) ^ iArr5[3]);
            for (int i4 = 4; i4 < 32; i4++) {
                iArr[i4] = iArr[i4 - 4] ^ m33509goto(((iArr[i4 - 3] ^ iArr[i4 - 2]) ^ iArr[i4 - 1]) ^ f29694try[i4]);
            }
        } else {
            int i5 = iArr4[0];
            int i6 = (iArr4[1] ^ iArr4[2]) ^ iArr4[3];
            int[] iArr6 = f29694try;
            iArr[31] = i5 ^ m33509goto(i6 ^ iArr6[0]);
            iArr[30] = iArr4[1] ^ m33509goto(((iArr4[2] ^ iArr4[3]) ^ iArr[31]) ^ iArr6[1]);
            iArr[29] = iArr4[2] ^ m33509goto(((iArr4[3] ^ iArr[31]) ^ iArr[30]) ^ iArr6[2]);
            iArr[28] = iArr4[3] ^ m33509goto(((iArr[31] ^ iArr[30]) ^ iArr[29]) ^ iArr6[3]);
            for (int i7 = 27; i7 >= 0; i7--) {
                iArr[i7] = iArr[i7 + 4] ^ m33509goto(((iArr[i7 + 3] ^ iArr[i7 + 2]) ^ iArr[i7 + 1]) ^ f29694try[31 - i7]);
            }
        }
        return iArr;
    }

    /* renamed from: try, reason: not valid java name */
    private int m33513try(int i) {
        return m33503break(i, 24) ^ (((m33503break(i, 2) ^ i) ^ m33503break(i, 10)) ^ m33503break(i, 18));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SM4";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("invalid parameter passed to SM4 init - " + cipherParameters.getClass().getName());
        }
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        if (bArrM2770do.length != 16) {
            throw new IllegalArgumentException("SM4 requires a 128 bit key");
        }
        this.f29696if = m33512this(z, bArrM2770do);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (this.f29696if == null) {
            throw new IllegalStateException("SM4 not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        this.f29695do[0] = ib1.m3354do(bArr, i);
        this.f29695do[1] = ib1.m3354do(bArr, i + 4);
        this.f29695do[2] = ib1.m3354do(bArr, i + 8);
        this.f29695do[3] = ib1.m3354do(bArr, i + 12);
        for (int i3 = 0; i3 < 32; i3 += 4) {
            int[] iArr = this.f29695do;
            iArr[0] = m33506do(iArr, this.f29696if[i3]);
            int[] iArr2 = this.f29695do;
            iArr2[1] = m33510if(iArr2, this.f29696if[i3 + 1]);
            int[] iArr3 = this.f29695do;
            iArr3[2] = m33508for(iArr3, this.f29696if[i3 + 2]);
            int[] iArr4 = this.f29695do;
            iArr4[3] = m33511new(iArr4, this.f29696if[i3 + 3]);
        }
        ib1.m3348case(this.f29695do[3], bArr2, i2);
        ib1.m3348case(this.f29695do[2], bArr2, i2 + 4);
        ib1.m3348case(this.f29695do[1], bArr2, i2 + 8);
        ib1.m3348case(this.f29695do[0], bArr2, i2 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
