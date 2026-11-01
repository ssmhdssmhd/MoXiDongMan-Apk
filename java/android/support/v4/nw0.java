package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class nw0 extends rg0 {

    /* renamed from: catch, reason: not valid java name */
    private static final int f4346catch = 16;

    /* renamed from: class, reason: not valid java name */
    private static final int f4347class = 3;

    /* renamed from: const, reason: not valid java name */
    private static final int f4348const = 7;

    /* renamed from: final, reason: not valid java name */
    private static final int f4349final = 11;

    /* renamed from: import, reason: not valid java name */
    private static final int f4350import = 9;

    /* renamed from: native, reason: not valid java name */
    private static final int f4351native = 13;

    /* renamed from: public, reason: not valid java name */
    private static final int f4352public = 3;

    /* renamed from: return, reason: not valid java name */
    private static final int f4353return = 9;

    /* renamed from: static, reason: not valid java name */
    private static final int f4354static = 11;

    /* renamed from: super, reason: not valid java name */
    private static final int f4355super = 19;

    /* renamed from: switch, reason: not valid java name */
    private static final int f4356switch = 15;

    /* renamed from: throw, reason: not valid java name */
    private static final int f4357throw = 3;

    /* renamed from: while, reason: not valid java name */
    private static final int f4358while = 5;

    /* renamed from: break, reason: not valid java name */
    private int f4359break;

    /* renamed from: case, reason: not valid java name */
    private int f4360case;

    /* renamed from: else, reason: not valid java name */
    private int f4361else;

    /* renamed from: goto, reason: not valid java name */
    private int f4362goto;

    /* renamed from: this, reason: not valid java name */
    private int[] f4363this;

    /* renamed from: try, reason: not valid java name */
    private int f4364try;

    public nw0() {
        this.f4363this = new int[16];
        reset();
    }

    public nw0(nw0 nw0Var) {
        super(nw0Var);
        this.f4363this = new int[16];
        m5394break(nw0Var);
    }

    /* renamed from: break, reason: not valid java name */
    private void m5394break(nw0 nw0Var) {
        super.m6968do(nw0Var);
        this.f4364try = nw0Var.f4364try;
        this.f4360case = nw0Var.f4360case;
        this.f4361else = nw0Var.f4361else;
        this.f4362goto = nw0Var.f4362goto;
        int[] iArr = nw0Var.f4363this;
        System.arraycopy(iArr, 0, this.f4363this, 0, iArr.length);
        this.f4359break = nw0Var.f4359break;
    }

    /* renamed from: catch, reason: not valid java name */
    private int m5395catch(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: class, reason: not valid java name */
    private void m5396class(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: else, reason: not valid java name */
    private int m5397else(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m5398goto(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    /* renamed from: this, reason: not valid java name */
    private int m5399this(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int[] iArr = this.f4363this;
        int i2 = this.f4359break;
        int i3 = i2 + 1;
        this.f4359break = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new nw0(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        m5396class(this.f4364try, bArr, i);
        m5396class(this.f4360case, bArr, i + 4);
        m5396class(this.f4361else, bArr, i + 8);
        m5396class(this.f4362goto, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD4";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        int i = this.f4364try;
        int i2 = this.f4360case;
        int i3 = this.f4361else;
        int i4 = this.f4362goto;
        int iM5395catch = m5395catch(i + m5397else(i2, i3, i4) + this.f4363this[0], 3);
        int iM5395catch2 = m5395catch(i4 + m5397else(iM5395catch, i2, i3) + this.f4363this[1], 7);
        int iM5395catch3 = m5395catch(i3 + m5397else(iM5395catch2, iM5395catch, i2) + this.f4363this[2], 11);
        int iM5395catch4 = m5395catch(i2 + m5397else(iM5395catch3, iM5395catch2, iM5395catch) + this.f4363this[3], 19);
        int iM5395catch5 = m5395catch(iM5395catch + m5397else(iM5395catch4, iM5395catch3, iM5395catch2) + this.f4363this[4], 3);
        int iM5395catch6 = m5395catch(iM5395catch2 + m5397else(iM5395catch5, iM5395catch4, iM5395catch3) + this.f4363this[5], 7);
        int iM5395catch7 = m5395catch(iM5395catch3 + m5397else(iM5395catch6, iM5395catch5, iM5395catch4) + this.f4363this[6], 11);
        int iM5395catch8 = m5395catch(iM5395catch4 + m5397else(iM5395catch7, iM5395catch6, iM5395catch5) + this.f4363this[7], 19);
        int iM5395catch9 = m5395catch(iM5395catch5 + m5397else(iM5395catch8, iM5395catch7, iM5395catch6) + this.f4363this[8], 3);
        int iM5395catch10 = m5395catch(iM5395catch6 + m5397else(iM5395catch9, iM5395catch8, iM5395catch7) + this.f4363this[9], 7);
        int iM5395catch11 = m5395catch(iM5395catch7 + m5397else(iM5395catch10, iM5395catch9, iM5395catch8) + this.f4363this[10], 11);
        int iM5395catch12 = m5395catch(iM5395catch8 + m5397else(iM5395catch11, iM5395catch10, iM5395catch9) + this.f4363this[11], 19);
        int iM5395catch13 = m5395catch(iM5395catch9 + m5397else(iM5395catch12, iM5395catch11, iM5395catch10) + this.f4363this[12], 3);
        int iM5395catch14 = m5395catch(iM5395catch10 + m5397else(iM5395catch13, iM5395catch12, iM5395catch11) + this.f4363this[13], 7);
        int iM5395catch15 = m5395catch(iM5395catch11 + m5397else(iM5395catch14, iM5395catch13, iM5395catch12) + this.f4363this[14], 11);
        int iM5395catch16 = m5395catch(iM5395catch12 + m5397else(iM5395catch15, iM5395catch14, iM5395catch13) + this.f4363this[15], 19);
        int iM5395catch17 = m5395catch(iM5395catch13 + m5398goto(iM5395catch16, iM5395catch15, iM5395catch14) + this.f4363this[0] + 1518500249, 3);
        int iM5395catch18 = m5395catch(iM5395catch14 + m5398goto(iM5395catch17, iM5395catch16, iM5395catch15) + this.f4363this[4] + 1518500249, 5);
        int iM5395catch19 = m5395catch(iM5395catch15 + m5398goto(iM5395catch18, iM5395catch17, iM5395catch16) + this.f4363this[8] + 1518500249, 9);
        int iM5395catch20 = m5395catch(iM5395catch16 + m5398goto(iM5395catch19, iM5395catch18, iM5395catch17) + this.f4363this[12] + 1518500249, 13);
        int iM5395catch21 = m5395catch(iM5395catch17 + m5398goto(iM5395catch20, iM5395catch19, iM5395catch18) + this.f4363this[1] + 1518500249, 3);
        int iM5395catch22 = m5395catch(iM5395catch18 + m5398goto(iM5395catch21, iM5395catch20, iM5395catch19) + this.f4363this[5] + 1518500249, 5);
        int iM5395catch23 = m5395catch(iM5395catch19 + m5398goto(iM5395catch22, iM5395catch21, iM5395catch20) + this.f4363this[9] + 1518500249, 9);
        int iM5395catch24 = m5395catch(iM5395catch20 + m5398goto(iM5395catch23, iM5395catch22, iM5395catch21) + this.f4363this[13] + 1518500249, 13);
        int iM5395catch25 = m5395catch(iM5395catch21 + m5398goto(iM5395catch24, iM5395catch23, iM5395catch22) + this.f4363this[2] + 1518500249, 3);
        int iM5395catch26 = m5395catch(iM5395catch22 + m5398goto(iM5395catch25, iM5395catch24, iM5395catch23) + this.f4363this[6] + 1518500249, 5);
        int iM5395catch27 = m5395catch(iM5395catch23 + m5398goto(iM5395catch26, iM5395catch25, iM5395catch24) + this.f4363this[10] + 1518500249, 9);
        int iM5395catch28 = m5395catch(iM5395catch24 + m5398goto(iM5395catch27, iM5395catch26, iM5395catch25) + this.f4363this[14] + 1518500249, 13);
        int iM5395catch29 = m5395catch(iM5395catch25 + m5398goto(iM5395catch28, iM5395catch27, iM5395catch26) + this.f4363this[3] + 1518500249, 3);
        int iM5395catch30 = m5395catch(iM5395catch26 + m5398goto(iM5395catch29, iM5395catch28, iM5395catch27) + this.f4363this[7] + 1518500249, 5);
        int iM5395catch31 = m5395catch(iM5395catch27 + m5398goto(iM5395catch30, iM5395catch29, iM5395catch28) + this.f4363this[11] + 1518500249, 9);
        int iM5395catch32 = m5395catch(iM5395catch28 + m5398goto(iM5395catch31, iM5395catch30, iM5395catch29) + this.f4363this[15] + 1518500249, 13);
        int iM5395catch33 = m5395catch(iM5395catch29 + m5399this(iM5395catch32, iM5395catch31, iM5395catch30) + this.f4363this[0] + 1859775393, 3);
        int iM5395catch34 = m5395catch(iM5395catch30 + m5399this(iM5395catch33, iM5395catch32, iM5395catch31) + this.f4363this[8] + 1859775393, 9);
        int iM5395catch35 = m5395catch(iM5395catch31 + m5399this(iM5395catch34, iM5395catch33, iM5395catch32) + this.f4363this[4] + 1859775393, 11);
        int iM5395catch36 = m5395catch(iM5395catch32 + m5399this(iM5395catch35, iM5395catch34, iM5395catch33) + this.f4363this[12] + 1859775393, 15);
        int iM5395catch37 = m5395catch(iM5395catch33 + m5399this(iM5395catch36, iM5395catch35, iM5395catch34) + this.f4363this[2] + 1859775393, 3);
        int iM5395catch38 = m5395catch(iM5395catch34 + m5399this(iM5395catch37, iM5395catch36, iM5395catch35) + this.f4363this[10] + 1859775393, 9);
        int iM5395catch39 = m5395catch(iM5395catch35 + m5399this(iM5395catch38, iM5395catch37, iM5395catch36) + this.f4363this[6] + 1859775393, 11);
        int iM5395catch40 = m5395catch(iM5395catch36 + m5399this(iM5395catch39, iM5395catch38, iM5395catch37) + this.f4363this[14] + 1859775393, 15);
        int iM5395catch41 = m5395catch(iM5395catch37 + m5399this(iM5395catch40, iM5395catch39, iM5395catch38) + this.f4363this[1] + 1859775393, 3);
        int iM5395catch42 = m5395catch(iM5395catch38 + m5399this(iM5395catch41, iM5395catch40, iM5395catch39) + this.f4363this[9] + 1859775393, 9);
        int iM5395catch43 = m5395catch(iM5395catch39 + m5399this(iM5395catch42, iM5395catch41, iM5395catch40) + this.f4363this[5] + 1859775393, 11);
        int iM5395catch44 = m5395catch(iM5395catch40 + m5399this(iM5395catch43, iM5395catch42, iM5395catch41) + this.f4363this[13] + 1859775393, 15);
        int iM5395catch45 = m5395catch(iM5395catch41 + m5399this(iM5395catch44, iM5395catch43, iM5395catch42) + this.f4363this[3] + 1859775393, 3);
        int iM5395catch46 = m5395catch(iM5395catch42 + m5399this(iM5395catch45, iM5395catch44, iM5395catch43) + this.f4363this[11] + 1859775393, 9);
        int iM5395catch47 = m5395catch(iM5395catch43 + m5399this(iM5395catch46, iM5395catch45, iM5395catch44) + this.f4363this[7] + 1859775393, 11);
        int iM5395catch48 = m5395catch(iM5395catch44 + m5399this(iM5395catch47, iM5395catch46, iM5395catch45) + this.f4363this[15] + 1859775393, 15);
        this.f4364try += iM5395catch45;
        this.f4360case += iM5395catch48;
        this.f4361else += iM5395catch47;
        this.f4362goto += iM5395catch46;
        this.f4359break = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.f4363this;
            if (i5 == iArr.length) {
                return;
            }
            iArr[i5] = 0;
            i5++;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f4364try = 1732584193;
        this.f4360case = -271733879;
        this.f4361else = -1732584194;
        this.f4362goto = 271733878;
        this.f4359break = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f4363this;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m5394break((nw0) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f4359break > 14) {
            mo4746new();
        }
        int[] iArr = this.f4363this;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }
}
