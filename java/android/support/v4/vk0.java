package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class vk0 implements BlockCipher {

    /* renamed from: for, reason: not valid java name */
    private static final int f7230for = 65535;

    /* renamed from: if, reason: not valid java name */
    public static final int f7231if = 8;

    /* renamed from: new, reason: not valid java name */
    private static final int f7232new = 65537;

    /* renamed from: do, reason: not valid java name */
    private int[] f7233do = null;

    /* renamed from: case, reason: not valid java name */
    private int[] m8880case(int[] iArr) {
        int[] iArr2 = new int[52];
        int iM8883goto = m8883goto(iArr[0]);
        int i = 1;
        int iM8888do = m8888do(iArr[1]);
        int iM8888do2 = m8888do(iArr[2]);
        iArr2[51] = m8883goto(iArr[3]);
        iArr2[50] = iM8888do2;
        iArr2[49] = iM8888do;
        int i2 = 48;
        iArr2[48] = iM8883goto;
        int i3 = 4;
        while (i < 8) {
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            int i6 = i4 + 1;
            int i7 = i2 - 1;
            iArr2[i7] = iArr[i4];
            int i8 = i7 - 1;
            iArr2[i8] = i5;
            int i9 = i6 + 1;
            int iM8883goto2 = m8883goto(iArr[i6]);
            int i10 = i9 + 1;
            int iM8888do3 = m8888do(iArr[i9]);
            int i11 = i10 + 1;
            int iM8888do4 = m8888do(iArr[i10]);
            int i12 = i8 - 1;
            iArr2[i12] = m8883goto(iArr[i11]);
            int i13 = i12 - 1;
            iArr2[i13] = iM8888do3;
            int i14 = i13 - 1;
            iArr2[i14] = iM8888do4;
            i2 = i14 - 1;
            iArr2[i2] = iM8883goto2;
            i++;
            i3 = i11 + 1;
        }
        int i15 = i3 + 1;
        int i16 = iArr[i3];
        int i17 = i15 + 1;
        int i18 = i2 - 1;
        iArr2[i18] = iArr[i15];
        int i19 = i18 - 1;
        iArr2[i19] = i16;
        int i20 = i17 + 1;
        int iM8883goto3 = m8883goto(iArr[i17]);
        int i21 = i20 + 1;
        int iM8888do5 = m8888do(iArr[i20]);
        int i22 = i21 + 1;
        int iM8888do6 = m8888do(iArr[i21]);
        int i23 = i19 - 1;
        iArr2[i23] = m8883goto(iArr[i22]);
        int i24 = i23 - 1;
        iArr2[i24] = iM8888do6;
        int i25 = i24 - 1;
        iArr2[i25] = iM8888do5;
        iArr2[i25 - 1] = iM8883goto3;
        return iArr2;
    }

    /* renamed from: else, reason: not valid java name */
    private int m8881else(int i, int i2) {
        int i3;
        if (i == 0) {
            i3 = f7232new - i2;
        } else if (i2 == 0) {
            i3 = f7232new - i;
        } else {
            int i4 = i * i2;
            int i5 = i4 & 65535;
            int i6 = i4 >>> 16;
            i3 = (i5 - i6) + (i5 < i6 ? 1 : 0);
        }
        return i3 & 65535;
    }

    /* renamed from: for, reason: not valid java name */
    private int[] m8882for(byte[] bArr) {
        int i;
        int[] iArr = new int[52];
        int i2 = 0;
        if (bArr.length < 16) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
            bArr = bArr2;
        }
        while (true) {
            if (i2 >= 8) {
                break;
            }
            iArr[i2] = m8884if(bArr, i2 * 2);
            i2++;
        }
        for (i = 8; i < 52; i++) {
            int i3 = i & 7;
            if (i3 < 6) {
                iArr[i] = (((iArr[i - 7] & 127) << 9) | (iArr[i - 6] >> 7)) & 65535;
            } else if (i3 == 6) {
                iArr[i] = (((iArr[i - 7] & 127) << 9) | (iArr[i - 14] >> 7)) & 65535;
            } else {
                iArr[i] = (((iArr[i - 15] & 127) << 9) | (iArr[i - 14] >> 7)) & 65535;
            }
        }
        return iArr;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m8883goto(int i) {
        if (i < 2) {
            return i;
        }
        int i2 = f7232new / i;
        int i3 = f7232new % i;
        int i4 = 1;
        while (i3 != 1) {
            int i5 = i / i3;
            i %= i3;
            i4 = (i4 + (i5 * i2)) & 65535;
            if (i == 1) {
                return i4;
            }
            int i6 = i3 / i;
            i3 %= i;
            i2 = (i2 + (i6 * i4)) & 65535;
        }
        return (1 - i2) & 65535;
    }

    /* renamed from: if, reason: not valid java name */
    private int m8884if(byte[] bArr, int i) {
        return ((bArr[i] << 8) & 65280) + (bArr[i + 1] & 255);
    }

    /* renamed from: new, reason: not valid java name */
    private int[] m8885new(boolean z, byte[] bArr) {
        return z ? m8882for(bArr) : m8880case(m8882for(bArr));
    }

    /* renamed from: this, reason: not valid java name */
    private void m8886this(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
    }

    /* renamed from: try, reason: not valid java name */
    private void m8887try(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM8884if = m8884if(bArr, i);
        int iM8884if2 = m8884if(bArr, i + 2);
        int iM8884if3 = m8884if(bArr, i + 4);
        int iM8884if4 = m8884if(bArr, i + 6);
        int i3 = 0;
        int i4 = iM8884if3;
        int i5 = iM8884if2;
        int i6 = iM8884if;
        int i7 = 0;
        while (i3 < 8) {
            int i8 = i7 + 1;
            int iM8881else = m8881else(i6, iArr[i7]);
            int i9 = i8 + 1;
            int i10 = (i5 + iArr[i8]) & 65535;
            int i11 = i9 + 1;
            int i12 = (i4 + iArr[i9]) & 65535;
            int i13 = i11 + 1;
            int iM8881else2 = m8881else(iM8884if4, iArr[i11]);
            int i14 = i13 + 1;
            int iM8881else3 = m8881else(i12 ^ iM8881else, iArr[i13]);
            int iM8881else4 = m8881else(((i10 ^ iM8881else2) + iM8881else3) & 65535, iArr[i14]);
            int i15 = (iM8881else3 + iM8881else4) & 65535;
            iM8884if4 = iM8881else2 ^ i15;
            i4 = i15 ^ i10;
            i3++;
            i5 = i12 ^ iM8881else4;
            i6 = iM8881else ^ iM8881else4;
            i7 = i14 + 1;
        }
        int i16 = i7 + 1;
        m8886this(m8881else(i6, iArr[i7]), bArr2, i2);
        int i17 = i16 + 1;
        m8886this(i4 + iArr[i16], bArr2, i2 + 2);
        m8886this(i5 + iArr[i17], bArr2, i2 + 4);
        m8886this(m8881else(iM8884if4, iArr[i17 + 1]), bArr2, i2 + 6);
    }

    /* renamed from: do, reason: not valid java name */
    public int m8888do(int i) {
        return (0 - i) & 65535;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "IDEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f7233do = m8885new(z, ((gr0) cipherParameters).m2770do());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to IDEA init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = this.f7233do;
        if (iArr == null) {
            throw new IllegalStateException("IDEA engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        m8887try(iArr, bArr, i, bArr2, i2);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
