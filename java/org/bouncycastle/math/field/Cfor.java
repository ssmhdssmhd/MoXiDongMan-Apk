package org.bouncycastle.math.field;

import android.support.v4.hn0;
import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.field.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor implements PolynomialExtensionField {

    /* renamed from: do, reason: not valid java name */
    public final FiniteField f32167do;

    /* renamed from: if, reason: not valid java name */
    public final Polynomial f32168if;

    public Cfor(FiniteField finiteField, Polynomial polynomial) {
        this.f32167do = finiteField;
        this.f32168if = polynomial;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.f32167do.equals(cfor.f32167do) && this.f32168if.equals(cfor.f32168if);
    }

    @Override // org.bouncycastle.math.field.FiniteField
    public BigInteger getCharacteristic() {
        return this.f32167do.getCharacteristic();
    }

    @Override // org.bouncycastle.math.field.ExtensionField
    public int getDegree() {
        return this.f32168if.getDegree();
    }

    @Override // org.bouncycastle.math.field.FiniteField
    public int getDimension() {
        return this.f32167do.getDimension() * this.f32168if.getDegree();
    }

    @Override // org.bouncycastle.math.field.PolynomialExtensionField
    public Polynomial getMinimalPolynomial() {
        return this.f32168if;
    }

    @Override // org.bouncycastle.math.field.ExtensionField
    public FiniteField getSubfield() {
        return this.f32167do;
    }

    public int hashCode() {
        return this.f32167do.hashCode() ^ hn0.m3071do(this.f32168if.hashCode(), 16);
    }
}
