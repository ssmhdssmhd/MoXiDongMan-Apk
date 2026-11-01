package com.google.zxing.common.reedsolomon;

import freemarker.core.Creturn;

/* renamed from: com.google.zxing.common.reedsolomon.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: break, reason: not valid java name */
    public static final Cdo f17450break;

    /* renamed from: catch, reason: not valid java name */
    public static final Cdo f17451catch;

    /* renamed from: class, reason: not valid java name */
    public static final Cdo f17452class;

    /* renamed from: const, reason: not valid java name */
    public static final Cdo f17453const;

    /* renamed from: final, reason: not valid java name */
    public static final Cdo f17454final;

    /* renamed from: super, reason: not valid java name */
    public static final Cdo f17456super;

    /* renamed from: case, reason: not valid java name */
    private final int f17458case;

    /* renamed from: do, reason: not valid java name */
    private final int[] f17459do;

    /* renamed from: else, reason: not valid java name */
    private final int f17460else;

    /* renamed from: for, reason: not valid java name */
    private final Cif f17461for;

    /* renamed from: if, reason: not valid java name */
    private final int[] f17462if;

    /* renamed from: new, reason: not valid java name */
    private final Cif f17463new;

    /* renamed from: try, reason: not valid java name */
    private final int f17464try;

    /* renamed from: goto, reason: not valid java name */
    public static final Cdo f17455goto = new Cdo(4201, 4096, 1);

    /* renamed from: this, reason: not valid java name */
    public static final Cdo f17457this = new Cdo(1033, 1024, 1);

    static {
        Cdo cdo = new Cdo(67, 64, 1);
        f17450break = cdo;
        f17451catch = new Cdo(19, 16, 1);
        f17452class = new Cdo(Creturn.f24112class, 256, 0);
        Cdo cdo2 = new Cdo(301, 256, 1);
        f17453const = cdo2;
        f17454final = cdo2;
        f17456super = cdo;
    }

    public Cdo(int i, int i2, int i3) {
        this.f17458case = i;
        this.f17464try = i2;
        this.f17460else = i3;
        this.f17459do = new int[i2];
        this.f17462if = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f17459do[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.f17462if[this.f17459do[i6]] = i6;
        }
        this.f17461for = new Cif(this, new int[]{0});
        this.f17463new = new Cif(this, new int[]{1});
    }

    /* renamed from: do, reason: not valid java name */
    public static int m21810do(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: break, reason: not valid java name */
    public int m21811break(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f17459do;
        int[] iArr2 = this.f17462if;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f17464try - 1)];
    }

    /* renamed from: case, reason: not valid java name */
    public int m21812case() {
        return this.f17464try;
    }

    /* renamed from: else, reason: not valid java name */
    public Cif m21813else() {
        return this.f17461for;
    }

    /* renamed from: for, reason: not valid java name */
    public int m21814for(int i) {
        return this.f17459do[i];
    }

    /* renamed from: goto, reason: not valid java name */
    public int m21815goto(int i) {
        if (i != 0) {
            return this.f17459do[(this.f17464try - this.f17462if[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* renamed from: if, reason: not valid java name */
    public Cif m21816if(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f17461for;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new Cif(this, iArr);
    }

    /* renamed from: new, reason: not valid java name */
    public int m21817new() {
        return this.f17460else;
    }

    /* renamed from: this, reason: not valid java name */
    public int m21818this(int i) {
        if (i != 0) {
            return this.f17462if[i];
        }
        throw new IllegalArgumentException();
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f17458case) + ',' + this.f17464try + ')';
    }

    /* renamed from: try, reason: not valid java name */
    public Cif m21819try() {
        return this.f17463new;
    }
}
