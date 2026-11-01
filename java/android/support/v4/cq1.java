package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class cq1 extends xv0 {

    /* renamed from: default, reason: not valid java name */
    private long f847default;

    /* renamed from: import, reason: not valid java name */
    private long f848import;

    /* renamed from: native, reason: not valid java name */
    private long f849native;

    /* renamed from: public, reason: not valid java name */
    private long f850public;

    /* renamed from: return, reason: not valid java name */
    private long f851return;

    /* renamed from: static, reason: not valid java name */
    private long f852static;

    /* renamed from: switch, reason: not valid java name */
    private long f853switch;

    /* renamed from: throws, reason: not valid java name */
    private long f854throws;

    /* renamed from: while, reason: not valid java name */
    private int f855while;

    public cq1(int i) {
        if (i >= 512) {
            throw new IllegalArgumentException("bitLength cannot be >= 512");
        }
        if (i % 8 != 0) {
            throw new IllegalArgumentException("bitLength needs to be a multiple of 8");
        }
        if (i == 384) {
            throw new IllegalArgumentException("bitLength cannot be 384 use SHA384 instead");
        }
        int i2 = i / 8;
        this.f855while = i2;
        m998native(i2 * 8);
        reset();
    }

    public cq1(cq1 cq1Var) {
        super(cq1Var);
        this.f855while = cq1Var.f855while;
        reset(cq1Var);
    }

    public cq1(byte[] bArr) {
        this(m997import(bArr));
        m9601super(bArr);
    }

    /* renamed from: import, reason: not valid java name */
    private static int m997import(byte[] bArr) {
        return ib1.m3354do(bArr, bArr.length - 4);
    }

    /* renamed from: native, reason: not valid java name */
    private void m998native(int i) {
        this.f8046try = -3482333909917012819L;
        this.f8034case = 2216346199247487646L;
        this.f8039else = -7364697282686394994L;
        this.f8042goto = 65953792586715988L;
        this.f8045this = -816286391624063116L;
        this.f8033break = 4512832404995164602L;
        this.f8035catch = -5033199132376557362L;
        this.f8036class = -124578254951840548L;
        update((byte) 83);
        update((byte) 72);
        update((byte) 65);
        update((byte) 45);
        update((byte) 53);
        update((byte) 49);
        update((byte) 50);
        update((byte) 47);
        if (i <= 100) {
            if (i > 10) {
            }
            update((byte) (i + 48));
            m9602this();
            this.f848import = this.f8046try;
            this.f849native = this.f8034case;
            this.f850public = this.f8039else;
            this.f851return = this.f8042goto;
            this.f852static = this.f8045this;
            this.f853switch = this.f8033break;
            this.f854throws = this.f8035catch;
            this.f847default = this.f8036class;
        }
        update((byte) ((i / 100) + 48));
        i %= 100;
        update((byte) ((i / 10) + 48));
        i %= 10;
        update((byte) (i + 48));
        m9602this();
        this.f848import = this.f8046try;
        this.f849native = this.f8034case;
        this.f850public = this.f8039else;
        this.f851return = this.f8042goto;
        this.f852static = this.f8045this;
        this.f853switch = this.f8033break;
        this.f854throws = this.f8035catch;
        this.f847default = this.f8036class;
    }

    /* renamed from: throw, reason: not valid java name */
    private static void m999throw(int i, byte[] bArr, int i2, int i3) {
        int iMin = Math.min(4, i3);
        while (true) {
            iMin--;
            if (iMin < 0) {
                return;
            } else {
                bArr[i2 + iMin] = (byte) (i >>> ((3 - iMin) * 8));
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static void m1000while(long j, byte[] bArr, int i, int i2) {
        if (i2 > 0) {
            m999throw((int) (j >>> 32), bArr, i, i2);
            if (i2 > 4) {
                m999throw((int) (j & 4294967295L), bArr, i + 4, i2 - 4);
            }
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new cq1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m9602this();
        m1000while(this.f8046try, bArr, i, this.f855while);
        m1000while(this.f8034case, bArr, i + 8, this.f855while - 8);
        m1000while(this.f8039else, bArr, i + 16, this.f855while - 16);
        m1000while(this.f8042goto, bArr, i + 24, this.f855while - 24);
        m1000while(this.f8045this, bArr, i + 32, this.f855while - 32);
        m1000while(this.f8033break, bArr, i + 40, this.f855while - 40);
        m1000while(this.f8035catch, bArr, i + 48, this.f855while - 48);
        m1000while(this.f8036class, bArr, i + 56, this.f855while - 56);
        reset();
        return this.f855while;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-512/" + Integer.toString(this.f855while * 8);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f855while;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int iM9595break = m9595break();
        byte[] bArr = new byte[iM9595break + 4];
        m9596catch(bArr);
        ib1.m3348case(this.f855while * 8, bArr, iM9595break);
        return bArr;
    }

    @Override // android.support.v4.xv0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f8046try = this.f848import;
        this.f8034case = this.f849native;
        this.f8039else = this.f850public;
        this.f8042goto = this.f851return;
        this.f8045this = this.f852static;
        this.f8033break = this.f853switch;
        this.f8035catch = this.f854throws;
        this.f8036class = this.f847default;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        cq1 cq1Var = (cq1) memoable;
        if (this.f855while != cq1Var.f855while) {
            throw new nz0("digestLength inappropriate in other");
        }
        super.m9600goto(cq1Var);
        this.f848import = cq1Var.f848import;
        this.f849native = cq1Var.f849native;
        this.f850public = cq1Var.f850public;
        this.f851return = cq1Var.f851return;
        this.f852static = cq1Var.f852static;
        this.f853switch = cq1Var.f853switch;
        this.f854throws = cq1Var.f854throws;
        this.f847default = cq1Var.f847default;
    }
}
