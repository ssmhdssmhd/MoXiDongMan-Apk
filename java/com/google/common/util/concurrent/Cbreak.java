package com.google.common.util.concurrent;

import android.support.v4.lf;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.google.common.util.concurrent.break, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cbreak extends Number implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: do, reason: not valid java name */
    private transient AtomicLong f15665do;

    public Cbreak(double d) {
        this.f15665do = new AtomicLong(Double.doubleToRawLongBits(d));
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f15665do = new AtomicLong();
        set(objectInputStream.readDouble());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    @lf
    public final double addAndGet(double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.f15665do.get();
            dLongBitsToDouble = Double.longBitsToDouble(j) + d;
        } while (!this.f15665do.compareAndSet(j, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public final boolean compareAndSet(double d, double d2) {
        return this.f15665do.compareAndSet(Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    public final double get() {
        return Double.longBitsToDouble(this.f15665do.get());
    }

    @lf
    public final double getAndAdd(double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.f15665do.get();
            dLongBitsToDouble = Double.longBitsToDouble(j);
        } while (!this.f15665do.compareAndSet(j, Double.doubleToRawLongBits(dLongBitsToDouble + d)));
        return dLongBitsToDouble;
    }

    public final double getAndSet(double d) {
        return Double.longBitsToDouble(this.f15665do.getAndSet(Double.doubleToRawLongBits(d)));
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    public final void lazySet(double d) {
        this.f15665do.lazySet(Double.doubleToRawLongBits(d));
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    public final void set(double d) {
        this.f15665do.set(Double.doubleToRawLongBits(d));
    }

    public String toString() {
        return Double.toString(get());
    }

    public final boolean weakCompareAndSet(double d, double d2) {
        return this.f15665do.weakCompareAndSet(Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public Cbreak() {
        this(0.0d);
    }
}
