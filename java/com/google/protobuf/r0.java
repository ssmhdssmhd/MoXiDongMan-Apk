package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class r0<E> extends Cif<E> implements RandomAccess {

    /* renamed from: try, reason: not valid java name */
    private static final r0<Object> f17180try;

    /* renamed from: for, reason: not valid java name */
    private E[] f17181for;

    /* renamed from: new, reason: not valid java name */
    private int f17182new;

    static {
        r0<Object> r0Var = new r0<>(new Object[0], 0);
        f17180try = r0Var;
        r0Var.makeImmutable();
    }

    public r0() {
        this(new Object[10], 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static <E> r0<E> m21045for() {
        return (r0<E>) f17180try;
    }

    /* renamed from: if, reason: not valid java name */
    private static <E> E[] m21046if(int i) {
        return (E[]) new Object[i];
    }

    /* renamed from: new, reason: not valid java name */
    private void m21047new(int i) {
        if (i < 0 || i >= this.f17182new) {
            throw new IndexOutOfBoundsException(m21048try(i));
        }
    }

    /* renamed from: try, reason: not valid java name */
    private String m21048try(int i) {
        int i2 = this.f17182new;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m20603do();
        int i = this.f17182new;
        E[] eArr = this.f17181for;
        if (i == eArr.length) {
            this.f17181for = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f17181for;
        int i2 = this.f17182new;
        this.f17182new = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public r0<E> mutableCopyWithCapacity(int i) {
        if (i >= this.f17182new) {
            return new r0<>(Arrays.copyOf(this.f17181for, i), this.f17182new);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        m21047new(i);
        return this.f17181for[i];
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    public E remove(int i) {
        m20603do();
        m21047new(i);
        E[] eArr = this.f17181for;
        E e = eArr[i];
        if (i < this.f17182new - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (r2 - i) - 1);
        }
        this.f17182new--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m20603do();
        m21047new(i);
        E[] eArr = this.f17181for;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f17182new;
    }

    private r0(E[] eArr, int i) {
        this.f17181for = eArr;
        this.f17182new = i;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2;
        m20603do();
        if (i >= 0 && i <= (i2 = this.f17182new)) {
            E[] eArr = this.f17181for;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) m21046if(((i2 * 3) / 2) + 1);
                System.arraycopy(this.f17181for, 0, eArr2, 0, i);
                System.arraycopy(this.f17181for, i, eArr2, i + 1, this.f17182new - i);
                this.f17181for = eArr2;
            }
            this.f17181for[i] = e;
            this.f17182new++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m21048try(i));
    }
}
