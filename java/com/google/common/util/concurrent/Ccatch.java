package com.google.common.util.concurrent;

import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.primitives.Cgoto;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;
import okhttp3.HttpUrl;

@li0
/* renamed from: com.google.common.util.concurrent.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccatch implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: do, reason: not valid java name */
    private transient AtomicLongArray f15704do;

    public Ccatch(int i) {
        this.f15704do = new AtomicLongArray(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        Cgoto.Cfor cforBuilder = Cgoto.builder();
        for (int i2 = 0; i2 < i; i2++) {
            cforBuilder.m17608do(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.f15704do = new AtomicLongArray(cforBuilder.m17607case().toArray());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i = 0; i < length; i++) {
            objectOutputStream.writeDouble(get(i));
        }
    }

    @lf
    public double addAndGet(int i, double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.f15704do.get(i);
            dLongBitsToDouble = Double.longBitsToDouble(j) + d;
        } while (!this.f15704do.compareAndSet(i, j, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public final boolean compareAndSet(int i, double d, double d2) {
        return this.f15704do.compareAndSet(i, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final double get(int i) {
        return Double.longBitsToDouble(this.f15704do.get(i));
    }

    @lf
    public final double getAndAdd(int i, double d) {
        long j;
        double dLongBitsToDouble;
        do {
            j = this.f15704do.get(i);
            dLongBitsToDouble = Double.longBitsToDouble(j);
        } while (!this.f15704do.compareAndSet(i, j, Double.doubleToRawLongBits(dLongBitsToDouble + d)));
        return dLongBitsToDouble;
    }

    public final double getAndSet(int i, double d) {
        return Double.longBitsToDouble(this.f15704do.getAndSet(i, Double.doubleToRawLongBits(d)));
    }

    public final void lazySet(int i, double d) {
        this.f15704do.lazySet(i, Double.doubleToRawLongBits(d));
    }

    public final int length() {
        return this.f15704do.length();
    }

    public final void set(int i, double d) {
        this.f15704do.set(i, Double.doubleToRawLongBits(d));
    }

    public String toString() {
        int length = length() - 1;
        if (length == -1) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder((length + 1) * 19);
        sb.append('[');
        int i = 0;
        while (true) {
            sb.append(Double.longBitsToDouble(this.f15704do.get(i)));
            if (i == length) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(',');
            sb.append(' ');
            i++;
        }
    }

    public final boolean weakCompareAndSet(int i, double d, double d2) {
        return this.f15704do.weakCompareAndSet(i, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public Ccatch(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = Double.doubleToRawLongBits(dArr[i]);
        }
        this.f15704do = new AtomicLongArray(jArr);
    }
}
