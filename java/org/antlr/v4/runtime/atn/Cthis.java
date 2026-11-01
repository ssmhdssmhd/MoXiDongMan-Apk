package org.antlr.v4.runtime.atn;

import android.support.v4.Cextends;
import android.support.v4.Cthrows;
import android.support.v4.au;
import android.support.v4.df1;
import android.support.v4.dw0;
import android.support.v4.i80;
import android.support.v4.ir;
import android.support.v4.ix;
import android.support.v4.m1;
import android.support.v4.qc1;
import java.util.BitSet;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.atn.Cbreak;
import org.antlr.v4.runtime.dfa.Cdo;

/* renamed from: org.antlr.v4.runtime.atn.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends Cnew {

    /* renamed from: default, reason: not valid java name */
    public au f28493default;

    /* renamed from: extends, reason: not valid java name */
    public int f28494extends;

    /* renamed from: public, reason: not valid java name */
    public final ix[] f28495public;

    /* renamed from: return, reason: not valid java name */
    public int f28496return;

    /* renamed from: static, reason: not valid java name */
    public int f28497static;

    /* renamed from: switch, reason: not valid java name */
    public int f28498switch;

    /* renamed from: throws, reason: not valid java name */
    public int f28499throws;

    public Cthis(Cgoto cgoto) {
        super(cgoto, cgoto.m32082this().f1619do, cgoto.m32082this().f28490else, cgoto.m32082this().f1620if);
        int size = this.f1619do.f6262if.size();
        this.f28496return = size;
        this.f28495public = new ix[size];
        for (int i = 0; i < this.f28496return; i++) {
            this.f28495public[i] = new ix(i);
        }
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    /* renamed from: default */
    public au mo31897default(Cdo cdo, au auVar, int i) {
        au auVarMo31897default = super.mo31897default(cdo, auVar, i);
        this.f28493default = auVarMo31897default;
        return auVarMo31897default;
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    public void l(Cdo cdo, au auVar, int i, int i2, boolean z, BitSet bitSet, Cthrows cthrows) {
        int iNextSetBit = bitSet != null ? bitSet.nextSetBit(0) : cthrows.m7930case().nextSetBit(0);
        if (cthrows.f6564goto && iNextSetBit != this.f28494extends) {
            ix[] ixVarArr = this.f28495public;
            int i3 = this.f28499throws;
            ixVarArr[i3].f2914class.add(new ir(i3, cthrows, this.f28485break, i, i2));
        }
        ix[] ixVarArr2 = this.f28495public;
        int i4 = this.f28499throws;
        ixVarArr2[i4].f2918final.add(new m1(i4, cthrows, bitSet, this.f28485break, i, i2, cthrows.f6564goto));
        super.l(cdo, auVar, i, i2, z, bitSet, cthrows);
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    public void m(Cdo cdo, BitSet bitSet, Cthrows cthrows, int i, int i2) {
        if (bitSet != null) {
            this.f28494extends = bitSet.nextSetBit(0);
        } else {
            this.f28494extends = cthrows.m7930case().nextSetBit(0);
        }
        this.f28495public[this.f28499throws].f2922import++;
        super.m(cdo, bitSet, cthrows, i, i2);
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    public void n(Cdo cdo, int i, Cthrows cthrows, int i2, int i3) {
        if (i != this.f28494extends) {
            ix[] ixVarArr = this.f28495public;
            int i4 = this.f28499throws;
            ixVarArr[i4].f2914class.add(new ir(i4, cthrows, this.f28485break, i2, i3));
        }
        super.n(cdo, i, cthrows, i2, i3);
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    /* renamed from: package */
    public boolean mo31906package(Cbreak cbreak, qc1 qc1Var, int i, boolean z) {
        boolean zMo31906package = super.mo31906package(cbreak, qc1Var, i, z);
        if (!(cbreak instanceof Cbreak.Cnew)) {
            int i2 = this.f28498switch;
            if (!(i2 >= 0)) {
                i2 = this.f28497static;
            }
            int i3 = i2;
            ix[] ixVarArr = this.f28495public;
            int i4 = this.f28499throws;
            ixVarArr[i4].f2926super.add(new df1(i4, this.f28485break, this.f28487catch, i3, cbreak, zMo31906package, i, z));
        }
        return zMo31906package;
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    /* renamed from: protected */
    public au mo31908protected(au auVar, int i) {
        this.f28497static = this.f28485break.index();
        au auVarMo31908protected = super.mo31908protected(auVar, i);
        if (auVarMo31908protected != null) {
            ix[] ixVarArr = this.f28495public;
            int i2 = this.f28499throws;
            ixVarArr[i2].f2930while++;
            if (auVarMo31908protected == Cextends.f1618try) {
                ixVarArr[i2].f2915const.add(new i80(i2, auVar.f240if, this.f28485break, this.f28487catch, this.f28497static, false));
            }
        }
        this.f28493default = auVarMo31908protected;
        return auVarMo31908protected;
    }

    public au r() {
        return this.f28493default;
    }

    public ix[] s() {
        return this.f28495public;
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    /* renamed from: super */
    public int mo31913super(TokenStream tokenStream, int i, qc1 qc1Var) {
        try {
            this.f28497static = -1;
            this.f28498switch = -1;
            this.f28499throws = i;
            long jNanoTime = System.nanoTime();
            int iMo31913super = super.mo31913super(tokenStream, i, qc1Var);
            long jNanoTime2 = System.nanoTime();
            ix[] ixVarArr = this.f28495public;
            ixVarArr[i].f2919for += jNanoTime2 - jNanoTime;
            ixVarArr[i].f2921if++;
            int i2 = (this.f28497static - this.f28487catch) + 1;
            long j = i2;
            ixVarArr[i].f2924new += j;
            ixVarArr[i].f2929try = ixVarArr[i].f2929try == 0 ? j : Math.min(ixVarArr[i].f2929try, j);
            ix[] ixVarArr2 = this.f28495public;
            if (j > ixVarArr2[i].f2912case) {
                ixVarArr2[i].f2912case = j;
                ixVarArr2[i].f2917else = new dw0(i, null, iMo31913super, tokenStream, this.f28487catch, this.f28497static, false);
            }
            int i3 = this.f28498switch;
            if (i3 >= 0) {
                int i4 = (i3 - this.f28487catch) + 1;
                ix[] ixVarArr3 = this.f28495public;
                long j2 = i4;
                ixVarArr3[i].f2920goto += j2;
                ixVarArr3[i].f2927this = ixVarArr3[i].f2927this == 0 ? j2 : Math.min(ixVarArr3[i].f2927this, j2);
                ix[] ixVarArr4 = this.f28495public;
                if (j2 > ixVarArr4[i].f2911break) {
                    ixVarArr4[i].f2911break = j2;
                    ixVarArr4[i].f2913catch = new dw0(i, null, iMo31913super, tokenStream, this.f28487catch, this.f28498switch, true);
                }
            }
            return iMo31913super;
        } finally {
            this.f28499throws = -1;
        }
    }

    @Override // org.antlr.v4.runtime.atn.Cnew
    /* renamed from: switch */
    public Cthrows mo31914switch(Cthrows cthrows, int i, boolean z) {
        if (z) {
            this.f28498switch = this.f28485break.index();
        }
        Cthrows cthrowsMo31914switch = super.mo31914switch(cthrows, i, z);
        if (z) {
            ix[] ixVarArr = this.f28495public;
            int i2 = this.f28499throws;
            ixVarArr[i2].f2923native++;
            if (cthrowsMo31914switch == null) {
                ixVarArr[i2].f2915const.add(new i80(i2, cthrows, this.f28485break, this.f28487catch, this.f28498switch, true));
            }
        } else {
            ix[] ixVarArr2 = this.f28495public;
            int i3 = this.f28499throws;
            ixVarArr2[i3].f2928throw++;
            if (cthrowsMo31914switch == null) {
                ixVarArr2[i3].f2915const.add(new i80(i3, cthrows, this.f28485break, this.f28487catch, this.f28497static, false));
            }
        }
        return cthrowsMo31914switch;
    }
}
