package org.antlr.v4.runtime.atn;

import android.support.v4.Cfinally;
import android.support.v4.d;
import org.antlr.v4.runtime.atn.Cbreak;

/* renamed from: org.antlr.v4.runtime.atn.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase extends d {

    /* renamed from: final, reason: not valid java name */
    public final int f28450final;

    /* renamed from: super, reason: not valid java name */
    public final int f28451super;

    /* renamed from: throw, reason: not valid java name */
    public final boolean f28452throw;

    public Ccase(Cfinally cfinally, int i, int i2, boolean z) {
        super(cfinally);
        this.f28450final = i;
        this.f28451super = i2;
        this.f28452throw = z;
    }

    @Override // org.antlr.v4.runtime.atn.Ccatch
    /* renamed from: do */
    public int mo310do() {
        return 4;
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
        return "pred_" + this.f28450final + ":" + this.f28451super;
    }

    /* renamed from: try, reason: not valid java name */
    public Cbreak.Ctry m31870try() {
        return new Cbreak.Ctry(this.f28450final, this.f28451super, this.f28452throw);
    }
}
