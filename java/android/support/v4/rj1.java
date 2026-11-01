package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class rj1 extends rg0 {

    /* renamed from: catch, reason: not valid java name */
    private static final int f5838catch = 16;

    /* renamed from: break, reason: not valid java name */
    private int f5839break;

    /* renamed from: case, reason: not valid java name */
    private int f5840case;

    /* renamed from: else, reason: not valid java name */
    private int f5841else;

    /* renamed from: goto, reason: not valid java name */
    private int f5842goto;

    /* renamed from: this, reason: not valid java name */
    private int[] f5843this;

    /* renamed from: try, reason: not valid java name */
    private int f5844try;

    public rj1() {
        this.f5843this = new int[16];
        reset();
    }

    public rj1(rj1 rj1Var) {
        super(rj1Var);
        this.f5843this = new int[16];
        m7016throw(rj1Var);
    }

    /* renamed from: break, reason: not valid java name */
    private int m7003break(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(((i + m7012public(i2, i3, i4)) + i5) - 1894007588, i6);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m7004catch(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7017while(i2, i3, i4) + i5, i6);
    }

    /* renamed from: class, reason: not valid java name */
    private int m7005class(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7010import(i2, i3, i4) + i5 + 1836072691, i6);
    }

    /* renamed from: const, reason: not valid java name */
    private int m7006const(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7011native(i2, i3, i4) + i5 + 1548603684, i6);
    }

    /* renamed from: else, reason: not valid java name */
    private int m7007else(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7017while(i2, i3, i4) + i5, i6);
    }

    /* renamed from: final, reason: not valid java name */
    private int m7008final(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7012public(i2, i3, i4) + i5 + 1352829926, i6);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m7009goto(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7010import(i2, i3, i4) + i5 + 1518500249, i6);
    }

    /* renamed from: import, reason: not valid java name */
    private int m7010import(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: native, reason: not valid java name */
    private int m7011native(int i, int i2, int i3) {
        return (i | (i2 ^ (-1))) ^ i3;
    }

    /* renamed from: public, reason: not valid java name */
    private int m7012public(int i, int i2, int i3) {
        return (i & i3) | (i2 & (i3 ^ (-1)));
    }

    /* renamed from: return, reason: not valid java name */
    private void m7013return(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: super, reason: not valid java name */
    private int m7014super(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: this, reason: not valid java name */
    private int m7015this(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7014super(i + m7011native(i2, i3, i4) + i5 + 1859775393, i6);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m7016throw(rj1 rj1Var) {
        super.m6968do(rj1Var);
        this.f5844try = rj1Var.f5844try;
        this.f5840case = rj1Var.f5840case;
        this.f5841else = rj1Var.f5841else;
        this.f5842goto = rj1Var.f5842goto;
        int[] iArr = rj1Var.f5843this;
        System.arraycopy(iArr, 0, this.f5843this, 0, iArr.length);
        this.f5839break = rj1Var.f5839break;
    }

    /* renamed from: while, reason: not valid java name */
    private int m7017while(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case */
    public void mo4745case(byte[] bArr, int i) {
        int[] iArr = this.f5843this;
        int i2 = this.f5839break;
        int i3 = i2 + 1;
        this.f5839break = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new rj1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        m7013return(this.f5844try, bArr, i);
        m7013return(this.f5840case, bArr, i + 4);
        m7013return(this.f5841else, bArr, i + 8);
        m7013return(this.f5842goto, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD128";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new */
    public void mo4746new() {
        int i = this.f5844try;
        int i2 = this.f5840case;
        int i3 = this.f5841else;
        int i4 = this.f5842goto;
        int iM7007else = m7007else(i, i2, i3, i4, this.f5843this[0], 11);
        int iM7007else2 = m7007else(i4, iM7007else, i2, i3, this.f5843this[1], 14);
        int iM7007else3 = m7007else(i3, iM7007else2, iM7007else, i2, this.f5843this[2], 15);
        int iM7007else4 = m7007else(i2, iM7007else3, iM7007else2, iM7007else, this.f5843this[3], 12);
        int iM7007else5 = m7007else(iM7007else, iM7007else4, iM7007else3, iM7007else2, this.f5843this[4], 5);
        int iM7007else6 = m7007else(iM7007else2, iM7007else5, iM7007else4, iM7007else3, this.f5843this[5], 8);
        int iM7007else7 = m7007else(iM7007else3, iM7007else6, iM7007else5, iM7007else4, this.f5843this[6], 7);
        int iM7007else8 = m7007else(iM7007else4, iM7007else7, iM7007else6, iM7007else5, this.f5843this[7], 9);
        int iM7007else9 = m7007else(iM7007else5, iM7007else8, iM7007else7, iM7007else6, this.f5843this[8], 11);
        int iM7007else10 = m7007else(iM7007else6, iM7007else9, iM7007else8, iM7007else7, this.f5843this[9], 13);
        int iM7007else11 = m7007else(iM7007else7, iM7007else10, iM7007else9, iM7007else8, this.f5843this[10], 14);
        int iM7007else12 = m7007else(iM7007else8, iM7007else11, iM7007else10, iM7007else9, this.f5843this[11], 15);
        int iM7007else13 = m7007else(iM7007else9, iM7007else12, iM7007else11, iM7007else10, this.f5843this[12], 6);
        int iM7007else14 = m7007else(iM7007else10, iM7007else13, iM7007else12, iM7007else11, this.f5843this[13], 7);
        int iM7007else15 = m7007else(iM7007else11, iM7007else14, iM7007else13, iM7007else12, this.f5843this[14], 9);
        int iM7007else16 = m7007else(iM7007else12, iM7007else15, iM7007else14, iM7007else13, this.f5843this[15], 8);
        int iM7009goto = m7009goto(iM7007else13, iM7007else16, iM7007else15, iM7007else14, this.f5843this[7], 7);
        int iM7009goto2 = m7009goto(iM7007else14, iM7009goto, iM7007else16, iM7007else15, this.f5843this[4], 6);
        int iM7009goto3 = m7009goto(iM7007else15, iM7009goto2, iM7009goto, iM7007else16, this.f5843this[13], 8);
        int iM7009goto4 = m7009goto(iM7007else16, iM7009goto3, iM7009goto2, iM7009goto, this.f5843this[1], 13);
        int iM7009goto5 = m7009goto(iM7009goto, iM7009goto4, iM7009goto3, iM7009goto2, this.f5843this[10], 11);
        int iM7009goto6 = m7009goto(iM7009goto2, iM7009goto5, iM7009goto4, iM7009goto3, this.f5843this[6], 9);
        int iM7009goto7 = m7009goto(iM7009goto3, iM7009goto6, iM7009goto5, iM7009goto4, this.f5843this[15], 7);
        int iM7009goto8 = m7009goto(iM7009goto4, iM7009goto7, iM7009goto6, iM7009goto5, this.f5843this[3], 15);
        int iM7009goto9 = m7009goto(iM7009goto5, iM7009goto8, iM7009goto7, iM7009goto6, this.f5843this[12], 7);
        int iM7009goto10 = m7009goto(iM7009goto6, iM7009goto9, iM7009goto8, iM7009goto7, this.f5843this[0], 12);
        int iM7009goto11 = m7009goto(iM7009goto7, iM7009goto10, iM7009goto9, iM7009goto8, this.f5843this[9], 15);
        int iM7009goto12 = m7009goto(iM7009goto8, iM7009goto11, iM7009goto10, iM7009goto9, this.f5843this[5], 9);
        int iM7009goto13 = m7009goto(iM7009goto9, iM7009goto12, iM7009goto11, iM7009goto10, this.f5843this[2], 11);
        int iM7009goto14 = m7009goto(iM7009goto10, iM7009goto13, iM7009goto12, iM7009goto11, this.f5843this[14], 7);
        int iM7009goto15 = m7009goto(iM7009goto11, iM7009goto14, iM7009goto13, iM7009goto12, this.f5843this[11], 13);
        int iM7009goto16 = m7009goto(iM7009goto12, iM7009goto15, iM7009goto14, iM7009goto13, this.f5843this[8], 12);
        int iM7015this = m7015this(iM7009goto13, iM7009goto16, iM7009goto15, iM7009goto14, this.f5843this[3], 11);
        int iM7015this2 = m7015this(iM7009goto14, iM7015this, iM7009goto16, iM7009goto15, this.f5843this[10], 13);
        int iM7015this3 = m7015this(iM7009goto15, iM7015this2, iM7015this, iM7009goto16, this.f5843this[14], 6);
        int iM7015this4 = m7015this(iM7009goto16, iM7015this3, iM7015this2, iM7015this, this.f5843this[4], 7);
        int iM7015this5 = m7015this(iM7015this, iM7015this4, iM7015this3, iM7015this2, this.f5843this[9], 14);
        int iM7015this6 = m7015this(iM7015this2, iM7015this5, iM7015this4, iM7015this3, this.f5843this[15], 9);
        int iM7015this7 = m7015this(iM7015this3, iM7015this6, iM7015this5, iM7015this4, this.f5843this[8], 13);
        int iM7015this8 = m7015this(iM7015this4, iM7015this7, iM7015this6, iM7015this5, this.f5843this[1], 15);
        int iM7015this9 = m7015this(iM7015this5, iM7015this8, iM7015this7, iM7015this6, this.f5843this[2], 14);
        int iM7015this10 = m7015this(iM7015this6, iM7015this9, iM7015this8, iM7015this7, this.f5843this[7], 8);
        int iM7015this11 = m7015this(iM7015this7, iM7015this10, iM7015this9, iM7015this8, this.f5843this[0], 13);
        int iM7015this12 = m7015this(iM7015this8, iM7015this11, iM7015this10, iM7015this9, this.f5843this[6], 6);
        int iM7015this13 = m7015this(iM7015this9, iM7015this12, iM7015this11, iM7015this10, this.f5843this[13], 5);
        int iM7015this14 = m7015this(iM7015this10, iM7015this13, iM7015this12, iM7015this11, this.f5843this[11], 12);
        int iM7015this15 = m7015this(iM7015this11, iM7015this14, iM7015this13, iM7015this12, this.f5843this[5], 7);
        int iM7015this16 = m7015this(iM7015this12, iM7015this15, iM7015this14, iM7015this13, this.f5843this[12], 5);
        int iM7003break = m7003break(iM7015this13, iM7015this16, iM7015this15, iM7015this14, this.f5843this[1], 11);
        int iM7003break2 = m7003break(iM7015this14, iM7003break, iM7015this16, iM7015this15, this.f5843this[9], 12);
        int iM7003break3 = m7003break(iM7015this15, iM7003break2, iM7003break, iM7015this16, this.f5843this[11], 14);
        int iM7003break4 = m7003break(iM7015this16, iM7003break3, iM7003break2, iM7003break, this.f5843this[10], 15);
        int iM7003break5 = m7003break(iM7003break, iM7003break4, iM7003break3, iM7003break2, this.f5843this[0], 14);
        int iM7003break6 = m7003break(iM7003break2, iM7003break5, iM7003break4, iM7003break3, this.f5843this[8], 15);
        int iM7003break7 = m7003break(iM7003break3, iM7003break6, iM7003break5, iM7003break4, this.f5843this[12], 9);
        int iM7003break8 = m7003break(iM7003break4, iM7003break7, iM7003break6, iM7003break5, this.f5843this[4], 8);
        int iM7003break9 = m7003break(iM7003break5, iM7003break8, iM7003break7, iM7003break6, this.f5843this[13], 9);
        int iM7003break10 = m7003break(iM7003break6, iM7003break9, iM7003break8, iM7003break7, this.f5843this[3], 14);
        int iM7003break11 = m7003break(iM7003break7, iM7003break10, iM7003break9, iM7003break8, this.f5843this[7], 5);
        int iM7003break12 = m7003break(iM7003break8, iM7003break11, iM7003break10, iM7003break9, this.f5843this[15], 6);
        int iM7003break13 = m7003break(iM7003break9, iM7003break12, iM7003break11, iM7003break10, this.f5843this[14], 8);
        int iM7003break14 = m7003break(iM7003break10, iM7003break13, iM7003break12, iM7003break11, this.f5843this[5], 6);
        int iM7003break15 = m7003break(iM7003break11, iM7003break14, iM7003break13, iM7003break12, this.f5843this[6], 5);
        int iM7003break16 = m7003break(iM7003break12, iM7003break15, iM7003break14, iM7003break13, this.f5843this[2], 12);
        int iM7008final = m7008final(i, i2, i3, i4, this.f5843this[5], 8);
        int iM7008final2 = m7008final(i4, iM7008final, i2, i3, this.f5843this[14], 9);
        int iM7008final3 = m7008final(i3, iM7008final2, iM7008final, i2, this.f5843this[7], 9);
        int iM7008final4 = m7008final(i2, iM7008final3, iM7008final2, iM7008final, this.f5843this[0], 11);
        int iM7008final5 = m7008final(iM7008final, iM7008final4, iM7008final3, iM7008final2, this.f5843this[9], 13);
        int iM7008final6 = m7008final(iM7008final2, iM7008final5, iM7008final4, iM7008final3, this.f5843this[2], 15);
        int iM7008final7 = m7008final(iM7008final3, iM7008final6, iM7008final5, iM7008final4, this.f5843this[11], 15);
        int iM7008final8 = m7008final(iM7008final4, iM7008final7, iM7008final6, iM7008final5, this.f5843this[4], 5);
        int iM7008final9 = m7008final(iM7008final5, iM7008final8, iM7008final7, iM7008final6, this.f5843this[13], 7);
        int iM7008final10 = m7008final(iM7008final6, iM7008final9, iM7008final8, iM7008final7, this.f5843this[6], 7);
        int iM7008final11 = m7008final(iM7008final7, iM7008final10, iM7008final9, iM7008final8, this.f5843this[15], 8);
        int iM7008final12 = m7008final(iM7008final8, iM7008final11, iM7008final10, iM7008final9, this.f5843this[8], 11);
        int iM7008final13 = m7008final(iM7008final9, iM7008final12, iM7008final11, iM7008final10, this.f5843this[1], 14);
        int iM7008final14 = m7008final(iM7008final10, iM7008final13, iM7008final12, iM7008final11, this.f5843this[10], 14);
        int iM7008final15 = m7008final(iM7008final11, iM7008final14, iM7008final13, iM7008final12, this.f5843this[3], 12);
        int iM7008final16 = m7008final(iM7008final12, iM7008final15, iM7008final14, iM7008final13, this.f5843this[12], 6);
        int iM7006const = m7006const(iM7008final13, iM7008final16, iM7008final15, iM7008final14, this.f5843this[6], 9);
        int iM7006const2 = m7006const(iM7008final14, iM7006const, iM7008final16, iM7008final15, this.f5843this[11], 13);
        int iM7006const3 = m7006const(iM7008final15, iM7006const2, iM7006const, iM7008final16, this.f5843this[3], 15);
        int iM7006const4 = m7006const(iM7008final16, iM7006const3, iM7006const2, iM7006const, this.f5843this[7], 7);
        int iM7006const5 = m7006const(iM7006const, iM7006const4, iM7006const3, iM7006const2, this.f5843this[0], 12);
        int iM7006const6 = m7006const(iM7006const2, iM7006const5, iM7006const4, iM7006const3, this.f5843this[13], 8);
        int iM7006const7 = m7006const(iM7006const3, iM7006const6, iM7006const5, iM7006const4, this.f5843this[5], 9);
        int iM7006const8 = m7006const(iM7006const4, iM7006const7, iM7006const6, iM7006const5, this.f5843this[10], 11);
        int iM7006const9 = m7006const(iM7006const5, iM7006const8, iM7006const7, iM7006const6, this.f5843this[14], 7);
        int iM7006const10 = m7006const(iM7006const6, iM7006const9, iM7006const8, iM7006const7, this.f5843this[15], 7);
        int iM7006const11 = m7006const(iM7006const7, iM7006const10, iM7006const9, iM7006const8, this.f5843this[8], 12);
        int iM7006const12 = m7006const(iM7006const8, iM7006const11, iM7006const10, iM7006const9, this.f5843this[12], 7);
        int iM7006const13 = m7006const(iM7006const9, iM7006const12, iM7006const11, iM7006const10, this.f5843this[4], 6);
        int iM7006const14 = m7006const(iM7006const10, iM7006const13, iM7006const12, iM7006const11, this.f5843this[9], 15);
        int iM7006const15 = m7006const(iM7006const11, iM7006const14, iM7006const13, iM7006const12, this.f5843this[1], 13);
        int iM7006const16 = m7006const(iM7006const12, iM7006const15, iM7006const14, iM7006const13, this.f5843this[2], 11);
        int iM7005class = m7005class(iM7006const13, iM7006const16, iM7006const15, iM7006const14, this.f5843this[15], 9);
        int iM7005class2 = m7005class(iM7006const14, iM7005class, iM7006const16, iM7006const15, this.f5843this[5], 7);
        int iM7005class3 = m7005class(iM7006const15, iM7005class2, iM7005class, iM7006const16, this.f5843this[1], 15);
        int iM7005class4 = m7005class(iM7006const16, iM7005class3, iM7005class2, iM7005class, this.f5843this[3], 11);
        int iM7005class5 = m7005class(iM7005class, iM7005class4, iM7005class3, iM7005class2, this.f5843this[7], 8);
        int iM7005class6 = m7005class(iM7005class2, iM7005class5, iM7005class4, iM7005class3, this.f5843this[14], 6);
        int iM7005class7 = m7005class(iM7005class3, iM7005class6, iM7005class5, iM7005class4, this.f5843this[6], 6);
        int iM7005class8 = m7005class(iM7005class4, iM7005class7, iM7005class6, iM7005class5, this.f5843this[9], 14);
        int iM7005class9 = m7005class(iM7005class5, iM7005class8, iM7005class7, iM7005class6, this.f5843this[11], 12);
        int iM7005class10 = m7005class(iM7005class6, iM7005class9, iM7005class8, iM7005class7, this.f5843this[8], 13);
        int iM7005class11 = m7005class(iM7005class7, iM7005class10, iM7005class9, iM7005class8, this.f5843this[12], 5);
        int iM7005class12 = m7005class(iM7005class8, iM7005class11, iM7005class10, iM7005class9, this.f5843this[2], 14);
        int iM7005class13 = m7005class(iM7005class9, iM7005class12, iM7005class11, iM7005class10, this.f5843this[10], 13);
        int iM7005class14 = m7005class(iM7005class10, iM7005class13, iM7005class12, iM7005class11, this.f5843this[0], 13);
        int iM7005class15 = m7005class(iM7005class11, iM7005class14, iM7005class13, iM7005class12, this.f5843this[4], 7);
        int iM7005class16 = m7005class(iM7005class12, iM7005class15, iM7005class14, iM7005class13, this.f5843this[13], 5);
        int iM7004catch = m7004catch(iM7005class13, iM7005class16, iM7005class15, iM7005class14, this.f5843this[8], 15);
        int iM7004catch2 = m7004catch(iM7005class14, iM7004catch, iM7005class16, iM7005class15, this.f5843this[6], 5);
        int iM7004catch3 = m7004catch(iM7005class15, iM7004catch2, iM7004catch, iM7005class16, this.f5843this[4], 8);
        int iM7004catch4 = m7004catch(iM7005class16, iM7004catch3, iM7004catch2, iM7004catch, this.f5843this[1], 11);
        int iM7004catch5 = m7004catch(iM7004catch, iM7004catch4, iM7004catch3, iM7004catch2, this.f5843this[3], 14);
        int iM7004catch6 = m7004catch(iM7004catch2, iM7004catch5, iM7004catch4, iM7004catch3, this.f5843this[11], 14);
        int iM7004catch7 = m7004catch(iM7004catch3, iM7004catch6, iM7004catch5, iM7004catch4, this.f5843this[15], 6);
        int iM7004catch8 = m7004catch(iM7004catch4, iM7004catch7, iM7004catch6, iM7004catch5, this.f5843this[0], 14);
        int iM7004catch9 = m7004catch(iM7004catch5, iM7004catch8, iM7004catch7, iM7004catch6, this.f5843this[5], 6);
        int iM7004catch10 = m7004catch(iM7004catch6, iM7004catch9, iM7004catch8, iM7004catch7, this.f5843this[12], 9);
        int iM7004catch11 = m7004catch(iM7004catch7, iM7004catch10, iM7004catch9, iM7004catch8, this.f5843this[2], 12);
        int iM7004catch12 = m7004catch(iM7004catch8, iM7004catch11, iM7004catch10, iM7004catch9, this.f5843this[13], 9);
        int iM7004catch13 = m7004catch(iM7004catch9, iM7004catch12, iM7004catch11, iM7004catch10, this.f5843this[9], 12);
        int iM7004catch14 = m7004catch(iM7004catch10, iM7004catch13, iM7004catch12, iM7004catch11, this.f5843this[7], 5);
        int iM7004catch15 = m7004catch(iM7004catch11, iM7004catch14, iM7004catch13, iM7004catch12, this.f5843this[10], 15);
        int iM7004catch16 = m7004catch(iM7004catch12, iM7004catch15, iM7004catch14, iM7004catch13, this.f5843this[14], 8);
        int i5 = iM7004catch14 + iM7003break15 + this.f5840case;
        this.f5840case = this.f5841else + iM7003break14 + iM7004catch13;
        this.f5841else = this.f5842goto + iM7003break13 + iM7004catch16;
        this.f5842goto = this.f5844try + iM7003break16 + iM7004catch15;
        this.f5844try = i5;
        this.f5839break = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f5843this;
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
        this.f5844try = 1732584193;
        this.f5840case = -271733879;
        this.f5841else = -1732584194;
        this.f5842goto = 271733878;
        this.f5839break = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f5843this;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        m7016throw((rj1) memoable);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try */
    public void mo4747try(long j) {
        if (this.f5839break > 14) {
            mo4746new();
        }
        int[] iArr = this.f5843this;
        iArr[14] = (int) ((-1) & j);
        iArr[15] = (int) (j >>> 32);
    }
}
