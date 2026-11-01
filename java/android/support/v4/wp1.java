package android.support.v4;

import org.bouncycastle.crypto.digests.EncodableDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class wp1 extends rg0 implements EncodableDigest {

    /* renamed from: class, reason: not valid java name */
    private static final int f7586class = 20;

    /* renamed from: const, reason: not valid java name */
    private static final int f7587const = 1518500249;

    /* renamed from: final, reason: not valid java name */
    private static final int f7588final = 1859775393;

    /* renamed from: super, reason: not valid java name */
    private static final int f7589super = -1894007588;

    /* renamed from: throw, reason: not valid java name */
    private static final int f7590throw = -899497514;

    /* renamed from: break, reason: not valid java name */
    private int[] f7591break;

    /* renamed from: case, reason: not valid java name */
    private int f7592case;

    /* renamed from: catch, reason: not valid java name */
    private int f7593catch;

    /* renamed from: else, reason: not valid java name */
    private int f7594else;

    /* renamed from: goto, reason: not valid java name */
    private int f7595goto;

    /* renamed from: this, reason: not valid java name */
    private int f7596this;

    /* renamed from: try, reason: not valid java name */
    private int f7597try;

    public wp1() {
        this.f7591break = new int[80];
        reset();
    }

    public wp1(wp1 wp1Var) {
        super(wp1Var);
        this.f7591break = new int[80];
        m9258else(wp1Var);
    }

    public wp1(byte[] bArr) {
        super(bArr);
        this.f7591break = new int[80];
        this.f7597try = ib1.m3354do(bArr, 16);
        this.f7592case = ib1.m3354do(bArr, 20);
        this.f7594else = ib1.m3354do(bArr, 24);
        this.f7595goto = ib1.m3354do(bArr, 28);
        this.f7596this = ib1.m3354do(bArr, 32);
        this.f7593catch = ib1.m3354do(bArr, 36);
        for (int i = 0; i != this.f7593catch; i++) {
            this.f7591break[i] = ib1.m3354do(bArr, (i * 4) + 40);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private int m9257break(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: else, reason: not valid java name */
    private void m9258else(wp1 wp1Var) {
        this.f7597try = wp1Var.f7597try;
        this.f7592case = wp1Var.f7592case;
        this.f7594else = wp1Var.f7594else;
        this.f7595goto = wp1Var.f7595goto;
        this.f7596this = wp1Var.f7596this;
        int[] iArr = wp1Var.f7591break;
        System.arraycopy(iArr, 0, this.f7591break, 0, iArr.length);
        this.f7593catch = wp1Var.f7593catch;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m9259goto(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: this, reason: not valid java name */
    private int m9260this(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int i2 = bArr[i] << t3.f6397package;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        int i6 = (bArr[i5 + 1] & 255) | i4 | ((bArr[i5] & 255) << 8);
        int[] iArr = this.f7591break;
        int i7 = this.f7593catch;
        iArr[i7] = i6;
        int i8 = i7 + 1;
        this.f7593catch = i8;
        if (i8 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new wp1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        ib1.m3348case(this.f7597try, bArr, i);
        ib1.m3348case(this.f7592case, bArr, i + 4);
        ib1.m3348case(this.f7594else, bArr, i + 8);
        ib1.m3348case(this.f7595goto, bArr, i + 12);
        ib1.m3348case(this.f7596this, bArr, i + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return qy0.f5539case;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[(this.f7593catch * 4) + 40];
        super.m6969for(bArr);
        ib1.m3348case(this.f7597try, bArr, 16);
        ib1.m3348case(this.f7592case, bArr, 20);
        ib1.m3348case(this.f7594else, bArr, 24);
        ib1.m3348case(this.f7595goto, bArr, 28);
        ib1.m3348case(this.f7596this, bArr, 32);
        ib1.m3348case(this.f7593catch, bArr, 36);
        for (int i = 0; i != this.f7593catch; i++) {
            ib1.m3348case(this.f7591break[i], bArr, (i * 4) + 40);
        }
        return bArr;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        for (int i = 16; i < 80; i++) {
            int[] iArr = this.f7591break;
            int i2 = ((iArr[i - 3] ^ iArr[i - 8]) ^ iArr[i - 14]) ^ iArr[i - 16];
            iArr[i] = (i2 >>> 31) | (i2 << 1);
        }
        int iM9257break = this.f7597try;
        int iM9257break2 = this.f7592case;
        int i3 = this.f7594else;
        int i4 = this.f7595goto;
        int i5 = this.f7596this;
        int i6 = 0;
        int i7 = 0;
        while (i6 < 4) {
            int i8 = i7 + 1;
            int iM9259goto = i5 + ((iM9257break << 5) | (iM9257break >>> 27)) + m9259goto(iM9257break2, i3, i4) + this.f7591break[i7] + f7587const;
            int i9 = (iM9257break2 >>> 2) | (iM9257break2 << 30);
            int i10 = i8 + 1;
            int iM9259goto2 = i4 + ((iM9259goto << 5) | (iM9259goto >>> 27)) + m9259goto(iM9257break, i9, i3) + this.f7591break[i8] + f7587const;
            int i11 = (iM9257break >>> 2) | (iM9257break << 30);
            int i12 = i10 + 1;
            int iM9259goto3 = i3 + ((iM9259goto2 << 5) | (iM9259goto2 >>> 27)) + m9259goto(iM9259goto, i11, i9) + this.f7591break[i10] + f7587const;
            i5 = (iM9259goto >>> 2) | (iM9259goto << 30);
            int i13 = i12 + 1;
            iM9257break2 = i9 + ((iM9259goto3 << 5) | (iM9259goto3 >>> 27)) + m9259goto(iM9259goto2, i5, i11) + this.f7591break[i12] + f7587const;
            i4 = (iM9259goto2 >>> 2) | (iM9259goto2 << 30);
            iM9257break = i11 + ((iM9257break2 << 5) | (iM9257break2 >>> 27)) + m9259goto(iM9259goto3, i4, i5) + this.f7591break[i13] + f7587const;
            i3 = (iM9259goto3 >>> 2) | (iM9259goto3 << 30);
            i6++;
            i7 = i13 + 1;
        }
        int i14 = 0;
        while (i14 < 4) {
            int i15 = i7 + 1;
            int iM9257break3 = i5 + ((iM9257break << 5) | (iM9257break >>> 27)) + m9257break(iM9257break2, i3, i4) + this.f7591break[i7] + f7588final;
            int i16 = (iM9257break2 >>> 2) | (iM9257break2 << 30);
            int i17 = i15 + 1;
            int iM9257break4 = i4 + ((iM9257break3 << 5) | (iM9257break3 >>> 27)) + m9257break(iM9257break, i16, i3) + this.f7591break[i15] + f7588final;
            int i18 = (iM9257break >>> 2) | (iM9257break << 30);
            int i19 = i17 + 1;
            int iM9257break5 = i3 + ((iM9257break4 << 5) | (iM9257break4 >>> 27)) + m9257break(iM9257break3, i18, i16) + this.f7591break[i17] + f7588final;
            i5 = (iM9257break3 >>> 2) | (iM9257break3 << 30);
            int i20 = i19 + 1;
            iM9257break2 = i16 + ((iM9257break5 << 5) | (iM9257break5 >>> 27)) + m9257break(iM9257break4, i5, i18) + this.f7591break[i19] + f7588final;
            i4 = (iM9257break4 >>> 2) | (iM9257break4 << 30);
            iM9257break = i18 + ((iM9257break2 << 5) | (iM9257break2 >>> 27)) + m9257break(iM9257break5, i4, i5) + this.f7591break[i20] + f7588final;
            i3 = (iM9257break5 >>> 2) | (iM9257break5 << 30);
            i14++;
            i7 = i20 + 1;
        }
        int i21 = 0;
        while (i21 < 4) {
            int i22 = i7 + 1;
            int iM9260this = i5 + ((iM9257break << 5) | (iM9257break >>> 27)) + m9260this(iM9257break2, i3, i4) + this.f7591break[i7] + f7589super;
            int i23 = (iM9257break2 >>> 2) | (iM9257break2 << 30);
            int i24 = i22 + 1;
            int iM9260this2 = i4 + ((iM9260this << 5) | (iM9260this >>> 27)) + m9260this(iM9257break, i23, i3) + this.f7591break[i22] + f7589super;
            int i25 = (iM9257break >>> 2) | (iM9257break << 30);
            int i26 = i24 + 1;
            int iM9260this3 = i3 + ((iM9260this2 << 5) | (iM9260this2 >>> 27)) + m9260this(iM9260this, i25, i23) + this.f7591break[i24] + f7589super;
            i5 = (iM9260this >>> 2) | (iM9260this << 30);
            int i27 = i26 + 1;
            iM9257break2 = i23 + ((iM9260this3 << 5) | (iM9260this3 >>> 27)) + m9260this(iM9260this2, i5, i25) + this.f7591break[i26] + f7589super;
            i4 = (iM9260this2 >>> 2) | (iM9260this2 << 30);
            iM9257break = i25 + ((iM9257break2 << 5) | (iM9257break2 >>> 27)) + m9260this(iM9260this3, i4, i5) + this.f7591break[i27] + f7589super;
            i3 = (iM9260this3 >>> 2) | (iM9260this3 << 30);
            i21++;
            i7 = i27 + 1;
        }
        int i28 = 0;
        while (i28 <= 3) {
            int i29 = i7 + 1;
            int iM9257break6 = i5 + ((iM9257break << 5) | (iM9257break >>> 27)) + m9257break(iM9257break2, i3, i4) + this.f7591break[i7] + f7590throw;
            int i30 = (iM9257break2 >>> 2) | (iM9257break2 << 30);
            int i31 = i29 + 1;
            int iM9257break7 = i4 + ((iM9257break6 << 5) | (iM9257break6 >>> 27)) + m9257break(iM9257break, i30, i3) + this.f7591break[i29] + f7590throw;
            int i32 = (iM9257break >>> 2) | (iM9257break << 30);
            int i33 = i31 + 1;
            int iM9257break8 = i3 + ((iM9257break7 << 5) | (iM9257break7 >>> 27)) + m9257break(iM9257break6, i32, i30) + this.f7591break[i31] + f7590throw;
            i5 = (iM9257break6 >>> 2) | (iM9257break6 << 30);
            int i34 = i33 + 1;
            iM9257break2 = i30 + ((iM9257break8 << 5) | (iM9257break8 >>> 27)) + m9257break(iM9257break7, i5, i32) + this.f7591break[i33] + f7590throw;
            i4 = (iM9257break7 >>> 2) | (iM9257break7 << 30);
            iM9257break = i32 + ((iM9257break2 << 5) | (iM9257break2 >>> 27)) + m9257break(iM9257break8, i4, i5) + this.f7591break[i34] + f7590throw;
            i3 = (iM9257break8 >>> 2) | (iM9257break8 << 30);
            i28++;
            i7 = i34 + 1;
        }
        this.f7597try += iM9257break;
        this.f7592case += iM9257break2;
        this.f7594else += i3;
        this.f7595goto += i4;
        this.f7596this += i5;
        this.f7593catch = 0;
        for (int i35 = 0; i35 < 16; i35++) {
            this.f7591break[i35] = 0;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f7597try = 1732584193;
        this.f7592case = -271733879;
        this.f7594else = -1732584194;
        this.f7595goto = 271733878;
        this.f7596this = -1009589776;
        this.f7593catch = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f7591break;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        wp1 wp1Var = (wp1) memoable;
        super.m6968do(wp1Var);
        m9258else(wp1Var);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f7593catch > 14) {
            mo4746new();
        }
        int[] iArr = this.f7591break;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) j;
    }
}
