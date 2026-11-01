package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ee0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.qd0;
import com.google.common.base.Cpublic;
import com.google.common.base.Predicate;
import com.google.common.collect.Cextends;
import com.google.common.collect.g1;
import com.google.common.collect.v0;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class c3 {

    /* renamed from: com.google.common.collect.c3$break, reason: invalid class name */
    public static class Cbreak<E> extends Cthis<E> implements SortedSet<E> {
        public Cbreak(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
            super(sortedSet, predicate);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f14238do).comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) s1.m16224extends(this.f14238do.iterator(), this.f14239if);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return new Cbreak(((SortedSet) this.f14238do).headSet(e), this.f14239if);
        }

        @Override // java.util.SortedSet
        public E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.f14238do;
            while (true) {
                E e = (Object) sortedSetHeadSet.last();
                if (this.f14239if.apply(e)) {
                    return e;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return new Cbreak(((SortedSet) this.f14238do).subSet(e, e2), this.f14239if);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return new Cbreak(((SortedSet) this.f14238do).tailSet(e), this.f14239if);
        }
    }

    /* renamed from: com.google.common.collect.c3$case, reason: invalid class name */
    public static final class Ccase<E> extends qd0<List<E>> implements Set<List<E>> {

        /* renamed from: do, reason: not valid java name */
        private final transient v0<g1<E>> f14157do;

        /* renamed from: if, reason: not valid java name */
        private final transient Cthrows<E> f14158if;

        /* renamed from: com.google.common.collect.c3$case$do, reason: invalid class name */
        public static class Cdo extends v0<List<E>> {
            public final /* synthetic */ v0 val$axes;

            public Cdo(v0 v0Var) {
                this.val$axes = v0Var;
            }

            @Override // com.google.common.collect.r0
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.val$axes.size();
            }

            @Override // java.util.List
            public List<E> get(int i) {
                return ((g1) this.val$axes.get(i)).asList();
            }
        }

        private Ccase(v0<g1<E>> v0Var, Cthrows<E> cthrows) {
            this.f14157do = v0Var;
            this.f14158if = cthrows;
        }

        /* renamed from: do, reason: not valid java name */
        public static <E> Set<List<E>> m15719do(List<? extends Set<? extends E>> list) {
            v0.Cdo cdo = new v0.Cdo(list.size());
            Iterator<? extends Set<? extends E>> it = list.iterator();
            while (it.hasNext()) {
                g1 g1VarCopyOf = g1.copyOf((Collection) it.next());
                if (g1VarCopyOf.isEmpty()) {
                    return g1.of();
                }
                cdo.mo15635do(g1VarCopyOf);
            }
            v0<E> v0VarMo15642try = cdo.mo15642try();
            return new Ccase(v0VarMo15642try, new Cthrows(new Cdo(v0VarMo15642try)));
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return obj instanceof Ccase ? this.f14157do.equals(((Ccase) obj).f14157do) : super.equals(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int size = 1;
            int size2 = size() - 1;
            for (int i = 0; i < this.f14157do.size(); i++) {
                size2 = ((size2 * 31) ^ (-1)) ^ (-1);
            }
            ac2<g1<E>> it = this.f14157do.iterator();
            while (it.hasNext()) {
                g1<E> next = it.next();
                size = (((size * 31) + ((size() / next.size()) * next.hashCode())) ^ (-1)) ^ (-1);
            }
            return ((size + size2) ^ (-1)) ^ (-1);
        }

        @Override // android.support.v4.qd0, android.support.v4.ae0
        public Collection<List<E>> delegate() {
            return this.f14158if;
        }
    }

    /* renamed from: com.google.common.collect.c3$catch, reason: invalid class name */
    public static abstract class Ccatch<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return c3.m15704protected(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) af1.m205continue(collection));
        }
    }

    /* renamed from: com.google.common.collect.c3$class, reason: invalid class name */
    public static final class Cclass<E> extends AbstractSet<Set<E>> {

        /* renamed from: do, reason: not valid java name */
        public final x0<E, Integer> f14159do;

        /* renamed from: com.google.common.collect.c3$class$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cif<Set<E>> {
            public Cdo(int i) {
                super(i);
            }

            @Override // com.google.common.collect.Cif
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Set<E> mo15720do(int i) {
                return new Cfinal(Cclass.this.f14159do, i);
            }
        }

        public Cclass(Set<E> set) {
            af1.m202catch(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.f14159do = Maps.d(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            return this.f14159do.keySet().containsAll((Set) obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return obj instanceof Cclass ? this.f14159do.equals(((Cclass) obj).f14159do) : super.equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f14159do.keySet().hashCode() << (this.f14159do.size() - 1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new Cdo(size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return 1 << this.f14159do.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "powerSet(" + this.f14159do + ")";
        }
    }

    /* renamed from: com.google.common.collect.c3$const, reason: invalid class name */
    public static abstract class Cconst<E> extends AbstractSet<E> {
        public /* synthetic */ Cconst(Cdo cdo) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        @Deprecated
        public final boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @lf
        /* renamed from: do, reason: not valid java name */
        public <S extends Set<E>> S mo15722do(S s) {
            s.addAll(this);
            return s;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public abstract ac2<E> iterator();

        /* renamed from: if, reason: not valid java name */
        public g1<E> mo15724if() {
            return g1.copyOf((Collection) this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        private Cconst() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c3$do, reason: invalid class name */
    public static class Cdo<E> extends Cconst<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Set f14161do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Set f14162if;

        /* renamed from: com.google.common.collect.c3$do$do, reason: invalid class name and collision with other inner class name */
        public class C0092do extends com.google.common.collect.Cfor<E> {

            /* renamed from: for, reason: not valid java name */
            public final Iterator<? extends E> f14163for;

            /* renamed from: new, reason: not valid java name */
            public final Iterator<? extends E> f14164new;

            public C0092do() {
                this.f14163for = Cdo.this.f14161do.iterator();
                this.f14164new = Cdo.this.f14162if.iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public E mo15521do() {
                if (this.f14163for.hasNext()) {
                    return this.f14163for.next();
                }
                while (this.f14164new.hasNext()) {
                    E next = this.f14164new.next();
                    if (!Cdo.this.f14161do.contains(next)) {
                        return next;
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Set set, Set set2) {
            super(null);
            this.f14161do = set;
            this.f14162if = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f14161do.contains(obj) || this.f14162if.contains(obj);
        }

        @Override // com.google.common.collect.c3.Cconst
        /* renamed from: do */
        public <S extends Set<E>> S mo15722do(S s) {
            s.addAll(this.f14161do);
            s.addAll(this.f14162if);
            return s;
        }

        @Override // com.google.common.collect.c3.Cconst, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: for */
        public ac2<E> iterator() {
            return new C0092do();
        }

        @Override // com.google.common.collect.c3.Cconst
        /* renamed from: if */
        public g1<E> mo15724if() {
            return new g1.Cdo().mo15637for(this.f14161do).mo15637for(this.f14162if).mo15642try();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f14161do.isEmpty() && this.f14162if.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f14161do.size();
            Iterator<E> it = this.f14162if.iterator();
            while (it.hasNext()) {
                if (!this.f14161do.contains(it.next())) {
                    size++;
                }
            }
            return size;
        }
    }

    @li0
    /* renamed from: com.google.common.collect.c3$else, reason: invalid class name */
    public static class Celse<E> extends c0<E> {

        /* renamed from: do, reason: not valid java name */
        private final NavigableSet<E> f14166do;

        public Celse(NavigableSet<E> navigableSet) {
            this.f14166do = navigableSet;
        }

        /* renamed from: final, reason: not valid java name */
        private static <T> k2<T> m15725final(Comparator<T> comparator) {
            return k2.from(comparator).reverse();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public E ceiling(E e) {
            return this.f14166do.floor(e);
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator = this.f14166do.comparator();
            return comparator == null ? k2.natural().reverse() : m15725final(comparator);
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return this.f14166do.iterator();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return this.f14166do;
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public E first() {
            return this.f14166do.last();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public E floor(E e) {
            return this.f14166do.ceiling(e);
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return this.f14166do.tailSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public E higher(E e) {
            return this.f14166do.lower(e);
        }

        @Override // com.google.common.collect.c0, android.support.v4.ee0, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        /* renamed from: if, reason: merged with bridge method [inline-methods] */
        public NavigableSet<E> delegate() {
            return this.f14166do;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f14166do.descendingIterator();
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public E last() {
            return this.f14166do.first();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public E lower(E e) {
            return this.f14166do.higher(e);
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public E pollFirst() {
            return this.f14166do.pollLast();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public E pollLast() {
            return this.f14166do.pollFirst();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return this.f14166do.subSet(e2, z2, e, z).descendingSet();
        }

        @Override // com.google.common.collect.c0, java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return this.f14166do.headSet(e, z).descendingSet();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // android.support.v4.ae0
        public String toString() {
            return standardToString();
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return m15618case(e);
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return standardSubSet(e, e2);
        }

        @Override // android.support.v4.ee0, java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return m15621const(e);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.c3$final, reason: invalid class name */
    public static final class Cfinal<E> extends AbstractSet<E> {

        /* renamed from: do, reason: not valid java name */
        private final x0<E, Integer> f14167do;

        /* renamed from: if, reason: not valid java name */
        private final int f14168if;

        /* renamed from: com.google.common.collect.c3$final$do, reason: invalid class name */
        public class Cdo extends ac2<E> {

            /* renamed from: do, reason: not valid java name */
            public final v0<E> f14169do;

            /* renamed from: if, reason: not valid java name */
            public int f14171if;

            public Cdo() {
                this.f14169do = Cfinal.this.f14167do.keySet().asList();
                this.f14171if = Cfinal.this.f14168if;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14171if != 0;
            }

            @Override // java.util.Iterator
            public E next() {
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(this.f14171if);
                if (iNumberOfTrailingZeros == 32) {
                    throw new NoSuchElementException();
                }
                this.f14171if &= (1 << iNumberOfTrailingZeros) ^ (-1);
                return this.f14169do.get(iNumberOfTrailingZeros);
            }
        }

        public Cfinal(x0<E, Integer> x0Var, int i) {
            this.f14167do = x0Var;
            this.f14168if = i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            Integer num = this.f14167do.get(obj);
            if (num != null) {
                if (((1 << num.intValue()) & this.f14168if) != 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new Cdo();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Integer.bitCount(this.f14168if);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c3$for, reason: invalid class name */
    public static class Cfor<E> extends Cconst<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Set f14172do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Set f14173if;

        /* renamed from: com.google.common.collect.c3$for$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<E> {

            /* renamed from: for, reason: not valid java name */
            public final Iterator<E> f14174for;

            public Cdo() {
                this.f14174for = Cfor.this.f14172do.iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public E mo15521do() {
                while (this.f14174for.hasNext()) {
                    E next = this.f14174for.next();
                    if (!Cfor.this.f14173if.contains(next)) {
                        return next;
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(Set set, Set set2) {
            super(null);
            this.f14172do = set;
            this.f14173if = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f14172do.contains(obj) && !this.f14173if.contains(obj);
        }

        @Override // com.google.common.collect.c3.Cconst, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: for */
        public ac2<E> iterator() {
            return new Cdo();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f14173if.containsAll(this.f14172do);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.f14172do.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.f14173if.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    @li0
    /* renamed from: com.google.common.collect.c3$goto, reason: invalid class name */
    public static class Cgoto<E> extends Cbreak<E> implements NavigableSet<E> {
        public Cgoto(NavigableSet<E> navigableSet, Predicate<? super E> predicate) {
            super(navigableSet, predicate);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return (E) r1.m16191import(m15728if().tailSet(e, true), this.f14239if, null);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return s1.m16248throws(m15728if().descendingIterator(), this.f14239if);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return c3.m15694goto(m15728if().descendingSet(), this.f14239if);
        }

        @Override // java.util.NavigableSet
        @b51
        public E floor(E e) {
            return (E) s1.m16226finally(m15728if().headSet(e, true).descendingIterator(), this.f14239if, null);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return c3.m15694goto(m15728if().headSet(e, z), this.f14239if);
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return (E) r1.m16191import(m15728if().tailSet(e, false), this.f14239if, null);
        }

        /* renamed from: if, reason: not valid java name */
        public NavigableSet<E> m15728if() {
            return (NavigableSet) this.f14238do;
        }

        @Override // com.google.common.collect.c3.Cbreak, java.util.SortedSet
        public E last() {
            return (E) s1.m16224extends(m15728if().descendingIterator(), this.f14239if);
        }

        @Override // java.util.NavigableSet
        @b51
        public E lower(E e) {
            return (E) s1.m16226finally(m15728if().headSet(e, false).descendingIterator(), this.f14239if, null);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) r1.m16198protected(m15728if(), this.f14239if);
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) r1.m16198protected(m15728if().descendingSet(), this.f14239if);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return c3.m15694goto(m15728if().subSet(e, z, e2, z2), this.f14239if);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return c3.m15694goto(m15728if().tailSet(e, z), this.f14239if);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c3$if, reason: invalid class name */
    public static class Cif<E> extends Cconst<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Set f14176do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Set f14177if;

        /* renamed from: com.google.common.collect.c3$if$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<E> {

            /* renamed from: for, reason: not valid java name */
            public final Iterator<E> f14178for;

            public Cdo() {
                this.f14178for = Cif.this.f14176do.iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public E mo15521do() {
                while (this.f14178for.hasNext()) {
                    E next = this.f14178for.next();
                    if (Cif.this.f14177if.contains(next)) {
                        return next;
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(Set set, Set set2) {
            super(null);
            this.f14176do = set;
            this.f14177if = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f14176do.contains(obj) && this.f14177if.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f14176do.containsAll(collection) && this.f14177if.containsAll(collection);
        }

        @Override // com.google.common.collect.c3.Cconst, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: for */
        public ac2<E> iterator() {
            return new Cdo();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f14177if, this.f14176do);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.f14176do.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.f14177if.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c3$new, reason: invalid class name */
    public static class Cnew<E> extends Cconst<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Set f14180do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Set f14181if;

        /* renamed from: com.google.common.collect.c3$new$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<E> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14182for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ Iterator f14183new;

            public Cdo(Iterator it, Iterator it2) {
                this.f14182for = it;
                this.f14183new = it2;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public E mo15521do() {
                while (this.f14182for.hasNext()) {
                    E e = (E) this.f14182for.next();
                    if (!Cnew.this.f14181if.contains(e)) {
                        return e;
                    }
                }
                while (this.f14183new.hasNext()) {
                    E e2 = (E) this.f14183new.next();
                    if (!Cnew.this.f14180do.contains(e2)) {
                        return e2;
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(Set set, Set set2) {
            super(null);
            this.f14180do = set;
            this.f14181if = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f14181if.contains(obj) ^ this.f14180do.contains(obj);
        }

        @Override // com.google.common.collect.c3.Cconst, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: for */
        public ac2<E> iterator() {
            return new Cdo(this.f14180do.iterator(), this.f14181if.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f14180do.equals(this.f14181if);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.f14180do.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.f14181if.contains(it.next())) {
                    i++;
                }
            }
            Iterator<E> it2 = this.f14181if.iterator();
            while (it2.hasNext()) {
                if (!this.f14180do.contains(it2.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    /* renamed from: com.google.common.collect.c3$this, reason: invalid class name */
    public static class Cthis<E> extends Cextends.Cdo<E> implements Set<E> {
        public Cthis(Set<E> set, Predicate<? super E> predicate) {
            super(set, predicate);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@b51 Object obj) {
            return c3.m15689else(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return c3.m15683catch(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c3$try, reason: invalid class name */
    public static class Ctry<E> extends AbstractSet<Set<E>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f14186do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ x0 f14187if;

        /* renamed from: com.google.common.collect.c3$try$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Set<E>> {

            /* renamed from: for, reason: not valid java name */
            public final BitSet f14188for;

            /* renamed from: com.google.common.collect.c3$try$do$do, reason: invalid class name and collision with other inner class name */
            public class C0093do extends AbstractSet<E> {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ BitSet f14190do;

                /* renamed from: com.google.common.collect.c3$try$do$do$do, reason: invalid class name and collision with other inner class name */
                public class C0094do extends com.google.common.collect.Cfor<E> {

                    /* renamed from: for, reason: not valid java name */
                    public int f14192for = -1;

                    public C0094do() {
                    }

                    @Override // com.google.common.collect.Cfor
                    /* renamed from: do */
                    public E mo15521do() {
                        int iNextSetBit = C0093do.this.f14190do.nextSetBit(this.f14192for + 1);
                        this.f14192for = iNextSetBit;
                        return iNextSetBit == -1 ? m15805if() : Ctry.this.f14187if.keySet().asList().get(this.f14192for);
                    }
                }

                public C0093do(BitSet bitSet) {
                    this.f14190do = bitSet;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean contains(@b51 Object obj) {
                    Integer num = (Integer) Ctry.this.f14187if.get(obj);
                    return num != null && this.f14190do.get(num.intValue());
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<E> iterator() {
                    return new C0094do();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return Ctry.this.f14186do;
                }
            }

            public Cdo() {
                this.f14188for = new BitSet(Ctry.this.f14187if.size());
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Set<E> mo15521do() {
                if (this.f14188for.isEmpty()) {
                    this.f14188for.set(0, Ctry.this.f14186do);
                } else {
                    int iNextSetBit = this.f14188for.nextSetBit(0);
                    int iNextClearBit = this.f14188for.nextClearBit(iNextSetBit);
                    if (iNextClearBit == Ctry.this.f14187if.size()) {
                        return m15805if();
                    }
                    int i = (iNextClearBit - iNextSetBit) - 1;
                    this.f14188for.set(0, i);
                    this.f14188for.clear(i, iNextClearBit);
                    this.f14188for.set(iNextClearBit);
                }
                return new C0093do((BitSet) this.f14188for.clone());
            }
        }

        public Ctry(int i, x0 x0Var) {
            this.f14186do = i;
            this.f14187if = x0Var;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            return set.size() == this.f14186do && this.f14187if.keySet().containsAll(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new Cdo();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return com.google.common.math.Cnew.m17339do(this.f14187if.size(), this.f14186do);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "Sets.combinations(" + this.f14187if.keySet() + ", " + this.f14186do + ")";
        }
    }

    private c3() {
    }

    public static <E> Cconst<E> a(Set<? extends E> set, Set<? extends E> set2) {
        af1.m227strictfp(set, "set1");
        af1.m227strictfp(set2, "set2");
        return new Cdo(set, set2);
    }

    @Deprecated
    /* renamed from: abstract, reason: not valid java name */
    public static <E> Set<E> m15680abstract(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static <E> NavigableSet<E> b(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof r0) || (navigableSet instanceof Csuper)) ? navigableSet : new Csuper(navigableSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    public static <E> SortedSet<E> m15681break(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
        if (!(sortedSet instanceof Cthis)) {
            return new Cbreak((SortedSet) af1.m205continue(sortedSet), (Predicate) af1.m205continue(predicate));
        }
        Cthis cthis = (Cthis) sortedSet;
        return new Cbreak((SortedSet) cthis.f14238do, Cpublic.m15173new(cthis.f14239if, predicate));
    }

    /* renamed from: case, reason: not valid java name */
    public static <E> Cconst<E> m15682case(Set<E> set, Set<?> set2) {
        af1.m227strictfp(set, "set1");
        af1.m227strictfp(set2, "set2");
        return new Cfor(set, set2);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m15683catch(Set<?> set) {
        Iterator<?> it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode = ((iHashCode + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @ki0(serializable = true)
    /* renamed from: class, reason: not valid java name */
    public static <E extends Enum<E>> g1<E> m15684class(E e, E... eArr) {
        return u0.asImmutable(EnumSet.of((Enum) e, (Enum[]) eArr));
    }

    @ki0(serializable = true)
    /* renamed from: const, reason: not valid java name */
    public static <E extends Enum<E>> g1<E> m15685const(Iterable<E> iterable) {
        if (iterable instanceof u0) {
            return (u0) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return collection.isEmpty() ? g1.of() : u0.asImmutable(EnumSet.copyOf(collection));
        }
        Iterator<E> it = iterable.iterator();
        if (!it.hasNext()) {
            return g1.of();
        }
        EnumSet enumSetOf = EnumSet.of((Enum) it.next());
        s1.m16222do(enumSetOf, it);
        return u0.asImmutable(enumSetOf);
    }

    /* renamed from: continue, reason: not valid java name */
    public static <E extends Comparable> TreeSet<E> m15686continue() {
        return new TreeSet<>();
    }

    /* renamed from: default, reason: not valid java name */
    public static <E> HashSet<E> m15687default(int i) {
        return new HashSet<>(Maps.m15435super(i));
    }

    /* renamed from: do, reason: not valid java name */
    public static <B> Set<List<B>> m15688do(List<? extends Set<? extends B>> list) {
        return Ccase.m15719do(list);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m15689else(Set<?> set, @b51 Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <E> Set<E> m15690extends() {
        return Collections.newSetFromMap(Maps.o());
    }

    /* renamed from: final, reason: not valid java name */
    public static <E> Cconst<E> m15691final(Set<E> set, Set<?> set2) {
        af1.m227strictfp(set, "set1");
        af1.m227strictfp(set2, "set2");
        return new Cif(set, set2);
    }

    /* renamed from: finally, reason: not valid java name */
    public static <E> LinkedHashSet<E> m15692finally() {
        return new LinkedHashSet<>();
    }

    @o8
    /* renamed from: for, reason: not valid java name */
    public static <E> Set<Set<E>> m15693for(Set<E> set, int i) {
        x0 x0VarD = Maps.d(set);
        Cdefault.m15742if(i, "size");
        af1.m204const(i <= x0VarD.size(), "size (%s) must be <= set.size() (%s)", i, x0VarD.size());
        return i == 0 ? g1.of(g1.of()) : i == x0VarD.size() ? g1.of(x0VarD.keySet()) : new Ctry(i, x0VarD);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    /* renamed from: goto, reason: not valid java name */
    public static <E> NavigableSet<E> m15694goto(NavigableSet<E> navigableSet, Predicate<? super E> predicate) {
        if (!(navigableSet instanceof Cthis)) {
            return new Cgoto((NavigableSet) af1.m205continue(navigableSet), (Predicate) af1.m205continue(predicate));
        }
        Cthis cthis = (Cthis) navigableSet;
        return new Cgoto((NavigableSet) cthis.f14238do, Cpublic.m15173new(cthis.f14239if, predicate));
    }

    @SafeVarargs
    /* renamed from: if, reason: not valid java name */
    public static <B> Set<List<B>> m15695if(Set<? extends B>... setArr) {
        return m15688do(Arrays.asList(setArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    @o8
    /* renamed from: implements, reason: not valid java name */
    public static <K extends Comparable<? super K>> NavigableSet<K> m15696implements(NavigableSet<K> navigableSet, n2<K> n2Var) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != k2.natural() && n2Var.hasLowerBound() && n2Var.hasUpperBound()) {
            af1.m235try(navigableSet.comparator().compare(n2Var.lowerEndpoint(), n2Var.upperEndpoint()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (n2Var.hasLowerBound() && n2Var.hasUpperBound()) {
            Comparable comparableLowerEndpoint = n2Var.lowerEndpoint();
            Cstatic cstaticLowerBoundType = n2Var.lowerBoundType();
            Cstatic cstatic = Cstatic.CLOSED;
            return navigableSet.subSet(comparableLowerEndpoint, cstaticLowerBoundType == cstatic, n2Var.upperEndpoint(), n2Var.upperBoundType() == cstatic);
        }
        if (n2Var.hasLowerBound()) {
            return navigableSet.tailSet(n2Var.lowerEndpoint(), n2Var.lowerBoundType() == Cstatic.CLOSED);
        }
        if (n2Var.hasUpperBound()) {
            return navigableSet.headSet(n2Var.upperEndpoint(), n2Var.upperBoundType() == Cstatic.CLOSED);
        }
        return (NavigableSet) af1.m205continue(navigableSet);
    }

    @li0
    /* renamed from: import, reason: not valid java name */
    public static <E> CopyOnWriteArraySet<E> m15697import() {
        return new CopyOnWriteArraySet<>();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static <E> Cconst<E> m15698instanceof(Set<? extends E> set, Set<? extends E> set2) {
        af1.m227strictfp(set, "set1");
        af1.m227strictfp(set2, "set2");
        return new Cnew(set, set2);
    }

    @ki0(serializable = false)
    /* renamed from: interface, reason: not valid java name */
    public static <E> Set<Set<E>> m15699interface(Set<E> set) {
        return new Cclass(set);
    }

    @li0
    /* renamed from: native, reason: not valid java name */
    public static <E> CopyOnWriteArraySet<E> m15700native(Iterable<? extends E> iterable) {
        return new CopyOnWriteArraySet<>(iterable instanceof Collection ? Cextends.m15771if(iterable) : x1.m16506import(iterable));
    }

    /* renamed from: new, reason: not valid java name */
    public static <E extends Enum<E>> EnumSet<E> m15701new(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        af1.m235try(!collection.isEmpty(), "collection is empty; use the other version of this method");
        return m15709super(collection, collection.iterator().next().getDeclaringClass());
    }

    /* renamed from: package, reason: not valid java name */
    public static <E> LinkedHashSet<E> m15702package(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>(Cextends.m15771if(iterable));
        }
        LinkedHashSet<E> linkedHashSetM15692finally = m15692finally();
        r1.m16182do(linkedHashSetM15692finally, iterable);
        return linkedHashSetM15692finally;
    }

    /* renamed from: private, reason: not valid java name */
    public static <E> LinkedHashSet<E> m15703private(int i) {
        return new LinkedHashSet<>(Maps.m15435super(i));
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m15704protected(Set<?> set, Collection<?> collection) {
        af1.m205continue(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? m15715transient(set, collection.iterator()) : s1.i(set.iterator(), collection);
    }

    /* renamed from: public, reason: not valid java name */
    public static <E extends Enum<E>> EnumSet<E> m15705public(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> enumSetNoneOf = EnumSet.noneOf(cls);
        r1.m16182do(enumSetNoneOf, iterable);
        return enumSetNoneOf;
    }

    /* renamed from: return, reason: not valid java name */
    public static <E> HashSet<E> m15706return() {
        return new HashSet<>();
    }

    /* renamed from: static, reason: not valid java name */
    public static <E> HashSet<E> m15707static(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? new HashSet<>(Cextends.m15771if(iterable)) : m15710switch(iterable.iterator());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <E extends Comparable> TreeSet<E> m15708strictfp(Iterable<? extends E> iterable) {
        TreeSet<E> treeSetM15686continue = m15686continue();
        r1.m16182do(treeSetM15686continue, iterable);
        return treeSetM15686continue;
    }

    /* renamed from: super, reason: not valid java name */
    private static <E extends Enum<E>> EnumSet<E> m15709super(Collection<E> collection, Class<E> cls) {
        EnumSet<E> enumSetAllOf = EnumSet.allOf(cls);
        enumSetAllOf.removeAll(collection);
        return enumSetAllOf;
    }

    /* renamed from: switch, reason: not valid java name */
    public static <E> HashSet<E> m15710switch(Iterator<? extends E> it) {
        HashSet<E> hashSetM15706return = m15706return();
        s1.m16222do(hashSetM15706return, it);
        return hashSetM15706return;
    }

    @li0
    /* renamed from: synchronized, reason: not valid java name */
    public static <E> NavigableSet<E> m15711synchronized(NavigableSet<E> navigableSet) {
        return l3.m16025while(navigableSet);
    }

    /* renamed from: this, reason: not valid java name */
    public static <E> Set<E> m15712this(Set<E> set, Predicate<? super E> predicate) {
        if (set instanceof SortedSet) {
            return m15681break((SortedSet) set, predicate);
        }
        if (!(set instanceof Cthis)) {
            return new Cthis((Set) af1.m205continue(set), (Predicate) af1.m205continue(predicate));
        }
        Cthis cthis = (Cthis) set;
        return new Cthis((Set) cthis.f14238do, Cpublic.m15173new(cthis.f14239if, predicate));
    }

    /* renamed from: throw, reason: not valid java name */
    public static <E> Set<E> m15713throw() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    /* renamed from: throws, reason: not valid java name */
    public static <E> HashSet<E> m15714throws(E... eArr) {
        HashSet<E> hashSetM15687default = m15687default(eArr.length);
        Collections.addAll(hashSetM15687default, eArr);
        return hashSetM15687default;
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m15715transient(Set<?> set, Iterator<?> it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    /* renamed from: try, reason: not valid java name */
    public static <E extends Enum<E>> EnumSet<E> m15716try(Collection<E> collection, Class<E> cls) {
        af1.m205continue(collection);
        return collection instanceof EnumSet ? EnumSet.complementOf((EnumSet) collection) : m15709super(collection, cls);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <E> TreeSet<E> m15717volatile(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) af1.m205continue(comparator));
    }

    /* renamed from: while, reason: not valid java name */
    public static <E> Set<E> m15718while(Iterable<? extends E> iterable) {
        Set<E> setM15713throw = m15713throw();
        r1.m16182do(setM15713throw, iterable);
        return setM15713throw;
    }

    /* renamed from: com.google.common.collect.c3$super, reason: invalid class name */
    public static final class Csuper<E> extends ee0<E> implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;
        private final NavigableSet<E> delegate;

        /* renamed from: do, reason: not valid java name */
        @l01
        private transient Csuper<E> f14185do;
        private final SortedSet<E> unmodifiableDelegate;

        public Csuper(NavigableSet<E> navigableSet) {
            this.delegate = (NavigableSet) af1.m205continue(navigableSet);
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return this.delegate.ceiling(e);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return s1.s(this.delegate.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            Csuper<E> csuper = this.f14185do;
            if (csuper != null) {
                return csuper;
            }
            Csuper<E> csuper2 = new Csuper<>(this.delegate.descendingSet());
            this.f14185do = csuper2;
            csuper2.f14185do = this;
            return csuper2;
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            return this.delegate.floor(e);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return c3.b(this.delegate.headSet(e, z));
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return this.delegate.higher(e);
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            return this.delegate.lower(e);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return c3.b(this.delegate.subSet(e, z, e2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return c3.b(this.delegate.tailSet(e, z));
        }

        @Override // android.support.v4.ee0, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public SortedSet<E> delegate() {
            return this.unmodifiableDelegate;
        }
    }
}
