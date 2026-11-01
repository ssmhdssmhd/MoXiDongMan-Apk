package org.apache.commons.lang3.mutable;

/* renamed from: org.apache.commons.lang3.mutable.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Number implements Comparable<Cdo>, Mutable<Number> {
    private static final long serialVersionUID = -1585823265;
    private byte value;

    public Cdo() {
    }

    public void add(byte b) {
        this.value = (byte) (this.value + b);
    }

    @Override // java.lang.Number
    public byte byteValue() {
        return this.value;
    }

    public void decrement() {
        this.value = (byte) (this.value - 1);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Cdo) && this.value == ((Cdo) obj).byteValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public void increment() {
        this.value = (byte) (this.value + 1);
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public void subtract(byte b) {
        this.value = (byte) (this.value - b);
    }

    public Byte toByte() {
        return Byte.valueOf(byteValue());
    }

    public String toString() {
        return String.valueOf((int) this.value);
    }

    public Cdo(byte b) {
        this.value = b;
    }

    public void add(Number number) {
        this.value = (byte) (this.value + number.byteValue());
    }

    @Override // java.lang.Comparable
    public int compareTo(Cdo cdo) {
        byte b = cdo.value;
        byte b2 = this.value;
        if (b2 < b) {
            return -1;
        }
        return b2 == b ? 0 : 1;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Byte.valueOf(this.value);
    }

    public void setValue(byte b) {
        this.value = b;
    }

    public void subtract(Number number) {
        this.value = (byte) (this.value - number.byteValue());
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.byteValue();
    }

    public Cdo(Number number) {
        this.value = number.byteValue();
    }

    public Cdo(String str) throws NumberFormatException {
        this.value = Byte.parseByte(str);
    }
}
