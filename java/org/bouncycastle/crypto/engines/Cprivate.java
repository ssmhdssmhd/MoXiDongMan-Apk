package org.bouncycastle.crypto.engines;

import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.engines.private, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cprivate implements BlockCipher {

    /* renamed from: for, reason: not valid java name */
    private static final int[] f29736for = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: new, reason: not valid java name */
    private static final int f29737new = 32;

    /* renamed from: try, reason: not valid java name */
    private static final int f29738try = 64;

    /* renamed from: do, reason: not valid java name */
    private boolean f29739do = false;

    /* renamed from: if, reason: not valid java name */
    private int[] f29740if = null;

    /* renamed from: do, reason: not valid java name */
    private void m33555do(byte[] bArr, int[] iArr, int i, int i2) {
        while (i2 < 8) {
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
            int i6 = i4 + 1;
            iArr[i2] = i5 | ((bArr[i4] & 255) << 8) | (bArr[i6] & 255);
            i2++;
            i = i6 + 1;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m33556for(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[8];
        m33555do(bArr, iArr, i, 0);
        for (int i3 = 63; i3 > -1; i3--) {
            int i4 = (iArr[0] - ((((iArr[1] >>> 2) | (iArr[1] << (-2))) ^ ((iArr[1] >>> 13) | (iArr[1] << (-13)))) ^ ((iArr[1] >>> 22) | (iArr[1] << (-22))))) - (((iArr[1] & iArr[2]) ^ (iArr[1] & iArr[3])) ^ (iArr[2] & iArr[3]));
            iArr[0] = iArr[1];
            iArr[1] = iArr[2];
            iArr[2] = iArr[3];
            iArr[3] = iArr[4] - i4;
            iArr[4] = iArr[5];
            iArr[5] = iArr[6];
            iArr[6] = iArr[7];
            iArr[7] = (((i4 - f29736for[i3]) - this.f29740if[i3]) - ((((iArr[4] >>> 6) | (iArr[4] << (-6))) ^ ((iArr[4] >>> 11) | (iArr[4] << (-11)))) ^ ((iArr[4] >>> 25) | (iArr[4] << (-25))))) - ((((-1) ^ iArr[4]) & iArr[6]) ^ (iArr[5] & iArr[4]));
        }
        m33559try(iArr, bArr2, i2);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33557if(byte[] bArr, int[] iArr, int i, int i2) {
        while (i2 < bArr.length / 4) {
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
            int i6 = i4 + 1;
            int i7 = i5 | ((bArr[i4] & 255) << 8);
            iArr[i2] = i7 | (bArr[i6] & 255);
            i2++;
            i = i6 + 1;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m33558new(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[8];
        m33555do(bArr, iArr, i, 0);
        for (int i3 = 0; i3 < 64; i3++) {
            int i4 = ((((iArr[4] >>> 6) | (iArr[4] << (-6))) ^ ((iArr[4] >>> 11) | (iArr[4] << (-11)))) ^ ((iArr[4] >>> 25) | (iArr[4] << (-25)))) + ((iArr[4] & iArr[5]) ^ ((iArr[4] ^ (-1)) & iArr[6])) + iArr[7] + f29736for[i3] + this.f29740if[i3];
            iArr[7] = iArr[6];
            iArr[6] = iArr[5];
            iArr[5] = iArr[4];
            iArr[4] = iArr[3] + i4;
            iArr[3] = iArr[2];
            iArr[2] = iArr[1];
            iArr[1] = iArr[0];
            iArr[0] = i4 + ((((iArr[0] >>> 2) | (iArr[0] << (-2))) ^ ((iArr[0] >>> 13) | (iArr[0] << (-13)))) ^ ((iArr[0] >>> 22) | (iArr[0] << (-22)))) + ((iArr[2] & iArr[3]) ^ ((iArr[0] & iArr[2]) ^ (iArr[0] & iArr[3])));
        }
        m33559try(iArr, bArr2, i2);
    }

    /* renamed from: try, reason: not valid java name */
    private void m33559try(int[] iArr, byte[] bArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = i + 1;
            bArr[i] = (byte) (iArr[i2] >>> 24);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (iArr[i2] >>> 16);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (iArr[i2] >>> 8);
            i = i5 + 1;
            bArr[i5] = (byte) iArr[i2];
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m33560case(byte[] bArr) {
        if (bArr.length != 0 && bArr.length <= 64) {
            if (bArr.length >= 16 && bArr.length % 8 == 0) {
                m33557if(bArr, this.f29740if, 0, 0);
                for (int i = 16; i < 64; i++) {
                    int[] iArr = this.f29740if;
                    int i2 = i - 2;
                    int i3 = i - 15;
                    iArr[i] = ((iArr[i2] >>> 10) ^ (((iArr[i2] >>> 17) | (iArr[i2] << (-17))) ^ ((iArr[i2] >>> 19) | (iArr[i2] << (-19))))) + iArr[i - 7] + ((iArr[i3] >>> 3) ^ (((iArr[i3] >>> 7) | (iArr[i3] << (-7))) ^ ((iArr[i3] >>> 18) | (iArr[i3] << (-18))))) + iArr[i - 16];
                }
                return;
            }
        }
        throw new IllegalArgumentException("Shacal2-key must be 16 - 64 bytes and multiple of 8");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Shacal2";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("only simple KeyParameter expected.");
        }
        this.f29739do = z;
        this.f29740if = new int[64];
        m33560case(((gr0) cipherParameters).m2770do());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (this.f29740if == null) {
            throw new IllegalStateException("Shacal2 not initialised");
        }
        if (i + 32 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 32 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        if (this.f29739do) {
            m33558new(bArr, i, bArr2, i2);
            return 32;
        }
        m33556for(bArr, i, bArr2, i2);
        return 32;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
