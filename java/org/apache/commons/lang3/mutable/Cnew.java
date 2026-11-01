package org.apache.commons.lang3.mutable;

/* renamed from: org.apache.commons.lang3.mutable.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Number implements Comparable<Cnew>, Mutable<Number> {
    private static final long serialVersionUID = 512176391864L;
    private int value;

    public Cnew() {
    }

    public void add(int i) {
        this.value += i;
    }

    public void decrement() {
        this.value--;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Cnew) && this.value == ((Cnew) obj).intValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public void increment() {
        this.value++;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public void subtract(int i) {
        this.value -= i;
    }

    public Integer toInteger() {
        return Integer.valueOf(intValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public Cnew(int i) {
        this.value = i;
    }

    public void add(Number number) {
        this.value += number.intValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(Cnew cnew) {
        int i = cnew.value;
        int i2 = this.value;
        if (i2 < i) {
            return -1;
        }
        return i2 == i ? 0 : 1;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Integer.valueOf(this.value);
    }

    public void setValue(int i) {
        this.value = i;
    }

    public void subtract(Number number) {
        this.value -= number.intValue();
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.intValue();
    }

    public Cnew(Number number) {
        this.value = number.intValue();
    }

    public Cnew(String str) throws NumberFormatException {
        this.value = Integer.parseInt(str);
    }
}
