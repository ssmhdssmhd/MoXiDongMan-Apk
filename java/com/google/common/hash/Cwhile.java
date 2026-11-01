package com.google.common.hash;

import com.google.common.hash.Cswitch;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* renamed from: com.google.common.hash.while, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cwhile extends Cswitch implements Serializable, LongAddable {
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

    @Override // com.google.common.hash.LongAddable
    public void add(long j) {
        int length;
        Cswitch.Cif cif;
        Cswitch.Cif[] cifArr = this.cells;
        if (cifArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = Cswitch.threadHashCode.get();
        boolean zM16968do = true;
        if (iArr != null && cifArr != null && (length = cifArr.length) >= 1 && (cif = cifArr[(length - 1) & iArr[0]]) != null) {
            long j3 = cif.f15222goto;
            zM16968do = cif.m16968do(j3, j3 + j);
            if (zM16968do) {
                return;
            }
        }
        retryUpdate(j, iArr, zM16968do);
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

    @Override // com.google.common.hash.Cswitch
    public final long fn(long j, long j2) {
        return j + j2;
    }

    @Override // com.google.common.hash.LongAddable
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

    @Override // com.google.common.hash.LongAddable
    public long sum() {
        long j = this.base;
        Cswitch.Cif[] cifArr = this.cells;
        if (cifArr != null) {
            for (Cswitch.Cif cif : cifArr) {
                if (cif != null) {
                    j += cif.f15222goto;
                }
            }
        }
        return j;
    }

    public long sumThenReset() {
        long j = this.base;
        Cswitch.Cif[] cifArr = this.cells;
        this.base = 0L;
        if (cifArr != null) {
            for (Cswitch.Cif cif : cifArr) {
                if (cif != null) {
                    j += cif.f15222goto;
                    cif.f15222goto = 0L;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
