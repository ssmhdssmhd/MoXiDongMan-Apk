package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import android.support.v4.ur;
import com.google.common.base.Cpublic;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

@ki0
/* renamed from: com.google.common.collect.extends, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cextends {

    /* renamed from: com.google.common.collect.extends$case, reason: invalid class name */
    public static class Ccase<F, T> extends AbstractCollection<T> {

        /* renamed from: do, reason: not valid java name */
        public final Collection<F> f14236do;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super F, ? extends T> f14237if;

        public Ccase(Collection<F> collection, Function<? super F, ? extends T> function) {
            this.f14236do = (Collection) af1.m205continue(collection);
            this.f14237if = (Function) af1.m205continue(function);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f14236do.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f14236do.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.p(this.f14236do.iterator(), this.f14237if);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f14236do.size();
        }
    }

    /* renamed from: com.google.common.collect.extends$do, reason: invalid class name */
    public static class Cdo<E> extends AbstractCollection<E> {

        /* renamed from: do, reason: not valid java name */
        public final Collection<E> f14238do;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super E> f14239if;

        public Cdo(Collection<E> collection, Predicate<? super E> predicate) {
            this.f14238do = collection;
            this.f14239if = predicate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e) {
            af1.m220new(this.f14239if.apply(e));
            return this.f14238do.add(e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                af1.m220new(this.f14239if.apply(it.next()));
            }
            return this.f14238do.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            r1.m16209transient(this.f14238do, this.f14239if);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (Cextends.m15763catch(this.f14238do, obj)) {
                return this.f14239if.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return Cextends.m15769for(this, collection);
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo<E> m15775do(Predicate<? super E> predicate) {
            return new Cdo<>(this.f14238do, Cpublic.m15173new(this.f14239if, predicate));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !r1.m16187for(this.f14238do, this.f14239if);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return s1.m16248throws(this.f14238do.iterator(), this.f14239if);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.f14238do.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.f14238do.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f14239if.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.f14238do.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f14239if.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator<E> it = this.f14238do.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.f14239if.apply(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return x1.m16507native(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) x1.m16507native(iterator()).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.extends$for, reason: invalid class name */
    public static final class Cfor<E> extends com.google.common.collect.Cfor<List<E>> {

        /* renamed from: for, reason: not valid java name */
        @b51
        public List<E> f14240for;

        /* renamed from: new, reason: not valid java name */
        public final Comparator<? super E> f14241new;

        public Cfor(List<E> list, Comparator<? super E> comparator) {
            this.f14240for = x1.m16506import(list);
            this.f14241new = comparator;
        }

        /* renamed from: case, reason: not valid java name */
        public int m15776case() {
            for (int size = this.f14240for.size() - 2; size >= 0; size--) {
                if (this.f14241new.compare(this.f14240for.get(size), this.f14240for.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        /* renamed from: else, reason: not valid java name */
        public int m15777else(int i) {
            E e = this.f14240for.get(i);
            for (int size = this.f14240for.size() - 1; size > i; size--) {
                if (this.f14241new.compare(e, this.f14240for.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }

        /* renamed from: new, reason: not valid java name */
        public void m15778new() {
            int iM15776case = m15776case();
            if (iM15776case == -1) {
                this.f14240for = null;
                return;
            }
            Collections.swap(this.f14240for, iM15776case, m15777else(iM15776case));
            Collections.reverse(this.f14240for.subList(iM15776case + 1, this.f14240for.size()));
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<E> mo15521do() {
            List<E> list = this.f14240for;
            if (list == null) {
                return m15805if();
            }
            v0 v0VarCopyOf = v0.copyOf((Collection) list);
            m15778new();
            return v0VarCopyOf;
        }
    }

    /* renamed from: com.google.common.collect.extends$if, reason: invalid class name */
    public static final class Cif<E> extends AbstractCollection<List<E>> {

        /* renamed from: do, reason: not valid java name */
        public final v0<E> f14242do;

        /* renamed from: for, reason: not valid java name */
        public final int f14243for;

        /* renamed from: if, reason: not valid java name */
        public final Comparator<? super E> f14244if;

        public Cif(Iterable<E> iterable, Comparator<? super E> comparator) {
            v0<E> v0VarSortedCopyOf = v0.sortedCopyOf(comparator, iterable);
            this.f14242do = v0VarSortedCopyOf;
            this.f14244if = comparator;
            this.f14243for = m15780do(v0VarSortedCopyOf, comparator);
        }

        /* renamed from: do, reason: not valid java name */
        private static <E> int m15780do(List<E> list, Comparator<? super E> comparator) {
            int i = 1;
            int iM17349return = 1;
            int i2 = 1;
            while (i < list.size()) {
                if (comparator.compare(list.get(i - 1), list.get(i)) < 0) {
                    iM17349return = com.google.common.math.Cnew.m17349return(iM17349return, com.google.common.math.Cnew.m17339do(i, i2));
                    i2 = 0;
                    if (iM17349return == Integer.MAX_VALUE) {
                        return Integer.MAX_VALUE;
                    }
                }
                i++;
                i2++;
            }
            return com.google.common.math.Cnew.m17349return(iM17349return, com.google.common.math.Cnew.m17339do(i, i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Cextends.m15762case(this.f14242do, (List) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new Cfor(this.f14242do, this.f14244if);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f14243for;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "orderedPermutationCollection(" + this.f14242do + ")";
        }
    }

    /* renamed from: com.google.common.collect.extends$new, reason: invalid class name */
    public static final class Cnew<E> extends AbstractCollection<List<E>> {

        /* renamed from: do, reason: not valid java name */
        public final v0<E> f14245do;

        public Cnew(v0<E> v0Var) {
            this.f14245do = v0Var;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Cextends.m15762case(this.f14245do, (List) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new Ctry(this.f14245do);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return com.google.common.math.Cnew.m17343goto(this.f14245do.size());
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "permutations(" + this.f14245do + ")";
        }
    }

    /* renamed from: com.google.common.collect.extends$try, reason: invalid class name */
    public static class Ctry<E> extends com.google.common.collect.Cfor<List<E>> {

        /* renamed from: case, reason: not valid java name */
        public int f14246case;

        /* renamed from: for, reason: not valid java name */
        public final List<E> f14247for;

        /* renamed from: new, reason: not valid java name */
        public final int[] f14248new;

        /* renamed from: try, reason: not valid java name */
        public final int[] f14249try;

        public Ctry(List<E> list) {
            this.f14247for = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.f14248new = iArr;
            int[] iArr2 = new int[size];
            this.f14249try = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.f14246case = Integer.MAX_VALUE;
        }

        /* renamed from: case, reason: not valid java name */
        public void m15781case() {
            int[] iArr = this.f14249try;
            int i = this.f14246case;
            iArr[i] = -iArr[i];
            this.f14246case = i - 1;
        }

        /* renamed from: new, reason: not valid java name */
        public void m15782new() {
            int size = this.f14247for.size() - 1;
            this.f14246case = size;
            if (size == -1) {
                return;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.f14248new;
                int i2 = this.f14246case;
                int i3 = iArr[i2] + this.f14249try[i2];
                if (i3 < 0) {
                    m15781case();
                } else if (i3 != i2 + 1) {
                    Collections.swap(this.f14247for, (i2 - iArr[i2]) + i, (i2 - i3) + i);
                    this.f14248new[this.f14246case] = i3;
                    return;
                } else {
                    if (i2 == 0) {
                        return;
                    }
                    i++;
                    m15781case();
                }
            }
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<E> mo15521do() {
            if (this.f14246case <= 0) {
                return m15805if();
            }
            v0 v0VarCopyOf = v0.copyOf((Collection) this.f14247for);
            m15782new();
            return v0VarCopyOf;
        }
    }

    private Cextends() {
    }

    @o8
    /* renamed from: break, reason: not valid java name */
    public static <E> Collection<List<E>> m15761break(Collection<E> collection) {
        return new Cnew(v0.copyOf((Collection) collection));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static boolean m15762case(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        i2 i2VarM15772new = m15772new(list);
        i2 i2VarM15772new2 = m15772new(list2);
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (i2VarM15772new.m15886class(i) != i2VarM15772new2.m15889else(i2VarM15772new.m15884break(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m15763catch(Collection<?> collection, @b51 Object obj) {
        af1.m205continue(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m15764class(Collection<?> collection, @b51 Object obj) {
        af1.m205continue(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static String m15765const(Collection<?> collection) {
        StringBuilder sbM15767else = m15767else(collection.size());
        sbM15767else.append('[');
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                sbM15767else.append(", ");
            }
            z = false;
            if (obj == collection) {
                sbM15767else.append("(this Collection)");
            } else {
                sbM15767else.append(obj);
            }
        }
        sbM15767else.append(']');
        return sbM15767else.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static StringBuilder m15767else(int i) {
        Cdefault.m15742if(i, "size");
        return new StringBuilder((int) Math.min(i * 8, ur.f6966do));
    }

    /* renamed from: final, reason: not valid java name */
    public static <F, T> Collection<T> m15768final(Collection<F> collection, Function<? super F, T> function) {
        return new Ccase(collection, function);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m15769for(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @o8
    /* renamed from: goto, reason: not valid java name */
    public static <E extends Comparable<? super E>> Collection<List<E>> m15770goto(Iterable<E> iterable) {
        return m15773this(iterable, k2.natural());
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Collection<T> m15771if(Iterable<T> iterable) {
        return (Collection) iterable;
    }

    /* renamed from: new, reason: not valid java name */
    private static <E> i2<E> m15772new(Collection<E> collection) {
        i2<E> i2Var = new i2<>();
        for (E e : collection) {
            i2Var.m15897static(e, i2Var.m15889else(e) + 1);
        }
        return i2Var;
    }

    @o8
    /* renamed from: this, reason: not valid java name */
    public static <E> Collection<List<E>> m15773this(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new Cif(iterable, comparator);
    }

    /* renamed from: try, reason: not valid java name */
    public static <E> Collection<E> m15774try(Collection<E> collection, Predicate<? super E> predicate) {
        return collection instanceof Cdo ? ((Cdo) collection).m15775do(predicate) : new Cdo((Collection) af1.m205continue(collection), (Predicate) af1.m205continue(predicate));
    }
}
