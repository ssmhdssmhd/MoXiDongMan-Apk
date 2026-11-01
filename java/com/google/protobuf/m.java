package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class m extends Cif<Integer> implements Internal.IntList, RandomAccess, PrimitiveNonBoxingCollection {

    /* renamed from: try, reason: not valid java name */
    private static final m f17062try;

    /* renamed from: for, reason: not valid java name */
    private int[] f17063for;

    /* renamed from: new, reason: not valid java name */
    private int f17064new;

    static {
        m mVar = new m(new int[0], 0);
        f17062try = mVar;
        mVar.makeImmutable();
    }

    public m() {
        this(new int[10], 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m20818case(int i) {
        if (i < 0 || i >= this.f17064new) {
            throw new IndexOutOfBoundsException(m20819goto(i));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private String m20819goto(int i) {
        int i2 = this.f17064new;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private void m20820new(int i, int i2) {
        int i3;
        m20603do();
        if (i < 0 || i > (i3 = this.f17064new)) {
            throw new IndexOutOfBoundsException(m20819goto(i));
        }
        int[] iArr = this.f17063for;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f17063for, i, iArr2, i + 1, this.f17064new - i);
            this.f17063for = iArr2;
        }
        this.f17063for[i] = i2;
        this.f17064new++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: try, reason: not valid java name */
    public static m m20821try() {
        return f17062try;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        m20603do();
        Internal.m19623new(collection);
        if (!(collection instanceof m)) {
            return super.addAll(collection);
        }
        m mVar = (m) collection;
        int i = mVar.f17064new;
        if (i == 0) {
            return false;
        }
        int i2 = this.f17064new;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f17063for;
        if (i3 > iArr.length) {
            this.f17063for = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(mVar.f17063for, 0, this.f17063for, this.f17064new, mVar.f17064new);
        this.f17064new = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.IntList
    public void addInt(int i) {
        m20603do();
        int i2 = this.f17064new;
        int[] iArr = this.f17063for;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f17063for = iArr2;
        }
        int[] iArr3 = this.f17063for;
        int i3 = this.f17064new;
        this.f17064new = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer set(int i, Integer num) {
        return Integer.valueOf(setInt(i, num.intValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer get(int i) {
        return Integer.valueOf(getInt(i));
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return super.equals(obj);
        }
        m mVar = (m) obj;
        if (this.f17064new != mVar.f17064new) {
            return false;
        }
        int[] iArr = mVar.f17063for;
        for (int i = 0; i < this.f17064new; i++) {
            if (this.f17063for[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(Integer num) {
        addInt(num.intValue());
        return true;
    }

    @Override // com.google.protobuf.Internal.IntList
    public int getInt(int i) {
        m20818case(i);
        return this.f17063for[i];
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f17064new; i2++) {
            i = (i * 31) + this.f17063for[i2];
        }
        return i;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(int i, Integer num) {
        m20820new(i, num.intValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f17063for[i] == iIntValue) {
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
        int[] iArr = this.f17063for;
        System.arraycopy(iArr, i2, iArr, i, this.f17064new - i2);
        this.f17064new -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.IntList
    public int setInt(int i, int i2) {
        m20603do();
        m20818case(i);
        int[] iArr = this.f17063for;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f17064new;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer remove(int i) {
        m20603do();
        m20818case(i);
        int[] iArr = this.f17063for;
        int i2 = iArr[i];
        if (i < this.f17064new - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f17064new--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    private m(int[] iArr, int i) {
        this.f17063for = iArr;
        this.f17064new = i;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Integer> mutableCopyWithCapacity2(int i) {
        if (i >= this.f17064new) {
            return new m(Arrays.copyOf(this.f17063for, i), this.f17064new);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m20603do();
        for (int i = 0; i < this.f17064new; i++) {
            if (obj.equals(Integer.valueOf(this.f17063for[i]))) {
                int[] iArr = this.f17063for;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f17064new - i) - 1);
                this.f17064new--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
