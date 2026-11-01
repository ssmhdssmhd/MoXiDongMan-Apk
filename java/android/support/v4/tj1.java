package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class tj1 extends rg0 {

    /* renamed from: super, reason: not valid java name */
    private static final int f6581super = 32;

    /* renamed from: break, reason: not valid java name */
    private int f6582break;

    /* renamed from: case, reason: not valid java name */
    private int f6583case;

    /* renamed from: catch, reason: not valid java name */
    private int f6584catch;

    /* renamed from: class, reason: not valid java name */
    private int f6585class;

    /* renamed from: const, reason: not valid java name */
    private int[] f6586const;

    /* renamed from: else, reason: not valid java name */
    private int f6587else;

    /* renamed from: final, reason: not valid java name */
    private int f6588final;

    /* renamed from: goto, reason: not valid java name */
    private int f6589goto;

    /* renamed from: this, reason: not valid java name */
    private int f6590this;

    /* renamed from: try, reason: not valid java name */
    private int f6591try;

    public tj1() {
        this.f6586const = new int[16];
        reset();
    }

    public tj1(tj1 tj1Var) {
        super(tj1Var);
        this.f6586const = new int[16];
        m7973throw(tj1Var);
    }

    /* renamed from: break, reason: not valid java name */
    private int m7960break(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(((i + m7969public(i2, i3, i4)) + i5) - 1894007588, i6);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m7961catch(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7974while(i2, i3, i4) + i5, i6);
    }

    /* renamed from: class, reason: not valid java name */
    private int m7962class(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7967import(i2, i3, i4) + i5 + 1836072691, i6);
    }

    /* renamed from: const, reason: not valid java name */
    private int m7963const(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7968native(i2, i3, i4) + i5 + 1548603684, i6);
    }

    /* renamed from: else, reason: not valid java name */
    private int m7964else(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7974while(i2, i3, i4) + i5, i6);
    }

    /* renamed from: final, reason: not valid java name */
    private int m7965final(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7969public(i2, i3, i4) + i5 + 1352829926, i6);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m7966goto(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7967import(i2, i3, i4) + i5 + 1518500249, i6);
    }

    /* renamed from: import, reason: not valid java name */
    private int m7967import(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: native, reason: not valid java name */
    private int m7968native(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: public, reason: not valid java name */
    private int m7969public(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: return, reason: not valid java name */
    private void m7970return(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: super, reason: not valid java name */
    private int m7971super(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: this, reason: not valid java name */
    private int m7972this(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7971super(i + m7968native(i2, i3, i4) + i5 + 1859775393, i6);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m7973throw(tj1 tj1Var) {
        super.m6968do(tj1Var);
        this.f6591try = tj1Var.f6591try;
        this.f6583case = tj1Var.f6583case;
        this.f6587else = tj1Var.f6587else;
        this.f6589goto = tj1Var.f6589goto;
        this.f6590this = tj1Var.f6590this;
        this.f6582break = tj1Var.f6582break;
        this.f6584catch = tj1Var.f6584catch;
        this.f6585class = tj1Var.f6585class;
        int[] iArr = tj1Var.f6586const;
        System.arraycopy(iArr, 0, this.f6586const, 0, iArr.length);
        this.f6588final = tj1Var.f6588final;
    }

    /* renamed from: while, reason: not valid java name */
    private int m7974while(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int[] iArr = this.f6586const;
        int i2 = this.f6588final;
        int i3 = i2 + 1;
        this.f6588final = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new tj1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        m7970return(this.f6591try, bArr, i);
        m7970return(this.f6583case, bArr, i + 4);
        m7970return(this.f6587else, bArr, i + 8);
        m7970return(this.f6589goto, bArr, i + 12);
        m7970return(this.f6590this, bArr, i + 16);
        m7970return(this.f6582break, bArr, i + 20);
        m7970return(this.f6584catch, bArr, i + 24);
        m7970return(this.f6585class, bArr, i + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD256";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        int i = this.f6591try;
        int i2 = this.f6583case;
        int i3 = this.f6587else;
        int i4 = this.f6589goto;
        int i5 = this.f6590this;
        int i6 = this.f6582break;
        int i7 = this.f6584catch;
        int i8 = this.f6585class;
        int iM7964else = m7964else(i, i2, i3, i4, this.f6586const[0], 11);
        int iM7964else2 = m7964else(i4, iM7964else, i2, i3, this.f6586const[1], 14);
        int iM7964else3 = m7964else(i3, iM7964else2, iM7964else, i2, this.f6586const[2], 15);
        int iM7964else4 = m7964else(i2, iM7964else3, iM7964else2, iM7964else, this.f6586const[3], 12);
        int iM7964else5 = m7964else(iM7964else, iM7964else4, iM7964else3, iM7964else2, this.f6586const[4], 5);
        int iM7964else6 = m7964else(iM7964else2, iM7964else5, iM7964else4, iM7964else3, this.f6586const[5], 8);
        int iM7964else7 = m7964else(iM7964else3, iM7964else6, iM7964else5, iM7964else4, this.f6586const[6], 7);
        int iM7964else8 = m7964else(iM7964else4, iM7964else7, iM7964else6, iM7964else5, this.f6586const[7], 9);
        int iM7964else9 = m7964else(iM7964else5, iM7964else8, iM7964else7, iM7964else6, this.f6586const[8], 11);
        int iM7964else10 = m7964else(iM7964else6, iM7964else9, iM7964else8, iM7964else7, this.f6586const[9], 13);
        int iM7964else11 = m7964else(iM7964else7, iM7964else10, iM7964else9, iM7964else8, this.f6586const[10], 14);
        int iM7964else12 = m7964else(iM7964else8, iM7964else11, iM7964else10, iM7964else9, this.f6586const[11], 15);
        int iM7964else13 = m7964else(iM7964else9, iM7964else12, iM7964else11, iM7964else10, this.f6586const[12], 6);
        int iM7964else14 = m7964else(iM7964else10, iM7964else13, iM7964else12, iM7964else11, this.f6586const[13], 7);
        int iM7964else15 = m7964else(iM7964else11, iM7964else14, iM7964else13, iM7964else12, this.f6586const[14], 9);
        int iM7964else16 = m7964else(iM7964else12, iM7964else15, iM7964else14, iM7964else13, this.f6586const[15], 8);
        int iM7965final = m7965final(i5, i6, i7, i8, this.f6586const[5], 8);
        int iM7965final2 = m7965final(i8, iM7965final, i6, i7, this.f6586const[14], 9);
        int iM7965final3 = m7965final(i7, iM7965final2, iM7965final, i6, this.f6586const[7], 9);
        int iM7965final4 = m7965final(i6, iM7965final3, iM7965final2, iM7965final, this.f6586const[0], 11);
        int iM7965final5 = m7965final(iM7965final, iM7965final4, iM7965final3, iM7965final2, this.f6586const[9], 13);
        int iM7965final6 = m7965final(iM7965final2, iM7965final5, iM7965final4, iM7965final3, this.f6586const[2], 15);
        int iM7965final7 = m7965final(iM7965final3, iM7965final6, iM7965final5, iM7965final4, this.f6586const[11], 15);
        int iM7965final8 = m7965final(iM7965final4, iM7965final7, iM7965final6, iM7965final5, this.f6586const[4], 5);
        int iM7965final9 = m7965final(iM7965final5, iM7965final8, iM7965final7, iM7965final6, this.f6586const[13], 7);
        int iM7965final10 = m7965final(iM7965final6, iM7965final9, iM7965final8, iM7965final7, this.f6586const[6], 7);
        int iM7965final11 = m7965final(iM7965final7, iM7965final10, iM7965final9, iM7965final8, this.f6586const[15], 8);
        int iM7965final12 = m7965final(iM7965final8, iM7965final11, iM7965final10, iM7965final9, this.f6586const[8], 11);
        int iM7965final13 = m7965final(iM7965final9, iM7965final12, iM7965final11, iM7965final10, this.f6586const[1], 14);
        int iM7965final14 = m7965final(iM7965final10, iM7965final13, iM7965final12, iM7965final11, this.f6586const[10], 14);
        int iM7965final15 = m7965final(iM7965final11, iM7965final14, iM7965final13, iM7965final12, this.f6586const[3], 12);
        int iM7965final16 = m7965final(iM7965final12, iM7965final15, iM7965final14, iM7965final13, this.f6586const[12], 6);
        int iM7966goto = m7966goto(iM7965final13, iM7964else16, iM7964else15, iM7964else14, this.f6586const[7], 7);
        int iM7966goto2 = m7966goto(iM7964else14, iM7966goto, iM7964else16, iM7964else15, this.f6586const[4], 6);
        int iM7966goto3 = m7966goto(iM7964else15, iM7966goto2, iM7966goto, iM7964else16, this.f6586const[13], 8);
        int iM7966goto4 = m7966goto(iM7964else16, iM7966goto3, iM7966goto2, iM7966goto, this.f6586const[1], 13);
        int iM7966goto5 = m7966goto(iM7966goto, iM7966goto4, iM7966goto3, iM7966goto2, this.f6586const[10], 11);
        int iM7966goto6 = m7966goto(iM7966goto2, iM7966goto5, iM7966goto4, iM7966goto3, this.f6586const[6], 9);
        int iM7966goto7 = m7966goto(iM7966goto3, iM7966goto6, iM7966goto5, iM7966goto4, this.f6586const[15], 7);
        int iM7966goto8 = m7966goto(iM7966goto4, iM7966goto7, iM7966goto6, iM7966goto5, this.f6586const[3], 15);
        int iM7966goto9 = m7966goto(iM7966goto5, iM7966goto8, iM7966goto7, iM7966goto6, this.f6586const[12], 7);
        int iM7966goto10 = m7966goto(iM7966goto6, iM7966goto9, iM7966goto8, iM7966goto7, this.f6586const[0], 12);
        int iM7966goto11 = m7966goto(iM7966goto7, iM7966goto10, iM7966goto9, iM7966goto8, this.f6586const[9], 15);
        int iM7966goto12 = m7966goto(iM7966goto8, iM7966goto11, iM7966goto10, iM7966goto9, this.f6586const[5], 9);
        int iM7966goto13 = m7966goto(iM7966goto9, iM7966goto12, iM7966goto11, iM7966goto10, this.f6586const[2], 11);
        int iM7966goto14 = m7966goto(iM7966goto10, iM7966goto13, iM7966goto12, iM7966goto11, this.f6586const[14], 7);
        int iM7966goto15 = m7966goto(iM7966goto11, iM7966goto14, iM7966goto13, iM7966goto12, this.f6586const[11], 13);
        int iM7966goto16 = m7966goto(iM7966goto12, iM7966goto15, iM7966goto14, iM7966goto13, this.f6586const[8], 12);
        int iM7963const = m7963const(iM7964else13, iM7965final16, iM7965final15, iM7965final14, this.f6586const[6], 9);
        int iM7963const2 = m7963const(iM7965final14, iM7963const, iM7965final16, iM7965final15, this.f6586const[11], 13);
        int iM7963const3 = m7963const(iM7965final15, iM7963const2, iM7963const, iM7965final16, this.f6586const[3], 15);
        int iM7963const4 = m7963const(iM7965final16, iM7963const3, iM7963const2, iM7963const, this.f6586const[7], 7);
        int iM7963const5 = m7963const(iM7963const, iM7963const4, iM7963const3, iM7963const2, this.f6586const[0], 12);
        int iM7963const6 = m7963const(iM7963const2, iM7963const5, iM7963const4, iM7963const3, this.f6586const[13], 8);
        int iM7963const7 = m7963const(iM7963const3, iM7963const6, iM7963const5, iM7963const4, this.f6586const[5], 9);
        int iM7963const8 = m7963const(iM7963const4, iM7963const7, iM7963const6, iM7963const5, this.f6586const[10], 11);
        int iM7963const9 = m7963const(iM7963const5, iM7963const8, iM7963const7, iM7963const6, this.f6586const[14], 7);
        int iM7963const10 = m7963const(iM7963const6, iM7963const9, iM7963const8, iM7963const7, this.f6586const[15], 7);
        int iM7963const11 = m7963const(iM7963const7, iM7963const10, iM7963const9, iM7963const8, this.f6586const[8], 12);
        int iM7963const12 = m7963const(iM7963const8, iM7963const11, iM7963const10, iM7963const9, this.f6586const[12], 7);
        int iM7963const13 = m7963const(iM7963const9, iM7963const12, iM7963const11, iM7963const10, this.f6586const[4], 6);
        int iM7963const14 = m7963const(iM7963const10, iM7963const13, iM7963const12, iM7963const11, this.f6586const[9], 15);
        int iM7963const15 = m7963const(iM7963const11, iM7963const14, iM7963const13, iM7963const12, this.f6586const[1], 13);
        int iM7963const16 = m7963const(iM7963const12, iM7963const15, iM7963const14, iM7963const13, this.f6586const[2], 11);
        int iM7972this = m7972this(iM7966goto13, iM7963const16, iM7966goto15, iM7966goto14, this.f6586const[3], 11);
        int iM7972this2 = m7972this(iM7966goto14, iM7972this, iM7963const16, iM7966goto15, this.f6586const[10], 13);
        int iM7972this3 = m7972this(iM7966goto15, iM7972this2, iM7972this, iM7963const16, this.f6586const[14], 6);
        int iM7972this4 = m7972this(iM7963const16, iM7972this3, iM7972this2, iM7972this, this.f6586const[4], 7);
        int iM7972this5 = m7972this(iM7972this, iM7972this4, iM7972this3, iM7972this2, this.f6586const[9], 14);
        int iM7972this6 = m7972this(iM7972this2, iM7972this5, iM7972this4, iM7972this3, this.f6586const[15], 9);
        int iM7972this7 = m7972this(iM7972this3, iM7972this6, iM7972this5, iM7972this4, this.f6586const[8], 13);
        int iM7972this8 = m7972this(iM7972this4, iM7972this7, iM7972this6, iM7972this5, this.f6586const[1], 15);
        int iM7972this9 = m7972this(iM7972this5, iM7972this8, iM7972this7, iM7972this6, this.f6586const[2], 14);
        int iM7972this10 = m7972this(iM7972this6, iM7972this9, iM7972this8, iM7972this7, this.f6586const[7], 8);
        int iM7972this11 = m7972this(iM7972this7, iM7972this10, iM7972this9, iM7972this8, this.f6586const[0], 13);
        int iM7972this12 = m7972this(iM7972this8, iM7972this11, iM7972this10, iM7972this9, this.f6586const[6], 6);
        int iM7972this13 = m7972this(iM7972this9, iM7972this12, iM7972this11, iM7972this10, this.f6586const[13], 5);
        int iM7972this14 = m7972this(iM7972this10, iM7972this13, iM7972this12, iM7972this11, this.f6586const[11], 12);
        int iM7972this15 = m7972this(iM7972this11, iM7972this14, iM7972this13, iM7972this12, this.f6586const[5], 7);
        int iM7972this16 = m7972this(iM7972this12, iM7972this15, iM7972this14, iM7972this13, this.f6586const[12], 5);
        int iM7962class = m7962class(iM7963const13, iM7966goto16, iM7963const15, iM7963const14, this.f6586const[15], 9);
        int iM7962class2 = m7962class(iM7963const14, iM7962class, iM7966goto16, iM7963const15, this.f6586const[5], 7);
        int iM7962class3 = m7962class(iM7963const15, iM7962class2, iM7962class, iM7966goto16, this.f6586const[1], 15);
        int iM7962class4 = m7962class(iM7966goto16, iM7962class3, iM7962class2, iM7962class, this.f6586const[3], 11);
        int iM7962class5 = m7962class(iM7962class, iM7962class4, iM7962class3, iM7962class2, this.f6586const[7], 8);
        int iM7962class6 = m7962class(iM7962class2, iM7962class5, iM7962class4, iM7962class3, this.f6586const[14], 6);
        int iM7962class7 = m7962class(iM7962class3, iM7962class6, iM7962class5, iM7962class4, this.f6586const[6], 6);
        int iM7962class8 = m7962class(iM7962class4, iM7962class7, iM7962class6, iM7962class5, this.f6586const[9], 14);
        int iM7962class9 = m7962class(iM7962class5, iM7962class8, iM7962class7, iM7962class6, this.f6586const[11], 12);
        int iM7962class10 = m7962class(iM7962class6, iM7962class9, iM7962class8, iM7962class7, this.f6586const[8], 13);
        int iM7962class11 = m7962class(iM7962class7, iM7962class10, iM7962class9, iM7962class8, this.f6586const[12], 5);
        int iM7962class12 = m7962class(iM7962class8, iM7962class11, iM7962class10, iM7962class9, this.f6586const[2], 14);
        int iM7962class13 = m7962class(iM7962class9, iM7962class12, iM7962class11, iM7962class10, this.f6586const[10], 13);
        int iM7962class14 = m7962class(iM7962class10, iM7962class13, iM7962class12, iM7962class11, this.f6586const[0], 13);
        int iM7962class15 = m7962class(iM7962class11, iM7962class14, iM7962class13, iM7962class12, this.f6586const[4], 7);
        int iM7962class16 = m7962class(iM7962class12, iM7962class15, iM7962class14, iM7962class13, this.f6586const[13], 5);
        int iM7960break = m7960break(iM7972this13, iM7972this16, iM7962class15, iM7972this14, this.f6586const[1], 11);
        int iM7960break2 = m7960break(iM7972this14, iM7960break, iM7972this16, iM7962class15, this.f6586const[9], 12);
        int iM7960break3 = m7960break(iM7962class15, iM7960break2, iM7960break, iM7972this16, this.f6586const[11], 14);
        int iM7960break4 = m7960break(iM7972this16, iM7960break3, iM7960break2, iM7960break, this.f6586const[10], 15);
        int iM7960break5 = m7960break(iM7960break, iM7960break4, iM7960break3, iM7960break2, this.f6586const[0], 14);
        int iM7960break6 = m7960break(iM7960break2, iM7960break5, iM7960break4, iM7960break3, this.f6586const[8], 15);
        int iM7960break7 = m7960break(iM7960break3, iM7960break6, iM7960break5, iM7960break4, this.f6586const[12], 9);
        int iM7960break8 = m7960break(iM7960break4, iM7960break7, iM7960break6, iM7960break5, this.f6586const[4], 8);
        int iM7960break9 = m7960break(iM7960break5, iM7960break8, iM7960break7, iM7960break6, this.f6586const[13], 9);
        int iM7960break10 = m7960break(iM7960break6, iM7960break9, iM7960break8, iM7960break7, this.f6586const[3], 14);
        int iM7960break11 = m7960break(iM7960break7, iM7960break10, iM7960break9, iM7960break8, this.f6586const[7], 5);
        int iM7960break12 = m7960break(iM7960break8, iM7960break11, iM7960break10, iM7960break9, this.f6586const[15], 6);
        int iM7960break13 = m7960break(iM7960break9, iM7960break12, iM7960break11, iM7960break10, this.f6586const[14], 8);
        int iM7960break14 = m7960break(iM7960break10, iM7960break13, iM7960break12, iM7960break11, this.f6586const[5], 6);
        int iM7960break15 = m7960break(iM7960break11, iM7960break14, iM7960break13, iM7960break12, this.f6586const[6], 5);
        int iM7960break16 = m7960break(iM7960break12, iM7960break15, iM7960break14, iM7960break13, this.f6586const[2], 12);
        int iM7961catch = m7961catch(iM7962class13, iM7962class16, iM7972this15, iM7962class14, this.f6586const[8], 15);
        int iM7961catch2 = m7961catch(iM7962class14, iM7961catch, iM7962class16, iM7972this15, this.f6586const[6], 5);
        int iM7961catch3 = m7961catch(iM7972this15, iM7961catch2, iM7961catch, iM7962class16, this.f6586const[4], 8);
        int iM7961catch4 = m7961catch(iM7962class16, iM7961catch3, iM7961catch2, iM7961catch, this.f6586const[1], 11);
        int iM7961catch5 = m7961catch(iM7961catch, iM7961catch4, iM7961catch3, iM7961catch2, this.f6586const[3], 14);
        int iM7961catch6 = m7961catch(iM7961catch2, iM7961catch5, iM7961catch4, iM7961catch3, this.f6586const[11], 14);
        int iM7961catch7 = m7961catch(iM7961catch3, iM7961catch6, iM7961catch5, iM7961catch4, this.f6586const[15], 6);
        int iM7961catch8 = m7961catch(iM7961catch4, iM7961catch7, iM7961catch6, iM7961catch5, this.f6586const[0], 14);
        int iM7961catch9 = m7961catch(iM7961catch5, iM7961catch8, iM7961catch7, iM7961catch6, this.f6586const[5], 6);
        int iM7961catch10 = m7961catch(iM7961catch6, iM7961catch9, iM7961catch8, iM7961catch7, this.f6586const[12], 9);
        int iM7961catch11 = m7961catch(iM7961catch7, iM7961catch10, iM7961catch9, iM7961catch8, this.f6586const[2], 12);
        int iM7961catch12 = m7961catch(iM7961catch8, iM7961catch11, iM7961catch10, iM7961catch9, this.f6586const[13], 9);
        int iM7961catch13 = m7961catch(iM7961catch9, iM7961catch12, iM7961catch11, iM7961catch10, this.f6586const[9], 12);
        int iM7961catch14 = m7961catch(iM7961catch10, iM7961catch13, iM7961catch12, iM7961catch11, this.f6586const[7], 5);
        int iM7961catch15 = m7961catch(iM7961catch11, iM7961catch14, iM7961catch13, iM7961catch12, this.f6586const[10], 15);
        int iM7961catch16 = m7961catch(iM7961catch12, iM7961catch15, iM7961catch14, iM7961catch13, this.f6586const[14], 8);
        this.f6591try += iM7960break13;
        this.f6583case += iM7960break16;
        this.f6587else += iM7960break15;
        this.f6589goto += iM7961catch14;
        this.f6590this += iM7961catch13;
        this.f6582break += iM7961catch16;
        this.f6584catch += iM7961catch15;
        this.f6585class += iM7960break14;
        this.f6588final = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f6586const;
            if (i9 == iArr.length) {
                return;
            }
            iArr[i9] = 0;
            i9++;
        }
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f6591try = 1732584193;
        this.f6583case = -271733879;
        this.f6587else = -1732584194;
        this.f6589goto = 271733878;
        this.f6590this = 1985229328;
        this.f6582break = -19088744;
        this.f6584catch = -1985229329;
        this.f6585class = 19088743;
        this.f6588final = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f6586const;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m7973throw((tj1) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f6588final > 14) {
            mo4746new();
        }
        int[] iArr = this.f6586const;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }
}
