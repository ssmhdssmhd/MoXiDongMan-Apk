package com.google.zxing.datamatrix.decoder;

import android.support.v4.ld0;

/* renamed from: com.google.zxing.datamatrix.decoder.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry {

    /* renamed from: goto, reason: not valid java name */
    private static final Ctry[] f17483goto = m21861do();

    /* renamed from: case, reason: not valid java name */
    private final Cfor f17484case;

    /* renamed from: do, reason: not valid java name */
    private final int f17485do;

    /* renamed from: else, reason: not valid java name */
    private final int f17486else;

    /* renamed from: for, reason: not valid java name */
    private final int f17487for;

    /* renamed from: if, reason: not valid java name */
    private final int f17488if;

    /* renamed from: new, reason: not valid java name */
    private final int f17489new;

    /* renamed from: try, reason: not valid java name */
    private final int f17490try;

    /* renamed from: com.google.zxing.datamatrix.decoder.try$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final int f17493do;

        /* renamed from: if, reason: not valid java name */
        private final int f17494if;

        /* renamed from: do, reason: not valid java name */
        public int m21872do() {
            return this.f17493do;
        }

        /* renamed from: if, reason: not valid java name */
        public int m21873if() {
            return this.f17494if;
        }

        private Cif(int i, int i2) {
            this.f17493do = i;
            this.f17494if = i2;
        }
    }

    private Ctry(int i, int i2, int i3, int i4, int i5, Cfor cfor) {
        this.f17485do = i;
        this.f17488if = i2;
        this.f17487for = i3;
        this.f17489new = i4;
        this.f17490try = i5;
        this.f17484case = cfor;
        int iM21871if = cfor.m21871if();
        int iM21872do = 0;
        for (Cif cif : cfor.m21870do()) {
            iM21872do += cif.m21872do() * (cif.m21873if() + iM21871if);
        }
        this.f17486else = iM21872do;
    }

    /* renamed from: do, reason: not valid java name */
    private static Ctry[] m21861do() {
        int i = 1;
        int i2 = 5;
        int i3 = 8;
        Ctry ctry = new Ctry(3, 14, 14, 12, 12, new Cfor(10, new Cif(i, i3)));
        int i4 = 2;
        int i5 = 12;
        int i6 = 18;
        Ctry ctry2 = new Ctry(7, 22, 22, 20, 20, new Cfor(20, new Cif(i, 30)));
        int i7 = 6;
        int i8 = 36;
        int i9 = 62;
        int i10 = 56;
        int i11 = 68;
        Cif cif = new Cif(i, 5);
        Cif cif2 = new Cif(i, 10);
        Cif cif3 = new Cif(i, 16);
        return new Ctry[]{new Ctry(1, 10, 10, 8, 8, new Cfor(i2, new Cif(i, 3))), new Ctry(2, 12, 12, 10, 10, new Cfor(7, new Cif(i, i2))), ctry, new Ctry(4, 16, 16, 14, 14, new Cfor(i5, new Cif(i, i5))), new Ctry(5, 18, 18, 16, 16, new Cfor(14, new Cif(i, i6))), new Ctry(6, 20, 20, 18, 18, new Cfor(i6, new Cif(i, 22))), ctry2, new Ctry(8, 24, 24, 22, 22, new Cfor(24, new Cif(i, i8))), new Ctry(9, 26, 26, 24, 24, new Cfor(28, new Cif(i, 44))), new Ctry(10, 32, 32, 14, 14, new Cfor(i8, new Cif(i, i9))), new Ctry(11, 36, 36, 16, 16, new Cfor(42, new Cif(i, 86))), new Ctry(12, 40, 40, 18, 18, new Cfor(48, new Cif(i, 114))), new Ctry(13, 44, 44, 20, 20, new Cfor(i10, new Cif(i, 144))), new Ctry(14, 48, 48, 22, 22, new Cfor(i11, new Cif(i, 174))), new Ctry(15, 52, 52, 24, 24, new Cfor(42, new Cif(i4, 102))), new Ctry(16, 64, 64, 14, 14, new Cfor(i10, new Cif(i4, 140))), new Ctry(17, 72, 72, 16, 16, new Cfor(i8, new Cif(4, 92))), new Ctry(18, 80, 80, 18, 18, new Cfor(48, new Cif(4, 114))), new Ctry(19, 88, 88, 20, 20, new Cfor(i10, new Cif(4, 144))), new Ctry(20, 96, 96, 22, 22, new Cfor(i11, new Cif(4, 174))), new Ctry(21, 104, 104, 24, 24, new Cfor(i10, new Cif(i7, 136))), new Ctry(22, 120, 120, 18, 18, new Cfor(i11, new Cif(i7, 175))), new Ctry(23, 132, 132, 20, 20, new Cfor(i9, new Cif(i3, 163))), new Ctry(24, 144, 144, 22, 22, new Cfor(i9, new Cif(i3, 156), new Cif(i4, 155))), new Ctry(25, 8, 18, 6, 16, new Cfor(7, cif)), new Ctry(26, 8, 32, 6, 14, new Cfor(11, cif2)), new Ctry(27, 12, 26, 10, 24, new Cfor(14, cif3)), new Ctry(28, 12, 36, 10, 16, new Cfor(i6, new Cif(i, 22))), new Ctry(29, 16, 36, 14, 16, new Cfor(24, new Cif(i, 32))), new Ctry(30, 16, 48, 14, 22, new Cfor(28, new Cif(i, 49)))};
    }

    /* renamed from: goto, reason: not valid java name */
    public static Ctry m21862goto(int i, int i2) throws ld0 {
        if ((i & 1) != 0 || (i2 & 1) != 0) {
            throw ld0.getFormatInstance();
        }
        for (Ctry ctry : f17483goto) {
            if (ctry.f17488if == i && ctry.f17487for == i2) {
                return ctry;
            }
        }
        throw ld0.getFormatInstance();
    }

    /* renamed from: case, reason: not valid java name */
    public int m21863case() {
        return this.f17488if;
    }

    /* renamed from: else, reason: not valid java name */
    public int m21864else() {
        return this.f17486else;
    }

    /* renamed from: for, reason: not valid java name */
    public int m21865for() {
        return this.f17489new;
    }

    /* renamed from: if, reason: not valid java name */
    public int m21866if() {
        return this.f17490try;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m21867new() {
        return this.f17484case;
    }

    /* renamed from: this, reason: not valid java name */
    public int m21868this() {
        return this.f17485do;
    }

    public String toString() {
        return String.valueOf(this.f17485do);
    }

    /* renamed from: try, reason: not valid java name */
    public int m21869try() {
        return this.f17487for;
    }

    /* renamed from: com.google.zxing.datamatrix.decoder.try$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final int f17491do;

        /* renamed from: if, reason: not valid java name */
        private final Cif[] f17492if;

        /* renamed from: do, reason: not valid java name */
        public Cif[] m21870do() {
            return this.f17492if;
        }

        /* renamed from: if, reason: not valid java name */
        public int m21871if() {
            return this.f17491do;
        }

        private Cfor(int i, Cif cif) {
            this.f17491do = i;
            this.f17492if = new Cif[]{cif};
        }

        private Cfor(int i, Cif cif, Cif cif2) {
            this.f17491do = i;
            this.f17492if = new Cif[]{cif, cif2};
        }
    }
}
