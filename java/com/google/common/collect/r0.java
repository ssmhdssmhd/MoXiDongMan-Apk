package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.v10;
import com.google.common.collect.v0;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@v10("Use ImmutableList.of or another implementation")
@ki0(emulated = true)
/* loaded from: classes2.dex */
public abstract class r0<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final Object[] f14555do = new Object[0];

    /* renamed from: com.google.common.collect.r0$do, reason: invalid class name */
    public static abstract class Cdo<E> extends Cif<E> {

        /* renamed from: for, reason: not valid java name */
        public int f14556for;

        /* renamed from: if, reason: not valid java name */
        public Object[] f14557if;

        /* renamed from: new, reason: not valid java name */
        public boolean f14558new;

        public Cdo(int i) {
            Cdefault.m15742if(i, "initialCapacity");
            this.f14557if = new Object[i];
            this.f14556for = 0;
        }

        /* renamed from: goto, reason: not valid java name */
        private void m16172goto(int i) {
            Object[] objArr = this.f14557if;
            if (objArr.length < i) {
                this.f14557if = Arrays.copyOf(objArr, Cif.m16173case(objArr.length, i));
                this.f14558new = false;
            } else if (this.f14558new) {
                this.f14557if = (Object[]) objArr.clone();
                this.f14558new = false;
            }
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: else */
        public Cdo<E> mo15812else(E e) {
            af1.m205continue(e);
            m16172goto(this.f14556for + 1);
            Object[] objArr = this.f14557if;
            int i = this.f14556for;
            this.f14556for = i + 1;
            objArr[i] = e;
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: for */
        public Cif<E> mo15637for(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                m16172goto(this.f14556for + collection.size());
                if (collection instanceof r0) {
                    this.f14556for = ((r0) collection).copyIntoArray(this.f14557if, this.f14556for);
                    return this;
                }
            }
            super.mo15637for(iterable);
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: if */
        public Cif<E> mo15639if(E... eArr) {
            h2.m15843if(eArr);
            m16172goto(this.f14556for + eArr.length);
            System.arraycopy(eArr, 0, this.f14557if, this.f14556for, eArr.length);
            this.f14556for += eArr.length;
            return this;
        }
    }

    @v10
    /* renamed from: com.google.common.collect.r0$if, reason: invalid class name */
    public static abstract class Cif<E> {

        /* renamed from: do, reason: not valid java name */
        public static final int f14559do = 4;

        /* renamed from: case, reason: not valid java name */
        public static int m16173case(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        @lf
        /* renamed from: do */
        public abstract Cif<E> mo15812else(E e);

        @lf
        /* renamed from: for */
        public Cif<E> mo15637for(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                mo15812else(it.next());
            }
            return this;
        }

        @lf
        /* renamed from: if */
        public Cif<E> mo15639if(E... eArr) {
            for (E e : eArr) {
                mo15812else(e);
            }
            return this;
        }

        @lf
        /* renamed from: new */
        public Cif<E> mo15640new(Iterator<? extends E> it) {
            while (it.hasNext()) {
                mo15812else(it.next());
            }
            return this;
        }

        /* renamed from: try */
        public abstract r0<E> mo15642try();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public v0<E> asList() {
        return isEmpty() ? v0.of() : v0.asImmutableList(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(@b51 Object obj);

    @lf
    public int copyIntoArray(Object[] objArr, int i) {
        ac2<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    public Object[] internalArray() {
        return null;
    }

    public int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract ac2<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f14555do);
    }

    Object writeReplace() {
        return new v0.Cnew(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    public final <T> T[] toArray(T[] tArr) {
        af1.m205continue(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrInternalArray = internalArray();
            if (objArrInternalArray != null) {
                return (T[]) l2.m15994if(objArrInternalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) h2.m15833break(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }
}
