package android.support.v4;

import org.bouncycastle.crypto.digests.EncodableDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class ow0 extends rg0 implements EncodableDigest {

    /* renamed from: catch, reason: not valid java name */
    private static final int f4779catch = 16;

    /* renamed from: class, reason: not valid java name */
    private static final int f4780class = 7;

    /* renamed from: const, reason: not valid java name */
    private static final int f4781const = 12;

    /* renamed from: default, reason: not valid java name */
    private static final int f4782default = 10;

    /* renamed from: extends, reason: not valid java name */
    private static final int f4783extends = 15;

    /* renamed from: final, reason: not valid java name */
    private static final int f4784final = 17;

    /* renamed from: finally, reason: not valid java name */
    private static final int f4785finally = 21;

    /* renamed from: import, reason: not valid java name */
    private static final int f4786import = 14;

    /* renamed from: native, reason: not valid java name */
    private static final int f4787native = 20;

    /* renamed from: public, reason: not valid java name */
    private static final int f4788public = 4;

    /* renamed from: return, reason: not valid java name */
    private static final int f4789return = 11;

    /* renamed from: static, reason: not valid java name */
    private static final int f4790static = 16;

    /* renamed from: super, reason: not valid java name */
    private static final int f4791super = 22;

    /* renamed from: switch, reason: not valid java name */
    private static final int f4792switch = 23;

    /* renamed from: throw, reason: not valid java name */
    private static final int f4793throw = 5;

    /* renamed from: throws, reason: not valid java name */
    private static final int f4794throws = 6;

    /* renamed from: while, reason: not valid java name */
    private static final int f4795while = 9;

    /* renamed from: break, reason: not valid java name */
    private int f4796break;

    /* renamed from: case, reason: not valid java name */
    private int f4797case;

    /* renamed from: else, reason: not valid java name */
    private int f4798else;

    /* renamed from: goto, reason: not valid java name */
    private int f4799goto;

    /* renamed from: this, reason: not valid java name */
    private int[] f4800this;

    /* renamed from: try, reason: not valid java name */
    private int f4801try;

    public ow0() {
        this.f4800this = new int[16];
        reset();
    }

    public ow0(ow0 ow0Var) {
        super(ow0Var);
        this.f4800this = new int[16];
        m5810catch(ow0Var);
    }

    public ow0(byte[] bArr) {
        super(bArr);
        this.f4800this = new int[16];
        this.f4801try = ib1.m3354do(bArr, 16);
        this.f4797case = ib1.m3354do(bArr, 20);
        this.f4798else = ib1.m3354do(bArr, 24);
        this.f4799goto = ib1.m3354do(bArr, 28);
        this.f4796break = ib1.m3354do(bArr, 32);
        for (int i = 0; i != this.f4796break; i++) {
            this.f4800this[i] = ib1.m3354do(bArr, (i * 4) + 36);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private int m5809break(int i, int i2, int i3) {
        return (i | (i3 ^ (-1))) ^ i2;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m5810catch(ow0 ow0Var) {
        super.m6968do(ow0Var);
        this.f4801try = ow0Var.f4801try;
        this.f4797case = ow0Var.f4797case;
        this.f4798else = ow0Var.f4798else;
        this.f4799goto = ow0Var.f4799goto;
        int[] iArr = ow0Var.f4800this;
        System.arraycopy(iArr, 0, this.f4800this, 0, iArr.length);
        this.f4796break = ow0Var.f4796break;
    }

    /* renamed from: class, reason: not valid java name */
    private int m5811class(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: const, reason: not valid java name */
    private void m5812const(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: else, reason: not valid java name */
    private int m5813else(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m5814goto(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: this, reason: not valid java name */
    private int m5815this(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int[] iArr = this.f4800this;
        int i2 = this.f4796break;
        int i3 = i2 + 1;
        this.f4796break = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new ow0(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        m5812const(this.f4801try, bArr, i);
        m5812const(this.f4797case, bArr, i + 4);
        m5812const(this.f4798else, bArr, i + 8);
        m5812const(this.f4799goto, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD5";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[(this.f4796break * 4) + 36];
        super.m6969for(bArr);
        ib1.m3348case(this.f4801try, bArr, 16);
        ib1.m3348case(this.f4797case, bArr, 20);
        ib1.m3348case(this.f4798else, bArr, 24);
        ib1.m3348case(this.f4799goto, bArr, 28);
        ib1.m3348case(this.f4796break, bArr, 32);
        for (int i = 0; i != this.f4796break; i++) {
            ib1.m3348case(this.f4800this[i], bArr, (i * 4) + 36);
        }
        return bArr;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        int i = this.f4801try;
        int i2 = this.f4797case;
        int i3 = this.f4798else;
        int i4 = this.f4799goto;
        int iM5811class = m5811class(((i + m5813else(i2, i3, i4)) + this.f4800this[0]) - 680876936, 7) + i2;
        int iM5811class2 = m5811class(((i4 + m5813else(iM5811class, i2, i3)) + this.f4800this[1]) - 389564586, 12) + iM5811class;
        int iM5811class3 = m5811class(i3 + m5813else(iM5811class2, iM5811class, i2) + this.f4800this[2] + 606105819, 17) + iM5811class2;
        int iM5811class4 = m5811class(((i2 + m5813else(iM5811class3, iM5811class2, iM5811class)) + this.f4800this[3]) - 1044525330, 22) + iM5811class3;
        int iM5811class5 = m5811class(((iM5811class + m5813else(iM5811class4, iM5811class3, iM5811class2)) + this.f4800this[4]) - 176418897, 7) + iM5811class4;
        int iM5811class6 = m5811class(iM5811class2 + m5813else(iM5811class5, iM5811class4, iM5811class3) + this.f4800this[5] + 1200080426, 12) + iM5811class5;
        int iM5811class7 = m5811class(((iM5811class3 + m5813else(iM5811class6, iM5811class5, iM5811class4)) + this.f4800this[6]) - 1473231341, 17) + iM5811class6;
        int iM5811class8 = m5811class(((iM5811class4 + m5813else(iM5811class7, iM5811class6, iM5811class5)) + this.f4800this[7]) - 45705983, 22) + iM5811class7;
        int iM5811class9 = m5811class(iM5811class5 + m5813else(iM5811class8, iM5811class7, iM5811class6) + this.f4800this[8] + 1770035416, 7) + iM5811class8;
        int iM5811class10 = m5811class(((iM5811class6 + m5813else(iM5811class9, iM5811class8, iM5811class7)) + this.f4800this[9]) - 1958414417, 12) + iM5811class9;
        int iM5811class11 = m5811class(((iM5811class7 + m5813else(iM5811class10, iM5811class9, iM5811class8)) + this.f4800this[10]) - 42063, 17) + iM5811class10;
        int iM5811class12 = m5811class(((iM5811class8 + m5813else(iM5811class11, iM5811class10, iM5811class9)) + this.f4800this[11]) - 1990404162, 22) + iM5811class11;
        int iM5811class13 = m5811class(iM5811class9 + m5813else(iM5811class12, iM5811class11, iM5811class10) + this.f4800this[12] + 1804603682, 7) + iM5811class12;
        int iM5811class14 = m5811class(((iM5811class10 + m5813else(iM5811class13, iM5811class12, iM5811class11)) + this.f4800this[13]) - 40341101, 12) + iM5811class13;
        int iM5811class15 = m5811class(((iM5811class11 + m5813else(iM5811class14, iM5811class13, iM5811class12)) + this.f4800this[14]) - 1502002290, 17) + iM5811class14;
        int iM5811class16 = m5811class(iM5811class12 + m5813else(iM5811class15, iM5811class14, iM5811class13) + this.f4800this[15] + 1236535329, 22) + iM5811class15;
        int iM5811class17 = m5811class(((iM5811class13 + m5814goto(iM5811class16, iM5811class15, iM5811class14)) + this.f4800this[1]) - 165796510, 5) + iM5811class16;
        int iM5811class18 = m5811class(((iM5811class14 + m5814goto(iM5811class17, iM5811class16, iM5811class15)) + this.f4800this[6]) - 1069501632, 9) + iM5811class17;
        int iM5811class19 = m5811class(iM5811class15 + m5814goto(iM5811class18, iM5811class17, iM5811class16) + this.f4800this[11] + 643717713, 14) + iM5811class18;
        int iM5811class20 = m5811class(((iM5811class16 + m5814goto(iM5811class19, iM5811class18, iM5811class17)) + this.f4800this[0]) - 373897302, 20) + iM5811class19;
        int iM5811class21 = m5811class(((iM5811class17 + m5814goto(iM5811class20, iM5811class19, iM5811class18)) + this.f4800this[5]) - 701558691, 5) + iM5811class20;
        int iM5811class22 = m5811class(iM5811class18 + m5814goto(iM5811class21, iM5811class20, iM5811class19) + this.f4800this[10] + 38016083, 9) + iM5811class21;
        int iM5811class23 = m5811class(((iM5811class19 + m5814goto(iM5811class22, iM5811class21, iM5811class20)) + this.f4800this[15]) - 660478335, 14) + iM5811class22;
        int iM5811class24 = m5811class(((iM5811class20 + m5814goto(iM5811class23, iM5811class22, iM5811class21)) + this.f4800this[4]) - 405537848, 20) + iM5811class23;
        int iM5811class25 = m5811class(iM5811class21 + m5814goto(iM5811class24, iM5811class23, iM5811class22) + this.f4800this[9] + 568446438, 5) + iM5811class24;
        int iM5811class26 = m5811class(((iM5811class22 + m5814goto(iM5811class25, iM5811class24, iM5811class23)) + this.f4800this[14]) - 1019803690, 9) + iM5811class25;
        int iM5811class27 = m5811class(((iM5811class23 + m5814goto(iM5811class26, iM5811class25, iM5811class24)) + this.f4800this[3]) - 187363961, 14) + iM5811class26;
        int iM5811class28 = m5811class(iM5811class24 + m5814goto(iM5811class27, iM5811class26, iM5811class25) + this.f4800this[8] + 1163531501, 20) + iM5811class27;
        int iM5811class29 = m5811class(((iM5811class25 + m5814goto(iM5811class28, iM5811class27, iM5811class26)) + this.f4800this[13]) - 1444681467, 5) + iM5811class28;
        int iM5811class30 = m5811class(((iM5811class26 + m5814goto(iM5811class29, iM5811class28, iM5811class27)) + this.f4800this[2]) - 51403784, 9) + iM5811class29;
        int iM5811class31 = m5811class(iM5811class27 + m5814goto(iM5811class30, iM5811class29, iM5811class28) + this.f4800this[7] + 1735328473, 14) + iM5811class30;
        int iM5811class32 = m5811class(((iM5811class28 + m5814goto(iM5811class31, iM5811class30, iM5811class29)) + this.f4800this[12]) - 1926607734, 20) + iM5811class31;
        int iM5811class33 = m5811class(((iM5811class29 + m5815this(iM5811class32, iM5811class31, iM5811class30)) + this.f4800this[5]) - 378558, 4) + iM5811class32;
        int iM5811class34 = m5811class(((iM5811class30 + m5815this(iM5811class33, iM5811class32, iM5811class31)) + this.f4800this[8]) - 2022574463, 11) + iM5811class33;
        int iM5811class35 = m5811class(iM5811class31 + m5815this(iM5811class34, iM5811class33, iM5811class32) + this.f4800this[11] + 1839030562, 16) + iM5811class34;
        int iM5811class36 = m5811class(((iM5811class32 + m5815this(iM5811class35, iM5811class34, iM5811class33)) + this.f4800this[14]) - 35309556, 23) + iM5811class35;
        int iM5811class37 = m5811class(((iM5811class33 + m5815this(iM5811class36, iM5811class35, iM5811class34)) + this.f4800this[1]) - 1530992060, 4) + iM5811class36;
        int iM5811class38 = m5811class(iM5811class34 + m5815this(iM5811class37, iM5811class36, iM5811class35) + this.f4800this[4] + 1272893353, 11) + iM5811class37;
        int iM5811class39 = m5811class(((iM5811class35 + m5815this(iM5811class38, iM5811class37, iM5811class36)) + this.f4800this[7]) - 155497632, 16) + iM5811class38;
        int iM5811class40 = m5811class(((iM5811class36 + m5815this(iM5811class39, iM5811class38, iM5811class37)) + this.f4800this[10]) - 1094730640, 23) + iM5811class39;
        int iM5811class41 = m5811class(iM5811class37 + m5815this(iM5811class40, iM5811class39, iM5811class38) + this.f4800this[13] + 681279174, 4) + iM5811class40;
        int iM5811class42 = m5811class(((iM5811class38 + m5815this(iM5811class41, iM5811class40, iM5811class39)) + this.f4800this[0]) - 358537222, 11) + iM5811class41;
        int iM5811class43 = m5811class(((iM5811class39 + m5815this(iM5811class42, iM5811class41, iM5811class40)) + this.f4800this[3]) - 722521979, 16) + iM5811class42;
        int iM5811class44 = m5811class(iM5811class40 + m5815this(iM5811class43, iM5811class42, iM5811class41) + this.f4800this[6] + 76029189, 23) + iM5811class43;
        int iM5811class45 = m5811class(((iM5811class41 + m5815this(iM5811class44, iM5811class43, iM5811class42)) + this.f4800this[9]) - 640364487, 4) + iM5811class44;
        int iM5811class46 = m5811class(((iM5811class42 + m5815this(iM5811class45, iM5811class44, iM5811class43)) + this.f4800this[12]) - 421815835, 11) + iM5811class45;
        int iM5811class47 = m5811class(iM5811class43 + m5815this(iM5811class46, iM5811class45, iM5811class44) + this.f4800this[15] + 530742520, 16) + iM5811class46;
        int iM5811class48 = m5811class(((iM5811class44 + m5815this(iM5811class47, iM5811class46, iM5811class45)) + this.f4800this[2]) - 995338651, 23) + iM5811class47;
        int iM5811class49 = m5811class(((iM5811class45 + m5809break(iM5811class48, iM5811class47, iM5811class46)) + this.f4800this[0]) - 198630844, 6) + iM5811class48;
        int iM5811class50 = m5811class(iM5811class46 + m5809break(iM5811class49, iM5811class48, iM5811class47) + this.f4800this[7] + 1126891415, 10) + iM5811class49;
        int iM5811class51 = m5811class(((iM5811class47 + m5809break(iM5811class50, iM5811class49, iM5811class48)) + this.f4800this[14]) - 1416354905, 15) + iM5811class50;
        int iM5811class52 = m5811class(((iM5811class48 + m5809break(iM5811class51, iM5811class50, iM5811class49)) + this.f4800this[5]) - 57434055, 21) + iM5811class51;
        int iM5811class53 = m5811class(iM5811class49 + m5809break(iM5811class52, iM5811class51, iM5811class50) + this.f4800this[12] + 1700485571, 6) + iM5811class52;
        int iM5811class54 = m5811class(((iM5811class50 + m5809break(iM5811class53, iM5811class52, iM5811class51)) + this.f4800this[3]) - 1894986606, 10) + iM5811class53;
        int iM5811class55 = m5811class(((iM5811class51 + m5809break(iM5811class54, iM5811class53, iM5811class52)) + this.f4800this[10]) - 1051523, 15) + iM5811class54;
        int iM5811class56 = m5811class(((iM5811class52 + m5809break(iM5811class55, iM5811class54, iM5811class53)) + this.f4800this[1]) - 2054922799, 21) + iM5811class55;
        int iM5811class57 = m5811class(iM5811class53 + m5809break(iM5811class56, iM5811class55, iM5811class54) + this.f4800this[8] + 1873313359, 6) + iM5811class56;
        int iM5811class58 = m5811class(((iM5811class54 + m5809break(iM5811class57, iM5811class56, iM5811class55)) + this.f4800this[15]) - 30611744, 10) + iM5811class57;
        int iM5811class59 = m5811class(((iM5811class55 + m5809break(iM5811class58, iM5811class57, iM5811class56)) + this.f4800this[6]) - 1560198380, 15) + iM5811class58;
        int iM5811class60 = m5811class(iM5811class56 + m5809break(iM5811class59, iM5811class58, iM5811class57) + this.f4800this[13] + 1309151649, 21) + iM5811class59;
        int iM5811class61 = m5811class(((iM5811class57 + m5809break(iM5811class60, iM5811class59, iM5811class58)) + this.f4800this[4]) - 145523070, 6) + iM5811class60;
        int iM5811class62 = m5811class(((iM5811class58 + m5809break(iM5811class61, iM5811class60, iM5811class59)) + this.f4800this[11]) - 1120210379, 10) + iM5811class61;
        int iM5811class63 = m5811class(iM5811class59 + m5809break(iM5811class62, iM5811class61, iM5811class60) + this.f4800this[2] + 718787259, 15) + iM5811class62;
        int iM5811class64 = m5811class(((iM5811class60 + m5809break(iM5811class63, iM5811class62, iM5811class61)) + this.f4800this[9]) - 343485551, 21) + iM5811class63;
        this.f4801try += iM5811class61;
        this.f4797case += iM5811class64;
        this.f4798else += iM5811class63;
        this.f4799goto += iM5811class62;
        this.f4796break = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.f4800this;
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
        this.f4801try = 1732584193;
        this.f4797case = -271733879;
        this.f4798else = -1732584194;
        this.f4799goto = 271733878;
        this.f4796break = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f4800this;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m5810catch((ow0) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f4796break > 14) {
            mo4746new();
        }
        int[] iArr = this.f4800this;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }
}
