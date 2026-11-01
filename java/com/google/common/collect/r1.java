package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cpublic;
import com.google.common.base.Cwhile;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class r1 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$break, reason: invalid class name */
    public static class Cbreak<T> extends t<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Comparator f14560for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14561if;

        public Cbreak(Iterable iterable, Comparator comparator) {
            this.f14561if = iterable;
            this.f14560for = comparator;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.b(r1.h(this.f14561if, r1.f()), this.f14560for);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$case, reason: invalid class name */
    public static class Ccase<T> extends t<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Function f14562for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14563if;

        public Ccase(Iterable iterable, Function function) {
            this.f14563if = iterable;
            this.f14562for = function;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.p(this.f14563if.iterator(), this.f14562for);
        }
    }

    /* renamed from: com.google.common.collect.r1$catch, reason: invalid class name */
    public static final class Ccatch<T> extends t<T> {

        /* renamed from: if, reason: not valid java name */
        private final Iterable<? extends T> f14564if;

        public /* synthetic */ Ccatch(Iterable iterable, Cif cif) {
            this(iterable);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.s(this.f14564if.iterator());
        }

        @Override // com.google.common.collect.t
        public String toString() {
            return this.f14564if.toString();
        }

        private Ccatch(Iterable<? extends T> iterable) {
            this.f14564if = iterable;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$do, reason: invalid class name */
    public static class Cdo<T> implements Function<Iterable<? extends T>, Iterator<? extends T>> {
        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Iterator<? extends T> apply(Iterable<? extends T> iterable) {
            return iterable.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$else, reason: invalid class name */
    public static class Celse<T> extends t<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f14565for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14566if;

        /* renamed from: com.google.common.collect.r1$else$do, reason: invalid class name */
        public class Cdo implements Iterator<T> {

            /* renamed from: do, reason: not valid java name */
            public boolean f14567do = true;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Iterator f14569if;

            public Cdo(Iterator it) {
                this.f14569if = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14569if.hasNext();
            }

            @Override // java.util.Iterator
            public T next() {
                T t = (T) this.f14569if.next();
                this.f14567do = false;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                Cdefault.m15744try(!this.f14567do);
                this.f14569if.remove();
            }
        }

        public Celse(Iterable iterable, int i) {
            this.f14566if = iterable;
            this.f14565for = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f14566if;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f14565for), list.size()).iterator();
            }
            Iterator<T> it = iterable.iterator();
            s1.m16229if(it, this.f14565for);
            return new Cdo(it);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$for, reason: invalid class name */
    public static class Cfor<T> extends t<List<T>> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f14570for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14571if;

        public Cfor(Iterable iterable, int i) {
            this.f14571if = iterable;
            this.f14570for = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return s1.d(this.f14571if.iterator(), this.f14570for);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$goto, reason: invalid class name */
    public static class Cgoto<T> extends t<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f14572for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14573if;

        public Cgoto(Iterable iterable, int i) {
            this.f14573if = iterable;
            this.f14572for = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.a(this.f14573if.iterator(), this.f14572for);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$if, reason: invalid class name */
    public static class Cif<T> extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14574if;

        public Cif(Iterable iterable) {
            this.f14574if = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.m16231import(this.f14574if);
        }

        @Override // com.google.common.collect.t
        public String toString() {
            return this.f14574if.toString() + " (cycled)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$new, reason: invalid class name */
    public static class Cnew<T> extends t<List<T>> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f14575for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14576if;

        public Cnew(Iterable iterable, int i) {
            this.f14576if = iterable;
            this.f14575for = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return s1.c(this.f14576if.iterator(), this.f14575for);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$this, reason: invalid class name */
    public static class Cthis<T> extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14577if;

        public Cthis(Iterable iterable) {
            this.f14577if = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f14577if;
            return iterable instanceof Queue ? new Cimplements((Queue) iterable) : s1.m16247throw(iterable.iterator());
        }

        @Override // com.google.common.collect.t
        public String toString() {
            return "Iterables.consumingIterable(...)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.r1$try, reason: invalid class name */
    public static class Ctry<T> extends t<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Predicate f14578for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14579if;

        public Ctry(Iterable iterable, Predicate predicate) {
            this.f14579if = iterable;
            this.f14578for = predicate;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.m16248throws(this.f14579if.iterator(), this.f14578for);
        }
    }

    private r1() {
    }

    public static <T> Iterable<T> a(Iterable<T> iterable, int i) {
        af1.m205continue(iterable);
        af1.m235try(i >= 0, "number to skip cannot be negative");
        return new Celse(iterable, i);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T> Iterable<T> m16174abstract(Iterable<T> iterable, int i) {
        af1.m205continue(iterable);
        af1.m235try(i >= 0, "limit is negative");
        return new Cgoto(iterable, i);
    }

    private static <T> void b(List<T> list, Predicate<? super T> predicate, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (predicate.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Iterable<T> m16175break(Iterable<T> iterable) {
        af1.m205continue(iterable);
        return new Cthis(iterable);
    }

    public static Object[] c(Iterable<?> iterable) {
        return m16195new(iterable).toArray();
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Iterable<T> m16176case(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return t.m16308case(iterable, iterable2);
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m16177catch(Iterable<?> iterable, @b51 Object obj) {
        return iterable instanceof Collection ? Cextends.m15763catch((Collection) iterable, obj) : s1.m16252while(iterable.iterator(), obj);
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> Iterable<T> m16178class(Iterable<T> iterable) {
        af1.m205continue(iterable);
        return new Cif(iterable);
    }

    @SafeVarargs
    /* renamed from: const, reason: not valid java name */
    public static <T> Iterable<T> m16179const(T... tArr) {
        return m16178class(x1.m16511public(tArr));
    }

    @o8
    /* renamed from: continue, reason: not valid java name */
    public static <T> Iterable<T> m16180continue(Iterable<? extends Iterable<? extends T>> iterable, Comparator<? super T> comparator) {
        af1.m227strictfp(iterable, "iterables");
        af1.m227strictfp(comparator, "comparator");
        return new Ccatch(new Cbreak(iterable, comparator), null);
    }

    @li0
    public static <T> T[] d(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) e(iterable, h2.m15845this(cls, 0));
    }

    /* renamed from: default, reason: not valid java name */
    private static <T> T m16181default(List<T> list) {
        return list.get(list.size() - 1);
    }

    @lf
    /* renamed from: do, reason: not valid java name */
    public static <T> boolean m16182do(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll(Cextends.m15771if(iterable)) : s1.m16222do(collection, ((Iterable) af1.m205continue(iterable)).iterator());
    }

    public static <T> T[] e(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) m16195new(iterable).toArray(tArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Iterable<T> m16183else(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return t.m16310else(iterable, iterable2, iterable3);
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T> T m16184extends(Iterable<T> iterable) {
        return (T) s1.m16230implements(iterable.iterator());
    }

    public static <T> Function<Iterable<? extends T>, Iterator<? extends T>> f() {
        return new Cdo();
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m16185final(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return s1.m16239public(iterable.iterator(), iterable2.iterator());
    }

    @b51
    /* renamed from: finally, reason: not valid java name */
    public static <T> T m16186finally(Iterable<? extends T> iterable, @b51 T t) {
        return (T) s1.m16232instanceof(iterable.iterator(), t);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> boolean m16187for(Iterable<T> iterable, Predicate<? super T> predicate) {
        return s1.m16235new(iterable.iterator(), predicate);
    }

    public static String g(Iterable<?> iterable) {
        return s1.o(iterable.iterator());
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Iterable<T> m16188goto(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return t.m16312goto(iterable, iterable2, iterable3, iterable4);
    }

    public static <F, T> Iterable<T> h(Iterable<F> iterable, Function<? super F, ? extends T> function) {
        af1.m205continue(iterable);
        af1.m205continue(function);
        return new Ccase(iterable, function);
    }

    public static <T> Cwhile<T> i(Iterable<T> iterable, Predicate<? super T> predicate) {
        return s1.q(iterable.iterator(), predicate);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> boolean m16189if(Iterable<T> iterable, Predicate<? super T> predicate) {
        return s1.m16227for(iterable.iterator(), predicate);
    }

    /* renamed from: implements, reason: not valid java name */
    private static <T> boolean m16190implements(List<T> list, Predicate<? super T> predicate) {
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            T t = list.get(i);
            if (!predicate.apply(t)) {
                if (i > i2) {
                    try {
                        list.set(i2, t);
                    } catch (IllegalArgumentException unused) {
                        b(list, predicate, i2, i);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        b(list, predicate, i2, i);
                        return true;
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        return i != i2;
    }

    @b51
    /* renamed from: import, reason: not valid java name */
    public static <T> T m16191import(Iterable<? extends T> iterable, Predicate<? super T> predicate, @b51 T t) {
        return (T) s1.m16226finally(iterable.iterator(), predicate, t);
    }

    @lf
    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m16192instanceof(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).retainAll((Collection) af1.m205continue(collection)) : s1.k(iterable.iterator(), collection);
    }

    @lf
    /* renamed from: interface, reason: not valid java name */
    public static boolean m16193interface(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).removeAll((Collection) af1.m205continue(collection)) : s1.i(iterable.iterator(), collection);
    }

    @Deprecated
    public static <E> Iterable<E> j(r0<E> r0Var) {
        return (Iterable) af1.m205continue(r0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> k(Iterable<? extends T> iterable) {
        af1.m205continue(iterable);
        return ((iterable instanceof Ccatch) || (iterable instanceof r0)) ? iterable : new Ccatch(iterable, null);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m16194native(Iterable<?> iterable, @b51 Object obj) {
        return iterable instanceof Multiset ? ((Multiset) iterable).count(obj) : iterable instanceof Set ? ((Set) iterable).contains(obj) ? 1 : 0 : s1.m16220continue(iterable.iterator(), obj);
    }

    /* renamed from: new, reason: not valid java name */
    private static <E> Collection<E> m16195new(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : x1.m16507native(iterable.iterator());
    }

    /* renamed from: package, reason: not valid java name */
    public static <T> int m16196package(Iterable<T> iterable, Predicate<? super T> predicate) {
        return s1.m16245synchronized(iterable.iterator(), predicate);
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m16197private(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    @b51
    /* renamed from: protected, reason: not valid java name */
    public static <T> T m16198protected(Iterable<T> iterable, Predicate<? super T> predicate) {
        af1.m205continue(predicate);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public static <T> T m16199public(Iterable<T> iterable, int i) {
        af1.m205continue(iterable);
        return iterable instanceof List ? (T) ((List) iterable).get(i) : (T) s1.m16242strictfp(iterable.iterator(), i);
    }

    @b51
    /* renamed from: return, reason: not valid java name */
    public static <T> T m16200return(Iterable<? extends T> iterable, int i, @b51 T t) {
        af1.m205continue(iterable);
        s1.m16223else(i);
        if (iterable instanceof List) {
            List listM16493case = x1.m16493case(iterable);
            return i < listM16493case.size() ? (T) listM16493case.get(i) : t;
        }
        Iterator<? extends T> it = iterable.iterator();
        s1.m16229if(it, i);
        return (T) s1.m16249transient(it, t);
    }

    @b51
    /* renamed from: static, reason: not valid java name */
    public static <T> T m16201static(Iterable<? extends T> iterable, @b51 T t) {
        return (T) s1.m16249transient(iterable.iterator(), t);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T> Iterable<List<T>> m16202strictfp(Iterable<T> iterable, int i) {
        af1.m205continue(iterable);
        af1.m220new(i > 0);
        return new Cnew(iterable, i);
    }

    /* renamed from: super, reason: not valid java name */
    public static <T> Iterable<T> m16203super(Iterable<T> iterable, Predicate<? super T> predicate) {
        af1.m205continue(iterable);
        af1.m205continue(predicate);
        return new Ctry(iterable, predicate);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T> T m16204switch(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) s1.m16233interface(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) m16181default(list);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int m16205synchronized(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : s1.m(iterable.iterator());
    }

    @SafeVarargs
    /* renamed from: this, reason: not valid java name */
    public static <T> Iterable<T> m16206this(Iterable<? extends T>... iterableArr) {
        return t.m16316this(iterableArr);
    }

    @li0
    /* renamed from: throw, reason: not valid java name */
    public static <T> Iterable<T> m16207throw(Iterable<?> iterable, Class<T> cls) {
        af1.m205continue(iterable);
        af1.m205continue(cls);
        return m16203super(iterable, Cpublic.m15177super(cls));
    }

    @b51
    /* renamed from: throws, reason: not valid java name */
    public static <T> T m16208throws(Iterable<? extends T> iterable, @b51 T t) {
        if (iterable instanceof Collection) {
            if (Cextends.m15771if(iterable).isEmpty()) {
                return t;
            }
            if (iterable instanceof List) {
                return (T) m16181default(x1.m16493case(iterable));
            }
        }
        return (T) s1.m16238protected(iterable.iterator(), t);
    }

    @lf
    /* renamed from: transient, reason: not valid java name */
    public static <T> boolean m16209transient(Iterable<T> iterable, Predicate<? super T> predicate) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? m16190implements((List) iterable, (Predicate) af1.m205continue(predicate)) : s1.j(iterable.iterator(), predicate);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Iterable<T> m16210try(Iterable<? extends Iterable<? extends T>> iterable) {
        return t.m16317try(iterable);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T> Iterable<List<T>> m16211volatile(Iterable<T> iterable, int i) {
        af1.m205continue(iterable);
        af1.m220new(i > 0);
        return new Cfor(iterable, i);
    }

    /* renamed from: while, reason: not valid java name */
    public static <T> T m16212while(Iterable<T> iterable, Predicate<? super T> predicate) {
        return (T) s1.m16224extends(iterable.iterator(), predicate);
    }
}
