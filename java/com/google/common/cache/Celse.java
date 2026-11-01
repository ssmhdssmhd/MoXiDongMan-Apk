package com.google.common.cache;

import android.support.v4.ki0;
import com.google.common.cache.Cbreak;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

@ki0(emulated = true)
/* renamed from: com.google.common.cache.else, reason: invalid class name */
/* loaded from: classes.dex */
final class Celse extends Cbreak implements Serializable, LongAddable {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    @Override // com.google.common.cache.LongAddable
    public void add(long j) {
        int length;
        Cbreak.Cif cif;
        Cbreak.Cif[] cifArr = this.cells;
        if (cifArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = Cbreak.threadHashCode.get();
        boolean zM15292do = true;
        if (iArr != null && cifArr != null && (length = cifArr.length) >= 1 && (cif = cifArr[(length - 1) & iArr[0]]) != null) {
            long j3 = cif.f13895goto;
            zM15292do = cif.m15292do(j3, j3 + j);
            if (zM15292do) {
                return;
            }
        }
        retryUpdate(j, iArr, zM15292do);
    }

    public void decrement() {
        add(-1L);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return sum();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return sum();
    }

    @Override // com.google.common.cache.Cbreak
    public final long fn(long j, long j2) {
        return j + j2;
    }

    @Override // com.google.common.cache.LongAddable
    public void increment() {
        add(1L);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) sum();
    }

    @Override // java.lang.Number
    public long longValue() {
        return sum();
    }

    public void reset() {
        internalReset(0L);
    }

    @Override // com.google.common.cache.LongAddable
    public long sum() {
        long j = this.base;
        Cbreak.Cif[] cifArr = this.cells;
        if (cifArr != null) {
            for (Cbreak.Cif cif : cifArr) {
                if (cif != null) {
                    j += cif.f13895goto;
                }
            }
        }
        return j;
    }

    public long sumThenReset() {
        long j = this.base;
        Cbreak.Cif[] cifArr = this.cells;
        this.base = 0L;
        if (cifArr != null) {
            for (Cbreak.Cif cif : cifArr) {
                if (cif != null) {
                    j += cif.f13895goto;
                    cif.f13895goto = 0L;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
