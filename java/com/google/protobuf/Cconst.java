package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.const, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cconst extends Cif<Boolean> implements Internal.BooleanList, RandomAccess, PrimitiveNonBoxingCollection {

    /* renamed from: try, reason: not valid java name */
    private static final Cconst f16777try;

    /* renamed from: for, reason: not valid java name */
    private boolean[] f16778for;

    /* renamed from: new, reason: not valid java name */
    private int f16779new;

    static {
        Cconst cconst = new Cconst(new boolean[0], 0);
        f16777try = cconst;
        cconst.makeImmutable();
    }

    public Cconst() {
        this(new boolean[10], 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m20164case(int i) {
        if (i < 0 || i >= this.f16779new) {
            throw new IndexOutOfBoundsException(m20165goto(i));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private String m20165goto(int i) {
        int i2 = this.f16779new;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private void m20166new(int i, boolean z) {
        int i2;
        m20603do();
        if (i < 0 || i > (i2 = this.f16779new)) {
            throw new IndexOutOfBoundsException(m20165goto(i));
        }
        boolean[] zArr = this.f16778for;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f16778for, i, zArr2, i + 1, this.f16779new - i);
            this.f16778for = zArr2;
        }
        this.f16778for[i] = z;
        this.f16779new++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cconst m20167try() {
        return f16777try;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        m20603do();
        Internal.m19623new(collection);
        if (!(collection instanceof Cconst)) {
            return super.addAll(collection);
        }
        Cconst cconst = (Cconst) collection;
        int i = cconst.f16779new;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16779new;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f16778for;
        if (i3 > zArr.length) {
            this.f16778for = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(cconst.f16778for, 0, this.f16778for, this.f16779new, cconst.f16779new);
        this.f16779new = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public void addBoolean(boolean z) {
        m20603do();
        int i = this.f16779new;
        boolean[] zArr = this.f16778for;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f16778for = zArr2;
        }
        boolean[] zArr3 = this.f16778for;
        int i2 = this.f16779new;
        this.f16779new = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Boolean set(int i, Boolean bool) {
        return Boolean.valueOf(setBoolean(i, bool.booleanValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Boolean get(int i) {
        return Boolean.valueOf(getBoolean(i));
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cconst)) {
            return super.equals(obj);
        }
        Cconst cconst = (Cconst) obj;
        if (this.f16779new != cconst.f16779new) {
            return false;
        }
        boolean[] zArr = cconst.f16778for;
        for (int i = 0; i < this.f16779new; i++) {
            if (this.f16778for[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(Boolean bool) {
        addBoolean(bool.booleanValue());
        return true;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public boolean getBoolean(int i) {
        m20164case(i);
        return this.f16778for[i];
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iM19610catch = 1;
        for (int i = 0; i < this.f16779new; i++) {
            iM19610catch = (iM19610catch * 31) + Internal.m19610catch(this.f16778for[i]);
        }
        return iM19610catch;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(int i, Boolean bool) {
        m20166new(i, bool.booleanValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f16778for[i] == zBooleanValue) {
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
        boolean[] zArr = this.f16778for;
        System.arraycopy(zArr, i2, zArr, i, this.f16779new - i2);
        this.f16779new -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public boolean setBoolean(int i, boolean z) {
        m20603do();
        m20164case(i);
        boolean[] zArr = this.f16778for;
        boolean z2 = zArr[i];
        zArr[i] = z;
        return z2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f16779new;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Boolean remove(int i) {
        m20603do();
        m20164case(i);
        boolean[] zArr = this.f16778for;
        boolean z = zArr[i];
        if (i < this.f16779new - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (r2 - i) - 1);
        }
        this.f16779new--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    private Cconst(boolean[] zArr, int i) {
        this.f16778for = zArr;
        this.f16779new = i;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity, reason: merged with bridge method [inline-methods] */
    public Internal.ProtobufList<Boolean> mutableCopyWithCapacity2(int i) {
        if (i >= this.f16779new) {
            return new Cconst(Arrays.copyOf(this.f16778for, i), this.f16779new);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m20603do();
        for (int i = 0; i < this.f16779new; i++) {
            if (obj.equals(Boolean.valueOf(this.f16778for[i]))) {
                boolean[] zArr = this.f16778for;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f16779new - i) - 1);
                this.f16779new--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
