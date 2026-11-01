package android.support.v4;

import org.bouncycastle.crypto.digests.EncodableDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class yp1 extends rg0 implements EncodableDigest {

    /* renamed from: super, reason: not valid java name */
    private static final int f8280super = 32;

    /* renamed from: throw, reason: not valid java name */
    public static final int[] f8281throw = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: break, reason: not valid java name */
    private int f8282break;

    /* renamed from: case, reason: not valid java name */
    private int f8283case;

    /* renamed from: catch, reason: not valid java name */
    private int f8284catch;

    /* renamed from: class, reason: not valid java name */
    private int f8285class;

    /* renamed from: const, reason: not valid java name */
    private int[] f8286const;

    /* renamed from: else, reason: not valid java name */
    private int f8287else;

    /* renamed from: final, reason: not valid java name */
    private int f8288final;

    /* renamed from: goto, reason: not valid java name */
    private int f8289goto;

    /* renamed from: this, reason: not valid java name */
    private int f8290this;

    /* renamed from: try, reason: not valid java name */
    private int f8291try;

    public yp1() {
        this.f8286const = new int[64];
        reset();
    }

    public yp1(yp1 yp1Var) {
        super(yp1Var);
        this.f8286const = new int[64];
        m9925const(yp1Var);
    }

    public yp1(byte[] bArr) {
        super(bArr);
        this.f8286const = new int[64];
        this.f8291try = ib1.m3354do(bArr, 16);
        this.f8283case = ib1.m3354do(bArr, 20);
        this.f8287else = ib1.m3354do(bArr, 24);
        this.f8289goto = ib1.m3354do(bArr, 28);
        this.f8290this = ib1.m3354do(bArr, 32);
        this.f8282break = ib1.m3354do(bArr, 36);
        this.f8284catch = ib1.m3354do(bArr, 40);
        this.f8285class = ib1.m3354do(bArr, 44);
        this.f8288final = ib1.m3354do(bArr, 48);
        for (int i = 0; i != this.f8288final; i++) {
            this.f8286const[i] = ib1.m3354do(bArr, (i * 4) + 52);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private int m9922break(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    /* renamed from: catch, reason: not valid java name */
    private int m9923catch(int i) {
        return (i >>> 3) ^ (((i >>> 7) | (i << 25)) ^ ((i >>> 18) | (i << 14)));
    }

    /* renamed from: class, reason: not valid java name */
    private int m9924class(int i) {
        return (i >>> 10) ^ (((i >>> 17) | (i << 15)) ^ ((i >>> 19) | (i << 13)));
    }

    /* renamed from: const, reason: not valid java name */
    private void m9925const(yp1 yp1Var) {
        super.m6968do(yp1Var);
        this.f8291try = yp1Var.f8291try;
        this.f8283case = yp1Var.f8283case;
        this.f8287else = yp1Var.f8287else;
        this.f8289goto = yp1Var.f8289goto;
        this.f8290this = yp1Var.f8290this;
        this.f8282break = yp1Var.f8282break;
        this.f8284catch = yp1Var.f8284catch;
        this.f8285class = yp1Var.f8285class;
        int[] iArr = yp1Var.f8286const;
        System.arraycopy(iArr, 0, this.f8286const, 0, iArr.length);
        this.f8288final = yp1Var.f8288final;
    }

    /* renamed from: else, reason: not valid java name */
    private int m9926else(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) ^ (i2 & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m9927goto(int i, int i2, int i3) {
        return ((i & i3) ^ (i & i2)) ^ (i2 & i3);
    }

    /* renamed from: this, reason: not valid java name */
    private int m9928this(int i) {
        return ((i << 10) | (i >>> 22)) ^ (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19)));
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int i2 = bArr[i] << t3.f6397package;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        int i6 = (bArr[i5 + 1] & 255) | i4 | ((bArr[i5] & 255) << 8);
        int[] iArr = this.f8286const;
        int i7 = this.f8288final;
        iArr[i7] = i6;
        int i8 = i7 + 1;
        this.f8288final = i8;
        if (i8 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new yp1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        ib1.m3348case(this.f8291try, bArr, i);
        ib1.m3348case(this.f8283case, bArr, i + 4);
        ib1.m3348case(this.f8287else, bArr, i + 8);
        ib1.m3348case(this.f8289goto, bArr, i + 12);
        ib1.m3348case(this.f8290this, bArr, i + 16);
        ib1.m3348case(this.f8282break, bArr, i + 20);
        ib1.m3348case(this.f8284catch, bArr, i + 24);
        ib1.m3348case(this.f8285class, bArr, i + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-256";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[(this.f8288final * 4) + 52];
        super.m6969for(bArr);
        ib1.m3348case(this.f8291try, bArr, 16);
        ib1.m3348case(this.f8283case, bArr, 20);
        ib1.m3348case(this.f8287else, bArr, 24);
        ib1.m3348case(this.f8289goto, bArr, 28);
        ib1.m3348case(this.f8290this, bArr, 32);
        ib1.m3348case(this.f8282break, bArr, 36);
        ib1.m3348case(this.f8284catch, bArr, 40);
        ib1.m3348case(this.f8285class, bArr, 44);
        ib1.m3348case(this.f8288final, bArr, 48);
        for (int i = 0; i != this.f8288final; i++) {
            ib1.m3348case(this.f8286const[i], bArr, (i * 4) + 52);
        }
        return bArr;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        for (int i = 16; i <= 63; i++) {
            int[] iArr = this.f8286const;
            int iM9924class = m9924class(iArr[i - 2]);
            int[] iArr2 = this.f8286const;
            iArr[i] = iM9924class + iArr2[i - 7] + m9923catch(iArr2[i - 15]) + this.f8286const[i - 16];
        }
        int iM9928this = this.f8291try;
        int iM9928this2 = this.f8283case;
        int iM9928this3 = this.f8287else;
        int iM9928this4 = this.f8289goto;
        int i2 = this.f8290this;
        int i3 = this.f8282break;
        int i4 = this.f8284catch;
        int i5 = this.f8285class;
        int i6 = 0;
        for (int i7 = 0; i7 < 8; i7++) {
            int iM9922break = m9922break(i2) + m9926else(i2, i3, i4);
            int[] iArr3 = f8281throw;
            int i8 = i5 + iM9922break + iArr3[i6] + this.f8286const[i6];
            int i9 = iM9928this4 + i8;
            int iM9928this5 = i8 + m9928this(iM9928this) + m9927goto(iM9928this, iM9928this2, iM9928this3);
            int i10 = i6 + 1;
            int iM9922break2 = i4 + m9922break(i9) + m9926else(i9, i2, i3) + iArr3[i10] + this.f8286const[i10];
            int i11 = iM9928this3 + iM9922break2;
            int iM9928this6 = iM9922break2 + m9928this(iM9928this5) + m9927goto(iM9928this5, iM9928this, iM9928this2);
            int i12 = i10 + 1;
            int iM9922break3 = i3 + m9922break(i11) + m9926else(i11, i9, i2) + iArr3[i12] + this.f8286const[i12];
            int i13 = iM9928this2 + iM9922break3;
            int iM9928this7 = iM9922break3 + m9928this(iM9928this6) + m9927goto(iM9928this6, iM9928this5, iM9928this);
            int i14 = i12 + 1;
            int iM9922break4 = i2 + m9922break(i13) + m9926else(i13, i11, i9) + iArr3[i14] + this.f8286const[i14];
            int i15 = iM9928this + iM9922break4;
            int iM9928this8 = iM9922break4 + m9928this(iM9928this7) + m9927goto(iM9928this7, iM9928this6, iM9928this5);
            int i16 = i14 + 1;
            int iM9922break5 = i9 + m9922break(i15) + m9926else(i15, i13, i11) + iArr3[i16] + this.f8286const[i16];
            i5 = iM9928this5 + iM9922break5;
            iM9928this4 = iM9922break5 + m9928this(iM9928this8) + m9927goto(iM9928this8, iM9928this7, iM9928this6);
            int i17 = i16 + 1;
            int iM9922break6 = i11 + m9922break(i5) + m9926else(i5, i15, i13) + iArr3[i17] + this.f8286const[i17];
            i4 = iM9928this6 + iM9922break6;
            iM9928this3 = iM9922break6 + m9928this(iM9928this4) + m9927goto(iM9928this4, iM9928this8, iM9928this7);
            int i18 = i17 + 1;
            int iM9922break7 = i13 + m9922break(i4) + m9926else(i4, i5, i15) + iArr3[i18] + this.f8286const[i18];
            i3 = iM9928this7 + iM9922break7;
            iM9928this2 = iM9922break7 + m9928this(iM9928this3) + m9927goto(iM9928this3, iM9928this4, iM9928this8);
            int i19 = i18 + 1;
            int iM9922break8 = i15 + m9922break(i3) + m9926else(i3, i4, i5) + iArr3[i19] + this.f8286const[i19];
            i2 = iM9928this8 + iM9922break8;
            iM9928this = iM9922break8 + m9928this(iM9928this2) + m9927goto(iM9928this2, iM9928this3, iM9928this4);
            i6 = i19 + 1;
        }
        this.f8291try += iM9928this;
        this.f8283case += iM9928this2;
        this.f8287else += iM9928this3;
        this.f8289goto += iM9928this4;
        this.f8290this += i2;
        this.f8282break += i3;
        this.f8284catch += i4;
        this.f8285class += i5;
        this.f8288final = 0;
        for (int i20 = 0; i20 < 16; i20++) {
            this.f8286const[i20] = 0;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f8291try = 1779033703;
        this.f8283case = -1150833019;
        this.f8287else = 1013904242;
        this.f8289goto = -1521486534;
        this.f8290this = 1359893119;
        this.f8282break = -1694144372;
        this.f8284catch = 528734635;
        this.f8285class = 1541459225;
        this.f8288final = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f8286const;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m9925const((yp1) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f8288final > 14) {
            mo4746new();
        }
        int[] iArr = this.f8286const;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) (j & (-1));
    }
}
