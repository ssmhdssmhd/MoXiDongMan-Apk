package org.bouncycastle.math.field;

import android.support.v4.q3;

/* renamed from: org.bouncycastle.math.field.if, reason: invalid class name */
/* loaded from: classes3.dex */
class Cif implements Polynomial {

    /* renamed from: do, reason: not valid java name */
    public final int[] f32169do;

    public Cif(int[] iArr) {
        this.f32169do = q3.m6398while(iArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cif) {
            return q3.m6374goto(this.f32169do, ((Cif) obj).f32169do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.field.Polynomial
    public int getDegree() {
        return this.f32169do[r0.length - 1];
    }

    @Override // org.bouncycastle.math.field.Polynomial
    public int[] getExponentsPresent() {
        return q3.m6398while(this.f32169do);
    }

    public int hashCode() {
        return q3.q(this.f32169do);
    }
}
