package android.support.v4;

import org.bouncycastle.crypto.Xof;

/* loaded from: classes3.dex */
public class dq1 extends tq0 implements Xof {
    public dq1() {
        this(128);
    }

    public dq1(int i) {
        super(m1493catch(i));
    }

    public dq1(dq1 dq1Var) {
        super(dq1Var);
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m1493catch(int i) {
        if (i == 128 || i == 256) {
            return i;
        }
        throw new IllegalArgumentException("'bitLength' " + i + " not supported for SHAKE");
    }

    @Override // android.support.v4.tq0
    /* renamed from: case */
    public int mo316case(byte[] bArr, int i, byte b, int i2) {
        return m1494class(bArr, i, getDigestSize(), b, i2);
    }

    /* renamed from: class, reason: not valid java name */
    public int m1494class(byte[] bArr, int i, int i2, byte b, int i3) {
        if (i3 < 0 || i3 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i4 = (b & ((1 << i3) - 1)) | (15 << i3);
        int i5 = i3 + 4;
        if (i5 >= 8) {
            m8054new(new byte[]{(byte) i4}, 0, 1);
            i5 -= 8;
            i4 >>>= 8;
        }
        if (i5 > 0) {
            m8055try(i4, i5);
        }
        m8053break(bArr, i, i2 * 8);
        reset();
        return i2;
    }

    @Override // android.support.v4.tq0, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        return doFinal(bArr, i, getDigestSize());
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i, int i2) {
        int iDoOutput = doOutput(bArr, i, i2);
        reset();
        return iDoOutput;
    }

    public int doOutput(byte[] bArr, int i, int i2) {
        if (!this.f6636case) {
            m8055try(15, 4);
        }
        m8053break(bArr, i, i2 * 8);
        return i2;
    }

    @Override // android.support.v4.tq0, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHAKE" + this.f6641try;
    }
}
