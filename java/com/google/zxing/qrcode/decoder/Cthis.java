package com.google.zxing.qrcode.decoder;

import android.support.v4.ld0;
import android.support.v4.z8;

/* renamed from: com.google.zxing.qrcode.decoder.this, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private final int f17908do;

    /* renamed from: for, reason: not valid java name */
    private final Cif[] f17909for;

    /* renamed from: if, reason: not valid java name */
    private final int[] f17910if;

    /* renamed from: new, reason: not valid java name */
    private final int f17911new;

    /* renamed from: try, reason: not valid java name */
    private static final int[] f17907try = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};

    /* renamed from: case, reason: not valid java name */
    private static final Cthis[] f17906case = m22336if();

    /* renamed from: com.google.zxing.qrcode.decoder.this$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final int f17912do;

        /* renamed from: if, reason: not valid java name */
        private final int f17913if;

        public Cdo(int i, int i2) {
            this.f17912do = i;
            this.f17913if = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public int m22344do() {
            return this.f17912do;
        }

        /* renamed from: if, reason: not valid java name */
        public int m22345if() {
            return this.f17913if;
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.this$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final int f17914do;

        /* renamed from: if, reason: not valid java name */
        private final Cdo[] f17915if;

        public Cif(int i, Cdo... cdoArr) {
            this.f17914do = i;
            this.f17915if = cdoArr;
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo[] m22346do() {
            return this.f17915if;
        }

        /* renamed from: for, reason: not valid java name */
        public int m22347for() {
            int iM22344do = 0;
            for (Cdo cdo : this.f17915if) {
                iM22344do += cdo.m22344do();
            }
            return iM22344do;
        }

        /* renamed from: if, reason: not valid java name */
        public int m22348if() {
            return this.f17914do;
        }

        /* renamed from: new, reason: not valid java name */
        public int m22349new() {
            return this.f17914do * m22347for();
        }
    }

    private Cthis(int i, int[] iArr, Cif... cifArr) {
        this.f17908do = i;
        this.f17910if = iArr;
        this.f17909for = cifArr;
        int iM22348if = cifArr[0].m22348if();
        int iM22344do = 0;
        for (Cdo cdo : cifArr[0].m22346do()) {
            iM22344do += cdo.m22344do() * (cdo.m22345if() + iM22348if);
        }
        this.f17911new = iM22344do;
    }

    /* renamed from: else, reason: not valid java name */
    public static Cthis m22334else(int i) throws ld0 {
        if (i % 4 != 1) {
            throw ld0.getFormatInstance();
        }
        try {
            return m22337this((i - 17) / 4);
        } catch (IllegalArgumentException unused) {
            throw ld0.getFormatInstance();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cthis m22335for(int i) {
        int i2 = 0;
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            int[] iArr = f17907try;
            if (i2 >= iArr.length) {
                if (i4 <= 3) {
                    return m22337this(i3);
                }
                return null;
            }
            int i5 = iArr[i2];
            if (i5 == i) {
                return m22337this(i2 + 7);
            }
            int iM22320try = Celse.m22320try(i, i5);
            if (iM22320try < i4) {
                i3 = i2 + 7;
                i4 = iM22320try;
            }
            i2++;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static Cthis[] m22336if() {
        return new Cthis[]{new Cthis(1, new int[0], new Cif(7, new Cdo(1, 19)), new Cif(10, new Cdo(1, 16)), new Cif(13, new Cdo(1, 13)), new Cif(17, new Cdo(1, 9))), new Cthis(2, new int[]{6, 18}, new Cif(10, new Cdo(1, 34)), new Cif(16, new Cdo(1, 28)), new Cif(22, new Cdo(1, 22)), new Cif(28, new Cdo(1, 16))), new Cthis(3, new int[]{6, 22}, new Cif(15, new Cdo(1, 55)), new Cif(26, new Cdo(1, 44)), new Cif(18, new Cdo(2, 17)), new Cif(22, new Cdo(2, 13))), new Cthis(4, new int[]{6, 26}, new Cif(20, new Cdo(1, 80)), new Cif(18, new Cdo(2, 32)), new Cif(26, new Cdo(2, 24)), new Cif(16, new Cdo(4, 9))), new Cthis(5, new int[]{6, 30}, new Cif(26, new Cdo(1, 108)), new Cif(24, new Cdo(2, 43)), new Cif(18, new Cdo(2, 15), new Cdo(2, 16)), new Cif(22, new Cdo(2, 11), new Cdo(2, 12))), new Cthis(6, new int[]{6, 34}, new Cif(18, new Cdo(2, 68)), new Cif(16, new Cdo(4, 27)), new Cif(24, new Cdo(4, 19)), new Cif(28, new Cdo(4, 15))), new Cthis(7, new int[]{6, 22, 38}, new Cif(20, new Cdo(2, 78)), new Cif(18, new Cdo(4, 31)), new Cif(18, new Cdo(2, 14), new Cdo(4, 15)), new Cif(26, new Cdo(4, 13), new Cdo(1, 14))), new Cthis(8, new int[]{6, 24, 42}, new Cif(24, new Cdo(2, 97)), new Cif(22, new Cdo(2, 38), new Cdo(2, 39)), new Cif(22, new Cdo(4, 18), new Cdo(2, 19)), new Cif(26, new Cdo(4, 14), new Cdo(2, 15))), new Cthis(9, new int[]{6, 26, 46}, new Cif(30, new Cdo(2, 116)), new Cif(22, new Cdo(3, 36), new Cdo(2, 37)), new Cif(20, new Cdo(4, 16), new Cdo(4, 17)), new Cif(24, new Cdo(4, 12), new Cdo(4, 13))), new Cthis(10, new int[]{6, 28, 50}, new Cif(18, new Cdo(2, 68), new Cdo(2, 69)), new Cif(26, new Cdo(4, 43), new Cdo(1, 44)), new Cif(24, new Cdo(6, 19), new Cdo(2, 20)), new Cif(28, new Cdo(6, 15), new Cdo(2, 16))), new Cthis(11, new int[]{6, 30, 54}, new Cif(20, new Cdo(4, 81)), new Cif(30, new Cdo(1, 50), new Cdo(4, 51)), new Cif(28, new Cdo(4, 22), new Cdo(4, 23)), new Cif(24, new Cdo(3, 12), new Cdo(8, 13))), new Cthis(12, new int[]{6, 32, 58}, new Cif(24, new Cdo(2, 92), new Cdo(2, 93)), new Cif(22, new Cdo(6, 36), new Cdo(2, 37)), new Cif(26, new Cdo(4, 20), new Cdo(6, 21)), new Cif(28, new Cdo(7, 14), new Cdo(4, 15))), new Cthis(13, new int[]{6, 34, 62}, new Cif(26, new Cdo(4, 107)), new Cif(22, new Cdo(8, 37), new Cdo(1, 38)), new Cif(24, new Cdo(8, 20), new Cdo(4, 21)), new Cif(22, new Cdo(12, 11), new Cdo(4, 12))), new Cthis(14, new int[]{6, 26, 46, 66}, new Cif(30, new Cdo(3, 115), new Cdo(1, 116)), new Cif(24, new Cdo(4, 40), new Cdo(5, 41)), new Cif(20, new Cdo(11, 16), new Cdo(5, 17)), new Cif(24, new Cdo(11, 12), new Cdo(5, 13))), new Cthis(15, new int[]{6, 26, 48, 70}, new Cif(22, new Cdo(5, 87), new Cdo(1, 88)), new Cif(24, new Cdo(5, 41), new Cdo(5, 42)), new Cif(30, new Cdo(5, 24), new Cdo(7, 25)), new Cif(24, new Cdo(11, 12), new Cdo(7, 13))), new Cthis(16, new int[]{6, 26, 50, 74}, new Cif(24, new Cdo(5, 98), new Cdo(1, 99)), new Cif(28, new Cdo(7, 45), new Cdo(3, 46)), new Cif(24, new Cdo(15, 19), new Cdo(2, 20)), new Cif(30, new Cdo(3, 15), new Cdo(13, 16))), new Cthis(17, new int[]{6, 30, 54, 78}, new Cif(28, new Cdo(1, 107), new Cdo(5, 108)), new Cif(28, new Cdo(10, 46), new Cdo(1, 47)), new Cif(28, new Cdo(1, 22), new Cdo(15, 23)), new Cif(28, new Cdo(2, 14), new Cdo(17, 15))), new Cthis(18, new int[]{6, 30, 56, 82}, new Cif(30, new Cdo(5, 120), new Cdo(1, 121)), new Cif(26, new Cdo(9, 43), new Cdo(4, 44)), new Cif(28, new Cdo(17, 22), new Cdo(1, 23)), new Cif(28, new Cdo(2, 14), new Cdo(19, 15))), new Cthis(19, new int[]{6, 30, 58, 86}, new Cif(28, new Cdo(3, 113), new Cdo(4, 114)), new Cif(26, new Cdo(3, 44), new Cdo(11, 45)), new Cif(26, new Cdo(17, 21), new Cdo(4, 22)), new Cif(26, new Cdo(9, 13), new Cdo(16, 14))), new Cthis(20, new int[]{6, 34, 62, 90}, new Cif(28, new Cdo(3, 107), new Cdo(5, 108)), new Cif(26, new Cdo(3, 41), new Cdo(13, 42)), new Cif(30, new Cdo(15, 24), new Cdo(5, 25)), new Cif(28, new Cdo(15, 15), new Cdo(10, 16))), new Cthis(21, new int[]{6, 28, 50, 72, 94}, new Cif(28, new Cdo(4, 116), new Cdo(4, 117)), new Cif(26, new Cdo(17, 42)), new Cif(28, new Cdo(17, 22), new Cdo(6, 23)), new Cif(30, new Cdo(19, 16), new Cdo(6, 17))), new Cthis(22, new int[]{6, 26, 50, 74, 98}, new Cif(28, new Cdo(2, 111), new Cdo(7, 112)), new Cif(28, new Cdo(17, 46)), new Cif(30, new Cdo(7, 24), new Cdo(16, 25)), new Cif(24, new Cdo(34, 13))), new Cthis(23, new int[]{6, 30, 54, 78, 102}, new Cif(30, new Cdo(4, 121), new Cdo(5, 122)), new Cif(28, new Cdo(4, 47), new Cdo(14, 48)), new Cif(30, new Cdo(11, 24), new Cdo(14, 25)), new Cif(30, new Cdo(16, 15), new Cdo(14, 16))), new Cthis(24, new int[]{6, 28, 54, 80, 106}, new Cif(30, new Cdo(6, 117), new Cdo(4, 118)), new Cif(28, new Cdo(6, 45), new Cdo(14, 46)), new Cif(30, new Cdo(11, 24), new Cdo(16, 25)), new Cif(30, new Cdo(30, 16), new Cdo(2, 17))), new Cthis(25, new int[]{6, 32, 58, 84, 110}, new Cif(26, new Cdo(8, 106), new Cdo(4, 107)), new Cif(28, new Cdo(8, 47), new Cdo(13, 48)), new Cif(30, new Cdo(7, 24), new Cdo(22, 25)), new Cif(30, new Cdo(22, 15), new Cdo(13, 16))), new Cthis(26, new int[]{6, 30, 58, 86, 114}, new Cif(28, new Cdo(10, 114), new Cdo(2, 115)), new Cif(28, new Cdo(19, 46), new Cdo(4, 47)), new Cif(28, new Cdo(28, 22), new Cdo(6, 23)), new Cif(30, new Cdo(33, 16), new Cdo(4, 17))), new Cthis(27, new int[]{6, 34, 62, 90, 118}, new Cif(30, new Cdo(8, 122), new Cdo(4, 123)), new Cif(28, new Cdo(22, 45), new Cdo(3, 46)), new Cif(30, new Cdo(8, 23), new Cdo(26, 24)), new Cif(30, new Cdo(12, 15), new Cdo(28, 16))), new Cthis(28, new int[]{6, 26, 50, 74, 98, 122}, new Cif(30, new Cdo(3, 117), new Cdo(10, 118)), new Cif(28, new Cdo(3, 45), new Cdo(23, 46)), new Cif(30, new Cdo(4, 24), new Cdo(31, 25)), new Cif(30, new Cdo(11, 15), new Cdo(31, 16))), new Cthis(29, new int[]{6, 30, 54, 78, 102, 126}, new Cif(30, new Cdo(7, 116), new Cdo(7, 117)), new Cif(28, new Cdo(21, 45), new Cdo(7, 46)), new Cif(30, new Cdo(1, 23), new Cdo(37, 24)), new Cif(30, new Cdo(19, 15), new Cdo(26, 16))), new Cthis(30, new int[]{6, 26, 52, 78, 104, 130}, new Cif(30, new Cdo(5, 115), new Cdo(10, 116)), new Cif(28, new Cdo(19, 47), new Cdo(10, 48)), new Cif(30, new Cdo(15, 24), new Cdo(25, 25)), new Cif(30, new Cdo(23, 15), new Cdo(25, 16))), new Cthis(31, new int[]{6, 30, 56, 82, 108, 134}, new Cif(30, new Cdo(13, 115), new Cdo(3, 116)), new Cif(28, new Cdo(2, 46), new Cdo(29, 47)), new Cif(30, new Cdo(42, 24), new Cdo(1, 25)), new Cif(30, new Cdo(23, 15), new Cdo(28, 16))), new Cthis(32, new int[]{6, 34, 60, 86, 112, 138}, new Cif(30, new Cdo(17, 115)), new Cif(28, new Cdo(10, 46), new Cdo(23, 47)), new Cif(30, new Cdo(10, 24), new Cdo(35, 25)), new Cif(30, new Cdo(19, 15), new Cdo(35, 16))), new Cthis(33, new int[]{6, 30, 58, 86, 114, 142}, new Cif(30, new Cdo(17, 115), new Cdo(1, 116)), new Cif(28, new Cdo(14, 46), new Cdo(21, 47)), new Cif(30, new Cdo(29, 24), new Cdo(19, 25)), new Cif(30, new Cdo(11, 15), new Cdo(46, 16))), new Cthis(34, new int[]{6, 34, 62, 90, 118, 146}, new Cif(30, new Cdo(13, 115), new Cdo(6, 116)), new Cif(28, new Cdo(14, 46), new Cdo(23, 47)), new Cif(30, new Cdo(44, 24), new Cdo(7, 25)), new Cif(30, new Cdo(59, 16), new Cdo(1, 17))), new Cthis(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new Cif(30, new Cdo(12, 121), new Cdo(7, 122)), new Cif(28, new Cdo(12, 47), new Cdo(26, 48)), new Cif(30, new Cdo(39, 24), new Cdo(14, 25)), new Cif(30, new Cdo(22, 15), new Cdo(41, 16))), new Cthis(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new Cif(30, new Cdo(6, 121), new Cdo(14, 122)), new Cif(28, new Cdo(6, 47), new Cdo(34, 48)), new Cif(30, new Cdo(46, 24), new Cdo(10, 25)), new Cif(30, new Cdo(2, 15), new Cdo(64, 16))), new Cthis(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new Cif(30, new Cdo(17, 122), new Cdo(4, 123)), new Cif(28, new Cdo(29, 46), new Cdo(14, 47)), new Cif(30, new Cdo(49, 24), new Cdo(10, 25)), new Cif(30, new Cdo(24, 15), new Cdo(46, 16))), new Cthis(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new Cif(30, new Cdo(4, 122), new Cdo(18, 123)), new Cif(28, new Cdo(13, 46), new Cdo(32, 47)), new Cif(30, new Cdo(48, 24), new Cdo(14, 25)), new Cif(30, new Cdo(42, 15), new Cdo(32, 16))), new Cthis(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new Cif(30, new Cdo(20, 117), new Cdo(4, 118)), new Cif(28, new Cdo(40, 47), new Cdo(7, 48)), new Cif(30, new Cdo(43, 24), new Cdo(22, 25)), new Cif(30, new Cdo(10, 15), new Cdo(67, 16))), new Cthis(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new Cif(30, new Cdo(19, 118), new Cdo(6, 119)), new Cif(28, new Cdo(18, 47), new Cdo(31, 48)), new Cif(30, new Cdo(34, 24), new Cdo(34, 25)), new Cif(30, new Cdo(20, 15), new Cdo(61, 16)))};
    }

    /* renamed from: this, reason: not valid java name */
    public static Cthis m22337this(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return f17906case[i - 1];
    }

    /* renamed from: break, reason: not valid java name */
    public int m22338break() {
        return this.f17908do;
    }

    /* renamed from: case, reason: not valid java name */
    public Cif m22339case(Ccase ccase) {
        return this.f17909for[ccase.ordinal()];
    }

    /* renamed from: do, reason: not valid java name */
    public z8 m22340do() {
        int iM22343try = m22343try();
        z8 z8Var = new z8(iM22343try);
        z8Var.m10106while(0, 0, 9, 9);
        int i = iM22343try - 8;
        z8Var.m10106while(i, 0, 8, 9);
        z8Var.m10106while(0, i, 9, 8);
        int length = this.f17910if.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f17910if[i2] - 2;
            for (int i4 = 0; i4 < length; i4++) {
                if ((i2 != 0 || (i4 != 0 && i4 != length - 1)) && (i2 != length - 1 || i4 != 0)) {
                    z8Var.m10106while(this.f17910if[i4] - 2, i3, 5, 5);
                }
            }
        }
        int i5 = iM22343try - 17;
        z8Var.m10106while(6, 9, 1, i5);
        z8Var.m10106while(9, 6, i5, 1);
        if (this.f17908do > 6) {
            int i6 = iM22343try - 11;
            z8Var.m10106while(i6, 0, 3, 6);
            z8Var.m10106while(0, i6, 6, 3);
        }
        return z8Var;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m22341goto() {
        return this.f17911new;
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m22342new() {
        return this.f17910if;
    }

    public String toString() {
        return String.valueOf(this.f17908do);
    }

    /* renamed from: try, reason: not valid java name */
    public int m22343try() {
        return (this.f17908do * 4) + 17;
    }
}
