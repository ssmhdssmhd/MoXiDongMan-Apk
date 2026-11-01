package org.bouncycastle.math.field;

import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.field.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew implements FiniteField {

    /* renamed from: do, reason: not valid java name */
    public final BigInteger f32170do;

    public Cnew(BigInteger bigInteger) {
        this.f32170do = bigInteger;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cnew) {
            return this.f32170do.equals(((Cnew) obj).f32170do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.field.FiniteField
    public BigInteger getCharacteristic() {
        return this.f32170do;
    }

    @Override // org.bouncycastle.math.field.FiniteField
    public int getDimension() {
        return 1;
    }

    public int hashCode() {
        return this.f32170do.hashCode();
    }
}
