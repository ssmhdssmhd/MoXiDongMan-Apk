package org.apache.commons.lang3.mutable;

/* renamed from: org.apache.commons.lang3.mutable.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends Number implements Comparable<Cif>, Mutable<Number> {
    private static final long serialVersionUID = 1587163916;
    private double value;

    public Cif() {
    }

    public void add(double d) {
        this.value += d;
    }

    public void decrement() {
        this.value -= 1.0d;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Cif) && Double.doubleToLongBits(((Cif) obj).value) == Double.doubleToLongBits(this.value);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) this.value;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.value);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public void increment() {
        this.value += 1.0d;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    public boolean isInfinite() {
        return Double.isInfinite(this.value);
    }

    public boolean isNaN() {
        return Double.isNaN(this.value);
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) this.value;
    }

    public void subtract(double d) {
        this.value -= d;
    }

    public Double toDouble() {
        return Double.valueOf(doubleValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public Cif(double d) {
        this.value = d;
    }

    public void add(Number number) {
        this.value += number.doubleValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(Cif cif) {
        return Double.compare(this.value, cif.value);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Double.valueOf(this.value);
    }

    public void setValue(double d) {
        this.value = d;
    }

    public void subtract(Number number) {
        this.value -= number.doubleValue();
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.doubleValue();
    }

    public Cif(Number number) {
        this.value = number.doubleValue();
    }

    public Cif(String str) throws NumberFormatException {
        this.value = Double.parseDouble(str);
    }
}
