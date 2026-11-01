package android.support.v4;

/* loaded from: classes3.dex */
public class aq1 extends tq0 {
    public aq1() {
        this(256);
    }

    public aq1(int i) {
        super(m315catch(i));
    }

    public aq1(aq1 aq1Var) {
        super(aq1Var);
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m315catch(int i) {
        if (i == 224 || i == 256 || i == 384 || i == 512) {
            return i;
        }
        throw new IllegalArgumentException("'bitLength' " + i + " not supported for SHA-3");
    }

    @Override // android.support.v4.tq0
    /* renamed from: case, reason: not valid java name */
    public int mo316case(byte[] bArr, int i, byte b, int i2) {
        if (i2 < 0 || i2 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i3 = (b & ((1 << i2) - 1)) | (2 << i2);
        int i4 = i2 + 2;
        if (i4 >= 8) {
            m8054new(new byte[]{(byte) i3}, 0, 1);
            i4 -= 8;
            i3 >>>= 8;
        }
        return super.mo316case(bArr, i, (byte) i3, i4);
    }

    @Override // android.support.v4.tq0, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m8055try(2, 2);
        return super.doFinal(bArr, i);
    }

    @Override // android.support.v4.tq0, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA3-" + this.f6641try;
    }
}
