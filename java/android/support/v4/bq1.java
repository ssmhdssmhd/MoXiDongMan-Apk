package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class bq1 extends xv0 {

    /* renamed from: while, reason: not valid java name */
    private static final int f507while = 64;

    public bq1() {
    }

    public bq1(bq1 bq1Var) {
        super(bq1Var);
    }

    public bq1(byte[] bArr) {
        m9601super(bArr);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new bq1(this);
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
        ib1.m3369static(this.f8035catch, bArr, i + 48);
        ib1.m3369static(this.f8036class, bArr, i + 56);
        reset();
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-512";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
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
        this.f8046try = 7640891576956012808L;
        this.f8034case = -4942790177534073029L;
        this.f8039else = 4354685564936845355L;
        this.f8042goto = -6534734903238641935L;
        this.f8045this = 5840696475078001361L;
        this.f8033break = -7276294671716946913L;
        this.f8035catch = 2270897969802886507L;
        this.f8036class = 6620516959819538809L;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m9600goto((bq1) memoable);
    }
}
