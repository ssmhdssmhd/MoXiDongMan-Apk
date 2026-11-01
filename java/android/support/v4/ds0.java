package android.support.v4;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class ds0 {

    /* renamed from: case, reason: not valid java name */
    private short[][] f1112case;

    /* renamed from: do, reason: not valid java name */
    private int f1113do;

    /* renamed from: else, reason: not valid java name */
    private short[] f1114else;

    /* renamed from: for, reason: not valid java name */
    private int f1115for;

    /* renamed from: if, reason: not valid java name */
    private int f1116if;

    /* renamed from: new, reason: not valid java name */
    private short[][][] f1117new;

    /* renamed from: try, reason: not valid java name */
    private short[][][] f1118try;

    public ds0(byte b, byte b2, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int i = b & 255;
        this.f1113do = i;
        int i2 = b2 & 255;
        this.f1116if = i2;
        this.f1115for = i2 - i;
        this.f1117new = sArr;
        this.f1118try = sArr2;
        this.f1112case = sArr3;
        this.f1114else = sArr4;
    }

    public ds0(int i, int i2, SecureRandom secureRandom) {
        this.f1113do = i;
        this.f1116if = i2;
        int i3 = i2 - i;
        this.f1115for = i3;
        this.f1117new = (short[][][]) Array.newInstance((Class<?>) short.class, i3, i3, i);
        int i4 = this.f1115for;
        int i5 = this.f1113do;
        this.f1118try = (short[][][]) Array.newInstance((Class<?>) short.class, i4, i5, i5);
        this.f1112case = (short[][]) Array.newInstance((Class<?>) short.class, this.f1115for, this.f1116if);
        int i6 = this.f1115for;
        this.f1114else = new short[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            for (int i8 = 0; i8 < this.f1115for; i8++) {
                for (int i9 = 0; i9 < this.f1113do; i9++) {
                    this.f1117new[i7][i8][i9] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i10 = 0; i10 < i6; i10++) {
            for (int i11 = 0; i11 < this.f1113do; i11++) {
                for (int i12 = 0; i12 < this.f1113do; i12++) {
                    this.f1118try[i10][i11][i12] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i13 = 0; i13 < i6; i13++) {
            for (int i14 = 0; i14 < this.f1116if; i14++) {
                this.f1112case[i13][i14] = (short) (secureRandom.nextInt() & 255);
            }
        }
        for (int i15 = 0; i15 < i6; i15++) {
            this.f1114else[i15] = (short) (secureRandom.nextInt() & 255);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m1505case() {
        return this.f1113do;
    }

    /* renamed from: do, reason: not valid java name */
    public short[][][] m1506do() {
        return this.f1117new;
    }

    /* renamed from: else, reason: not valid java name */
    public int m1507else() {
        return this.f1116if;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ds0)) {
            return false;
        }
        ds0 ds0Var = (ds0) obj;
        return this.f1113do == ds0Var.m1505case() && this.f1116if == ds0Var.m1507else() && this.f1115for == ds0Var.m1512try() && cl1.m960catch(this.f1117new, ds0Var.m1506do()) && cl1.m960catch(this.f1118try, ds0Var.m1510if()) && cl1.m958break(this.f1112case, ds0Var.m1511new()) && cl1.m967this(this.f1114else, ds0Var.m1508for());
    }

    /* renamed from: for, reason: not valid java name */
    public short[] m1508for() {
        return this.f1114else;
    }

    /* renamed from: goto, reason: not valid java name */
    public short[][] m1509goto(short[] sArr) {
        int i = this.f1115for;
        int i2 = 0;
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) short.class, i, i + 1);
        short[] sArr3 = new short[this.f1115for];
        for (int i3 = 0; i3 < this.f1115for; i3++) {
            for (int i4 = 0; i4 < this.f1113do; i4++) {
                for (int i5 = 0; i5 < this.f1113do; i5++) {
                    sArr3[i3] = pe0.m5955do(sArr3[i3], pe0.m5959try(pe0.m5959try(this.f1118try[i3][i4][i5], sArr[i4]), sArr[i5]));
                }
            }
        }
        for (int i6 = 0; i6 < this.f1115for; i6++) {
            for (int i7 = 0; i7 < this.f1115for; i7++) {
                for (int i8 = 0; i8 < this.f1113do; i8++) {
                    sArr2[i6][i7] = pe0.m5955do(sArr2[i6][i7], pe0.m5959try(this.f1117new[i6][i7][i8], sArr[i8]));
                }
            }
        }
        for (int i9 = 0; i9 < this.f1115for; i9++) {
            for (int i10 = 0; i10 < this.f1113do; i10++) {
                sArr3[i9] = pe0.m5955do(sArr3[i9], pe0.m5959try(this.f1112case[i9][i10], sArr[i10]));
            }
        }
        for (int i11 = 0; i11 < this.f1115for; i11++) {
            for (int i12 = this.f1113do; i12 < this.f1116if; i12++) {
                short[] sArr4 = sArr2[i11];
                int i13 = this.f1113do;
                sArr4[i12 - i13] = pe0.m5955do(this.f1112case[i11][i12], sArr2[i11][i12 - i13]);
            }
        }
        for (int i14 = 0; i14 < this.f1115for; i14++) {
            sArr3[i14] = pe0.m5955do(sArr3[i14], this.f1114else[i14]);
        }
        while (true) {
            int i15 = this.f1115for;
            if (i2 >= i15) {
                return sArr2;
            }
            sArr2[i2][i15] = sArr3[i2];
            i2++;
        }
    }

    public int hashCode() {
        return (((((((((((this.f1113do * 37) + this.f1116if) * 37) + this.f1115for) * 37) + q3.y(this.f1117new)) * 37) + q3.y(this.f1118try)) * 37) + q3.x(this.f1112case)) * 37) + q3.v(this.f1114else);
    }

    /* renamed from: if, reason: not valid java name */
    public short[][][] m1510if() {
        return this.f1118try;
    }

    /* renamed from: new, reason: not valid java name */
    public short[][] m1511new() {
        return this.f1112case;
    }

    /* renamed from: try, reason: not valid java name */
    public int m1512try() {
        return this.f1115for;
    }
}
