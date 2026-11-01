package com.google.zxing.datamatrix.encoder;

import android.support.v4.d10;
import android.support.v4.hy1;

/* renamed from: com.google.zxing.datamatrix.encoder.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cgoto {

    /* renamed from: break, reason: not valid java name */
    private static Cgoto[] f17529break;

    /* renamed from: this, reason: not valid java name */
    public static final Cgoto[] f17530this;

    /* renamed from: case, reason: not valid java name */
    private final int f17531case;

    /* renamed from: do, reason: not valid java name */
    private final boolean f17532do;

    /* renamed from: else, reason: not valid java name */
    private final int f17533else;

    /* renamed from: for, reason: not valid java name */
    private final int f17534for;

    /* renamed from: goto, reason: not valid java name */
    private final int f17535goto;

    /* renamed from: if, reason: not valid java name */
    private final int f17536if;

    /* renamed from: new, reason: not valid java name */
    public final int f17537new;

    /* renamed from: try, reason: not valid java name */
    public final int f17538try;

    static {
        Cgoto[] cgotoArr = {new Cgoto(false, 3, 5, 8, 8, 1), new Cgoto(false, 5, 7, 10, 10, 1), new Cgoto(true, 5, 7, 16, 6, 1), new Cgoto(false, 8, 10, 12, 12, 1), new Cgoto(true, 10, 11, 14, 6, 2), new Cgoto(false, 12, 12, 14, 14, 1), new Cgoto(true, 16, 14, 24, 10, 1), new Cgoto(false, 18, 14, 16, 16, 1), new Cgoto(false, 22, 18, 18, 18, 1), new Cgoto(true, 22, 18, 16, 10, 2), new Cgoto(false, 30, 20, 20, 20, 1), new Cgoto(true, 32, 24, 16, 14, 2), new Cgoto(false, 36, 24, 22, 22, 1), new Cgoto(false, 44, 28, 24, 24, 1), new Cgoto(true, 49, 28, 22, 14, 2), new Cgoto(false, 62, 36, 14, 14, 4), new Cgoto(false, 86, 42, 16, 16, 4), new Cgoto(false, 114, 48, 18, 18, 4), new Cgoto(false, 144, 56, 20, 20, 4), new Cgoto(false, 174, 68, 22, 22, 4), new Cgoto(false, 204, 84, 24, 24, 4, 102, 42), new Cgoto(false, 280, 112, 14, 14, 16, 140, 56), new Cgoto(false, 368, 144, 16, 16, 16, 92, 36), new Cgoto(false, 456, 192, 18, 18, 16, 114, 48), new Cgoto(false, 576, 224, 20, 20, 16, 144, 56), new Cgoto(false, 696, 272, 22, 22, 16, 174, 68), new Cgoto(false, 816, 336, 24, 24, 16, 136, 56), new Cgoto(false, 1050, 408, 18, 18, 36, 175, 68), new Cgoto(false, 1304, 496, 20, 20, 36, 163, 62), new Cnew()};
        f17530this = cgotoArr;
        f17529break = cgotoArr;
    }

    public Cgoto(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    /* renamed from: case, reason: not valid java name */
    private int m21927case() {
        int i = this.f17531case;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 4) {
                if (i == 16) {
                    return 4;
                }
                if (i == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i2;
    }

    /* renamed from: class, reason: not valid java name */
    private int m21928class() {
        int i = this.f17531case;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    /* renamed from: const, reason: not valid java name */
    public static Cgoto m21929const(int i) {
        return m21933throw(i, Cthis.FORCE_NONE, true);
    }

    /* renamed from: final, reason: not valid java name */
    public static Cgoto m21930final(int i, Cthis cthis) {
        return m21933throw(i, cthis, true);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m21931import(Cgoto[] cgotoArr) {
        f17529break = cgotoArr;
    }

    /* renamed from: super, reason: not valid java name */
    public static Cgoto m21932super(int i, Cthis cthis, d10 d10Var, d10 d10Var2, boolean z) {
        for (Cgoto cgoto : f17529break) {
            if (!(cthis == Cthis.FORCE_SQUARE && cgoto.f17532do) && ((cthis != Cthis.FORCE_RECTANGLE || cgoto.f17532do) && ((d10Var == null || (cgoto.m21936catch() >= d10Var.m1100if() && cgoto.m21935break() >= d10Var.m1099do())) && ((d10Var2 == null || (cgoto.m21936catch() <= d10Var2.m1100if() && cgoto.m21935break() <= d10Var2.m1099do())) && i <= cgoto.f17536if)))) {
                return cgoto;
            }
        }
        if (z) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
        }
        return null;
    }

    /* renamed from: throw, reason: not valid java name */
    private static Cgoto m21933throw(int i, Cthis cthis, boolean z) {
        return m21932super(i, cthis, null, null, z);
    }

    /* renamed from: while, reason: not valid java name */
    public static Cgoto m21934while(int i, boolean z, boolean z2) {
        return m21933throw(i, z ? Cthis.FORCE_NONE : Cthis.FORCE_SQUARE, z2);
    }

    /* renamed from: break, reason: not valid java name */
    public final int m21935break() {
        return m21940goto() + (m21928class() << 1);
    }

    /* renamed from: catch, reason: not valid java name */
    public final int m21936catch() {
        return m21943this() + (m21927case() << 1);
    }

    /* renamed from: do, reason: not valid java name */
    public int m21937do() {
        return this.f17536if + this.f17534for;
    }

    /* renamed from: else, reason: not valid java name */
    public int mo21938else() {
        return this.f17536if / this.f17533else;
    }

    /* renamed from: for, reason: not valid java name */
    public int mo21939for(int i) {
        return this.f17533else;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m21940goto() {
        return m21928class() * this.f17538try;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m21941if() {
        return this.f17536if;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m21942new() {
        return this.f17534for;
    }

    /* renamed from: this, reason: not valid java name */
    public final int m21943this() {
        return m21927case() * this.f17537new;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f17532do ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f17537new);
        sb.append('x');
        sb.append(this.f17538try);
        sb.append(", symbol size ");
        sb.append(m21936catch());
        sb.append('x');
        sb.append(m21935break());
        sb.append(", symbol data size ");
        sb.append(m21943this());
        sb.append('x');
        sb.append(m21940goto());
        sb.append(", codewords ");
        sb.append(this.f17536if);
        sb.append(hy1.f2562if);
        sb.append(this.f17534for);
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m21944try(int i) {
        return this.f17535goto;
    }

    public Cgoto(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f17532do = z;
        this.f17536if = i;
        this.f17534for = i2;
        this.f17537new = i3;
        this.f17538try = i4;
        this.f17531case = i5;
        this.f17533else = i6;
        this.f17535goto = i7;
    }
}
