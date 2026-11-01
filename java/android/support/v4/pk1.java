package android.support.v4;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public class pk1 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: break, reason: not valid java name */
    private int f5087break;

    /* renamed from: case, reason: not valid java name */
    private short[] f5088case;

    /* renamed from: catch, reason: not valid java name */
    private ds0[] f5089catch;

    /* renamed from: class, reason: not valid java name */
    private int[] f5090class;

    /* renamed from: const, reason: not valid java name */
    private short[][] f5091const;

    /* renamed from: do, reason: not valid java name */
    private boolean f5092do = false;

    /* renamed from: else, reason: not valid java name */
    private short[][] f5093else;

    /* renamed from: final, reason: not valid java name */
    private short[][] f5094final;

    /* renamed from: for, reason: not valid java name */
    private ok1 f5095for;

    /* renamed from: goto, reason: not valid java name */
    private short[][] f5096goto;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f5097if;

    /* renamed from: new, reason: not valid java name */
    private short[][] f5098new;

    /* renamed from: super, reason: not valid java name */
    private short[] f5099super;

    /* renamed from: this, reason: not valid java name */
    private short[] f5100this;

    /* renamed from: try, reason: not valid java name */
    private short[][] f5101try;

    /* renamed from: case, reason: not valid java name */
    private void m6096case() {
        int[] iArr = this.f5090class;
        int i = iArr[iArr.length - 1];
        this.f5093else = (short[][]) Array.newInstance((Class<?>) short.class, i, i);
        this.f5096goto = null;
        jq jqVar = new jq();
        while (this.f5096goto == null) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < i; i3++) {
                    this.f5093else[i2][i3] = (short) (this.f5097if.nextInt() & 255);
                }
            }
            this.f5096goto = jqVar.m4062try(this.f5093else);
        }
        this.f5100this = new short[i];
        for (int i4 = 0; i4 < i; i4++) {
            this.f5100this[i4] = (short) (this.f5097if.nextInt() & 255);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m6097do(short[][][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        this.f5091const = (short[][]) Array.newInstance((Class<?>) short.class, length, ((length2 + 1) * length2) / 2);
        for (int i = 0; i < length; i++) {
            int i2 = 0;
            for (int i3 = 0; i3 < length2; i3++) {
                for (int i4 = i3; i4 < length2; i4++) {
                    short[][] sArr2 = this.f5091const;
                    if (i4 == i3) {
                        sArr2[i][i2] = sArr[i][i3][i4];
                    } else {
                        sArr2[i][i2] = pe0.m5955do(sArr[i][i3][i4], sArr[i][i4][i3]);
                    }
                    i2++;
                }
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m6098goto() {
        m6103else(new ok1(Cfor.m33599case(), new uk1()));
    }

    /* renamed from: if, reason: not valid java name */
    private void m6099if() {
        Class<short> cls;
        Class<short> cls2 = short.class;
        jq jqVar = new jq();
        int[] iArr = this.f5090class;
        int i = 0;
        int i2 = iArr[iArr.length - 1] - iArr[0];
        int i3 = iArr[iArr.length - 1];
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) cls2, i2, i3, i3);
        this.f5094final = (short[][]) Array.newInstance((Class<?>) cls2, i2, i3);
        this.f5099super = new short[i2];
        short[] sArr2 = new short[i3];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            ds0[] ds0VarArr = this.f5089catch;
            if (i4 >= ds0VarArr.length) {
                break;
            }
            short[][][] sArrM1506do = ds0VarArr[i4].m1506do();
            short[][][] sArrM1510if = this.f5089catch[i4].m1510if();
            short[][] sArrM1511new = this.f5089catch[i4].m1511new();
            short[] sArrM1508for = this.f5089catch[i4].m1508for();
            int length = sArrM1506do[i].length;
            int length2 = sArrM1510if[i].length;
            while (i < length) {
                int i6 = 0;
                while (true) {
                    cls = cls2;
                    if (i6 >= length) {
                        break;
                    }
                    int i7 = 0;
                    while (i7 < length2) {
                        int i8 = i2;
                        int i9 = i3;
                        int i10 = i6 + length2;
                        short[] sArrM4058else = jqVar.m4058else(sArrM1506do[i][i6][i7], this.f5093else[i10]);
                        int i11 = i5 + i;
                        int i12 = i4;
                        sArr[i11] = jqVar.m4057do(sArr[i11], jqVar.m4059goto(sArrM4058else, this.f5093else[i7]));
                        short[] sArrM4058else2 = jqVar.m4058else(this.f5100this[i7], sArrM4058else);
                        short[][] sArr3 = this.f5094final;
                        sArr3[i11] = jqVar.m4060if(sArrM4058else2, sArr3[i11]);
                        short[] sArrM4058else3 = jqVar.m4058else(this.f5100this[i10], jqVar.m4058else(sArrM1506do[i][i6][i7], this.f5093else[i7]));
                        short[][] sArr4 = this.f5094final;
                        sArr4[i11] = jqVar.m4060if(sArrM4058else3, sArr4[i11]);
                        short sM5959try = pe0.m5959try(sArrM1506do[i][i6][i7], this.f5100this[i10]);
                        short[] sArr5 = this.f5099super;
                        sArr5[i11] = pe0.m5955do(sArr5[i11], pe0.m5959try(sM5959try, this.f5100this[i7]));
                        i7++;
                        i3 = i9;
                        i2 = i8;
                        sArrM1506do = sArrM1506do;
                        i4 = i12;
                        sArrM1508for = sArrM1508for;
                    }
                    i6++;
                    cls2 = cls;
                }
                int i13 = i3;
                int i14 = i2;
                int i15 = i4;
                short[][][] sArr6 = sArrM1506do;
                short[] sArr7 = sArrM1508for;
                for (int i16 = 0; i16 < length2; i16++) {
                    for (int i17 = 0; i17 < length2; i17++) {
                        short[] sArrM4058else4 = jqVar.m4058else(sArrM1510if[i][i16][i17], this.f5093else[i16]);
                        int i18 = i5 + i;
                        sArr[i18] = jqVar.m4057do(sArr[i18], jqVar.m4059goto(sArrM4058else4, this.f5093else[i17]));
                        short[] sArrM4058else5 = jqVar.m4058else(this.f5100this[i17], sArrM4058else4);
                        short[][] sArr8 = this.f5094final;
                        sArr8[i18] = jqVar.m4060if(sArrM4058else5, sArr8[i18]);
                        short[] sArrM4058else6 = jqVar.m4058else(this.f5100this[i16], jqVar.m4058else(sArrM1510if[i][i16][i17], this.f5093else[i17]));
                        short[][] sArr9 = this.f5094final;
                        sArr9[i18] = jqVar.m4060if(sArrM4058else6, sArr9[i18]);
                        short sM5959try2 = pe0.m5959try(sArrM1510if[i][i16][i17], this.f5100this[i16]);
                        short[] sArr10 = this.f5099super;
                        sArr10[i18] = pe0.m5955do(sArr10[i18], pe0.m5959try(sM5959try2, this.f5100this[i17]));
                    }
                }
                for (int i19 = 0; i19 < length2 + length; i19++) {
                    short[] sArrM4058else7 = jqVar.m4058else(sArrM1511new[i][i19], this.f5093else[i19]);
                    short[][] sArr11 = this.f5094final;
                    int i20 = i5 + i;
                    sArr11[i20] = jqVar.m4060if(sArrM4058else7, sArr11[i20]);
                    short[] sArr12 = this.f5099super;
                    sArr12[i20] = pe0.m5955do(sArr12[i20], pe0.m5959try(sArrM1511new[i][i19], this.f5100this[i19]));
                }
                short[] sArr13 = this.f5099super;
                int i21 = i5 + i;
                sArr13[i21] = pe0.m5955do(sArr13[i21], sArr7[i]);
                i++;
                cls2 = cls;
                i3 = i13;
                i2 = i14;
                sArrM1506do = sArr6;
                i4 = i15;
                sArrM1508for = sArr7;
            }
            i5 += length;
            i4++;
            i = 0;
        }
        Class<short> cls3 = cls2;
        int i22 = i3;
        int i23 = i2;
        short[][][] sArr14 = (short[][][]) Array.newInstance((Class<?>) cls3, i23, i22, i22);
        short[][] sArr15 = (short[][]) Array.newInstance((Class<?>) cls3, i23, i22);
        short[] sArr16 = new short[i23];
        for (int i24 = 0; i24 < i23; i24++) {
            int i25 = 0;
            while (true) {
                short[][] sArr17 = this.f5098new;
                if (i25 < sArr17.length) {
                    sArr14[i24] = jqVar.m4057do(sArr14[i24], jqVar.m4055case(sArr17[i24][i25], sArr[i25]));
                    sArr15[i24] = jqVar.m4060if(sArr15[i24], jqVar.m4058else(this.f5098new[i24][i25], this.f5094final[i25]));
                    sArr16[i24] = pe0.m5955do(sArr16[i24], pe0.m5959try(this.f5098new[i24][i25], this.f5099super[i25]));
                    i25++;
                }
            }
            sArr16[i24] = pe0.m5955do(sArr16[i24], this.f5088case[i24]);
        }
        this.f5094final = sArr15;
        this.f5099super = sArr16;
        m6097do(sArr14);
    }

    /* renamed from: new, reason: not valid java name */
    private void m6100new() {
        this.f5089catch = new ds0[this.f5087break];
        int i = 0;
        while (i < this.f5087break) {
            ds0[] ds0VarArr = this.f5089catch;
            int[] iArr = this.f5090class;
            int i2 = i + 1;
            ds0VarArr[i] = new ds0(iArr[i], iArr[i2], this.f5097if);
            i = i2;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m6101this() {
        m6102try();
        m6096case();
        m6100new();
        m6099if();
    }

    /* renamed from: try, reason: not valid java name */
    private void m6102try() {
        int[] iArr = this.f5090class;
        int i = iArr[iArr.length - 1] - iArr[0];
        this.f5098new = (short[][]) Array.newInstance((Class<?>) short.class, i, i);
        this.f5101try = null;
        jq jqVar = new jq();
        while (this.f5101try == null) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < i; i3++) {
                    this.f5098new[i2][i3] = (short) (this.f5097if.nextInt() & 255);
                }
            }
            this.f5101try = jqVar.m4062try(this.f5098new);
        }
        this.f5088case = new short[i];
        for (int i4 = 0; i4 < i; i4++) {
            this.f5088case[i4] = (short) (this.f5097if.nextInt() & 255);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m6103else(dr0 dr0Var) {
        ok1 ok1Var = (ok1) dr0Var;
        this.f5095for = ok1Var;
        this.f5097if = ok1Var.m1497do();
        this.f5090class = this.f5095for.m5702for().m8477new();
        this.f5087break = this.f5095for.m5702for().m8475for();
        this.f5092do = true;
    }

    /* renamed from: for, reason: not valid java name */
    public y3 m6104for() {
        if (!this.f5092do) {
            m6098goto();
        }
        m6101this();
        wk1 wk1Var = new wk1(this.f5101try, this.f5088case, this.f5096goto, this.f5100this, this.f5090class, this.f5089catch);
        int[] iArr = this.f5090class;
        return new y3((a4) new zk1(iArr[iArr.length - 1] - iArr[0], this.f5091const, this.f5094final, this.f5099super), (a4) wk1Var);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        return m6104for();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        m6103else(dr0Var);
    }
}
