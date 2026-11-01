package org.apache.commons.lang3.mutable;

/* renamed from: org.apache.commons.lang3.mutable.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends Number implements Comparable<Ctry>, Mutable<Number> {
    private static final long serialVersionUID = 62986528375L;
    private long value;

    public Ctry() {
    }

    public void add(long j) {
        this.value += j;
    }

    public void decrement() {
        this.value--;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Ctry) && this.value == ((Ctry) obj).longValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public void increment() {
        this.value++;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public void subtract(long j) {
        this.value -= j;
    }

    public Long toLong() {
        return Long.valueOf(longValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public Ctry(long j) {
        this.value = j;
    }

    public void add(Number number) {
        this.value += number.longValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(Ctry ctry) {
        long j = ctry.value;
        long j2 = this.value;
        if (j2 < j) {
            return -1;
        }
        return j2 == j ? 0 : 1;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public Number getValue() {
        return Long.valueOf(this.value);
    }

    public void setValue(long j) {
        this.value = j;
    }

    public void subtract(Number number) {
        this.value -= number.longValue();
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.longValue();
    }

    public Ctry(Number number) {
        this.value = number.longValue();
    }

    public Ctry(String str) throws NumberFormatException {
        this.value = Long.parseLong(str);
    }
}
