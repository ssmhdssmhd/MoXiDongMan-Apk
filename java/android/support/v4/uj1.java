package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class uj1 extends rg0 {

    /* renamed from: while, reason: not valid java name */
    private static final int f6901while = 40;

    /* renamed from: break, reason: not valid java name */
    private int f6902break;

    /* renamed from: case, reason: not valid java name */
    private int f6903case;

    /* renamed from: catch, reason: not valid java name */
    private int f6904catch;

    /* renamed from: class, reason: not valid java name */
    private int f6905class;

    /* renamed from: const, reason: not valid java name */
    private int f6906const;

    /* renamed from: else, reason: not valid java name */
    private int f6907else;

    /* renamed from: final, reason: not valid java name */
    private int f6908final;

    /* renamed from: goto, reason: not valid java name */
    private int f6909goto;

    /* renamed from: super, reason: not valid java name */
    private int[] f6910super;

    /* renamed from: this, reason: not valid java name */
    private int f6911this;

    /* renamed from: throw, reason: not valid java name */
    private int f6912throw;

    /* renamed from: try, reason: not valid java name */
    private int f6913try;

    public uj1() {
        this.f6910super = new int[16];
        reset();
    }

    public uj1(uj1 uj1Var) {
        super(uj1Var);
        this.f6910super = new int[16];
        m8467goto(uj1Var);
    }

    /* renamed from: break, reason: not valid java name */
    private int m8461break(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m8462catch(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: class, reason: not valid java name */
    private int m8463class(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: const, reason: not valid java name */
    private int m8464const(int i, int i2, int i3) {
        return i ^ (i2 | (i3 ^ (-1)));
    }

    /* renamed from: else, reason: not valid java name */
    private int m8465else(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: final, reason: not valid java name */
    private void m8466final(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m8467goto(uj1 uj1Var) {
        super.m6968do(uj1Var);
        this.f6913try = uj1Var.f6913try;
        this.f6903case = uj1Var.f6903case;
        this.f6907else = uj1Var.f6907else;
        this.f6909goto = uj1Var.f6909goto;
        this.f6911this = uj1Var.f6911this;
        this.f6902break = uj1Var.f6902break;
        this.f6904catch = uj1Var.f6904catch;
        this.f6905class = uj1Var.f6905class;
        this.f6906const = uj1Var.f6906const;
        this.f6908final = uj1Var.f6908final;
        int[] iArr = uj1Var.f6910super;
        System.arraycopy(iArr, 0, this.f6910super, 0, iArr.length);
        this.f6912throw = uj1Var.f6912throw;
    }

    /* renamed from: this, reason: not valid java name */
    private int m8468this(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int[] iArr = this.f6910super;
        int i2 = this.f6912throw;
        int i3 = i2 + 1;
        this.f6912throw = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new uj1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        m8466final(this.f6913try, bArr, i);
        m8466final(this.f6903case, bArr, i + 4);
        m8466final(this.f6907else, bArr, i + 8);
        m8466final(this.f6909goto, bArr, i + 12);
        m8466final(this.f6911this, bArr, i + 16);
        m8466final(this.f6902break, bArr, i + 20);
        m8466final(this.f6904catch, bArr, i + 24);
        m8466final(this.f6905class, bArr, i + 28);
        m8466final(this.f6906const, bArr, i + 32);
        m8466final(this.f6908final, bArr, i + 36);
        reset();
        return 40;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD320";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 40;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        int i = this.f6913try;
        int i2 = this.f6903case;
        int i3 = this.f6907else;
        int i4 = this.f6909goto;
        int i5 = this.f6911this;
        int i6 = this.f6902break;
        int i7 = this.f6904catch;
        int i8 = this.f6905class;
        int i9 = this.f6906const;
        int i10 = this.f6908final;
        int iM8465else = m8465else(i + m8468this(i2, i3, i4) + this.f6910super[0], 11) + i5;
        int iM8465else2 = m8465else(i3, 10);
        int iM8465else3 = m8465else(i5 + m8468this(iM8465else, i2, iM8465else2) + this.f6910super[1], 14) + i4;
        int iM8465else4 = m8465else(i2, 10);
        int iM8465else5 = m8465else(i4 + m8468this(iM8465else3, iM8465else, iM8465else4) + this.f6910super[2], 15) + iM8465else2;
        int iM8465else6 = m8465else(iM8465else, 10);
        int iM8465else7 = m8465else(iM8465else2 + m8468this(iM8465else5, iM8465else3, iM8465else6) + this.f6910super[3], 12) + iM8465else4;
        int iM8465else8 = m8465else(iM8465else3, 10);
        int iM8465else9 = m8465else(iM8465else4 + m8468this(iM8465else7, iM8465else5, iM8465else8) + this.f6910super[4], 5) + iM8465else6;
        int iM8465else10 = m8465else(iM8465else5, 10);
        int iM8465else11 = m8465else(iM8465else6 + m8468this(iM8465else9, iM8465else7, iM8465else10) + this.f6910super[5], 8) + iM8465else8;
        int iM8465else12 = m8465else(iM8465else7, 10);
        int iM8465else13 = m8465else(iM8465else8 + m8468this(iM8465else11, iM8465else9, iM8465else12) + this.f6910super[6], 7) + iM8465else10;
        int iM8465else14 = m8465else(iM8465else9, 10);
        int iM8465else15 = m8465else(iM8465else10 + m8468this(iM8465else13, iM8465else11, iM8465else14) + this.f6910super[7], 9) + iM8465else12;
        int iM8465else16 = m8465else(iM8465else11, 10);
        int iM8465else17 = m8465else(iM8465else12 + m8468this(iM8465else15, iM8465else13, iM8465else16) + this.f6910super[8], 11) + iM8465else14;
        int iM8465else18 = m8465else(iM8465else13, 10);
        int iM8465else19 = m8465else(iM8465else14 + m8468this(iM8465else17, iM8465else15, iM8465else18) + this.f6910super[9], 13) + iM8465else16;
        int iM8465else20 = m8465else(iM8465else15, 10);
        int iM8465else21 = m8465else(iM8465else16 + m8468this(iM8465else19, iM8465else17, iM8465else20) + this.f6910super[10], 14) + iM8465else18;
        int iM8465else22 = m8465else(iM8465else17, 10);
        int iM8465else23 = m8465else(iM8465else18 + m8468this(iM8465else21, iM8465else19, iM8465else22) + this.f6910super[11], 15) + iM8465else20;
        int iM8465else24 = m8465else(iM8465else19, 10);
        int iM8465else25 = m8465else(iM8465else20 + m8468this(iM8465else23, iM8465else21, iM8465else24) + this.f6910super[12], 6) + iM8465else22;
        int iM8465else26 = m8465else(iM8465else21, 10);
        int iM8465else27 = m8465else(iM8465else22 + m8468this(iM8465else25, iM8465else23, iM8465else26) + this.f6910super[13], 7) + iM8465else24;
        int iM8465else28 = m8465else(iM8465else23, 10);
        int iM8465else29 = m8465else(iM8465else24 + m8468this(iM8465else27, iM8465else25, iM8465else28) + this.f6910super[14], 9) + iM8465else26;
        int iM8465else30 = m8465else(iM8465else25, 10);
        int iM8465else31 = m8465else(iM8465else26 + m8468this(iM8465else29, iM8465else27, iM8465else30) + this.f6910super[15], 8) + iM8465else28;
        int iM8465else32 = m8465else(iM8465else27, 10);
        int iM8465else33 = m8465else(i6 + m8464const(i7, i8, i9) + this.f6910super[5] + 1352829926, 8) + i10;
        int iM8465else34 = m8465else(i8, 10);
        int iM8465else35 = m8465else(i10 + m8464const(iM8465else33, i7, iM8465else34) + this.f6910super[14] + 1352829926, 9) + i9;
        int iM8465else36 = m8465else(i7, 10);
        int iM8465else37 = m8465else(i9 + m8464const(iM8465else35, iM8465else33, iM8465else36) + this.f6910super[7] + 1352829926, 9) + iM8465else34;
        int iM8465else38 = m8465else(iM8465else33, 10);
        int iM8465else39 = m8465else(iM8465else34 + m8464const(iM8465else37, iM8465else35, iM8465else38) + this.f6910super[0] + 1352829926, 11) + iM8465else36;
        int iM8465else40 = m8465else(iM8465else35, 10);
        int iM8465else41 = m8465else(iM8465else36 + m8464const(iM8465else39, iM8465else37, iM8465else40) + this.f6910super[9] + 1352829926, 13) + iM8465else38;
        int iM8465else42 = m8465else(iM8465else37, 10);
        int iM8465else43 = m8465else(iM8465else38 + m8464const(iM8465else41, iM8465else39, iM8465else42) + this.f6910super[2] + 1352829926, 15) + iM8465else40;
        int iM8465else44 = m8465else(iM8465else39, 10);
        int iM8465else45 = m8465else(iM8465else40 + m8464const(iM8465else43, iM8465else41, iM8465else44) + this.f6910super[11] + 1352829926, 15) + iM8465else42;
        int iM8465else46 = m8465else(iM8465else41, 10);
        int iM8465else47 = m8465else(iM8465else42 + m8464const(iM8465else45, iM8465else43, iM8465else46) + this.f6910super[4] + 1352829926, 5) + iM8465else44;
        int iM8465else48 = m8465else(iM8465else43, 10);
        int iM8465else49 = m8465else(iM8465else44 + m8464const(iM8465else47, iM8465else45, iM8465else48) + this.f6910super[13] + 1352829926, 7) + iM8465else46;
        int iM8465else50 = m8465else(iM8465else45, 10);
        int iM8465else51 = m8465else(iM8465else46 + m8464const(iM8465else49, iM8465else47, iM8465else50) + this.f6910super[6] + 1352829926, 7) + iM8465else48;
        int iM8465else52 = m8465else(iM8465else47, 10);
        int iM8465else53 = m8465else(iM8465else48 + m8464const(iM8465else51, iM8465else49, iM8465else52) + this.f6910super[15] + 1352829926, 8) + iM8465else50;
        int iM8465else54 = m8465else(iM8465else49, 10);
        int iM8465else55 = m8465else(iM8465else50 + m8464const(iM8465else53, iM8465else51, iM8465else54) + this.f6910super[8] + 1352829926, 11) + iM8465else52;
        int iM8465else56 = m8465else(iM8465else51, 10);
        int iM8465else57 = m8465else(iM8465else52 + m8464const(iM8465else55, iM8465else53, iM8465else56) + this.f6910super[1] + 1352829926, 14) + iM8465else54;
        int iM8465else58 = m8465else(iM8465else53, 10);
        int iM8465else59 = m8465else(iM8465else54 + m8464const(iM8465else57, iM8465else55, iM8465else58) + this.f6910super[10] + 1352829926, 14) + iM8465else56;
        int iM8465else60 = m8465else(iM8465else55, 10);
        int iM8465else61 = m8465else(iM8465else56 + m8464const(iM8465else59, iM8465else57, iM8465else60) + this.f6910super[3] + 1352829926, 12) + iM8465else58;
        int iM8465else62 = m8465else(iM8465else57, 10);
        int iM8465else63 = m8465else(iM8465else58 + m8464const(iM8465else61, iM8465else59, iM8465else62) + this.f6910super[12] + 1352829926, 6) + iM8465else60;
        int iM8465else64 = m8465else(iM8465else59, 10);
        int iM8465else65 = m8465else(iM8465else28 + m8461break(iM8465else63, iM8465else29, iM8465else32) + this.f6910super[7] + 1518500249, 7) + iM8465else30;
        int iM8465else66 = m8465else(iM8465else29, 10);
        int iM8465else67 = m8465else(iM8465else30 + m8461break(iM8465else65, iM8465else63, iM8465else66) + this.f6910super[4] + 1518500249, 6) + iM8465else32;
        int iM8465else68 = m8465else(iM8465else63, 10);
        int iM8465else69 = m8465else(iM8465else32 + m8461break(iM8465else67, iM8465else65, iM8465else68) + this.f6910super[13] + 1518500249, 8) + iM8465else66;
        int iM8465else70 = m8465else(iM8465else65, 10);
        int iM8465else71 = m8465else(iM8465else66 + m8461break(iM8465else69, iM8465else67, iM8465else70) + this.f6910super[1] + 1518500249, 13) + iM8465else68;
        int iM8465else72 = m8465else(iM8465else67, 10);
        int iM8465else73 = m8465else(iM8465else68 + m8461break(iM8465else71, iM8465else69, iM8465else72) + this.f6910super[10] + 1518500249, 11) + iM8465else70;
        int iM8465else74 = m8465else(iM8465else69, 10);
        int iM8465else75 = m8465else(iM8465else70 + m8461break(iM8465else73, iM8465else71, iM8465else74) + this.f6910super[6] + 1518500249, 9) + iM8465else72;
        int iM8465else76 = m8465else(iM8465else71, 10);
        int iM8465else77 = m8465else(iM8465else72 + m8461break(iM8465else75, iM8465else73, iM8465else76) + this.f6910super[15] + 1518500249, 7) + iM8465else74;
        int iM8465else78 = m8465else(iM8465else73, 10);
        int iM8465else79 = m8465else(iM8465else74 + m8461break(iM8465else77, iM8465else75, iM8465else78) + this.f6910super[3] + 1518500249, 15) + iM8465else76;
        int iM8465else80 = m8465else(iM8465else75, 10);
        int iM8465else81 = m8465else(iM8465else76 + m8461break(iM8465else79, iM8465else77, iM8465else80) + this.f6910super[12] + 1518500249, 7) + iM8465else78;
        int iM8465else82 = m8465else(iM8465else77, 10);
        int iM8465else83 = m8465else(iM8465else78 + m8461break(iM8465else81, iM8465else79, iM8465else82) + this.f6910super[0] + 1518500249, 12) + iM8465else80;
        int iM8465else84 = m8465else(iM8465else79, 10);
        int iM8465else85 = m8465else(iM8465else80 + m8461break(iM8465else83, iM8465else81, iM8465else84) + this.f6910super[9] + 1518500249, 15) + iM8465else82;
        int iM8465else86 = m8465else(iM8465else81, 10);
        int iM8465else87 = m8465else(iM8465else82 + m8461break(iM8465else85, iM8465else83, iM8465else86) + this.f6910super[5] + 1518500249, 9) + iM8465else84;
        int iM8465else88 = m8465else(iM8465else83, 10);
        int iM8465else89 = m8465else(iM8465else84 + m8461break(iM8465else87, iM8465else85, iM8465else88) + this.f6910super[2] + 1518500249, 11) + iM8465else86;
        int iM8465else90 = m8465else(iM8465else85, 10);
        int iM8465else91 = m8465else(iM8465else86 + m8461break(iM8465else89, iM8465else87, iM8465else90) + this.f6910super[14] + 1518500249, 7) + iM8465else88;
        int iM8465else92 = m8465else(iM8465else87, 10);
        int iM8465else93 = m8465else(iM8465else88 + m8461break(iM8465else91, iM8465else89, iM8465else92) + this.f6910super[11] + 1518500249, 13) + iM8465else90;
        int iM8465else94 = m8465else(iM8465else89, 10);
        int iM8465else95 = m8465else(iM8465else90 + m8461break(iM8465else93, iM8465else91, iM8465else94) + this.f6910super[8] + 1518500249, 12) + iM8465else92;
        int iM8465else96 = m8465else(iM8465else91, 10);
        int iM8465else97 = m8465else(iM8465else60 + m8463class(iM8465else31, iM8465else61, iM8465else64) + this.f6910super[6] + 1548603684, 9) + iM8465else62;
        int iM8465else98 = m8465else(iM8465else61, 10);
        int iM8465else99 = m8465else(iM8465else62 + m8463class(iM8465else97, iM8465else31, iM8465else98) + this.f6910super[11] + 1548603684, 13) + iM8465else64;
        int iM8465else100 = m8465else(iM8465else31, 10);
        int iM8465else101 = m8465else(iM8465else64 + m8463class(iM8465else99, iM8465else97, iM8465else100) + this.f6910super[3] + 1548603684, 15) + iM8465else98;
        int iM8465else102 = m8465else(iM8465else97, 10);
        int iM8465else103 = m8465else(iM8465else98 + m8463class(iM8465else101, iM8465else99, iM8465else102) + this.f6910super[7] + 1548603684, 7) + iM8465else100;
        int iM8465else104 = m8465else(iM8465else99, 10);
        int iM8465else105 = m8465else(iM8465else100 + m8463class(iM8465else103, iM8465else101, iM8465else104) + this.f6910super[0] + 1548603684, 12) + iM8465else102;
        int iM8465else106 = m8465else(iM8465else101, 10);
        int iM8465else107 = m8465else(iM8465else102 + m8463class(iM8465else105, iM8465else103, iM8465else106) + this.f6910super[13] + 1548603684, 8) + iM8465else104;
        int iM8465else108 = m8465else(iM8465else103, 10);
        int iM8465else109 = m8465else(iM8465else104 + m8463class(iM8465else107, iM8465else105, iM8465else108) + this.f6910super[5] + 1548603684, 9) + iM8465else106;
        int iM8465else110 = m8465else(iM8465else105, 10);
        int iM8465else111 = m8465else(iM8465else106 + m8463class(iM8465else109, iM8465else107, iM8465else110) + this.f6910super[10] + 1548603684, 11) + iM8465else108;
        int iM8465else112 = m8465else(iM8465else107, 10);
        int iM8465else113 = m8465else(iM8465else108 + m8463class(iM8465else111, iM8465else109, iM8465else112) + this.f6910super[14] + 1548603684, 7) + iM8465else110;
        int iM8465else114 = m8465else(iM8465else109, 10);
        int iM8465else115 = m8465else(iM8465else110 + m8463class(iM8465else113, iM8465else111, iM8465else114) + this.f6910super[15] + 1548603684, 7) + iM8465else112;
        int iM8465else116 = m8465else(iM8465else111, 10);
        int iM8465else117 = m8465else(iM8465else112 + m8463class(iM8465else115, iM8465else113, iM8465else116) + this.f6910super[8] + 1548603684, 12) + iM8465else114;
        int iM8465else118 = m8465else(iM8465else113, 10);
        int iM8465else119 = m8465else(iM8465else114 + m8463class(iM8465else117, iM8465else115, iM8465else118) + this.f6910super[12] + 1548603684, 7) + iM8465else116;
        int iM8465else120 = m8465else(iM8465else115, 10);
        int iM8465else121 = m8465else(iM8465else116 + m8463class(iM8465else119, iM8465else117, iM8465else120) + this.f6910super[4] + 1548603684, 6) + iM8465else118;
        int iM8465else122 = m8465else(iM8465else117, 10);
        int iM8465else123 = m8465else(iM8465else118 + m8463class(iM8465else121, iM8465else119, iM8465else122) + this.f6910super[9] + 1548603684, 15) + iM8465else120;
        int iM8465else124 = m8465else(iM8465else119, 10);
        int iM8465else125 = m8465else(iM8465else120 + m8463class(iM8465else123, iM8465else121, iM8465else124) + this.f6910super[1] + 1548603684, 13) + iM8465else122;
        int iM8465else126 = m8465else(iM8465else121, 10);
        int iM8465else127 = m8465else(iM8465else122 + m8463class(iM8465else125, iM8465else123, iM8465else126) + this.f6910super[2] + 1548603684, 11) + iM8465else124;
        int iM8465else128 = m8465else(iM8465else123, 10);
        int iM8465else129 = m8465else(iM8465else92 + m8462catch(iM8465else95, iM8465else93, iM8465else128) + this.f6910super[3] + 1859775393, 11) + iM8465else94;
        int iM8465else130 = m8465else(iM8465else93, 10);
        int iM8465else131 = m8465else(iM8465else94 + m8462catch(iM8465else129, iM8465else95, iM8465else130) + this.f6910super[10] + 1859775393, 13) + iM8465else128;
        int iM8465else132 = m8465else(iM8465else95, 10);
        int iM8465else133 = m8465else(iM8465else128 + m8462catch(iM8465else131, iM8465else129, iM8465else132) + this.f6910super[14] + 1859775393, 6) + iM8465else130;
        int iM8465else134 = m8465else(iM8465else129, 10);
        int iM8465else135 = m8465else(iM8465else130 + m8462catch(iM8465else133, iM8465else131, iM8465else134) + this.f6910super[4] + 1859775393, 7) + iM8465else132;
        int iM8465else136 = m8465else(iM8465else131, 10);
        int iM8465else137 = m8465else(iM8465else132 + m8462catch(iM8465else135, iM8465else133, iM8465else136) + this.f6910super[9] + 1859775393, 14) + iM8465else134;
        int iM8465else138 = m8465else(iM8465else133, 10);
        int iM8465else139 = m8465else(iM8465else134 + m8462catch(iM8465else137, iM8465else135, iM8465else138) + this.f6910super[15] + 1859775393, 9) + iM8465else136;
        int iM8465else140 = m8465else(iM8465else135, 10);
        int iM8465else141 = m8465else(iM8465else136 + m8462catch(iM8465else139, iM8465else137, iM8465else140) + this.f6910super[8] + 1859775393, 13) + iM8465else138;
        int iM8465else142 = m8465else(iM8465else137, 10);
        int iM8465else143 = m8465else(iM8465else138 + m8462catch(iM8465else141, iM8465else139, iM8465else142) + this.f6910super[1] + 1859775393, 15) + iM8465else140;
        int iM8465else144 = m8465else(iM8465else139, 10);
        int iM8465else145 = m8465else(iM8465else140 + m8462catch(iM8465else143, iM8465else141, iM8465else144) + this.f6910super[2] + 1859775393, 14) + iM8465else142;
        int iM8465else146 = m8465else(iM8465else141, 10);
        int iM8465else147 = m8465else(iM8465else142 + m8462catch(iM8465else145, iM8465else143, iM8465else146) + this.f6910super[7] + 1859775393, 8) + iM8465else144;
        int iM8465else148 = m8465else(iM8465else143, 10);
        int iM8465else149 = m8465else(iM8465else144 + m8462catch(iM8465else147, iM8465else145, iM8465else148) + this.f6910super[0] + 1859775393, 13) + iM8465else146;
        int iM8465else150 = m8465else(iM8465else145, 10);
        int iM8465else151 = m8465else(iM8465else146 + m8462catch(iM8465else149, iM8465else147, iM8465else150) + this.f6910super[6] + 1859775393, 6) + iM8465else148;
        int iM8465else152 = m8465else(iM8465else147, 10);
        int iM8465else153 = m8465else(iM8465else148 + m8462catch(iM8465else151, iM8465else149, iM8465else152) + this.f6910super[13] + 1859775393, 5) + iM8465else150;
        int iM8465else154 = m8465else(iM8465else149, 10);
        int iM8465else155 = m8465else(iM8465else150 + m8462catch(iM8465else153, iM8465else151, iM8465else154) + this.f6910super[11] + 1859775393, 12) + iM8465else152;
        int iM8465else156 = m8465else(iM8465else151, 10);
        int iM8465else157 = m8465else(iM8465else152 + m8462catch(iM8465else155, iM8465else153, iM8465else156) + this.f6910super[5] + 1859775393, 7) + iM8465else154;
        int iM8465else158 = m8465else(iM8465else153, 10);
        int iM8465else159 = m8465else(iM8465else154 + m8462catch(iM8465else157, iM8465else155, iM8465else158) + this.f6910super[12] + 1859775393, 5) + iM8465else156;
        int iM8465else160 = m8465else(iM8465else155, 10);
        int iM8465else161 = m8465else(iM8465else124 + m8462catch(iM8465else127, iM8465else125, iM8465else96) + this.f6910super[15] + 1836072691, 9) + iM8465else126;
        int iM8465else162 = m8465else(iM8465else125, 10);
        int iM8465else163 = m8465else(iM8465else126 + m8462catch(iM8465else161, iM8465else127, iM8465else162) + this.f6910super[5] + 1836072691, 7) + iM8465else96;
        int iM8465else164 = m8465else(iM8465else127, 10);
        int iM8465else165 = m8465else(iM8465else96 + m8462catch(iM8465else163, iM8465else161, iM8465else164) + this.f6910super[1] + 1836072691, 15) + iM8465else162;
        int iM8465else166 = m8465else(iM8465else161, 10);
        int iM8465else167 = m8465else(iM8465else162 + m8462catch(iM8465else165, iM8465else163, iM8465else166) + this.f6910super[3] + 1836072691, 11) + iM8465else164;
        int iM8465else168 = m8465else(iM8465else163, 10);
        int iM8465else169 = m8465else(iM8465else164 + m8462catch(iM8465else167, iM8465else165, iM8465else168) + this.f6910super[7] + 1836072691, 8) + iM8465else166;
        int iM8465else170 = m8465else(iM8465else165, 10);
        int iM8465else171 = m8465else(iM8465else166 + m8462catch(iM8465else169, iM8465else167, iM8465else170) + this.f6910super[14] + 1836072691, 6) + iM8465else168;
        int iM8465else172 = m8465else(iM8465else167, 10);
        int iM8465else173 = m8465else(iM8465else168 + m8462catch(iM8465else171, iM8465else169, iM8465else172) + this.f6910super[6] + 1836072691, 6) + iM8465else170;
        int iM8465else174 = m8465else(iM8465else169, 10);
        int iM8465else175 = m8465else(iM8465else170 + m8462catch(iM8465else173, iM8465else171, iM8465else174) + this.f6910super[9] + 1836072691, 14) + iM8465else172;
        int iM8465else176 = m8465else(iM8465else171, 10);
        int iM8465else177 = m8465else(iM8465else172 + m8462catch(iM8465else175, iM8465else173, iM8465else176) + this.f6910super[11] + 1836072691, 12) + iM8465else174;
        int iM8465else178 = m8465else(iM8465else173, 10);
        int iM8465else179 = m8465else(iM8465else174 + m8462catch(iM8465else177, iM8465else175, iM8465else178) + this.f6910super[8] + 1836072691, 13) + iM8465else176;
        int iM8465else180 = m8465else(iM8465else175, 10);
        int iM8465else181 = m8465else(iM8465else176 + m8462catch(iM8465else179, iM8465else177, iM8465else180) + this.f6910super[12] + 1836072691, 5) + iM8465else178;
        int iM8465else182 = m8465else(iM8465else177, 10);
        int iM8465else183 = m8465else(iM8465else178 + m8462catch(iM8465else181, iM8465else179, iM8465else182) + this.f6910super[2] + 1836072691, 14) + iM8465else180;
        int iM8465else184 = m8465else(iM8465else179, 10);
        int iM8465else185 = m8465else(iM8465else180 + m8462catch(iM8465else183, iM8465else181, iM8465else184) + this.f6910super[10] + 1836072691, 13) + iM8465else182;
        int iM8465else186 = m8465else(iM8465else181, 10);
        int iM8465else187 = m8465else(iM8465else182 + m8462catch(iM8465else185, iM8465else183, iM8465else186) + this.f6910super[0] + 1836072691, 13) + iM8465else184;
        int iM8465else188 = m8465else(iM8465else183, 10);
        int iM8465else189 = m8465else(iM8465else184 + m8462catch(iM8465else187, iM8465else185, iM8465else188) + this.f6910super[4] + 1836072691, 7) + iM8465else186;
        int iM8465else190 = m8465else(iM8465else185, 10);
        int iM8465else191 = m8465else(iM8465else186 + m8462catch(iM8465else189, iM8465else187, iM8465else190) + this.f6910super[13] + 1836072691, 5) + iM8465else188;
        int iM8465else192 = m8465else(iM8465else187, 10);
        int iM8465else193 = m8465else(((iM8465else188 + m8463class(iM8465else159, iM8465else157, iM8465else160)) + this.f6910super[1]) - 1894007588, 11) + iM8465else158;
        int iM8465else194 = m8465else(iM8465else157, 10);
        int iM8465else195 = m8465else(((iM8465else158 + m8463class(iM8465else193, iM8465else159, iM8465else194)) + this.f6910super[9]) - 1894007588, 12) + iM8465else160;
        int iM8465else196 = m8465else(iM8465else159, 10);
        int iM8465else197 = m8465else(((iM8465else160 + m8463class(iM8465else195, iM8465else193, iM8465else196)) + this.f6910super[11]) - 1894007588, 14) + iM8465else194;
        int iM8465else198 = m8465else(iM8465else193, 10);
        int iM8465else199 = m8465else(((iM8465else194 + m8463class(iM8465else197, iM8465else195, iM8465else198)) + this.f6910super[10]) - 1894007588, 15) + iM8465else196;
        int iM8465else200 = m8465else(iM8465else195, 10);
        int iM8465else201 = m8465else(((iM8465else196 + m8463class(iM8465else199, iM8465else197, iM8465else200)) + this.f6910super[0]) - 1894007588, 14) + iM8465else198;
        int iM8465else202 = m8465else(iM8465else197, 10);
        int iM8465else203 = m8465else(((iM8465else198 + m8463class(iM8465else201, iM8465else199, iM8465else202)) + this.f6910super[8]) - 1894007588, 15) + iM8465else200;
        int iM8465else204 = m8465else(iM8465else199, 10);
        int iM8465else205 = m8465else(((iM8465else200 + m8463class(iM8465else203, iM8465else201, iM8465else204)) + this.f6910super[12]) - 1894007588, 9) + iM8465else202;
        int iM8465else206 = m8465else(iM8465else201, 10);
        int iM8465else207 = m8465else(((iM8465else202 + m8463class(iM8465else205, iM8465else203, iM8465else206)) + this.f6910super[4]) - 1894007588, 8) + iM8465else204;
        int iM8465else208 = m8465else(iM8465else203, 10);
        int iM8465else209 = m8465else(((iM8465else204 + m8463class(iM8465else207, iM8465else205, iM8465else208)) + this.f6910super[13]) - 1894007588, 9) + iM8465else206;
        int iM8465else210 = m8465else(iM8465else205, 10);
        int iM8465else211 = m8465else(((iM8465else206 + m8463class(iM8465else209, iM8465else207, iM8465else210)) + this.f6910super[3]) - 1894007588, 14) + iM8465else208;
        int iM8465else212 = m8465else(iM8465else207, 10);
        int iM8465else213 = m8465else(((iM8465else208 + m8463class(iM8465else211, iM8465else209, iM8465else212)) + this.f6910super[7]) - 1894007588, 5) + iM8465else210;
        int iM8465else214 = m8465else(iM8465else209, 10);
        int iM8465else215 = m8465else(((iM8465else210 + m8463class(iM8465else213, iM8465else211, iM8465else214)) + this.f6910super[15]) - 1894007588, 6) + iM8465else212;
        int iM8465else216 = m8465else(iM8465else211, 10);
        int iM8465else217 = m8465else(((iM8465else212 + m8463class(iM8465else215, iM8465else213, iM8465else216)) + this.f6910super[14]) - 1894007588, 8) + iM8465else214;
        int iM8465else218 = m8465else(iM8465else213, 10);
        int iM8465else219 = m8465else(((iM8465else214 + m8463class(iM8465else217, iM8465else215, iM8465else218)) + this.f6910super[5]) - 1894007588, 6) + iM8465else216;
        int iM8465else220 = m8465else(iM8465else215, 10);
        int iM8465else221 = m8465else(((iM8465else216 + m8463class(iM8465else219, iM8465else217, iM8465else220)) + this.f6910super[6]) - 1894007588, 5) + iM8465else218;
        int iM8465else222 = m8465else(iM8465else217, 10);
        int iM8465else223 = m8465else(((iM8465else218 + m8463class(iM8465else221, iM8465else219, iM8465else222)) + this.f6910super[2]) - 1894007588, 12) + iM8465else220;
        int iM8465else224 = m8465else(iM8465else219, 10);
        int iM8465else225 = m8465else(iM8465else156 + m8461break(iM8465else191, iM8465else189, iM8465else192) + this.f6910super[8] + 2053994217, 15) + iM8465else190;
        int iM8465else226 = m8465else(iM8465else189, 10);
        int iM8465else227 = m8465else(iM8465else190 + m8461break(iM8465else225, iM8465else191, iM8465else226) + this.f6910super[6] + 2053994217, 5) + iM8465else192;
        int iM8465else228 = m8465else(iM8465else191, 10);
        int iM8465else229 = m8465else(iM8465else192 + m8461break(iM8465else227, iM8465else225, iM8465else228) + this.f6910super[4] + 2053994217, 8) + iM8465else226;
        int iM8465else230 = m8465else(iM8465else225, 10);
        int iM8465else231 = m8465else(iM8465else226 + m8461break(iM8465else229, iM8465else227, iM8465else230) + this.f6910super[1] + 2053994217, 11) + iM8465else228;
        int iM8465else232 = m8465else(iM8465else227, 10);
        int iM8465else233 = m8465else(iM8465else228 + m8461break(iM8465else231, iM8465else229, iM8465else232) + this.f6910super[3] + 2053994217, 14) + iM8465else230;
        int iM8465else234 = m8465else(iM8465else229, 10);
        int iM8465else235 = m8465else(iM8465else230 + m8461break(iM8465else233, iM8465else231, iM8465else234) + this.f6910super[11] + 2053994217, 14) + iM8465else232;
        int iM8465else236 = m8465else(iM8465else231, 10);
        int iM8465else237 = m8465else(iM8465else232 + m8461break(iM8465else235, iM8465else233, iM8465else236) + this.f6910super[15] + 2053994217, 6) + iM8465else234;
        int iM8465else238 = m8465else(iM8465else233, 10);
        int iM8465else239 = m8465else(iM8465else234 + m8461break(iM8465else237, iM8465else235, iM8465else238) + this.f6910super[0] + 2053994217, 14) + iM8465else236;
        int iM8465else240 = m8465else(iM8465else235, 10);
        int iM8465else241 = m8465else(iM8465else236 + m8461break(iM8465else239, iM8465else237, iM8465else240) + this.f6910super[5] + 2053994217, 6) + iM8465else238;
        int iM8465else242 = m8465else(iM8465else237, 10);
        int iM8465else243 = m8465else(iM8465else238 + m8461break(iM8465else241, iM8465else239, iM8465else242) + this.f6910super[12] + 2053994217, 9) + iM8465else240;
        int iM8465else244 = m8465else(iM8465else239, 10);
        int iM8465else245 = m8465else(iM8465else240 + m8461break(iM8465else243, iM8465else241, iM8465else244) + this.f6910super[2] + 2053994217, 12) + iM8465else242;
        int iM8465else246 = m8465else(iM8465else241, 10);
        int iM8465else247 = m8465else(iM8465else242 + m8461break(iM8465else245, iM8465else243, iM8465else246) + this.f6910super[13] + 2053994217, 9) + iM8465else244;
        int iM8465else248 = m8465else(iM8465else243, 10);
        int iM8465else249 = m8465else(iM8465else244 + m8461break(iM8465else247, iM8465else245, iM8465else248) + this.f6910super[9] + 2053994217, 12) + iM8465else246;
        int iM8465else250 = m8465else(iM8465else245, 10);
        int iM8465else251 = m8465else(iM8465else246 + m8461break(iM8465else249, iM8465else247, iM8465else250) + this.f6910super[7] + 2053994217, 5) + iM8465else248;
        int iM8465else252 = m8465else(iM8465else247, 10);
        int iM8465else253 = m8465else(iM8465else248 + m8461break(iM8465else251, iM8465else249, iM8465else252) + this.f6910super[10] + 2053994217, 15) + iM8465else250;
        int iM8465else254 = m8465else(iM8465else249, 10);
        int iM8465else255 = m8465else(iM8465else250 + m8461break(iM8465else253, iM8465else251, iM8465else254) + this.f6910super[14] + 2053994217, 8) + iM8465else252;
        int iM8465else256 = m8465else(iM8465else251, 10);
        int iM8465else257 = m8465else(((iM8465else220 + m8464const(iM8465else223, iM8465else253, iM8465else224)) + this.f6910super[4]) - 1454113458, 9) + iM8465else222;
        int iM8465else258 = m8465else(iM8465else253, 10);
        int iM8465else259 = m8465else(((iM8465else222 + m8464const(iM8465else257, iM8465else223, iM8465else258)) + this.f6910super[0]) - 1454113458, 15) + iM8465else224;
        int iM8465else260 = m8465else(iM8465else223, 10);
        int iM8465else261 = m8465else(((iM8465else224 + m8464const(iM8465else259, iM8465else257, iM8465else260)) + this.f6910super[5]) - 1454113458, 5) + iM8465else258;
        int iM8465else262 = m8465else(iM8465else257, 10);
        int iM8465else263 = m8465else(((iM8465else258 + m8464const(iM8465else261, iM8465else259, iM8465else262)) + this.f6910super[9]) - 1454113458, 11) + iM8465else260;
        int iM8465else264 = m8465else(iM8465else259, 10);
        int iM8465else265 = m8465else(((iM8465else260 + m8464const(iM8465else263, iM8465else261, iM8465else264)) + this.f6910super[7]) - 1454113458, 6) + iM8465else262;
        int iM8465else266 = m8465else(iM8465else261, 10);
        int iM8465else267 = m8465else(((iM8465else262 + m8464const(iM8465else265, iM8465else263, iM8465else266)) + this.f6910super[12]) - 1454113458, 8) + iM8465else264;
        int iM8465else268 = m8465else(iM8465else263, 10);
        int iM8465else269 = m8465else(((iM8465else264 + m8464const(iM8465else267, iM8465else265, iM8465else268)) + this.f6910super[2]) - 1454113458, 13) + iM8465else266;
        int iM8465else270 = m8465else(iM8465else265, 10);
        int iM8465else271 = m8465else(((iM8465else266 + m8464const(iM8465else269, iM8465else267, iM8465else270)) + this.f6910super[10]) - 1454113458, 12) + iM8465else268;
        int iM8465else272 = m8465else(iM8465else267, 10);
        int iM8465else273 = m8465else(((iM8465else268 + m8464const(iM8465else271, iM8465else269, iM8465else272)) + this.f6910super[14]) - 1454113458, 5) + iM8465else270;
        int iM8465else274 = m8465else(iM8465else269, 10);
        int iM8465else275 = m8465else(((iM8465else270 + m8464const(iM8465else273, iM8465else271, iM8465else274)) + this.f6910super[1]) - 1454113458, 12) + iM8465else272;
        int iM8465else276 = m8465else(iM8465else271, 10);
        int iM8465else277 = m8465else(((iM8465else272 + m8464const(iM8465else275, iM8465else273, iM8465else276)) + this.f6910super[3]) - 1454113458, 13) + iM8465else274;
        int iM8465else278 = m8465else(iM8465else273, 10);
        int iM8465else279 = m8465else(((iM8465else274 + m8464const(iM8465else277, iM8465else275, iM8465else278)) + this.f6910super[8]) - 1454113458, 14) + iM8465else276;
        int iM8465else280 = m8465else(iM8465else275, 10);
        int iM8465else281 = m8465else(((iM8465else276 + m8464const(iM8465else279, iM8465else277, iM8465else280)) + this.f6910super[11]) - 1454113458, 11) + iM8465else278;
        int iM8465else282 = m8465else(iM8465else277, 10);
        int iM8465else283 = m8465else(((iM8465else278 + m8464const(iM8465else281, iM8465else279, iM8465else282)) + this.f6910super[6]) - 1454113458, 8) + iM8465else280;
        int iM8465else284 = m8465else(iM8465else279, 10);
        int iM8465else285 = m8465else(((iM8465else280 + m8464const(iM8465else283, iM8465else281, iM8465else284)) + this.f6910super[15]) - 1454113458, 5) + iM8465else282;
        int iM8465else286 = m8465else(iM8465else281, 10);
        int iM8465else287 = m8465else(((iM8465else282 + m8464const(iM8465else285, iM8465else283, iM8465else286)) + this.f6910super[13]) - 1454113458, 6) + iM8465else284;
        int iM8465else288 = m8465else(iM8465else283, 10);
        int iM8465else289 = m8465else(iM8465else252 + m8468this(iM8465else255, iM8465else221, iM8465else256) + this.f6910super[12], 8) + iM8465else254;
        int iM8465else290 = m8465else(iM8465else221, 10);
        int iM8465else291 = m8465else(iM8465else254 + m8468this(iM8465else289, iM8465else255, iM8465else290) + this.f6910super[15], 5) + iM8465else256;
        int iM8465else292 = m8465else(iM8465else255, 10);
        int iM8465else293 = m8465else(iM8465else256 + m8468this(iM8465else291, iM8465else289, iM8465else292) + this.f6910super[10], 12) + iM8465else290;
        int iM8465else294 = m8465else(iM8465else289, 10);
        int iM8465else295 = m8465else(iM8465else290 + m8468this(iM8465else293, iM8465else291, iM8465else294) + this.f6910super[4], 9) + iM8465else292;
        int iM8465else296 = m8465else(iM8465else291, 10);
        int iM8465else297 = m8465else(iM8465else292 + m8468this(iM8465else295, iM8465else293, iM8465else296) + this.f6910super[1], 12) + iM8465else294;
        int iM8465else298 = m8465else(iM8465else293, 10);
        int iM8465else299 = m8465else(iM8465else294 + m8468this(iM8465else297, iM8465else295, iM8465else298) + this.f6910super[5], 5) + iM8465else296;
        int iM8465else300 = m8465else(iM8465else295, 10);
        int iM8465else301 = m8465else(iM8465else296 + m8468this(iM8465else299, iM8465else297, iM8465else300) + this.f6910super[8], 14) + iM8465else298;
        int iM8465else302 = m8465else(iM8465else297, 10);
        int iM8465else303 = m8465else(iM8465else298 + m8468this(iM8465else301, iM8465else299, iM8465else302) + this.f6910super[7], 6) + iM8465else300;
        int iM8465else304 = m8465else(iM8465else299, 10);
        int iM8465else305 = m8465else(iM8465else300 + m8468this(iM8465else303, iM8465else301, iM8465else304) + this.f6910super[6], 8) + iM8465else302;
        int iM8465else306 = m8465else(iM8465else301, 10);
        int iM8465else307 = m8465else(iM8465else302 + m8468this(iM8465else305, iM8465else303, iM8465else306) + this.f6910super[2], 13) + iM8465else304;
        int iM8465else308 = m8465else(iM8465else303, 10);
        int iM8465else309 = m8465else(iM8465else304 + m8468this(iM8465else307, iM8465else305, iM8465else308) + this.f6910super[13], 6) + iM8465else306;
        int iM8465else310 = m8465else(iM8465else305, 10);
        int iM8465else311 = m8465else(iM8465else306 + m8468this(iM8465else309, iM8465else307, iM8465else310) + this.f6910super[14], 5) + iM8465else308;
        int iM8465else312 = m8465else(iM8465else307, 10);
        int iM8465else313 = m8465else(iM8465else308 + m8468this(iM8465else311, iM8465else309, iM8465else312) + this.f6910super[0], 15) + iM8465else310;
        int iM8465else314 = m8465else(iM8465else309, 10);
        int iM8465else315 = m8465else(iM8465else310 + m8468this(iM8465else313, iM8465else311, iM8465else314) + this.f6910super[3], 13) + iM8465else312;
        int iM8465else316 = m8465else(iM8465else311, 10);
        int iM8465else317 = m8465else(iM8465else312 + m8468this(iM8465else315, iM8465else313, iM8465else316) + this.f6910super[9], 11) + iM8465else314;
        int iM8465else318 = m8465else(iM8465else313, 10);
        int iM8465else319 = m8465else(iM8465else314 + m8468this(iM8465else317, iM8465else315, iM8465else318) + this.f6910super[11], 11) + iM8465else316;
        int iM8465else320 = m8465else(iM8465else315, 10);
        this.f6913try += iM8465else284;
        this.f6903case += iM8465else287;
        this.f6907else += iM8465else285;
        this.f6909goto += iM8465else288;
        this.f6911this += iM8465else318;
        this.f6902break += iM8465else316;
        this.f6904catch += iM8465else319;
        this.f6905class += iM8465else317;
        this.f6906const += iM8465else320;
        this.f6908final += iM8465else286;
        this.f6912throw = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f6910super;
            if (i11 == iArr.length) {
                return;
            }
            iArr[i11] = 0;
            i11++;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f6913try = 1732584193;
        this.f6903case = -271733879;
        this.f6907else = -1732584194;
        this.f6909goto = 271733878;
        this.f6911this = -1009589776;
        this.f6902break = 1985229328;
        this.f6904catch = -19088744;
        this.f6905class = -1985229329;
        this.f6906const = 19088743;
        this.f6908final = 1009589775;
        this.f6912throw = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f6910super;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m8467goto((uj1) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f6912throw > 14) {
            mo4746new();
        }
        int[] iArr = this.f6910super;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }
}
