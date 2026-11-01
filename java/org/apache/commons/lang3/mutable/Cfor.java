package org.apache.commons.lang3.mutable;

/* renamed from: org.apache.commons.lang3.mutable.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Number implements Comparable<Cfor>, Mutable<Number> {
    private static final long serialVersionUID = 5787169186L;
    private float value;

    public Cfor() {
    }

    public void add(float f) {
        this.value += f;
    }

    public void decrement() {
        this.value -= 1.0f;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Cfor) && Float.floatToIntBits(((Cfor) obj).value) == Float.floatToIntBits(this.value);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    public void increment() {
        this.value += 1.0f;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    public boolean isInfinite() {
        return Float.isInfinite(this.value);
    }

    public boolean isNaN() {
        return Float.isNaN(this.value);
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) this.value;
    }

    public void subtract(float f) {
        this.value -= f;
    }

    public Float toFloat() {
        return Float.valueOf(floatValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public Cfor(float f) {
        this.value = f;
    }

    public void add(Number number) {
        this.value += number.floatValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(Cfor cfor) {
        return Float.compare(this.value, cfor.value);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Float.valueOf(this.value);
    }

    public void setValue(float f) {
        this.value = f;
    }

    public void subtract(Number number) {
        this.value -= number.floatValue();
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.floatValue();
    }

    public Cfor(Number number) {
        this.value = number.floatValue();
    }

    public Cfor(String str) throws NumberFormatException {
        this.value = Float.parseFloat(str);
    }
}
