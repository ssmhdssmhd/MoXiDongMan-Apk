package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class zp1 extends xv0 {

    /* renamed from: while, reason: not valid java name */
    private static final int f8630while = 48;

    public zp1() {
    }

    public zp1(zp1 zp1Var) {
        super(zp1Var);
    }

    public zp1(byte[] bArr) {
        m9601super(bArr);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new zp1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m9602this();
        ib1.m3369static(this.f8046try, bArr, i);
        ib1.m3369static(this.f8034case, bArr, i + 8);
        ib1.m3369static(this.f8039else, bArr, i + 16);
        ib1.m3369static(this.f8042goto, bArr, i + 24);
        ib1.m3369static(this.f8045this, bArr, i + 32);
        ib1.m3369static(this.f8033break, bArr, i + 40);
        reset();
        return 48;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return qy0.f5544this;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 48;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[m9595break()];
        super.m9596catch(bArr);
        return bArr;
    }

    @Override // android.support.v4.xv0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f8046try = -3766243637369397544L;
        this.f8034case = 7105036623409894663L;
        this.f8039else = -7973340178411365097L;
        this.f8042goto = 1526699215303891257L;
        this.f8045this = 7436329637833083697L;
        this.f8033break = -8163818279084223215L;
        this.f8035catch = -2662702644619276377L;
        this.f8036class = 5167115440072839076L;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        super.m9600goto((zp1) memoable);
    }
}
