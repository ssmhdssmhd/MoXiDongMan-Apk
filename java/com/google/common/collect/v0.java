package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bc2;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.collect.r0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class v0<E> extends r0<E> implements List<E>, RandomAccess {

    /* renamed from: if, reason: not valid java name */
    private static final bc2<Object> f14778if = new Cif(s2.EMPTY, 0);

    /* renamed from: com.google.common.collect.v0$do, reason: invalid class name */
    public static final class Cdo<E> extends r0.Cdo<E> {
        public Cdo() {
            this(4);
        }

        @Override // com.google.common.collect.r0.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15639if(E... eArr) {
            super.mo15639if(eArr);
            return this;
        }

        @Override // com.google.common.collect.r0.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15637for(Iterable<? extends E> iterable) {
            super.mo15637for(iterable);
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15640new(Iterator<? extends E> it) {
            super.mo15640new(it);
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public v0<E> mo15642try() {
            this.f14558new = true;
            return v0.asImmutableList(this.f14557if, this.f14556for);
        }

        @Override // com.google.common.collect.r0.Cdo
        @lf
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Cdo<E> mo15812else(E e) {
            super.mo15812else(e);
            return this;
        }

        public Cdo(int i) {
            super(i);
        }
    }

    /* renamed from: com.google.common.collect.v0$for, reason: invalid class name */
    public static class Cfor<E> extends v0<E> {

        /* renamed from: for, reason: not valid java name */
        private final transient v0<E> f14779for;

        public Cfor(v0<E> v0Var) {
            this.f14779for = v0Var;
        }

        /* renamed from: for, reason: not valid java name */
        private int m16447for(int i) {
            return size() - i;
        }

        /* renamed from: if, reason: not valid java name */
        private int m16448if(int i) {
            return (size() - 1) - i;
        }

        @Override // com.google.common.collect.v0, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return this.f14779for.contains(obj);
        }

        @Override // java.util.List
        public E get(int i) {
            af1.m222private(i, size());
            return this.f14779for.get(m16448if(i));
        }

        @Override // com.google.common.collect.v0, java.util.List
        public int indexOf(@b51 Object obj) {
            int iLastIndexOf = this.f14779for.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return m16448if(iLastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return this.f14779for.isPartialView();
        }

        @Override // com.google.common.collect.v0, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.v0, java.util.List
        public int lastIndexOf(@b51 Object obj) {
            int iIndexOf = this.f14779for.indexOf(obj);
            if (iIndexOf >= 0) {
                return m16448if(iIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.v0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.v0
        public v0<E> reverse() {
            return this.f14779for;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14779for.size();
        }

        @Override // com.google.common.collect.v0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // com.google.common.collect.v0, java.util.List
        public v0<E> subList(int i, int i2) {
            af1.s(i, i2, size());
            return this.f14779for.subList(m16447for(i2), m16447for(i)).reverse();
        }
    }

    /* renamed from: com.google.common.collect.v0$if, reason: invalid class name */
    public static class Cif<E> extends com.google.common.collect.Cif<E> {

        /* renamed from: for, reason: not valid java name */
        private final v0<E> f14780for;

        public Cif(v0<E> v0Var, int i) {
            super(v0Var.size(), i);
            this.f14780for = v0Var;
        }

        @Override // com.google.common.collect.Cif
        /* renamed from: do */
        public E mo15720do(int i) {
            return this.f14780for.get(i);
        }
    }

    /* renamed from: com.google.common.collect.v0$new, reason: invalid class name */
    public static class Cnew implements Serializable {
        private static final long serialVersionUID = 0;
        public final Object[] elements;

        public Cnew(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            return v0.copyOf(this.elements);
        }
    }

    /* renamed from: com.google.common.collect.v0$try, reason: invalid class name */
    public class Ctry extends v0<E> {
        public final transient int length;
        public final transient int offset;

        public Ctry(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }

        @Override // java.util.List
        public E get(int i) {
            af1.m222private(i, this.length);
            return v0.this.get(i + this.offset);
        }

        @Override // com.google.common.collect.r0
        public Object[] internalArray() {
            return v0.this.internalArray();
        }

        @Override // com.google.common.collect.r0
        public int internalArrayEnd() {
            return v0.this.internalArrayStart() + this.offset + this.length;
        }

        @Override // com.google.common.collect.r0
        public int internalArrayStart() {
            return v0.this.internalArrayStart() + this.offset;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.v0, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.v0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.length;
        }

        @Override // com.google.common.collect.v0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // com.google.common.collect.v0, java.util.List
        public v0<E> subList(int i, int i2) {
            af1.s(i, i2, this.length);
            v0 v0Var = v0.this;
            int i3 = this.offset;
            return v0Var.subList(i + i3, i2 + i3);
        }
    }

    public static <E> v0<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    public static <E> Cdo<E> builder() {
        return new Cdo<>();
    }

    @o8
    public static <E> Cdo<E> builderWithExpectedSize(int i) {
        Cdefault.m15742if(i, "expectedSize");
        return new Cdo<>(i);
    }

    public static <E> v0<E> copyOf(Iterable<? extends E> iterable) {
        af1.m205continue(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    /* renamed from: do, reason: not valid java name */
    private static <E> v0<E> m16441do(Object... objArr) {
        return asImmutableList(h2.m15843if(objArr));
    }

    public static <E> v0<E> of() {
        return (v0<E>) s2.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> v0<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) r1.e(iterable, new Comparable[0]);
        h2.m15843if(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @lf
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.r0
    public final v0<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.r0
    public int copyIntoArray(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@b51 Object obj) {
        return x1.m16492break(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (((iHashCode * 31) + get(i).hashCode()) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(@b51 Object obj) {
        if (obj == null) {
            return -1;
        }
        return x1.m16495class(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(@b51 Object obj) {
        if (obj == null) {
            return -1;
        }
        return x1.m16501final(this, obj);
    }

    @Override // java.util.List
    @lf
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    public v0<E> reverse() {
        return size() <= 1 ? this : new Cfor(this);
    }

    @Override // java.util.List
    @lf
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    public v0<E> subListUnchecked(int i, int i2) {
        return new Ctry(i, i2 - i);
    }

    @Override // com.google.common.collect.r0
    public Object writeReplace() {
        return new Cnew(toArray());
    }

    public static <E> v0<E> asImmutableList(Object[] objArr, int i) {
        return i == 0 ? of() : new s2(objArr, i);
    }

    public static <E> v0<E> of(E e) {
        return m16441do(e);
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public v0<E> subList(int i, int i2) {
        af1.s(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? of() : subListUnchecked(i, i2);
    }

    public static <E> v0<E> of(E e, E e2) {
        return m16441do(e, e2);
    }

    @Override // java.util.List
    public bc2<E> listIterator() {
        return listIterator(0);
    }

    public static <E> v0<E> of(E e, E e2, E e3) {
        return m16441do(e, e2, e3);
    }

    @Override // java.util.List
    public bc2<E> listIterator(int i) {
        af1.q(i, size());
        if (isEmpty()) {
            return (bc2<E>) f14778if;
        }
        return new Cif(this, i);
    }

    public static <E> v0<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof r0) {
            v0<E> v0VarAsList = ((r0) collection).asList();
            return v0VarAsList.isPartialView() ? asImmutableList(v0VarAsList.toArray()) : v0VarAsList;
        }
        return m16441do(collection.toArray());
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4) {
        return m16441do(e, e2, e3, e4);
    }

    public static <E> v0<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        af1.m205continue(comparator);
        Object[] objArrC = r1.c(iterable);
        h2.m15843if(objArrC);
        Arrays.sort(objArrC, comparator);
        return asImmutableList(objArrC);
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5) {
        return m16441do(e, e2, e3, e4, e5);
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6) {
        return m16441do(e, e2, e3, e4, e5, e6);
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7) {
        return m16441do(e, e2, e3, e4, e5, e6, e7);
    }

    public static <E> v0<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new Cdo().mo15635do(next).mo15640new(it).mo15642try();
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8) {
        return m16441do(e, e2, e3, e4, e5, e6, e7, e8);
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9) {
        return m16441do(e, e2, e3, e4, e5, e6, e7, e8, e9);
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10) {
        return m16441do(e, e2, e3, e4, e5, e6, e7, e8, e9, e10);
    }

    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        return m16441do(e, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11);
    }

    @SafeVarargs
    public static <E> v0<E> of(E e, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12, E... eArr) {
        af1.m235try(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        objArr[6] = e7;
        objArr[7] = e8;
        objArr[8] = e9;
        objArr[9] = e10;
        objArr[10] = e11;
        objArr[11] = e12;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return m16441do(objArr);
    }

    public static <E> v0<E> copyOf(E[] eArr) {
        if (eArr.length == 0) {
            return of();
        }
        return m16441do((Object[]) eArr.clone());
    }
}
