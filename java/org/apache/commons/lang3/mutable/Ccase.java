package org.apache.commons.lang3.mutable;

/* renamed from: org.apache.commons.lang3.mutable.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Number implements Comparable<Ccase>, Mutable<Number> {
    private static final long serialVersionUID = -2135791679;
    private short value;

    public Ccase() {
    }

    public void add(short s) {
        this.value = (short) (this.value + s);
    }

    public void decrement() {
        this.value = (short) (this.value - 1);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Ccase) && this.value == ((Ccase) obj).shortValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public void increment() {
        this.value = (short) (this.value + 1);
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public short shortValue() {
        return this.value;
    }

    public void subtract(short s) {
        this.value = (short) (this.value - s);
    }

    public Short toShort() {
        return Short.valueOf(shortValue());
    }

    public String toString() {
        return String.valueOf((int) this.value);
    }

    public Ccase(short s) {
        this.value = s;
    }

    public void add(Number number) {
        this.value = (short) (this.value + number.shortValue());
    }

    @Override // java.lang.Comparable
    public int compareTo(Ccase ccase) {
        short s = ccase.value;
        short s2 = this.value;
        if (s2 < s) {
            return -1;
        }
        return s2 == s ? 0 : 1;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Short.valueOf(this.value);
    }

    public void setValue(short s) {
        this.value = s;
    }

    public void subtract(Number number) {
        this.value = (short) (this.value - number.shortValue());
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.shortValue();
    }

    public Ccase(Number number) {
        this.value = number.shortValue();
    }

    public Ccase(String str) throws NumberFormatException {
        this.value = Short.parseShort(str);
    }
}
