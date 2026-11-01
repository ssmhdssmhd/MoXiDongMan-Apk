package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class sj1 extends rg0 {

    /* renamed from: class, reason: not valid java name */
    private static final int f6162class = 20;

    /* renamed from: break, reason: not valid java name */
    private int[] f6163break;

    /* renamed from: case, reason: not valid java name */
    private int f6164case;

    /* renamed from: catch, reason: not valid java name */
    private int f6165catch;

    /* renamed from: else, reason: not valid java name */
    private int f6166else;

    /* renamed from: goto, reason: not valid java name */
    private int f6167goto;

    /* renamed from: this, reason: not valid java name */
    private int f6168this;

    /* renamed from: try, reason: not valid java name */
    private int f6169try;

    public sj1() {
        this.f6163break = new int[16];
        reset();
    }

    public sj1(sj1 sj1Var) {
        super(sj1Var);
        this.f6163break = new int[16];
        m7422goto(sj1Var);
    }

    /* renamed from: break, reason: not valid java name */
    private int m7416break(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m7417catch(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: class, reason: not valid java name */
    private int m7418class(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: const, reason: not valid java name */
    private int m7419const(int i, int i2, int i3) {
        return i ^ (i2 | (i3 ^ (-1)));
    }

    /* renamed from: else, reason: not valid java name */
    private int m7420else(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: final, reason: not valid java name */
    private void m7421final(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m7422goto(sj1 sj1Var) {
        super.m6968do(sj1Var);
        this.f6169try = sj1Var.f6169try;
        this.f6164case = sj1Var.f6164case;
        this.f6166else = sj1Var.f6166else;
        this.f6167goto = sj1Var.f6167goto;
        this.f6168this = sj1Var.f6168this;
        int[] iArr = sj1Var.f6163break;
        System.arraycopy(iArr, 0, this.f6163break, 0, iArr.length);
        this.f6165catch = sj1Var.f6165catch;
    }

    /* renamed from: this, reason: not valid java name */
    private int m7423this(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int[] iArr = this.f6163break;
        int i2 = this.f6165catch;
        int i3 = i2 + 1;
        this.f6165catch = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new sj1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        m7421final(this.f6169try, bArr, i);
        m7421final(this.f6164case, bArr, i + 4);
        m7421final(this.f6166else, bArr, i + 8);
        m7421final(this.f6167goto, bArr, i + 12);
        m7421final(this.f6168this, bArr, i + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD160";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        int i = this.f6169try;
        int i2 = this.f6164case;
        int i3 = this.f6166else;
        int i4 = this.f6167goto;
        int i5 = this.f6168this;
        int iM7420else = m7420else(m7423this(i2, i3, i4) + i + this.f6163break[0], 11) + i5;
        int iM7420else2 = m7420else(i3, 10);
        int iM7420else3 = m7420else(m7423this(iM7420else, i2, iM7420else2) + i5 + this.f6163break[1], 14) + i4;
        int iM7420else4 = m7420else(i2, 10);
        int iM7420else5 = m7420else(m7423this(iM7420else3, iM7420else, iM7420else4) + i4 + this.f6163break[2], 15) + iM7420else2;
        int iM7420else6 = m7420else(iM7420else, 10);
        int iM7420else7 = m7420else(iM7420else2 + m7423this(iM7420else5, iM7420else3, iM7420else6) + this.f6163break[3], 12) + iM7420else4;
        int iM7420else8 = m7420else(iM7420else3, 10);
        int iM7420else9 = m7420else(iM7420else4 + m7423this(iM7420else7, iM7420else5, iM7420else8) + this.f6163break[4], 5) + iM7420else6;
        int iM7420else10 = m7420else(iM7420else5, 10);
        int iM7420else11 = m7420else(iM7420else6 + m7423this(iM7420else9, iM7420else7, iM7420else10) + this.f6163break[5], 8) + iM7420else8;
        int iM7420else12 = m7420else(iM7420else7, 10);
        int iM7420else13 = m7420else(iM7420else8 + m7423this(iM7420else11, iM7420else9, iM7420else12) + this.f6163break[6], 7) + iM7420else10;
        int iM7420else14 = m7420else(iM7420else9, 10);
        int iM7420else15 = m7420else(iM7420else10 + m7423this(iM7420else13, iM7420else11, iM7420else14) + this.f6163break[7], 9) + iM7420else12;
        int iM7420else16 = m7420else(iM7420else11, 10);
        int iM7420else17 = m7420else(iM7420else12 + m7423this(iM7420else15, iM7420else13, iM7420else16) + this.f6163break[8], 11) + iM7420else14;
        int iM7420else18 = m7420else(iM7420else13, 10);
        int iM7420else19 = m7420else(iM7420else14 + m7423this(iM7420else17, iM7420else15, iM7420else18) + this.f6163break[9], 13) + iM7420else16;
        int iM7420else20 = m7420else(iM7420else15, 10);
        int iM7420else21 = m7420else(iM7420else16 + m7423this(iM7420else19, iM7420else17, iM7420else20) + this.f6163break[10], 14) + iM7420else18;
        int iM7420else22 = m7420else(iM7420else17, 10);
        int iM7420else23 = m7420else(iM7420else18 + m7423this(iM7420else21, iM7420else19, iM7420else22) + this.f6163break[11], 15) + iM7420else20;
        int iM7420else24 = m7420else(iM7420else19, 10);
        int iM7420else25 = m7420else(iM7420else20 + m7423this(iM7420else23, iM7420else21, iM7420else24) + this.f6163break[12], 6) + iM7420else22;
        int iM7420else26 = m7420else(iM7420else21, 10);
        int iM7420else27 = m7420else(iM7420else22 + m7423this(iM7420else25, iM7420else23, iM7420else26) + this.f6163break[13], 7) + iM7420else24;
        int iM7420else28 = m7420else(iM7420else23, 10);
        int iM7420else29 = m7420else(iM7420else24 + m7423this(iM7420else27, iM7420else25, iM7420else28) + this.f6163break[14], 9) + iM7420else26;
        int iM7420else30 = m7420else(iM7420else25, 10);
        int iM7420else31 = m7420else(iM7420else26 + m7423this(iM7420else29, iM7420else27, iM7420else30) + this.f6163break[15], 8) + iM7420else28;
        int iM7420else32 = m7420else(iM7420else27, 10);
        int iM7420else33 = m7420else(i + m7419const(i2, i3, i4) + this.f6163break[5] + 1352829926, 8) + i5;
        int iM7420else34 = m7420else(i3, 10);
        int iM7420else35 = m7420else(i5 + m7419const(iM7420else33, i2, iM7420else34) + this.f6163break[14] + 1352829926, 9) + i4;
        int iM7420else36 = m7420else(i2, 10);
        int iM7420else37 = m7420else(i4 + m7419const(iM7420else35, iM7420else33, iM7420else36) + this.f6163break[7] + 1352829926, 9) + iM7420else34;
        int iM7420else38 = m7420else(iM7420else33, 10);
        int iM7420else39 = m7420else(iM7420else34 + m7419const(iM7420else37, iM7420else35, iM7420else38) + this.f6163break[0] + 1352829926, 11) + iM7420else36;
        int iM7420else40 = m7420else(iM7420else35, 10);
        int iM7420else41 = m7420else(iM7420else36 + m7419const(iM7420else39, iM7420else37, iM7420else40) + this.f6163break[9] + 1352829926, 13) + iM7420else38;
        int iM7420else42 = m7420else(iM7420else37, 10);
        int iM7420else43 = m7420else(iM7420else38 + m7419const(iM7420else41, iM7420else39, iM7420else42) + this.f6163break[2] + 1352829926, 15) + iM7420else40;
        int iM7420else44 = m7420else(iM7420else39, 10);
        int iM7420else45 = m7420else(iM7420else40 + m7419const(iM7420else43, iM7420else41, iM7420else44) + this.f6163break[11] + 1352829926, 15) + iM7420else42;
        int iM7420else46 = m7420else(iM7420else41, 10);
        int iM7420else47 = m7420else(iM7420else42 + m7419const(iM7420else45, iM7420else43, iM7420else46) + this.f6163break[4] + 1352829926, 5) + iM7420else44;
        int iM7420else48 = m7420else(iM7420else43, 10);
        int iM7420else49 = m7420else(iM7420else44 + m7419const(iM7420else47, iM7420else45, iM7420else48) + this.f6163break[13] + 1352829926, 7) + iM7420else46;
        int iM7420else50 = m7420else(iM7420else45, 10);
        int iM7420else51 = m7420else(iM7420else46 + m7419const(iM7420else49, iM7420else47, iM7420else50) + this.f6163break[6] + 1352829926, 7) + iM7420else48;
        int iM7420else52 = m7420else(iM7420else47, 10);
        int iM7420else53 = m7420else(iM7420else48 + m7419const(iM7420else51, iM7420else49, iM7420else52) + this.f6163break[15] + 1352829926, 8) + iM7420else50;
        int iM7420else54 = m7420else(iM7420else49, 10);
        int iM7420else55 = m7420else(iM7420else50 + m7419const(iM7420else53, iM7420else51, iM7420else54) + this.f6163break[8] + 1352829926, 11) + iM7420else52;
        int iM7420else56 = m7420else(iM7420else51, 10);
        int iM7420else57 = m7420else(iM7420else52 + m7419const(iM7420else55, iM7420else53, iM7420else56) + this.f6163break[1] + 1352829926, 14) + iM7420else54;
        int iM7420else58 = m7420else(iM7420else53, 10);
        int iM7420else59 = m7420else(iM7420else54 + m7419const(iM7420else57, iM7420else55, iM7420else58) + this.f6163break[10] + 1352829926, 14) + iM7420else56;
        int iM7420else60 = m7420else(iM7420else55, 10);
        int iM7420else61 = m7420else(iM7420else56 + m7419const(iM7420else59, iM7420else57, iM7420else60) + this.f6163break[3] + 1352829926, 12) + iM7420else58;
        int iM7420else62 = m7420else(iM7420else57, 10);
        int iM7420else63 = m7420else(iM7420else58 + m7419const(iM7420else61, iM7420else59, iM7420else62) + this.f6163break[12] + 1352829926, 6) + iM7420else60;
        int iM7420else64 = m7420else(iM7420else59, 10);
        int iM7420else65 = m7420else(iM7420else28 + m7416break(iM7420else31, iM7420else29, iM7420else32) + this.f6163break[7] + 1518500249, 7) + iM7420else30;
        int iM7420else66 = m7420else(iM7420else29, 10);
        int iM7420else67 = m7420else(iM7420else30 + m7416break(iM7420else65, iM7420else31, iM7420else66) + this.f6163break[4] + 1518500249, 6) + iM7420else32;
        int iM7420else68 = m7420else(iM7420else31, 10);
        int iM7420else69 = m7420else(iM7420else32 + m7416break(iM7420else67, iM7420else65, iM7420else68) + this.f6163break[13] + 1518500249, 8) + iM7420else66;
        int iM7420else70 = m7420else(iM7420else65, 10);
        int iM7420else71 = m7420else(iM7420else66 + m7416break(iM7420else69, iM7420else67, iM7420else70) + this.f6163break[1] + 1518500249, 13) + iM7420else68;
        int iM7420else72 = m7420else(iM7420else67, 10);
        int iM7420else73 = m7420else(iM7420else68 + m7416break(iM7420else71, iM7420else69, iM7420else72) + this.f6163break[10] + 1518500249, 11) + iM7420else70;
        int iM7420else74 = m7420else(iM7420else69, 10);
        int iM7420else75 = m7420else(iM7420else70 + m7416break(iM7420else73, iM7420else71, iM7420else74) + this.f6163break[6] + 1518500249, 9) + iM7420else72;
        int iM7420else76 = m7420else(iM7420else71, 10);
        int iM7420else77 = m7420else(iM7420else72 + m7416break(iM7420else75, iM7420else73, iM7420else76) + this.f6163break[15] + 1518500249, 7) + iM7420else74;
        int iM7420else78 = m7420else(iM7420else73, 10);
        int iM7420else79 = m7420else(iM7420else74 + m7416break(iM7420else77, iM7420else75, iM7420else78) + this.f6163break[3] + 1518500249, 15) + iM7420else76;
        int iM7420else80 = m7420else(iM7420else75, 10);
        int iM7420else81 = m7420else(iM7420else76 + m7416break(iM7420else79, iM7420else77, iM7420else80) + this.f6163break[12] + 1518500249, 7) + iM7420else78;
        int iM7420else82 = m7420else(iM7420else77, 10);
        int iM7420else83 = m7420else(iM7420else78 + m7416break(iM7420else81, iM7420else79, iM7420else82) + this.f6163break[0] + 1518500249, 12) + iM7420else80;
        int iM7420else84 = m7420else(iM7420else79, 10);
        int iM7420else85 = m7420else(iM7420else80 + m7416break(iM7420else83, iM7420else81, iM7420else84) + this.f6163break[9] + 1518500249, 15) + iM7420else82;
        int iM7420else86 = m7420else(iM7420else81, 10);
        int iM7420else87 = m7420else(iM7420else82 + m7416break(iM7420else85, iM7420else83, iM7420else86) + this.f6163break[5] + 1518500249, 9) + iM7420else84;
        int iM7420else88 = m7420else(iM7420else83, 10);
        int iM7420else89 = m7420else(iM7420else84 + m7416break(iM7420else87, iM7420else85, iM7420else88) + this.f6163break[2] + 1518500249, 11) + iM7420else86;
        int iM7420else90 = m7420else(iM7420else85, 10);
        int iM7420else91 = m7420else(iM7420else86 + m7416break(iM7420else89, iM7420else87, iM7420else90) + this.f6163break[14] + 1518500249, 7) + iM7420else88;
        int iM7420else92 = m7420else(iM7420else87, 10);
        int iM7420else93 = m7420else(iM7420else88 + m7416break(iM7420else91, iM7420else89, iM7420else92) + this.f6163break[11] + 1518500249, 13) + iM7420else90;
        int iM7420else94 = m7420else(iM7420else89, 10);
        int iM7420else95 = m7420else(iM7420else90 + m7416break(iM7420else93, iM7420else91, iM7420else94) + this.f6163break[8] + 1518500249, 12) + iM7420else92;
        int iM7420else96 = m7420else(iM7420else91, 10);
        int iM7420else97 = m7420else(iM7420else60 + m7418class(iM7420else63, iM7420else61, iM7420else64) + this.f6163break[6] + 1548603684, 9) + iM7420else62;
        int iM7420else98 = m7420else(iM7420else61, 10);
        int iM7420else99 = m7420else(iM7420else62 + m7418class(iM7420else97, iM7420else63, iM7420else98) + this.f6163break[11] + 1548603684, 13) + iM7420else64;
        int iM7420else100 = m7420else(iM7420else63, 10);
        int iM7420else101 = m7420else(iM7420else64 + m7418class(iM7420else99, iM7420else97, iM7420else100) + this.f6163break[3] + 1548603684, 15) + iM7420else98;
        int iM7420else102 = m7420else(iM7420else97, 10);
        int iM7420else103 = m7420else(iM7420else98 + m7418class(iM7420else101, iM7420else99, iM7420else102) + this.f6163break[7] + 1548603684, 7) + iM7420else100;
        int iM7420else104 = m7420else(iM7420else99, 10);
        int iM7420else105 = m7420else(iM7420else100 + m7418class(iM7420else103, iM7420else101, iM7420else104) + this.f6163break[0] + 1548603684, 12) + iM7420else102;
        int iM7420else106 = m7420else(iM7420else101, 10);
        int iM7420else107 = m7420else(iM7420else102 + m7418class(iM7420else105, iM7420else103, iM7420else106) + this.f6163break[13] + 1548603684, 8) + iM7420else104;
        int iM7420else108 = m7420else(iM7420else103, 10);
        int iM7420else109 = m7420else(iM7420else104 + m7418class(iM7420else107, iM7420else105, iM7420else108) + this.f6163break[5] + 1548603684, 9) + iM7420else106;
        int iM7420else110 = m7420else(iM7420else105, 10);
        int iM7420else111 = m7420else(iM7420else106 + m7418class(iM7420else109, iM7420else107, iM7420else110) + this.f6163break[10] + 1548603684, 11) + iM7420else108;
        int iM7420else112 = m7420else(iM7420else107, 10);
        int iM7420else113 = m7420else(iM7420else108 + m7418class(iM7420else111, iM7420else109, iM7420else112) + this.f6163break[14] + 1548603684, 7) + iM7420else110;
        int iM7420else114 = m7420else(iM7420else109, 10);
        int iM7420else115 = m7420else(iM7420else110 + m7418class(iM7420else113, iM7420else111, iM7420else114) + this.f6163break[15] + 1548603684, 7) + iM7420else112;
        int iM7420else116 = m7420else(iM7420else111, 10);
        int iM7420else117 = m7420else(iM7420else112 + m7418class(iM7420else115, iM7420else113, iM7420else116) + this.f6163break[8] + 1548603684, 12) + iM7420else114;
        int iM7420else118 = m7420else(iM7420else113, 10);
        int iM7420else119 = m7420else(iM7420else114 + m7418class(iM7420else117, iM7420else115, iM7420else118) + this.f6163break[12] + 1548603684, 7) + iM7420else116;
        int iM7420else120 = m7420else(iM7420else115, 10);
        int iM7420else121 = m7420else(iM7420else116 + m7418class(iM7420else119, iM7420else117, iM7420else120) + this.f6163break[4] + 1548603684, 6) + iM7420else118;
        int iM7420else122 = m7420else(iM7420else117, 10);
        int iM7420else123 = m7420else(iM7420else118 + m7418class(iM7420else121, iM7420else119, iM7420else122) + this.f6163break[9] + 1548603684, 15) + iM7420else120;
        int iM7420else124 = m7420else(iM7420else119, 10);
        int iM7420else125 = m7420else(iM7420else120 + m7418class(iM7420else123, iM7420else121, iM7420else124) + this.f6163break[1] + 1548603684, 13) + iM7420else122;
        int iM7420else126 = m7420else(iM7420else121, 10);
        int iM7420else127 = m7420else(iM7420else122 + m7418class(iM7420else125, iM7420else123, iM7420else126) + this.f6163break[2] + 1548603684, 11) + iM7420else124;
        int iM7420else128 = m7420else(iM7420else123, 10);
        int iM7420else129 = m7420else(iM7420else92 + m7417catch(iM7420else95, iM7420else93, iM7420else96) + this.f6163break[3] + 1859775393, 11) + iM7420else94;
        int iM7420else130 = m7420else(iM7420else93, 10);
        int iM7420else131 = m7420else(iM7420else94 + m7417catch(iM7420else129, iM7420else95, iM7420else130) + this.f6163break[10] + 1859775393, 13) + iM7420else96;
        int iM7420else132 = m7420else(iM7420else95, 10);
        int iM7420else133 = m7420else(iM7420else96 + m7417catch(iM7420else131, iM7420else129, iM7420else132) + this.f6163break[14] + 1859775393, 6) + iM7420else130;
        int iM7420else134 = m7420else(iM7420else129, 10);
        int iM7420else135 = m7420else(iM7420else130 + m7417catch(iM7420else133, iM7420else131, iM7420else134) + this.f6163break[4] + 1859775393, 7) + iM7420else132;
        int iM7420else136 = m7420else(iM7420else131, 10);
        int iM7420else137 = m7420else(iM7420else132 + m7417catch(iM7420else135, iM7420else133, iM7420else136) + this.f6163break[9] + 1859775393, 14) + iM7420else134;
        int iM7420else138 = m7420else(iM7420else133, 10);
        int iM7420else139 = m7420else(iM7420else134 + m7417catch(iM7420else137, iM7420else135, iM7420else138) + this.f6163break[15] + 1859775393, 9) + iM7420else136;
        int iM7420else140 = m7420else(iM7420else135, 10);
        int iM7420else141 = m7420else(iM7420else136 + m7417catch(iM7420else139, iM7420else137, iM7420else140) + this.f6163break[8] + 1859775393, 13) + iM7420else138;
        int iM7420else142 = m7420else(iM7420else137, 10);
        int iM7420else143 = m7420else(iM7420else138 + m7417catch(iM7420else141, iM7420else139, iM7420else142) + this.f6163break[1] + 1859775393, 15) + iM7420else140;
        int iM7420else144 = m7420else(iM7420else139, 10);
        int iM7420else145 = m7420else(iM7420else140 + m7417catch(iM7420else143, iM7420else141, iM7420else144) + this.f6163break[2] + 1859775393, 14) + iM7420else142;
        int iM7420else146 = m7420else(iM7420else141, 10);
        int iM7420else147 = m7420else(iM7420else142 + m7417catch(iM7420else145, iM7420else143, iM7420else146) + this.f6163break[7] + 1859775393, 8) + iM7420else144;
        int iM7420else148 = m7420else(iM7420else143, 10);
        int iM7420else149 = m7420else(iM7420else144 + m7417catch(iM7420else147, iM7420else145, iM7420else148) + this.f6163break[0] + 1859775393, 13) + iM7420else146;
        int iM7420else150 = m7420else(iM7420else145, 10);
        int iM7420else151 = m7420else(iM7420else146 + m7417catch(iM7420else149, iM7420else147, iM7420else150) + this.f6163break[6] + 1859775393, 6) + iM7420else148;
        int iM7420else152 = m7420else(iM7420else147, 10);
        int iM7420else153 = m7420else(iM7420else148 + m7417catch(iM7420else151, iM7420else149, iM7420else152) + this.f6163break[13] + 1859775393, 5) + iM7420else150;
        int iM7420else154 = m7420else(iM7420else149, 10);
        int iM7420else155 = m7420else(iM7420else150 + m7417catch(iM7420else153, iM7420else151, iM7420else154) + this.f6163break[11] + 1859775393, 12) + iM7420else152;
        int iM7420else156 = m7420else(iM7420else151, 10);
        int iM7420else157 = m7420else(iM7420else152 + m7417catch(iM7420else155, iM7420else153, iM7420else156) + this.f6163break[5] + 1859775393, 7) + iM7420else154;
        int iM7420else158 = m7420else(iM7420else153, 10);
        int iM7420else159 = m7420else(iM7420else154 + m7417catch(iM7420else157, iM7420else155, iM7420else158) + this.f6163break[12] + 1859775393, 5) + iM7420else156;
        int iM7420else160 = m7420else(iM7420else155, 10);
        int iM7420else161 = m7420else(iM7420else124 + m7417catch(iM7420else127, iM7420else125, iM7420else128) + this.f6163break[15] + 1836072691, 9) + iM7420else126;
        int iM7420else162 = m7420else(iM7420else125, 10);
        int iM7420else163 = m7420else(iM7420else126 + m7417catch(iM7420else161, iM7420else127, iM7420else162) + this.f6163break[5] + 1836072691, 7) + iM7420else128;
        int iM7420else164 = m7420else(iM7420else127, 10);
        int iM7420else165 = m7420else(iM7420else128 + m7417catch(iM7420else163, iM7420else161, iM7420else164) + this.f6163break[1] + 1836072691, 15) + iM7420else162;
        int iM7420else166 = m7420else(iM7420else161, 10);
        int iM7420else167 = m7420else(iM7420else162 + m7417catch(iM7420else165, iM7420else163, iM7420else166) + this.f6163break[3] + 1836072691, 11) + iM7420else164;
        int iM7420else168 = m7420else(iM7420else163, 10);
        int iM7420else169 = m7420else(iM7420else164 + m7417catch(iM7420else167, iM7420else165, iM7420else168) + this.f6163break[7] + 1836072691, 8) + iM7420else166;
        int iM7420else170 = m7420else(iM7420else165, 10);
        int iM7420else171 = m7420else(iM7420else166 + m7417catch(iM7420else169, iM7420else167, iM7420else170) + this.f6163break[14] + 1836072691, 6) + iM7420else168;
        int iM7420else172 = m7420else(iM7420else167, 10);
        int iM7420else173 = m7420else(iM7420else168 + m7417catch(iM7420else171, iM7420else169, iM7420else172) + this.f6163break[6] + 1836072691, 6) + iM7420else170;
        int iM7420else174 = m7420else(iM7420else169, 10);
        int iM7420else175 = m7420else(iM7420else170 + m7417catch(iM7420else173, iM7420else171, iM7420else174) + this.f6163break[9] + 1836072691, 14) + iM7420else172;
        int iM7420else176 = m7420else(iM7420else171, 10);
        int iM7420else177 = m7420else(iM7420else172 + m7417catch(iM7420else175, iM7420else173, iM7420else176) + this.f6163break[11] + 1836072691, 12) + iM7420else174;
        int iM7420else178 = m7420else(iM7420else173, 10);
        int iM7420else179 = m7420else(iM7420else174 + m7417catch(iM7420else177, iM7420else175, iM7420else178) + this.f6163break[8] + 1836072691, 13) + iM7420else176;
        int iM7420else180 = m7420else(iM7420else175, 10);
        int iM7420else181 = m7420else(iM7420else176 + m7417catch(iM7420else179, iM7420else177, iM7420else180) + this.f6163break[12] + 1836072691, 5) + iM7420else178;
        int iM7420else182 = m7420else(iM7420else177, 10);
        int iM7420else183 = m7420else(iM7420else178 + m7417catch(iM7420else181, iM7420else179, iM7420else182) + this.f6163break[2] + 1836072691, 14) + iM7420else180;
        int iM7420else184 = m7420else(iM7420else179, 10);
        int iM7420else185 = m7420else(iM7420else180 + m7417catch(iM7420else183, iM7420else181, iM7420else184) + this.f6163break[10] + 1836072691, 13) + iM7420else182;
        int iM7420else186 = m7420else(iM7420else181, 10);
        int iM7420else187 = m7420else(iM7420else182 + m7417catch(iM7420else185, iM7420else183, iM7420else186) + this.f6163break[0] + 1836072691, 13) + iM7420else184;
        int iM7420else188 = m7420else(iM7420else183, 10);
        int iM7420else189 = m7420else(iM7420else184 + m7417catch(iM7420else187, iM7420else185, iM7420else188) + this.f6163break[4] + 1836072691, 7) + iM7420else186;
        int iM7420else190 = m7420else(iM7420else185, 10);
        int iM7420else191 = m7420else(iM7420else186 + m7417catch(iM7420else189, iM7420else187, iM7420else190) + this.f6163break[13] + 1836072691, 5) + iM7420else188;
        int iM7420else192 = m7420else(iM7420else187, 10);
        int iM7420else193 = m7420else(((iM7420else156 + m7418class(iM7420else159, iM7420else157, iM7420else160)) + this.f6163break[1]) - 1894007588, 11) + iM7420else158;
        int iM7420else194 = m7420else(iM7420else157, 10);
        int iM7420else195 = m7420else(((iM7420else158 + m7418class(iM7420else193, iM7420else159, iM7420else194)) + this.f6163break[9]) - 1894007588, 12) + iM7420else160;
        int iM7420else196 = m7420else(iM7420else159, 10);
        int iM7420else197 = m7420else(((iM7420else160 + m7418class(iM7420else195, iM7420else193, iM7420else196)) + this.f6163break[11]) - 1894007588, 14) + iM7420else194;
        int iM7420else198 = m7420else(iM7420else193, 10);
        int iM7420else199 = m7420else(((iM7420else194 + m7418class(iM7420else197, iM7420else195, iM7420else198)) + this.f6163break[10]) - 1894007588, 15) + iM7420else196;
        int iM7420else200 = m7420else(iM7420else195, 10);
        int iM7420else201 = m7420else(((iM7420else196 + m7418class(iM7420else199, iM7420else197, iM7420else200)) + this.f6163break[0]) - 1894007588, 14) + iM7420else198;
        int iM7420else202 = m7420else(iM7420else197, 10);
        int iM7420else203 = m7420else(((iM7420else198 + m7418class(iM7420else201, iM7420else199, iM7420else202)) + this.f6163break[8]) - 1894007588, 15) + iM7420else200;
        int iM7420else204 = m7420else(iM7420else199, 10);
        int iM7420else205 = m7420else(((iM7420else200 + m7418class(iM7420else203, iM7420else201, iM7420else204)) + this.f6163break[12]) - 1894007588, 9) + iM7420else202;
        int iM7420else206 = m7420else(iM7420else201, 10);
        int iM7420else207 = m7420else(((iM7420else202 + m7418class(iM7420else205, iM7420else203, iM7420else206)) + this.f6163break[4]) - 1894007588, 8) + iM7420else204;
        int iM7420else208 = m7420else(iM7420else203, 10);
        int iM7420else209 = m7420else(((iM7420else204 + m7418class(iM7420else207, iM7420else205, iM7420else208)) + this.f6163break[13]) - 1894007588, 9) + iM7420else206;
        int iM7420else210 = m7420else(iM7420else205, 10);
        int iM7420else211 = m7420else(((iM7420else206 + m7418class(iM7420else209, iM7420else207, iM7420else210)) + this.f6163break[3]) - 1894007588, 14) + iM7420else208;
        int iM7420else212 = m7420else(iM7420else207, 10);
        int iM7420else213 = m7420else(((iM7420else208 + m7418class(iM7420else211, iM7420else209, iM7420else212)) + this.f6163break[7]) - 1894007588, 5) + iM7420else210;
        int iM7420else214 = m7420else(iM7420else209, 10);
        int iM7420else215 = m7420else(((iM7420else210 + m7418class(iM7420else213, iM7420else211, iM7420else214)) + this.f6163break[15]) - 1894007588, 6) + iM7420else212;
        int iM7420else216 = m7420else(iM7420else211, 10);
        int iM7420else217 = m7420else(((iM7420else212 + m7418class(iM7420else215, iM7420else213, iM7420else216)) + this.f6163break[14]) - 1894007588, 8) + iM7420else214;
        int iM7420else218 = m7420else(iM7420else213, 10);
        int iM7420else219 = m7420else(((iM7420else214 + m7418class(iM7420else217, iM7420else215, iM7420else218)) + this.f6163break[5]) - 1894007588, 6) + iM7420else216;
        int iM7420else220 = m7420else(iM7420else215, 10);
        int iM7420else221 = m7420else(((iM7420else216 + m7418class(iM7420else219, iM7420else217, iM7420else220)) + this.f6163break[6]) - 1894007588, 5) + iM7420else218;
        int iM7420else222 = m7420else(iM7420else217, 10);
        int iM7420else223 = m7420else(((iM7420else218 + m7418class(iM7420else221, iM7420else219, iM7420else222)) + this.f6163break[2]) - 1894007588, 12) + iM7420else220;
        int iM7420else224 = m7420else(iM7420else219, 10);
        int iM7420else225 = m7420else(iM7420else188 + m7416break(iM7420else191, iM7420else189, iM7420else192) + this.f6163break[8] + 2053994217, 15) + iM7420else190;
        int iM7420else226 = m7420else(iM7420else189, 10);
        int iM7420else227 = m7420else(iM7420else190 + m7416break(iM7420else225, iM7420else191, iM7420else226) + this.f6163break[6] + 2053994217, 5) + iM7420else192;
        int iM7420else228 = m7420else(iM7420else191, 10);
        int iM7420else229 = m7420else(iM7420else192 + m7416break(iM7420else227, iM7420else225, iM7420else228) + this.f6163break[4] + 2053994217, 8) + iM7420else226;
        int iM7420else230 = m7420else(iM7420else225, 10);
        int iM7420else231 = m7420else(iM7420else226 + m7416break(iM7420else229, iM7420else227, iM7420else230) + this.f6163break[1] + 2053994217, 11) + iM7420else228;
        int iM7420else232 = m7420else(iM7420else227, 10);
        int iM7420else233 = m7420else(iM7420else228 + m7416break(iM7420else231, iM7420else229, iM7420else232) + this.f6163break[3] + 2053994217, 14) + iM7420else230;
        int iM7420else234 = m7420else(iM7420else229, 10);
        int iM7420else235 = m7420else(iM7420else230 + m7416break(iM7420else233, iM7420else231, iM7420else234) + this.f6163break[11] + 2053994217, 14) + iM7420else232;
        int iM7420else236 = m7420else(iM7420else231, 10);
        int iM7420else237 = m7420else(iM7420else232 + m7416break(iM7420else235, iM7420else233, iM7420else236) + this.f6163break[15] + 2053994217, 6) + iM7420else234;
        int iM7420else238 = m7420else(iM7420else233, 10);
        int iM7420else239 = m7420else(iM7420else234 + m7416break(iM7420else237, iM7420else235, iM7420else238) + this.f6163break[0] + 2053994217, 14) + iM7420else236;
        int iM7420else240 = m7420else(iM7420else235, 10);
        int iM7420else241 = m7420else(iM7420else236 + m7416break(iM7420else239, iM7420else237, iM7420else240) + this.f6163break[5] + 2053994217, 6) + iM7420else238;
        int iM7420else242 = m7420else(iM7420else237, 10);
        int iM7420else243 = m7420else(iM7420else238 + m7416break(iM7420else241, iM7420else239, iM7420else242) + this.f6163break[12] + 2053994217, 9) + iM7420else240;
        int iM7420else244 = m7420else(iM7420else239, 10);
        int iM7420else245 = m7420else(iM7420else240 + m7416break(iM7420else243, iM7420else241, iM7420else244) + this.f6163break[2] + 2053994217, 12) + iM7420else242;
        int iM7420else246 = m7420else(iM7420else241, 10);
        int iM7420else247 = m7420else(iM7420else242 + m7416break(iM7420else245, iM7420else243, iM7420else246) + this.f6163break[13] + 2053994217, 9) + iM7420else244;
        int iM7420else248 = m7420else(iM7420else243, 10);
        int iM7420else249 = m7420else(iM7420else244 + m7416break(iM7420else247, iM7420else245, iM7420else248) + this.f6163break[9] + 2053994217, 12) + iM7420else246;
        int iM7420else250 = m7420else(iM7420else245, 10);
        int iM7420else251 = m7420else(iM7420else246 + m7416break(iM7420else249, iM7420else247, iM7420else250) + this.f6163break[7] + 2053994217, 5) + iM7420else248;
        int iM7420else252 = m7420else(iM7420else247, 10);
        int iM7420else253 = m7420else(iM7420else248 + m7416break(iM7420else251, iM7420else249, iM7420else252) + this.f6163break[10] + 2053994217, 15) + iM7420else250;
        int iM7420else254 = m7420else(iM7420else249, 10);
        int iM7420else255 = m7420else(iM7420else250 + m7416break(iM7420else253, iM7420else251, iM7420else254) + this.f6163break[14] + 2053994217, 8) + iM7420else252;
        int iM7420else256 = m7420else(iM7420else251, 10);
        int iM7420else257 = m7420else(((iM7420else220 + m7419const(iM7420else223, iM7420else221, iM7420else224)) + this.f6163break[4]) - 1454113458, 9) + iM7420else222;
        int iM7420else258 = m7420else(iM7420else221, 10);
        int iM7420else259 = m7420else(((iM7420else222 + m7419const(iM7420else257, iM7420else223, iM7420else258)) + this.f6163break[0]) - 1454113458, 15) + iM7420else224;
        int iM7420else260 = m7420else(iM7420else223, 10);
        int iM7420else261 = m7420else(((iM7420else224 + m7419const(iM7420else259, iM7420else257, iM7420else260)) + this.f6163break[5]) - 1454113458, 5) + iM7420else258;
        int iM7420else262 = m7420else(iM7420else257, 10);
        int iM7420else263 = m7420else(((iM7420else258 + m7419const(iM7420else261, iM7420else259, iM7420else262)) + this.f6163break[9]) - 1454113458, 11) + iM7420else260;
        int iM7420else264 = m7420else(iM7420else259, 10);
        int iM7420else265 = m7420else(((iM7420else260 + m7419const(iM7420else263, iM7420else261, iM7420else264)) + this.f6163break[7]) - 1454113458, 6) + iM7420else262;
        int iM7420else266 = m7420else(iM7420else261, 10);
        int iM7420else267 = m7420else(((iM7420else262 + m7419const(iM7420else265, iM7420else263, iM7420else266)) + this.f6163break[12]) - 1454113458, 8) + iM7420else264;
        int iM7420else268 = m7420else(iM7420else263, 10);
        int iM7420else269 = m7420else(((iM7420else264 + m7419const(iM7420else267, iM7420else265, iM7420else268)) + this.f6163break[2]) - 1454113458, 13) + iM7420else266;
        int iM7420else270 = m7420else(iM7420else265, 10);
        int iM7420else271 = m7420else(((iM7420else266 + m7419const(iM7420else269, iM7420else267, iM7420else270)) + this.f6163break[10]) - 1454113458, 12) + iM7420else268;
        int iM7420else272 = m7420else(iM7420else267, 10);
        int iM7420else273 = m7420else(((iM7420else268 + m7419const(iM7420else271, iM7420else269, iM7420else272)) + this.f6163break[14]) - 1454113458, 5) + iM7420else270;
        int iM7420else274 = m7420else(iM7420else269, 10);
        int iM7420else275 = m7420else(((iM7420else270 + m7419const(iM7420else273, iM7420else271, iM7420else274)) + this.f6163break[1]) - 1454113458, 12) + iM7420else272;
        int iM7420else276 = m7420else(iM7420else271, 10);
        int iM7420else277 = m7420else(((iM7420else272 + m7419const(iM7420else275, iM7420else273, iM7420else276)) + this.f6163break[3]) - 1454113458, 13) + iM7420else274;
        int iM7420else278 = m7420else(iM7420else273, 10);
        int iM7420else279 = m7420else(((iM7420else274 + m7419const(iM7420else277, iM7420else275, iM7420else278)) + this.f6163break[8]) - 1454113458, 14) + iM7420else276;
        int iM7420else280 = m7420else(iM7420else275, 10);
        int iM7420else281 = m7420else(((iM7420else276 + m7419const(iM7420else279, iM7420else277, iM7420else280)) + this.f6163break[11]) - 1454113458, 11) + iM7420else278;
        int iM7420else282 = m7420else(iM7420else277, 10);
        int iM7420else283 = m7420else(((iM7420else278 + m7419const(iM7420else281, iM7420else279, iM7420else282)) + this.f6163break[6]) - 1454113458, 8) + iM7420else280;
        int iM7420else284 = m7420else(iM7420else279, 10);
        int iM7420else285 = m7420else(((iM7420else280 + m7419const(iM7420else283, iM7420else281, iM7420else284)) + this.f6163break[15]) - 1454113458, 5) + iM7420else282;
        int iM7420else286 = m7420else(iM7420else281, 10);
        int iM7420else287 = m7420else(((iM7420else282 + m7419const(iM7420else285, iM7420else283, iM7420else286)) + this.f6163break[13]) - 1454113458, 6) + iM7420else284;
        int iM7420else288 = m7420else(iM7420else283, 10);
        int iM7420else289 = m7420else(iM7420else252 + m7423this(iM7420else255, iM7420else253, iM7420else256) + this.f6163break[12], 8) + iM7420else254;
        int iM7420else290 = m7420else(iM7420else253, 10);
        int iM7420else291 = m7420else(iM7420else254 + m7423this(iM7420else289, iM7420else255, iM7420else290) + this.f6163break[15], 5) + iM7420else256;
        int iM7420else292 = m7420else(iM7420else255, 10);
        int iM7420else293 = m7420else(iM7420else256 + m7423this(iM7420else291, iM7420else289, iM7420else292) + this.f6163break[10], 12) + iM7420else290;
        int iM7420else294 = m7420else(iM7420else289, 10);
        int iM7420else295 = m7420else(iM7420else290 + m7423this(iM7420else293, iM7420else291, iM7420else294) + this.f6163break[4], 9) + iM7420else292;
        int iM7420else296 = m7420else(iM7420else291, 10);
        int iM7420else297 = m7420else(iM7420else292 + m7423this(iM7420else295, iM7420else293, iM7420else296) + this.f6163break[1], 12) + iM7420else294;
        int iM7420else298 = m7420else(iM7420else293, 10);
        int iM7420else299 = m7420else(iM7420else294 + m7423this(iM7420else297, iM7420else295, iM7420else298) + this.f6163break[5], 5) + iM7420else296;
        int iM7420else300 = m7420else(iM7420else295, 10);
        int iM7420else301 = m7420else(iM7420else296 + m7423this(iM7420else299, iM7420else297, iM7420else300) + this.f6163break[8], 14) + iM7420else298;
        int iM7420else302 = m7420else(iM7420else297, 10);
        int iM7420else303 = m7420else(iM7420else298 + m7423this(iM7420else301, iM7420else299, iM7420else302) + this.f6163break[7], 6) + iM7420else300;
        int iM7420else304 = m7420else(iM7420else299, 10);
        int iM7420else305 = m7420else(iM7420else300 + m7423this(iM7420else303, iM7420else301, iM7420else304) + this.f6163break[6], 8) + iM7420else302;
        int iM7420else306 = m7420else(iM7420else301, 10);
        int iM7420else307 = m7420else(iM7420else302 + m7423this(iM7420else305, iM7420else303, iM7420else306) + this.f6163break[2], 13) + iM7420else304;
        int iM7420else308 = m7420else(iM7420else303, 10);
        int iM7420else309 = m7420else(iM7420else304 + m7423this(iM7420else307, iM7420else305, iM7420else308) + this.f6163break[13], 6) + iM7420else306;
        int iM7420else310 = m7420else(iM7420else305, 10);
        int iM7420else311 = m7420else(iM7420else306 + m7423this(iM7420else309, iM7420else307, iM7420else310) + this.f6163break[14], 5) + iM7420else308;
        int iM7420else312 = m7420else(iM7420else307, 10);
        int iM7420else313 = m7420else(iM7420else308 + m7423this(iM7420else311, iM7420else309, iM7420else312) + this.f6163break[0], 15) + iM7420else310;
        int iM7420else314 = m7420else(iM7420else309, 10);
        int iM7420else315 = m7420else(iM7420else310 + m7423this(iM7420else313, iM7420else311, iM7420else314) + this.f6163break[3], 13) + iM7420else312;
        int iM7420else316 = m7420else(iM7420else311, 10);
        int iM7420else317 = m7420else(iM7420else312 + m7423this(iM7420else315, iM7420else313, iM7420else316) + this.f6163break[9], 11) + iM7420else314;
        int iM7420else318 = m7420else(iM7420else313, 10);
        int iM7420else319 = m7420else(iM7420else314 + m7423this(iM7420else317, iM7420else315, iM7420else318) + this.f6163break[11], 11) + iM7420else316;
        int iM7420else320 = m7420else(iM7420else315, 10) + iM7420else285 + this.f6164case;
        this.f6164case = this.f6166else + iM7420else288 + iM7420else318;
        this.f6166else = this.f6167goto + iM7420else286 + iM7420else316;
        this.f6167goto = this.f6168this + iM7420else284 + iM7420else319;
        this.f6168this = this.f6169try + iM7420else287 + iM7420else317;
        this.f6169try = iM7420else320;
        this.f6165catch = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f6163break;
            if (i6 == iArr.length) {
                return;
            }
            iArr[i6] = 0;
            i6++;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f6169try = 1732584193;
        this.f6164case = -271733879;
        this.f6166else = -1732584194;
        this.f6167goto = 271733878;
        this.f6168this = -1009589776;
        this.f6165catch = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f6163break;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m7422goto((sj1) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f6165catch > 14) {
            mo4746new();
        }
        int[] iArr = this.f6163break;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }
}
