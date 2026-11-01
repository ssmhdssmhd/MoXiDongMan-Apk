package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.collect.r0;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class g1<E> extends r0<E> implements Set<E> {
    public static final int MAX_TABLE_SIZE = 1073741824;

    /* renamed from: for, reason: not valid java name */
    private static final double f14295for = 0.7d;

    /* renamed from: new, reason: not valid java name */
    private static final int f14296new = 751619276;

    /* renamed from: if, reason: not valid java name */
    @bo1
    @fs0
    @b51
    private transient v0<E> f14297if;

    /* renamed from: com.google.common.collect.g1$do, reason: invalid class name */
    public static class Cdo<E> extends r0.Cdo<E> {

        /* renamed from: case, reason: not valid java name */
        private int f14298case;

        /* renamed from: try, reason: not valid java name */
        @af2
        @b51
        public Object[] f14299try;

        public Cdo() {
            super(4);
        }

        /* renamed from: const, reason: not valid java name */
        private void m15808const(E e) {
            int length = this.f14299try.length - 1;
            int iHashCode = e.hashCode();
            int iM16084for = n0.m16084for(iHashCode);
            while (true) {
                int i = iM16084for & length;
                Object[] objArr = this.f14299try;
                Object obj = objArr[i];
                if (obj == null) {
                    objArr[i] = e;
                    this.f14298case += iHashCode;
                    super.mo15812else(e);
                    return;
                } else if (obj.equals(e)) {
                    return;
                } else {
                    iM16084for = i + 1;
                }
            }
        }

        @Override // com.google.common.collect.r0.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15639if(E... eArr) {
            if (this.f14299try != null) {
                for (E e : eArr) {
                    mo15812else(e);
                }
            } else {
                super.mo15639if(eArr);
            }
            return this;
        }

        @Override // com.google.common.collect.r0.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15637for(Iterable<? extends E> iterable) {
            af1.m205continue(iterable);
            if (this.f14299try != null) {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    mo15812else(it.next());
                }
            } else {
                super.mo15637for(iterable);
            }
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15640new(Iterator<? extends E> it) {
            af1.m205continue(it);
            while (it.hasNext()) {
                mo15812else(it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public g1<E> mo15642try() {
            g1<E> g1VarM15806do;
            int i = this.f14556for;
            if (i == 0) {
                return g1.of();
            }
            if (i == 1) {
                return g1.of(this.f14557if[0]);
            }
            if (this.f14299try == null || g1.chooseTableSize(i) != this.f14299try.length) {
                g1VarM15806do = g1.m15806do(this.f14556for, this.f14557if);
                this.f14556for = g1VarM15806do.size();
            } else {
                Object[] objArrCopyOf = g1.m15807if(this.f14556for, this.f14557if.length) ? Arrays.copyOf(this.f14557if, this.f14556for) : this.f14557if;
                g1VarM15806do = new v2<>(objArrCopyOf, this.f14298case, this.f14299try, r5.length - 1, this.f14556for);
            }
            this.f14558new = true;
            this.f14299try = null;
            return g1VarM15806do;
        }

        @Override // com.google.common.collect.r0.Cdo
        @lf
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15812else(E e) {
            af1.m205continue(e);
            if (this.f14299try != null && g1.chooseTableSize(this.f14556for) <= this.f14299try.length) {
                m15808const(e);
                return this;
            }
            this.f14299try = null;
            super.mo15812else(e);
            return this;
        }

        public Cdo(int i) {
            super(i);
            this.f14299try = new Object[g1.chooseTableSize(i)];
        }
    }

    /* renamed from: com.google.common.collect.g1$if, reason: invalid class name */
    public static class Cif implements Serializable {
        private static final long serialVersionUID = 0;
        public final Object[] elements;

        public Cif(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            return g1.copyOf(this.elements);
        }
    }

    public static <E> Cdo<E> builder() {
        return new Cdo<>();
    }

    @o8
    public static <E> Cdo<E> builderWithExpectedSize(int i) {
        Cdefault.m15742if(i, "expectedSize");
        return new Cdo<>(i);
    }

    @af2
    static int chooseTableSize(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= f14296new) {
            af1.m235try(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (true) {
            double d = iHighestOneBit;
            Double.isNaN(d);
            if (d * f14295for >= iMax) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    public static <E> g1<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof g1) && !(collection instanceof SortedSet)) {
            g1<E> g1Var = (g1) collection;
            if (!g1Var.isPartialView()) {
                return g1Var;
            }
        }
        Object[] array = collection.toArray();
        return m15806do(array.length, array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static <E> g1<E> m15806do(int i, Object... objArr) {
        if (i == 0) {
            return of();
        }
        if (i == 1) {
            return of(objArr[0]);
        }
        int iChooseTableSize = chooseTableSize(i);
        Object[] objArr2 = new Object[iChooseTableSize];
        int i2 = iChooseTableSize - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object objM15838do = h2.m15838do(objArr[i5], i5);
            int iHashCode = objM15838do.hashCode();
            int iM16084for = n0.m16084for(iHashCode);
            while (true) {
                int i6 = iM16084for & i2;
                Object obj = objArr2[i6];
                if (obj == null) {
                    objArr[i4] = objM15838do;
                    objArr2[i6] = objM15838do;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj.equals(objM15838do)) {
                    break;
                }
                iM16084for++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            return new d3(objArr[0], i3);
        }
        if (chooseTableSize(i4) < iChooseTableSize / 2) {
            return m15806do(i4, objArr);
        }
        if (m15807if(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new v2(objArr, i3, objArr2, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static boolean m15807if(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    public static <E> g1<E> of() {
        return v2.EMPTY;
    }

    @Override // com.google.common.collect.r0
    public v0<E> asList() {
        v0<E> v0Var = this.f14297if;
        if (v0Var != null) {
            return v0Var;
        }
        v0<E> v0VarCreateAsList = createAsList();
        this.f14297if = v0VarCreateAsList;
        return v0VarCreateAsList;
    }

    public v0<E> createAsList() {
        return v0.asImmutableList(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof g1) && isHashCodeFast() && ((g1) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return c3.m15689else(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return c3.m15683catch(this);
    }

    public boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract ac2<E> iterator();

    @Override // com.google.common.collect.r0
    Object writeReplace() {
        return new Cif(toArray());
    }

    public static <E> g1<E> of(E e) {
        return new d3(e);
    }

    public static <E> g1<E> of(E e, E e2) {
        return m15806do(2, e, e2);
    }

    public static <E> g1<E> of(E e, E e2, E e3) {
        return m15806do(3, e, e2, e3);
    }

    public static <E> g1<E> of(E e, E e2, E e3, E e4) {
        return m15806do(4, e, e2, e3, e4);
    }

    public static <E> g1<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> g1<E> of(E e, E e2, E e3, E e4, E e5) {
        return m15806do(5, e, e2, e3, e4, e5);
    }

    @SafeVarargs
    public static <E> g1<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        af1.m235try(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m15806do(length, objArr);
    }

    public static <E> g1<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new Cdo().mo15812else(next).mo15640new(it).mo15642try();
    }

    public static <E> g1<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return of();
        }
        if (length != 1) {
            return m15806do(eArr.length, (Object[]) eArr.clone());
        }
        return of((Object) eArr[0]);
    }
}
