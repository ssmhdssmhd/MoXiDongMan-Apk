package android.support.v4;

import org.bouncycastle.crypto.digests.EncodableDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class xp1 extends rg0 implements EncodableDigest {

    /* renamed from: super, reason: not valid java name */
    private static final int f8001super = 28;

    /* renamed from: throw, reason: not valid java name */
    public static final int[] f8002throw = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: break, reason: not valid java name */
    private int f8003break;

    /* renamed from: case, reason: not valid java name */
    private int f8004case;

    /* renamed from: catch, reason: not valid java name */
    private int f8005catch;

    /* renamed from: class, reason: not valid java name */
    private int f8006class;

    /* renamed from: const, reason: not valid java name */
    private int[] f8007const;

    /* renamed from: else, reason: not valid java name */
    private int f8008else;

    /* renamed from: final, reason: not valid java name */
    private int f8009final;

    /* renamed from: goto, reason: not valid java name */
    private int f8010goto;

    /* renamed from: this, reason: not valid java name */
    private int f8011this;

    /* renamed from: try, reason: not valid java name */
    private int f8012try;

    public xp1() {
        this.f8007const = new int[64];
        reset();
    }

    public xp1(xp1 xp1Var) {
        super(xp1Var);
        this.f8007const = new int[64];
        m9559const(xp1Var);
    }

    public xp1(byte[] bArr) {
        super(bArr);
        this.f8007const = new int[64];
        this.f8012try = ib1.m3354do(bArr, 16);
        this.f8004case = ib1.m3354do(bArr, 20);
        this.f8008else = ib1.m3354do(bArr, 24);
        this.f8010goto = ib1.m3354do(bArr, 28);
        this.f8011this = ib1.m3354do(bArr, 32);
        this.f8003break = ib1.m3354do(bArr, 36);
        this.f8005catch = ib1.m3354do(bArr, 40);
        this.f8006class = ib1.m3354do(bArr, 44);
        this.f8009final = ib1.m3354do(bArr, 48);
        for (int i = 0; i != this.f8009final; i++) {
            this.f8007const[i] = ib1.m3354do(bArr, (i * 4) + 52);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private int m9556break(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    /* renamed from: catch, reason: not valid java name */
    private int m9557catch(int i) {
        return (i >>> 3) ^ (((i >>> 7) | (i << 25)) ^ ((i >>> 18) | (i << 14)));
    }

    /* renamed from: class, reason: not valid java name */
    private int m9558class(int i) {
        return (i >>> 10) ^ (((i >>> 17) | (i << 15)) ^ ((i >>> 19) | (i << 13)));
    }

    /* renamed from: const, reason: not valid java name */
    private void m9559const(xp1 xp1Var) {
        super.m6968do(xp1Var);
        this.f8012try = xp1Var.f8012try;
        this.f8004case = xp1Var.f8004case;
        this.f8008else = xp1Var.f8008else;
        this.f8010goto = xp1Var.f8010goto;
        this.f8011this = xp1Var.f8011this;
        this.f8003break = xp1Var.f8003break;
        this.f8005catch = xp1Var.f8005catch;
        this.f8006class = xp1Var.f8006class;
        int[] iArr = xp1Var.f8007const;
        System.arraycopy(iArr, 0, this.f8007const, 0, iArr.length);
        this.f8009final = xp1Var.f8009final;
    }

    /* renamed from: else, reason: not valid java name */
    private int m9560else(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) ^ (i2 & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m9561goto(int i, int i2, int i3) {
        return ((i & i3) ^ (i & i2)) ^ (i2 & i3);
    }

    /* renamed from: this, reason: not valid java name */
    private int m9562this(int i) {
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
        int[] iArr = this.f8007const;
        int i7 = this.f8009final;
        iArr[i7] = i6;
        int i8 = i7 + 1;
        this.f8009final = i8;
        if (i8 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new xp1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        ib1.m3348case(this.f8012try, bArr, i);
        ib1.m3348case(this.f8004case, bArr, i + 4);
        ib1.m3348case(this.f8008else, bArr, i + 8);
        ib1.m3348case(this.f8010goto, bArr, i + 12);
        ib1.m3348case(this.f8011this, bArr, i + 16);
        ib1.m3348case(this.f8003break, bArr, i + 20);
        ib1.m3348case(this.f8005catch, bArr, i + 24);
        reset();
        return 28;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return qy0.f5542else;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 28;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[(this.f8009final * 4) + 52];
        super.m6969for(bArr);
        ib1.m3348case(this.f8012try, bArr, 16);
        ib1.m3348case(this.f8004case, bArr, 20);
        ib1.m3348case(this.f8008else, bArr, 24);
        ib1.m3348case(this.f8010goto, bArr, 28);
        ib1.m3348case(this.f8011this, bArr, 32);
        ib1.m3348case(this.f8003break, bArr, 36);
        ib1.m3348case(this.f8005catch, bArr, 40);
        ib1.m3348case(this.f8006class, bArr, 44);
        ib1.m3348case(this.f8009final, bArr, 48);
        for (int i = 0; i != this.f8009final; i++) {
            ib1.m3348case(this.f8007const[i], bArr, (i * 4) + 52);
        }
        return bArr;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        for (int i = 16; i <= 63; i++) {
            int[] iArr = this.f8007const;
            int iM9558class = m9558class(iArr[i - 2]);
            int[] iArr2 = this.f8007const;
            iArr[i] = iM9558class + iArr2[i - 7] + m9557catch(iArr2[i - 15]) + this.f8007const[i - 16];
        }
        int iM9562this = this.f8012try;
        int iM9562this2 = this.f8004case;
        int iM9562this3 = this.f8008else;
        int iM9562this4 = this.f8010goto;
        int i2 = this.f8011this;
        int i3 = this.f8003break;
        int i4 = this.f8005catch;
        int i5 = this.f8006class;
        int i6 = 0;
        for (int i7 = 0; i7 < 8; i7++) {
            int iM9556break = m9556break(i2) + m9560else(i2, i3, i4);
            int[] iArr3 = f8002throw;
            int i8 = i5 + iM9556break + iArr3[i6] + this.f8007const[i6];
            int i9 = iM9562this4 + i8;
            int iM9562this5 = i8 + m9562this(iM9562this) + m9561goto(iM9562this, iM9562this2, iM9562this3);
            int i10 = i6 + 1;
            int iM9556break2 = i4 + m9556break(i9) + m9560else(i9, i2, i3) + iArr3[i10] + this.f8007const[i10];
            int i11 = iM9562this3 + iM9556break2;
            int iM9562this6 = iM9556break2 + m9562this(iM9562this5) + m9561goto(iM9562this5, iM9562this, iM9562this2);
            int i12 = i10 + 1;
            int iM9556break3 = i3 + m9556break(i11) + m9560else(i11, i9, i2) + iArr3[i12] + this.f8007const[i12];
            int i13 = iM9562this2 + iM9556break3;
            int iM9562this7 = iM9556break3 + m9562this(iM9562this6) + m9561goto(iM9562this6, iM9562this5, iM9562this);
            int i14 = i12 + 1;
            int iM9556break4 = i2 + m9556break(i13) + m9560else(i13, i11, i9) + iArr3[i14] + this.f8007const[i14];
            int i15 = iM9562this + iM9556break4;
            int iM9562this8 = iM9556break4 + m9562this(iM9562this7) + m9561goto(iM9562this7, iM9562this6, iM9562this5);
            int i16 = i14 + 1;
            int iM9556break5 = i9 + m9556break(i15) + m9560else(i15, i13, i11) + iArr3[i16] + this.f8007const[i16];
            i5 = iM9562this5 + iM9556break5;
            iM9562this4 = iM9556break5 + m9562this(iM9562this8) + m9561goto(iM9562this8, iM9562this7, iM9562this6);
            int i17 = i16 + 1;
            int iM9556break6 = i11 + m9556break(i5) + m9560else(i5, i15, i13) + iArr3[i17] + this.f8007const[i17];
            i4 = iM9562this6 + iM9556break6;
            iM9562this3 = iM9556break6 + m9562this(iM9562this4) + m9561goto(iM9562this4, iM9562this8, iM9562this7);
            int i18 = i17 + 1;
            int iM9556break7 = i13 + m9556break(i4) + m9560else(i4, i5, i15) + iArr3[i18] + this.f8007const[i18];
            i3 = iM9562this7 + iM9556break7;
            iM9562this2 = iM9556break7 + m9562this(iM9562this3) + m9561goto(iM9562this3, iM9562this4, iM9562this8);
            int i19 = i18 + 1;
            int iM9556break8 = i15 + m9556break(i3) + m9560else(i3, i4, i5) + iArr3[i19] + this.f8007const[i19];
            i2 = iM9562this8 + iM9556break8;
            iM9562this = iM9556break8 + m9562this(iM9562this2) + m9561goto(iM9562this2, iM9562this3, iM9562this4);
            i6 = i19 + 1;
        }
        this.f8012try += iM9562this;
        this.f8004case += iM9562this2;
        this.f8008else += iM9562this3;
        this.f8010goto += iM9562this4;
        this.f8011this += i2;
        this.f8003break += i3;
        this.f8005catch += i4;
        this.f8006class += i5;
        this.f8009final = 0;
        for (int i20 = 0; i20 < 16; i20++) {
            this.f8007const[i20] = 0;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f8012try = -1056596264;
        this.f8004case = 914150663;
        this.f8008else = 812702999;
        this.f8010goto = -150054599;
        this.f8011this = -4191439;
        this.f8003break = 1750603025;
        this.f8005catch = 1694076839;
        this.f8006class = -1090891868;
        this.f8009final = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f8007const;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m9559const((xp1) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f8009final > 14) {
            mo4746new();
        }
        int[] iArr = this.f8007const;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) (j & (-1));
    }
}
