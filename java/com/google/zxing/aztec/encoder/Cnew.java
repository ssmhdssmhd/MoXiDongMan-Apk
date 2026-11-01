package com.google.zxing.aztec.encoder;

import android.support.v4.w8;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: com.google.zxing.aztec.encoder.new, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnew {

    /* renamed from: try, reason: not valid java name */
    public static final Cnew f17425try = new Cnew(Ctry.f17430if, 0, 0, 0);

    /* renamed from: do, reason: not valid java name */
    private final int f17426do;

    /* renamed from: for, reason: not valid java name */
    private final int f17427for;

    /* renamed from: if, reason: not valid java name */
    private final Ctry f17428if;

    /* renamed from: new, reason: not valid java name */
    private final int f17429new;

    private Cnew(Ctry ctry, int i, int i2, int i3) {
        this.f17428if = ctry;
        this.f17426do = i;
        this.f17427for = i2;
        this.f17429new = i3;
    }

    /* renamed from: break, reason: not valid java name */
    public w8 m21767break(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (Ctry ctryM21779new = m21773if(bArr.length).f17428if; ctryM21779new != null; ctryM21779new = ctryM21779new.m21779new()) {
            linkedList.addFirst(ctryM21779new);
        }
        w8 w8Var = new w8();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((Ctry) it.next()).mo21759for(w8Var, bArr);
        }
        return w8Var;
    }

    /* renamed from: case, reason: not valid java name */
    public Ctry m21768case() {
        return this.f17428if;
    }

    /* renamed from: do, reason: not valid java name */
    public Cnew m21769do(int i) {
        Ctry ctryM21777do = this.f17428if;
        int i2 = this.f17426do;
        int i3 = this.f17429new;
        if (i2 == 4 || i2 == 2) {
            int i4 = Cif.f17418goto[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            ctryM21777do = ctryM21777do.m21777do(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        int i7 = this.f17427for;
        Cnew cnew = new Cnew(ctryM21777do, i2, i7 + 1, i3 + ((i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8));
        return cnew.f17427for == 2078 ? cnew.m21773if(i + 1) : cnew;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m21770else(Cnew cnew) {
        int i;
        int i2 = this.f17429new + (Cif.f17418goto[this.f17426do][cnew.f17426do] >> 16);
        int i3 = cnew.f17427for;
        if (i3 > 0 && ((i = this.f17427for) == 0 || i > i3)) {
            i2 += 10;
        }
        return i2 <= cnew.f17429new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m21771for() {
        return this.f17427for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cnew m21772goto(int i, int i2) {
        int i3 = this.f17429new;
        Ctry ctryM21777do = this.f17428if;
        int i4 = this.f17426do;
        if (i != i4) {
            int i5 = Cif.f17418goto[i4][i];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            ctryM21777do = ctryM21777do.m21777do(i6, i7);
            i3 += i7;
        }
        int i8 = i == 2 ? 4 : 5;
        return new Cnew(ctryM21777do.m21777do(i2, i8), i, 0, i3 + i8);
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m21773if(int i) {
        int i2 = this.f17427for;
        return i2 == 0 ? this : new Cnew(this.f17428if.m21778if(i - i2, i2), this.f17426do, 0, this.f17429new);
    }

    /* renamed from: new, reason: not valid java name */
    public int m21774new() {
        return this.f17429new;
    }

    /* renamed from: this, reason: not valid java name */
    public Cnew m21775this(int i, int i2) {
        Ctry ctry = this.f17428if;
        int i3 = this.f17426do;
        int i4 = i3 == 2 ? 4 : 5;
        return new Cnew(ctry.m21777do(Cif.f17414break[i3][i], i4).m21777do(i2, 5), this.f17426do, 0, this.f17429new + i4 + 5);
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", Cif.f17419if[this.f17426do], Integer.valueOf(this.f17429new), Integer.valueOf(this.f17427for));
    }

    /* renamed from: try, reason: not valid java name */
    public int m21776try() {
        return this.f17426do;
    }
}
