package org.antlr.v4.runtime.atn;

import android.support.v4.Cfinally;
import android.support.v4.d;
import org.antlr.v4.runtime.atn.Cbreak;

/* renamed from: org.antlr.v4.runtime.atn.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry extends d {

    /* renamed from: final, reason: not valid java name */
    public final int f28500final;

    public Ctry(Cfinally cfinally, int i) {
        super(cfinally);
        this.f28500final = i;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 10;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: if */
    public boolean mo311if() {
        return true;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: new */
    public boolean mo312new(int i, int i2, int i3) {
        return false;
    }

    public String toString() {
        return this.f28500final + " >= _p";
    }

    /* renamed from: try, reason: not valid java name */
    public Cbreak.Cnew m31921try() {
        return new Cbreak.Cnew(this.f28500final);
    }
}
