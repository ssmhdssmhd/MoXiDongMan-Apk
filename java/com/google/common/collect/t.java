package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cfinal;
import com.google.common.base.Cwhile;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public abstract class t<E> implements Iterable<E> {

    /* renamed from: do, reason: not valid java name */
    private final Cwhile<Iterable<E>> f14645do;

    /* renamed from: com.google.common.collect.t$do, reason: invalid class name */
    public static class Cdo extends t<E> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14646if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f14646if = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f14646if.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.t$for, reason: invalid class name */
    public static class Cfor<T> extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable[] f14647if;

        /* renamed from: com.google.common.collect.t$for$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cif<Iterator<? extends T>> {
            public Cdo(int i) {
                super(i);
            }

            @Override // com.google.common.collect.Cif
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Iterator<? extends T> mo15720do(int i) {
                return Cfor.this.f14647if[i].iterator();
            }
        }

        public Cfor(Iterable[] iterableArr) {
            this.f14647if = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.m16246this(new Cdo(this.f14647if.length));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.t$if, reason: invalid class name */
    public static class Cif<T> extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14649if;

        public Cif(Iterable iterable) {
            this.f14649if = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return s1.m16246this(s1.p(this.f14649if.iterator(), r1.f()));
        }
    }

    /* renamed from: com.google.common.collect.t$new, reason: invalid class name */
    public static class Cnew<E> implements Function<Iterable<E>, t<E>> {
        private Cnew() {
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public t<E> apply(Iterable<E> iterable) {
            return t.m16313import(iterable);
        }
    }

    public t() {
        this.f14645do = Cwhile.absent();
    }

    /* renamed from: break, reason: not valid java name */
    private static <T> t<T> m16307break(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            af1.m205continue(iterable);
        }
        return new Cfor(iterableArr);
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static <T> t<T> m16308case(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return m16307break(iterable, iterable2);
    }

    @o8
    /* renamed from: default, reason: not valid java name */
    public static <E> t<E> m16309default() {
        return m16313import(v0.of());
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static <T> t<T> m16310else(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return m16307break(iterable, iterable2, iterable3);
    }

    @o8
    /* renamed from: extends, reason: not valid java name */
    public static <E> t<E> m16311extends(@b51 E e, E... eArr) {
        return m16313import(x1.m16503for(e, eArr));
    }

    @o8
    /* renamed from: goto, reason: not valid java name */
    public static <T> t<T> m16312goto(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return m16307break(iterable, iterable2, iterable3, iterable4);
    }

    /* renamed from: import, reason: not valid java name */
    public static <E> t<E> m16313import(Iterable<E> iterable) {
        return iterable instanceof t ? (t) iterable : new Cdo(iterable, iterable);
    }

    @o8
    /* renamed from: native, reason: not valid java name */
    public static <E> t<E> m16314native(E[] eArr) {
        return m16313import(Arrays.asList(eArr));
    }

    /* renamed from: public, reason: not valid java name */
    private Iterable<E> m16315public() {
        return this.f14645do.or((Cwhile<Iterable<E>>) this);
    }

    @o8
    /* renamed from: this, reason: not valid java name */
    public static <T> t<T> m16316this(Iterable<? extends T>... iterableArr) {
        return m16307break((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    @o8
    /* renamed from: try, reason: not valid java name */
    public static <T> t<T> m16317try(Iterable<? extends Iterable<? extends T>> iterable) {
        af1.m205continue(iterable);
        return new Cif(iterable);
    }

    @Deprecated
    /* renamed from: while, reason: not valid java name */
    public static <E> t<E> m16318while(t<E> tVar) {
        return (t) af1.m205continue(tVar);
    }

    /* renamed from: abstract, reason: not valid java name */
    public final <V> x0<E, V> m16319abstract(Function<? super E, V> function) {
        return Maps.H(m16315public(), function);
    }

    @lf
    /* renamed from: catch, reason: not valid java name */
    public final <C extends Collection<? super E>> C m16320catch(C c) {
        af1.m205continue(c);
        Iterable<E> iterableM16315public = m16315public();
        if (iterableM16315public instanceof Collection) {
            c.addAll(Cextends.m15771if(iterableM16315public));
        } else {
            Iterator<E> it = iterableM16315public.iterator();
            while (it.hasNext()) {
                c.add(it.next());
            }
        }
        return c;
    }

    /* renamed from: class, reason: not valid java name */
    public final t<E> m16321class() {
        return m16313import(r1.m16178class(m16315public()));
    }

    /* renamed from: const, reason: not valid java name */
    public final t<E> m16322const(Predicate<? super E> predicate) {
        return m16313import(r1.m16203super(m16315public(), predicate));
    }

    public final boolean contains(@b51 Object obj) {
        return r1.m16177catch(m16315public(), obj);
    }

    /* renamed from: continue, reason: not valid java name */
    public final c1<E> m16323continue() {
        return c1.copyOf(m16315public());
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m16324do(Predicate<? super E> predicate) {
        return r1.m16189if(m16315public(), predicate);
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    public final <T> t<T> m16325final(Class<T> cls) {
        return m16313import(r1.m16207throw(m16315public(), cls));
    }

    /* renamed from: finally, reason: not valid java name */
    public final t<E> m16326finally(int i) {
        return m16313import(r1.a(m16315public(), i));
    }

    @o8
    /* renamed from: for, reason: not valid java name */
    public final t<E> m16327for(Iterable<? extends E> iterable) {
        return m16308case(m16315public(), iterable);
    }

    public final E get(int i) {
        return (E) r1.m16199public(m16315public(), i);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m16328if(Predicate<? super E> predicate) {
        return r1.m16187for(m16315public(), predicate);
    }

    /* renamed from: implements, reason: not valid java name */
    public final <K> x0<K, E> m16329implements(Function<? super E, K> function) {
        return Maps.R(m16315public(), function);
    }

    /* renamed from: interface, reason: not valid java name */
    public final m1<E> m16330interface(Comparator<? super E> comparator) {
        return m1.copyOf(comparator, m16315public());
    }

    public final boolean isEmpty() {
        return !m16315public().iterator().hasNext();
    }

    @o8
    /* renamed from: new, reason: not valid java name */
    public final t<E> m16331new(E... eArr) {
        return m16308case(m16315public(), Arrays.asList(eArr));
    }

    @li0
    /* renamed from: package, reason: not valid java name */
    public final E[] m16332package(Class<E> cls) {
        return (E[]) r1.d(m16315public(), cls);
    }

    /* renamed from: private, reason: not valid java name */
    public final v0<E> m16333private() {
        return v0.copyOf(m16315public());
    }

    /* renamed from: protected, reason: not valid java name */
    public final <T> t<T> m16334protected(Function<? super E, T> function) {
        return m16313import(r1.h(m16315public(), function));
    }

    /* renamed from: return, reason: not valid java name */
    public final <K> w0<K, E> m16335return(Function<? super E, K> function) {
        return b2.m15571import(m16315public(), function);
    }

    public final int size() {
        return r1.m16205synchronized(m16315public());
    }

    @o8
    /* renamed from: static, reason: not valid java name */
    public final String m16336static(Cfinal cfinal) {
        return cfinal.m15073catch(this);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final g1<E> m16337strictfp() {
        return g1.copyOf(m16315public());
    }

    /* renamed from: super, reason: not valid java name */
    public final Cwhile<E> m16338super() {
        Iterator<E> it = m16315public().iterator();
        return it.hasNext() ? Cwhile.of(it.next()) : Cwhile.absent();
    }

    /* renamed from: switch, reason: not valid java name */
    public final Cwhile<E> m16339switch() {
        E next;
        Iterable<E> iterableM16315public = m16315public();
        if (iterableM16315public instanceof List) {
            List list = (List) iterableM16315public;
            return list.isEmpty() ? Cwhile.absent() : Cwhile.of(list.get(list.size() - 1));
        }
        Iterator<E> it = iterableM16315public.iterator();
        if (!it.hasNext()) {
            return Cwhile.absent();
        }
        if (iterableM16315public instanceof SortedSet) {
            return Cwhile.of(((SortedSet) iterableM16315public).last());
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return Cwhile.of(next);
    }

    /* renamed from: throw, reason: not valid java name */
    public final Cwhile<E> m16340throw(Predicate<? super E> predicate) {
        return r1.i(m16315public(), predicate);
    }

    /* renamed from: throws, reason: not valid java name */
    public final t<E> m16341throws(int i) {
        return m16313import(r1.m16174abstract(m16315public(), i));
    }

    public String toString() {
        return r1.g(m16315public());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: transient, reason: not valid java name */
    public <T> t<T> m16342transient(Function<? super E, ? extends Iterable<? extends T>> function) {
        return m16317try(m16334protected(function));
    }

    /* renamed from: volatile, reason: not valid java name */
    public final v0<E> m16343volatile(Comparator<? super E> comparator) {
        return k2.from(comparator).immutableSortedCopy(m16315public());
    }

    public t(Iterable<E> iterable) {
        af1.m205continue(iterable);
        this.f14645do = Cwhile.fromNullable(this == iterable ? null : iterable);
    }
}
