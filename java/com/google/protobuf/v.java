package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class v extends Cif<Long> implements Internal.LongList, RandomAccess, PrimitiveNonBoxingCollection {

    /* renamed from: try, reason: not valid java name */
    private static final v f17281try;

    /* renamed from: for, reason: not valid java name */
    private long[] f17282for;

    /* renamed from: new, reason: not valid java name */
    private int f17283new;

    static {
        v vVar = new v(new long[0], 0);
        f17281try = vVar;
        vVar.makeImmutable();
    }

    public v() {
        this(new long[10], 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m21439case(int i) {
        if (i < 0 || i >= this.f17283new) {
            throw new IndexOutOfBoundsException(m21440goto(i));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private String m21440goto(int i) {
        int i2 = this.f17283new;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private void m21441new(int i, long j) {
        int i2;
        m20603do();
        if (i < 0 || i > (i2 = this.f17283new)) {
            throw new IndexOutOfBoundsException(m21440goto(i));
        }
        long[] jArr = this.f17282for;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f17282for, i, jArr2, i + 1, this.f17283new - i);
            this.f17282for = jArr2;
        }
        this.f17282for[i] = j;
        this.f17283new++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: try, reason: not valid java name */
    public static v m21442try() {
        return f17281try;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        m20603do();
        Internal.m19623new(collection);
        if (!(collection instanceof v)) {
            return super.addAll(collection);
        }
        v vVar = (v) collection;
        int i = vVar.f17283new;
        if (i == 0) {
            return false;
        }
        int i2 = this.f17283new;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f17282for;
        if (i3 > jArr.length) {
            this.f17282for = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(vVar.f17282for, 0, this.f17282for, this.f17283new, vVar.f17283new);
        this.f17283new = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.LongList
    public void addLong(long j) {
        m20603do();
        int i = this.f17283new;
        long[] jArr = this.f17282for;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f17282for = jArr2;
        }
        long[] jArr3 = this.f17282for;
        int i2 = this.f17283new;
        this.f17283new = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long set(int i, Long l) {
        return Long.valueOf(setLong(i, l.longValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long get(int i) {
        return Long.valueOf(getLong(i));
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return super.equals(obj);
        }
        v vVar = (v) obj;
        if (this.f17283new != vVar.f17283new) {
            return false;
        }
        long[] jArr = vVar.f17282for;
        for (int i = 0; i < this.f17283new; i++) {
            if (this.f17282for[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(Long l) {
        addLong(l.longValue());
        return true;
    }

    @Override // com.google.protobuf.Internal.LongList
    public long getLong(int i) {
        m21439case(i);
        return this.f17282for[i];
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iM19622native = 1;
        for (int i = 0; i < this.f17283new; i++) {
            iM19622native = (iM19622native * 31) + Internal.m19622native(this.f17282for[i]);
        }
        return iM19622native;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(int i, Long l) {
        m21441new(i, l.longValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f17282for[i] == jLongValue) {
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
        long[] jArr = this.f17282for;
        System.arraycopy(jArr, i2, jArr, i, this.f17283new - i2);
        this.f17283new -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.LongList
    public long setLong(int i, long j) {
        m20603do();
        m21439case(i);
        long[] jArr = this.f17282for;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f17283new;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long remove(int i) {
        m20603do();
        m21439case(i);
        long[] jArr = this.f17282for;
        long j = jArr[i];
        if (i < this.f17283new - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f17283new--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    private v(long[] jArr, int i) {
        this.f17282for = jArr;
        this.f17283new = i;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Long> mutableCopyWithCapacity2(int i) {
        if (i >= this.f17283new) {
            return new v(Arrays.copyOf(this.f17282for, i), this.f17283new);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m20603do();
        for (int i = 0; i < this.f17283new; i++) {
            if (obj.equals(Long.valueOf(this.f17282for[i]))) {
                long[] jArr = this.f17282for;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f17283new - i) - 1);
                this.f17283new--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
