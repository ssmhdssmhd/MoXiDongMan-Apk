package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.collect.r0;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class c1<E> extends d1<E> implements Multiset<E> {

    /* renamed from: for, reason: not valid java name */
    @fs0
    private transient g1<Multiset.Entry<E>> f14118for;

    /* renamed from: if, reason: not valid java name */
    @fs0
    private transient v0<E> f14119if;

    /* renamed from: com.google.common.collect.c1$do, reason: invalid class name */
    public class Cdo extends ac2<E> {

        /* renamed from: do, reason: not valid java name */
        public int f14120do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Iterator f14121for;

        /* renamed from: if, reason: not valid java name */
        @l01
        public E f14122if;

        public Cdo(Iterator it) {
            this.f14121for = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14120do > 0 || this.f14121for.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f14120do <= 0) {
                Multiset.Entry entry = (Multiset.Entry) this.f14121for.next();
                this.f14122if = (E) entry.getElement();
                this.f14120do = entry.getCount();
            }
            this.f14120do--;
            return this.f14122if;
        }
    }

    /* renamed from: com.google.common.collect.c1$for, reason: invalid class name */
    public final class Cfor extends p1<Multiset.Entry<E>> {
        private static final long serialVersionUID = 0;

        private Cfor() {
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && c1.this.count(entry.getElement()) == entry.getCount();
        }

        @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
        public int hashCode() {
            return c1.this.hashCode();
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return c1.this.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c1.this.elementSet().size();
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0
        @li0
        public Object writeReplace() {
            return new Cnew(c1.this);
        }

        public /* synthetic */ Cfor(c1 c1Var, Cdo cdo) {
            this();
        }

        @Override // com.google.common.collect.p1
        public Multiset.Entry<E> get(int i) {
            return c1.this.getEntry(i);
        }
    }

    /* renamed from: com.google.common.collect.c1$if, reason: invalid class name */
    public static class Cif<E> extends r0.Cif<E> {

        /* renamed from: for, reason: not valid java name */
        public boolean f14124for;

        /* renamed from: if, reason: not valid java name */
        public i2<E> f14125if;

        /* renamed from: new, reason: not valid java name */
        public boolean f14126new;

        public Cif() {
            this(4);
        }

        @b51
        /* renamed from: final, reason: not valid java name */
        public static <T> i2<T> m15630final(Iterable<T> iterable) {
            if (iterable instanceof u2) {
                return ((u2) iterable).contents;
            }
            if (iterable instanceof Ccase) {
                return ((Ccase) iterable).backingMap;
            }
            return null;
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<E> mo15640new(Iterator<? extends E> it) {
            super.mo15640new(it);
            return this;
        }

        @lf
        /* renamed from: catch, reason: not valid java name */
        public Cif<E> mo15632catch(E e, int i) {
            if (i == 0) {
                return this;
            }
            if (this.f14124for) {
                this.f14125if = new i2<>(this.f14125if);
                this.f14126new = false;
            }
            this.f14124for = false;
            af1.m205continue(e);
            i2<E> i2Var = this.f14125if;
            i2Var.m15897static(e, i + i2Var.m15889else(e));
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public c1<E> mo15642try() {
            if (this.f14125if.m15883abstract() == 0) {
                return c1.of();
            }
            if (this.f14126new) {
                this.f14125if = new i2<>(this.f14125if);
                this.f14126new = false;
            }
            this.f14124for = true;
            return new u2(this.f14125if);
        }

        @lf
        /* renamed from: const, reason: not valid java name */
        public Cif<E> mo15634const(E e, int i) {
            if (i == 0 && !this.f14126new) {
                this.f14125if = new j2(this.f14125if);
                this.f14126new = true;
            } else if (this.f14124for) {
                this.f14125if = new i2<>(this.f14125if);
                this.f14126new = false;
            }
            this.f14124for = false;
            af1.m205continue(e);
            if (i == 0) {
                this.f14125if.m15899switch(e);
            } else {
                this.f14125if.m15897static(af1.m205continue(e), i);
            }
            return this;
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<E> mo15812else(E e) {
            return mo15632catch(e, 1);
        }

        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<E> mo15639if(E... eArr) {
            super.mo15639if(eArr);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.r0.Cif
        @lf
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<E> mo15637for(Iterable<? extends E> iterable) {
            if (iterable instanceof Multiset) {
                Multiset multisetM15659new = c2.m15659new(iterable);
                i2 i2VarM15630final = m15630final(multisetM15659new);
                if (i2VarM15630final != null) {
                    i2<E> i2Var = this.f14125if;
                    i2Var.m15901try(Math.max(i2Var.m15883abstract(), i2VarM15630final.m15883abstract()));
                    for (int iMo15885case = i2VarM15630final.mo15885case(); iMo15885case >= 0; iMo15885case = i2VarM15630final.mo15895public(iMo15885case)) {
                        mo15632catch(i2VarM15630final.m15884break(iMo15885case), i2VarM15630final.m15886class(iMo15885case));
                    }
                } else {
                    Set<Multiset.Entry<E>> setEntrySet = multisetM15659new.entrySet();
                    i2<E> i2Var2 = this.f14125if;
                    i2Var2.m15901try(Math.max(i2Var2.m15883abstract(), setEntrySet.size()));
                    for (Multiset.Entry<E> entry : multisetM15659new.entrySet()) {
                        mo15632catch(entry.getElement(), entry.getCount());
                    }
                }
            } else {
                super.mo15637for(iterable);
            }
            return this;
        }

        public Cif(int i) {
            this.f14124for = false;
            this.f14126new = false;
            this.f14125if = i2.m15879new(i);
        }

        public Cif(boolean z) {
            this.f14124for = false;
            this.f14126new = false;
            this.f14125if = null;
        }
    }

    @li0
    /* renamed from: com.google.common.collect.c1$new, reason: invalid class name */
    public static class Cnew<E> implements Serializable {
        public final c1<E> multiset;

        public Cnew(c1<E> c1Var) {
            this.multiset = c1Var;
        }

        public Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    public static <E> Cif<E> builder() {
        return new Cif<>();
    }

    public static <E> c1<E> copyFromEntries(Collection<? extends Multiset.Entry<? extends E>> collection) {
        Cif cif = new Cif(collection.size());
        for (Multiset.Entry<? extends E> entry : collection) {
            cif.mo15632catch(entry.getElement(), entry.getCount());
        }
        return cif.mo15642try();
    }

    public static <E> c1<E> copyOf(E[] eArr) {
        return m15628do(eArr);
    }

    /* renamed from: do, reason: not valid java name */
    private static <E> c1<E> m15628do(E... eArr) {
        return new Cif().mo15639if(eArr).mo15642try();
    }

    /* renamed from: if, reason: not valid java name */
    private g1<Multiset.Entry<E>> m15629if() {
        return isEmpty() ? g1.of() : new Cfor(this, null);
    }

    public static <E> c1<E> of() {
        return u2.EMPTY;
    }

    @Override // com.google.common.collect.Multiset
    @lf
    @Deprecated
    public final int add(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.r0
    public v0<E> asList() {
        v0<E> v0Var = this.f14119if;
        if (v0Var != null) {
            return v0Var;
        }
        v0<E> v0VarAsList = super.asList();
        this.f14119if = v0VarAsList;
        return v0VarAsList;
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.r0
    @li0
    public int copyIntoArray(Object[] objArr, int i) {
        ac2<Multiset.Entry<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            Multiset.Entry<E> next = it.next();
            Arrays.fill(objArr, i, next.getCount() + i, next.getElement());
            i += next.getCount();
        }
        return i;
    }

    @Override // com.google.common.collect.Multiset
    public abstract g1<E> elementSet();

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@b51 Object obj) {
        return c2.m15666this(this, obj);
    }

    public abstract Multiset.Entry<E> getEntry(int i);

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return c3.m15683catch(entrySet());
    }

    @Override // com.google.common.collect.Multiset
    @lf
    @Deprecated
    public final int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    @lf
    @Deprecated
    public final int setCount(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.r0
    @li0
    abstract Object writeReplace();

    public static <E> c1<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof c1) {
            c1<E> c1Var = (c1) iterable;
            if (!c1Var.isPartialView()) {
                return c1Var;
            }
        }
        Cif cif = new Cif(c2.m15646class(iterable));
        cif.mo15637for(iterable);
        return cif.mo15642try();
    }

    public static <E> c1<E> of(E e) {
        return m15628do(e);
    }

    @Override // com.google.common.collect.Multiset
    public g1<Multiset.Entry<E>> entrySet() {
        g1<Multiset.Entry<E>> g1Var = this.f14118for;
        if (g1Var != null) {
            return g1Var;
        }
        g1<Multiset.Entry<E>> g1VarM15629if = m15629if();
        this.f14118for = g1VarM15629if;
        return g1VarM15629if;
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return new Cdo(entrySet().iterator());
    }

    @Override // com.google.common.collect.Multiset
    @lf
    @Deprecated
    public final boolean setCount(E e, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    public static <E> c1<E> of(E e, E e2) {
        return m15628do(e, e2);
    }

    public static <E> c1<E> of(E e, E e2, E e3) {
        return m15628do(e, e2, e3);
    }

    public static <E> c1<E> of(E e, E e2, E e3, E e4) {
        return m15628do(e, e2, e3, e4);
    }

    public static <E> c1<E> of(E e, E e2, E e3, E e4, E e5) {
        return m15628do(e, e2, e3, e4, e5);
    }

    public static <E> c1<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        return new Cif().mo15812else(e).mo15812else(e2).mo15812else(e3).mo15812else(e4).mo15812else(e5).mo15812else(e6).mo15639if(eArr).mo15642try();
    }

    public static <E> c1<E> copyOf(Iterator<? extends E> it) {
        return new Cif().mo15640new(it).mo15642try();
    }
}
