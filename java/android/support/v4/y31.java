package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class y31 implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private static final int f8115case = 16;

    /* renamed from: else, reason: not valid java name */
    private static final int[] f8116else = {0, 0, 0, 0};

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f8117goto = {128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212};

    /* renamed from: try, reason: not valid java name */
    private boolean f8122try;

    /* renamed from: do, reason: not valid java name */
    private int[] f8118do = new int[4];

    /* renamed from: if, reason: not valid java name */
    private int[] f8120if = new int[4];

    /* renamed from: for, reason: not valid java name */
    private int[] f8119for = new int[4];

    /* renamed from: new, reason: not valid java name */
    private boolean f8121new = false;

    /* renamed from: break, reason: not valid java name */
    private void m9728break(int[] iArr, int[] iArr2) {
        int i = iArr[0] ^ iArr[2];
        int iM9733goto = i ^ (m9733goto(i, 8) ^ m9733goto(i, 24));
        iArr[1] = iArr[1] ^ iM9733goto;
        iArr[3] = iM9733goto ^ iArr[3];
        for (int i2 = 0; i2 < 4; i2++) {
            iArr[i2] = iArr[i2] ^ iArr2[i2];
        }
        int i3 = iArr[1] ^ iArr[3];
        int iM9733goto2 = i3 ^ (m9733goto(i3, 8) ^ m9733goto(i3, 24));
        iArr[0] = iArr[0] ^ iM9733goto2;
        iArr[2] = iM9733goto2 ^ iArr[2];
    }

    /* renamed from: case, reason: not valid java name */
    private void m9729case(int[] iArr) {
        iArr[1] = m9733goto(iArr[1], 1);
        iArr[2] = m9733goto(iArr[2], 5);
        iArr[3] = m9733goto(iArr[3], 2);
    }

    /* renamed from: do, reason: not valid java name */
    private int m9730do(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] << t3.f6397package) | ((bArr[i2] & 255) << 16);
        int i5 = i3 + 1;
        return (bArr[i5] & 255) | i4 | ((bArr[i3] & 255) << 8);
    }

    /* renamed from: else, reason: not valid java name */
    private void m9731else(int[] iArr) {
        iArr[1] = m9733goto(iArr[1], 31);
        iArr[2] = m9733goto(iArr[2], 27);
        iArr[3] = m9733goto(iArr[3], 30);
    }

    /* renamed from: for, reason: not valid java name */
    private int m9732for(byte[] bArr, int i, byte[] bArr2, int i2) {
        this.f8118do[0] = m9730do(bArr, i);
        this.f8118do[1] = m9730do(bArr, i + 4);
        this.f8118do[2] = m9730do(bArr, i + 8);
        this.f8118do[3] = m9730do(bArr, i + 12);
        int i3 = 0;
        while (i3 < 16) {
            int[] iArr = this.f8118do;
            iArr[0] = iArr[0] ^ f8117goto[i3];
            m9728break(iArr, this.f8120if);
            m9729case(this.f8118do);
            m9735new(this.f8118do);
            m9731else(this.f8118do);
            i3++;
        }
        int[] iArr2 = this.f8118do;
        iArr2[0] = f8117goto[i3] ^ iArr2[0];
        m9728break(iArr2, this.f8120if);
        m9737try(this.f8118do[0], bArr2, i2);
        m9737try(this.f8118do[1], bArr2, i2 + 4);
        m9737try(this.f8118do[2], bArr2, i2 + 8);
        m9737try(this.f8118do[3], bArr2, i2 + 12);
        return 16;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m9733goto(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: if, reason: not valid java name */
    private int m9734if(byte[] bArr, int i, byte[] bArr2, int i2) {
        this.f8118do[0] = m9730do(bArr, i);
        this.f8118do[1] = m9730do(bArr, i + 4);
        this.f8118do[2] = m9730do(bArr, i + 8);
        this.f8118do[3] = m9730do(bArr, i + 12);
        int[] iArr = this.f8120if;
        System.arraycopy(iArr, 0, this.f8119for, 0, iArr.length);
        m9728break(this.f8119for, f8116else);
        int i3 = 16;
        while (true) {
            int[] iArr2 = this.f8118do;
            int[] iArr3 = this.f8119for;
            if (i3 <= 0) {
                m9728break(iArr2, iArr3);
                int[] iArr4 = this.f8118do;
                iArr4[0] = f8117goto[i3] ^ iArr4[0];
                m9737try(iArr4[0], bArr2, i2);
                m9737try(this.f8118do[1], bArr2, i2 + 4);
                m9737try(this.f8118do[2], bArr2, i2 + 8);
                m9737try(this.f8118do[3], bArr2, i2 + 12);
                return 16;
            }
            m9728break(iArr2, iArr3);
            int[] iArr5 = this.f8118do;
            iArr5[0] = iArr5[0] ^ f8117goto[i3];
            m9729case(iArr5);
            m9735new(this.f8118do);
            m9731else(this.f8118do);
            i3--;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m9735new(int[] iArr) {
        iArr[1] = iArr[1] ^ ((iArr[3] ^ (-1)) & (iArr[2] ^ (-1)));
        iArr[0] = iArr[0] ^ (iArr[2] & iArr[1]);
        int i = iArr[3];
        iArr[3] = iArr[0];
        iArr[0] = i;
        iArr[2] = iArr[2] ^ ((iArr[0] ^ iArr[1]) ^ iArr[3]);
        iArr[1] = ((iArr[3] ^ (-1)) & (iArr[2] ^ (-1))) ^ iArr[1];
        iArr[0] = (iArr[1] & iArr[2]) ^ iArr[0];
    }

    /* renamed from: this, reason: not valid java name */
    private void m9736this(byte[] bArr) {
        this.f8120if[0] = m9730do(bArr, 0);
        this.f8120if[1] = m9730do(bArr, 4);
        this.f8120if[2] = m9730do(bArr, 8);
        this.f8120if[3] = m9730do(bArr, 12);
    }

    /* renamed from: try, reason: not valid java name */
    private void m9737try(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        bArr[i4] = (byte) (i >>> 8);
        bArr[i4 + 1] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Noekeon";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f8122try = z;
            this.f8121new = true;
            m9736this(((gr0) cipherParameters).m2770do());
        } else {
            throw new IllegalArgumentException("invalid parameter passed to Noekeon init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (!this.f8121new) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 16 <= bArr2.length) {
            return this.f8122try ? m9732for(bArr, i, bArr2, i2) : m9734if(bArr, i, bArr2, i2);
        }
        throw new f91("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
