package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.switch, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cswitch extends Cif<Double> implements Internal.DoubleList, RandomAccess, PrimitiveNonBoxingCollection {

    /* renamed from: try, reason: not valid java name */
    private static final Cswitch f17218try;

    /* renamed from: for, reason: not valid java name */
    private double[] f17219for;

    /* renamed from: new, reason: not valid java name */
    private int f17220new;

    static {
        Cswitch cswitch = new Cswitch(new double[0], 0);
        f17218try = cswitch;
        cswitch.makeImmutable();
    }

    public Cswitch() {
        this(new double[10], 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m21164case(int i) {
        if (i < 0 || i >= this.f17220new) {
            throw new IndexOutOfBoundsException(m21165goto(i));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private String m21165goto(int i) {
        int i2 = this.f17220new;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private void m21166new(int i, double d) {
        int i2;
        m20603do();
        if (i < 0 || i > (i2 = this.f17220new)) {
            throw new IndexOutOfBoundsException(m21165goto(i));
        }
        double[] dArr = this.f17219for;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f17219for, i, dArr2, i + 1, this.f17220new - i);
            this.f17219for = dArr2;
        }
        this.f17219for[i] = d;
        this.f17220new++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cswitch m21167try() {
        return f17218try;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        m20603do();
        Internal.m19623new(collection);
        if (!(collection instanceof Cswitch)) {
            return super.addAll(collection);
        }
        Cswitch cswitch = (Cswitch) collection;
        int i = cswitch.f17220new;
        if (i == 0) {
            return false;
        }
        int i2 = this.f17220new;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f17219for;
        if (i3 > dArr.length) {
            this.f17219for = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(cswitch.f17219for, 0, this.f17219for, this.f17220new, cswitch.f17220new);
        this.f17220new = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.DoubleList
    public void addDouble(double d) {
        m20603do();
        int i = this.f17220new;
        double[] dArr = this.f17219for;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f17219for = dArr2;
        }
        double[] dArr3 = this.f17219for;
        int i2 = this.f17220new;
        this.f17220new = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Double set(int i, Double d) {
        return Double.valueOf(setDouble(i, d.doubleValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Double get(int i) {
        return Double.valueOf(getDouble(i));
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cswitch)) {
            return super.equals(obj);
        }
        Cswitch cswitch = (Cswitch) obj;
        if (this.f17220new != cswitch.f17220new) {
            return false;
        }
        double[] dArr = cswitch.f17219for;
        for (int i = 0; i < this.f17220new; i++) {
            if (Double.doubleToLongBits(this.f17219for[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(Double d) {
        addDouble(d.doubleValue());
        return true;
    }

    @Override // com.google.protobuf.Internal.DoubleList
    public double getDouble(int i) {
        m21164case(i);
        return this.f17219for[i];
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iM19622native = 1;
        for (int i = 0; i < this.f17220new; i++) {
            iM19622native = (iM19622native * 31) + Internal.m19622native(Double.doubleToLongBits(this.f17219for[i]));
        }
        return iM19622native;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(int i, Double d) {
        m21166new(i, d.doubleValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f17219for[i] == dDoubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m20603do();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f17219for;
        System.arraycopy(dArr, i2, dArr, i, this.f17220new - i2);
        this.f17220new -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.DoubleList
    public double setDouble(int i, double d) {
        m20603do();
        m21164case(i);
        double[] dArr = this.f17219for;
        double d2 = dArr[i];
        dArr[i] = d;
        return d2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f17220new;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Double remove(int i) {
        m20603do();
        m21164case(i);
        double[] dArr = this.f17219for;
        double d = dArr[i];
        if (i < this.f17220new - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.f17220new--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    private Cswitch(double[] dArr, int i) {
        this.f17219for = dArr;
        this.f17220new = i;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Double> mutableCopyWithCapacity2(int i) {
        if (i >= this.f17220new) {
            return new Cswitch(Arrays.copyOf(this.f17219for, i), this.f17220new);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m20603do();
        for (int i = 0; i < this.f17220new; i++) {
            if (obj.equals(Double.valueOf(this.f17219for[i]))) {
                double[] dArr = this.f17219for;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f17220new - i) - 1);
                this.f17220new--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
