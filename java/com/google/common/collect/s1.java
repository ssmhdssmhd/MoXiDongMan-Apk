package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bc2;
import android.support.v4.ca2;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cpublic;
import com.google.common.base.Cwhile;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class s1 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$break, reason: invalid class name */
    public static class Cbreak<T> extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f14587do;

        public Cbreak(Iterator it) {
            this.f14587do = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14587do.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            T t = (T) this.f14587do.next();
            this.f14587do.remove();
            return t;
        }

        public String toString() {
            return "Iterators.consumingIterator(...)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$case, reason: invalid class name */
    public static class Ccase<T> extends ac2<List<T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f14588do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f14589for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f14590if;

        public Ccase(Iterator it, int i, boolean z) {
            this.f14588do = it;
            this.f14590if = i;
            this.f14589for = z;
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<T> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object[] objArr = new Object[this.f14590if];
            int i = 0;
            while (i < this.f14590if && this.f14588do.hasNext()) {
                objArr[i] = this.f14588do.next();
                i++;
            }
            for (int i2 = i; i2 < this.f14590if; i2++) {
                objArr[i2] = null;
            }
            List<T> listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
            return (this.f14589for || i == this.f14590if) ? listUnmodifiableList : listUnmodifiableList.subList(0, i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14588do.hasNext();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$catch, reason: invalid class name */
    public static class Ccatch<T> extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f14591do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f14592if;

        public Ccatch(Object obj) {
            this.f14592if = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f14591do;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f14591do) {
                throw new NoSuchElementException();
            }
            this.f14591do = true;
            return (T) this.f14592if;
        }
    }

    /* renamed from: com.google.common.collect.s1$class, reason: invalid class name */
    public static final class Cclass<T> extends com.google.common.collect.Cif<T> {

        /* renamed from: try, reason: not valid java name */
        public static final bc2<Object> f14593try = new Cclass(new Object[0], 0, 0, 0);

        /* renamed from: for, reason: not valid java name */
        private final T[] f14594for;

        /* renamed from: new, reason: not valid java name */
        private final int f14595new;

        public Cclass(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f14594for = tArr;
            this.f14595new = i;
        }

        @Override // com.google.common.collect.Cif
        /* renamed from: do */
        public T mo15720do(int i) {
            return this.f14594for[this.f14595new + i];
        }
    }

    /* renamed from: com.google.common.collect.s1$const, reason: invalid class name */
    public static class Cconst<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        @b51
        private Iterator<? extends T> f14596do;

        /* renamed from: for, reason: not valid java name */
        private Iterator<? extends Iterator<? extends T>> f14597for;

        /* renamed from: if, reason: not valid java name */
        private Iterator<? extends T> f14598if = s1.m16240return();

        /* renamed from: new, reason: not valid java name */
        @b51
        private Deque<Iterator<? extends Iterator<? extends T>>> f14599new;

        public Cconst(Iterator<? extends Iterator<? extends T>> it) {
            this.f14597for = (Iterator) af1.m205continue(it);
        }

        @b51
        /* renamed from: do, reason: not valid java name */
        private Iterator<? extends Iterator<? extends T>> m16254do() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.f14597for;
                if (it != null && it.hasNext()) {
                    return this.f14597for;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f14599new;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f14597for = this.f14599new.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) af1.m205continue(this.f14598if)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> itM16254do = m16254do();
                this.f14597for = itM16254do;
                if (itM16254do == null) {
                    return false;
                }
                Iterator<? extends T> next = itM16254do.next();
                this.f14598if = next;
                if (next instanceof Cconst) {
                    Cconst cconst = (Cconst) next;
                    this.f14598if = cconst.f14598if;
                    if (this.f14599new == null) {
                        this.f14599new = new ArrayDeque();
                    }
                    this.f14599new.addFirst(this.f14597for);
                    if (cconst.f14599new != null) {
                        while (!cconst.f14599new.isEmpty()) {
                            this.f14599new.addFirst(cconst.f14599new.removeLast());
                        }
                    }
                    this.f14597for = cconst.f14597for;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator<? extends T> it = this.f14598if;
            this.f14596do = it;
            return it.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14596do != null);
            this.f14596do.remove();
            this.f14596do = null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$do, reason: invalid class name */
    public static class Cdo<T> extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Enumeration f14600do;

        public Cdo(Enumeration enumeration) {
            this.f14600do = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14600do.hasMoreElements();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.f14600do.nextElement();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$else, reason: invalid class name */
    public static class Celse<T> extends com.google.common.collect.Cfor<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Iterator f14601for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Predicate f14602new;

        public Celse(Iterator it, Predicate predicate) {
            this.f14601for = it;
            this.f14602new = predicate;
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: do */
        public T mo15521do() {
            while (this.f14601for.hasNext()) {
                T t = (T) this.f14601for.next();
                if (this.f14602new.apply(t)) {
                    return t;
                }
            }
            return m15805if();
        }
    }

    /* renamed from: com.google.common.collect.s1$final, reason: invalid class name */
    public enum Cfinal implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(false);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$for, reason: invalid class name */
    public static class Cfor<T> extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f14604do;

        public Cfor(Iterator it) {
            this.f14604do = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14604do.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.f14604do.next();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T, F] */
    /* renamed from: com.google.common.collect.s1$goto, reason: invalid class name */
    public static class Cgoto<F, T> extends o3<F, T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function f14605if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cgoto(Iterator it, Function function) {
            super(it);
            this.f14605if = function;
        }

        @Override // com.google.common.collect.o3
        /* renamed from: do */
        public T mo15451do(F f) {
            return (T) this.f14605if.apply(f);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$if, reason: invalid class name */
    public static class Cif<T> implements Enumeration<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f14606do;

        public Cif(Iterator it) {
            this.f14606do = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f14606do.hasNext();
        }

        @Override // java.util.Enumeration
        public T nextElement() {
            return (T) this.f14606do.next();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$new, reason: invalid class name */
    public static class Cnew<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        public Iterator<T> f14607do = s1.m16244switch();

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterable f14608if;

        public Cnew(Iterable iterable) {
            this.f14608if = iterable;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14607do.hasNext() || this.f14608if.iterator().hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f14607do.hasNext()) {
                Iterator<T> it = this.f14608if.iterator();
                this.f14607do = it;
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
            }
            return this.f14607do.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f14607do.remove();
        }
    }

    /* renamed from: com.google.common.collect.s1$super, reason: invalid class name */
    public static class Csuper<T> extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        public final Queue<PeekingIterator<T>> f14609do;

        /* renamed from: com.google.common.collect.s1$super$do, reason: invalid class name */
        public class Cdo implements Comparator<PeekingIterator<T>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Comparator f14610do;

            public Cdo(Comparator comparator) {
                this.f14610do = comparator;
            }

            @Override // java.util.Comparator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public int compare(PeekingIterator<T> peekingIterator, PeekingIterator<T> peekingIterator2) {
                return this.f14610do.compare(peekingIterator.peek(), peekingIterator2.peek());
            }
        }

        public Csuper(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
            this.f14609do = new PriorityQueue(2, new Cdo(comparator));
            for (Iterator<? extends T> it : iterable) {
                if (it.hasNext()) {
                    this.f14609do.add(s1.g(it));
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f14609do.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            PeekingIterator<T> peekingIteratorRemove = this.f14609do.remove();
            T next = peekingIteratorRemove.next();
            if (peekingIteratorRemove.hasNext()) {
                this.f14609do.add(peekingIteratorRemove);
            }
            return next;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$this, reason: invalid class name */
    public static class Cthis<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        private int f14612do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Iterator f14613for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f14614if;

        public Cthis(int i, Iterator it) {
            this.f14614if = i;
            this.f14613for = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14612do < this.f14614if && this.f14613for.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f14612do++;
            return (T) this.f14613for.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f14613for.remove();
        }
    }

    /* renamed from: com.google.common.collect.s1$throw, reason: invalid class name */
    public static class Cthrow<E> implements PeekingIterator<E> {

        /* renamed from: do, reason: not valid java name */
        private final Iterator<? extends E> f14615do;

        /* renamed from: for, reason: not valid java name */
        @b51
        private E f14616for;

        /* renamed from: if, reason: not valid java name */
        private boolean f14617if;

        public Cthrow(Iterator<? extends E> it) {
            this.f14615do = (Iterator) af1.m205continue(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14617if || this.f14615do.hasNext();
        }

        @Override // com.google.common.collect.PeekingIterator, java.util.Iterator
        public E next() {
            if (!this.f14617if) {
                return this.f14615do.next();
            }
            E e = this.f14616for;
            this.f14617if = false;
            this.f14616for = null;
            return e;
        }

        @Override // com.google.common.collect.PeekingIterator
        public E peek() {
            if (!this.f14617if) {
                this.f14616for = this.f14615do.next();
                this.f14617if = true;
            }
            return this.f14616for;
        }

        @Override // com.google.common.collect.PeekingIterator, java.util.Iterator
        public void remove() {
            af1.u(!this.f14617if, "Can't remove after you've peeked at next");
            this.f14615do.remove();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.s1$try, reason: invalid class name */
    public static class Ctry<T> extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        public int f14618do = 0;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object[] f14619if;

        public Ctry(Object[] objArr) {
            this.f14619if = objArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14618do < this.f14619if.length;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object[] objArr = this.f14619if;
            int i = this.f14618do;
            T t = (T) objArr[i];
            objArr[i] = null;
            this.f14618do = i + 1;
            return t;
        }
    }

    private s1() {
    }

    public static <T> Iterator<T> a(Iterator<T> it, int i) {
        af1.m205continue(it);
        af1.m235try(i >= 0, "limit is negative");
        return new Cthis(i, it);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T> ac2<T> m16214abstract(Enumeration<T> enumeration) {
        af1.m205continue(enumeration);
        return new Cdo(enumeration);
    }

    @o8
    public static <T> ac2<T> b(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        af1.m227strictfp(iterable, "iterators");
        af1.m227strictfp(comparator, "comparator");
        return new Csuper(iterable, comparator);
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Iterator<T> m16215break(Iterator<? extends T> it, Iterator<? extends T> it2) {
        af1.m205continue(it);
        af1.m205continue(it2);
        return m16246this(m16243super(it, it2));
    }

    public static <T> ac2<List<T>> c(Iterator<T> it, int i) {
        return e(it, i, true);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> ListIterator<T> m16216case(Iterator<T> it) {
        return (ListIterator) it;
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> Iterator<T> m16217catch(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3) {
        af1.m205continue(it);
        af1.m205continue(it2);
        af1.m205continue(it3);
        return m16246this(m16243super(it, it2, it3));
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> Iterator<T> m16218class(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        af1.m205continue(it);
        af1.m205continue(it2);
        af1.m205continue(it3);
        af1.m205continue(it4);
        return m16246this(m16243super(it, it2, it3, it4));
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> Iterator<T> m16219const(Iterator<? extends T>... itArr) {
        return m16225final((Iterator[]) Arrays.copyOf(itArr, itArr.length));
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m16220continue(Iterator<?> it, @b51 Object obj) {
        int i = 0;
        while (m16252while(it, obj)) {
            i++;
        }
        return i;
    }

    public static <T> ac2<List<T>> d(Iterator<T> it, int i) {
        return e(it, i, false);
    }

    @li0
    /* renamed from: default, reason: not valid java name */
    public static <T> ac2<T> m16221default(Iterator<?> it, Class<T> cls) {
        return m16248throws(it, Cpublic.m15177super(cls));
    }

    @lf
    /* renamed from: do, reason: not valid java name */
    public static <T> boolean m16222do(Collection<T> collection, Iterator<? extends T> it) {
        af1.m205continue(collection);
        af1.m205continue(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    private static <T> ac2<List<T>> e(Iterator<T> it, int i, boolean z) {
        af1.m205continue(it);
        af1.m220new(i > 0);
        return new Ccase(it, i, z);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m16223else(int i) {
        if (i >= 0) {
            return;
        }
        throw new IndexOutOfBoundsException("position (" + i + ") must not be negative");
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T> T m16224extends(Iterator<T> it, Predicate<? super T> predicate) {
        af1.m205continue(it);
        af1.m205continue(predicate);
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Deprecated
    public static <T> PeekingIterator<T> f(PeekingIterator<T> peekingIterator) {
        return (PeekingIterator) af1.m205continue(peekingIterator);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> Iterator<T> m16225final(Iterator<? extends T>... itArr) {
        for (Iterator it : (Iterator[]) af1.m205continue(itArr)) {
            af1.m205continue(it);
        }
        return m16246this(m16243super(itArr));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @b51
    /* renamed from: finally, reason: not valid java name */
    public static <T> T m16226finally(Iterator<? extends T> it, Predicate<? super T> predicate, @b51 T t) {
        af1.m205continue(it);
        af1.m205continue(predicate);
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        return t;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> boolean m16227for(Iterator<T> it, Predicate<? super T> predicate) {
        af1.m205continue(predicate);
        while (it.hasNext()) {
            if (!predicate.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> PeekingIterator<T> g(Iterator<? extends T> it) {
        return it instanceof Cthrow ? (Cthrow) it : new Cthrow(it);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m16228goto(Iterator<?> it) {
        af1.m205continue(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @b51
    public static <T> T h(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    @lf
    public static boolean i(Iterator<?> it, Collection<?> collection) {
        af1.m205continue(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static int m16229if(Iterator<?> it, int i) {
        af1.m205continue(it);
        int i2 = 0;
        af1.m235try(i >= 0, "numberToAdvance must be nonnegative");
        while (i2 < i && it.hasNext()) {
            it.next();
            i2++;
        }
        return i2;
    }

    /* renamed from: implements, reason: not valid java name */
    public static <T> T m16230implements(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <");
        sb.append(next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append(ca2.f702try);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: import, reason: not valid java name */
    public static <T> Iterator<T> m16231import(Iterable<T> iterable) {
        af1.m205continue(iterable);
        return new Cnew(iterable);
    }

    @b51
    /* renamed from: instanceof, reason: not valid java name */
    public static <T> T m16232instanceof(Iterator<? extends T> it, @b51 T t) {
        return it.hasNext() ? (T) m16230implements(it) : t;
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T> T m16233interface(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @lf
    public static <T> boolean j(Iterator<T> it, Predicate<? super T> predicate) {
        af1.m205continue(predicate);
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @lf
    public static boolean k(Iterator<?> it, Collection<?> collection) {
        af1.m205continue(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static <T> ac2<T> l(@b51 T t) {
        return new Ccatch(t);
    }

    public static int m(Iterator<?> it) {
        long j = 0;
        while (it.hasNext()) {
            it.next();
            j++;
        }
        return com.google.common.primitives.Cthis.m17704throws(j);
    }

    @li0
    public static <T> T[] n(Iterator<? extends T> it, Class<T> cls) {
        return (T[]) r1.d(x1.m16507native(it), cls);
    }

    @SafeVarargs
    /* renamed from: native, reason: not valid java name */
    public static <T> Iterator<T> m16234native(T... tArr) {
        return m16231import(x1.m16511public(tArr));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> boolean m16235new(Iterator<T> it, Predicate<? super T> predicate) {
        return m16245synchronized(it, predicate) != -1;
    }

    public static String o(Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(it.next());
        }
        sb.append(']');
        return sb.toString();
    }

    public static <F, T> Iterator<T> p(Iterator<F> it, Function<? super F, ? extends T> function) {
        af1.m205continue(function);
        return new Cgoto(it, function);
    }

    @SafeVarargs
    /* renamed from: package, reason: not valid java name */
    public static <T> ac2<T> m16236package(T... tArr) {
        return m16237private(tArr, 0, tArr.length, 0);
    }

    /* renamed from: private, reason: not valid java name */
    public static <T> bc2<T> m16237private(T[] tArr, int i, int i2, int i3) {
        af1.m220new(i2 >= 0);
        af1.s(i, i + i2, tArr.length);
        af1.q(i3, i2);
        return i2 == 0 ? m16241static() : new Cclass(tArr, i, i2, i3);
    }

    @b51
    /* renamed from: protected, reason: not valid java name */
    public static <T> T m16238protected(Iterator<? extends T> it, @b51 T t) {
        return it.hasNext() ? (T) m16233interface(it) : t;
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m16239public(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !com.google.common.base.Cthrow.m15205do(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static <T> Cwhile<T> q(Iterator<T> it, Predicate<? super T> predicate) {
        af1.m205continue(it);
        af1.m205continue(predicate);
        while (it.hasNext()) {
            T next = it.next();
            if (predicate.apply(next)) {
                return Cwhile.of(next);
            }
        }
        return Cwhile.absent();
    }

    @Deprecated
    public static <T> ac2<T> r(ac2<T> ac2Var) {
        return (ac2) af1.m205continue(ac2Var);
    }

    /* renamed from: return, reason: not valid java name */
    public static <T> ac2<T> m16240return() {
        return m16241static();
    }

    public static <T> ac2<T> s(Iterator<? extends T> it) {
        af1.m205continue(it);
        return it instanceof ac2 ? (ac2) it : new Cfor(it);
    }

    /* renamed from: static, reason: not valid java name */
    public static <T> bc2<T> m16241static() {
        return (bc2<T>) Cclass.f14593try;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T> T m16242strictfp(Iterator<T> it, int i) {
        m16223else(i);
        int iM16229if = m16229if(it, i);
        if (it.hasNext()) {
            return it.next();
        }
        throw new IndexOutOfBoundsException("position (" + i + ") must be less than the number of elements that remained (" + iM16229if + ")");
    }

    /* renamed from: super, reason: not valid java name */
    private static <T> Iterator<T> m16243super(T... tArr) {
        return new Ctry(tArr);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T> Iterator<T> m16244switch() {
        return Cfinal.INSTANCE;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T> int m16245synchronized(Iterator<T> it, Predicate<? super T> predicate) {
        af1.m227strictfp(predicate, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Iterator<T> m16246this(Iterator<? extends Iterator<? extends T>> it) {
        return new Cconst(it);
    }

    /* renamed from: throw, reason: not valid java name */
    public static <T> Iterator<T> m16247throw(Iterator<T> it) {
        af1.m205continue(it);
        return new Cbreak(it);
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T> ac2<T> m16248throws(Iterator<T> it, Predicate<? super T> predicate) {
        af1.m205continue(it);
        af1.m205continue(predicate);
        return new Celse(it, predicate);
    }

    @b51
    /* renamed from: transient, reason: not valid java name */
    public static <T> T m16249transient(Iterator<? extends T> it, @b51 T t) {
        return it.hasNext() ? it.next() : t;
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Enumeration<T> m16250try(Iterator<T> it) {
        af1.m205continue(it);
        return new Cif(it);
    }

    @b51
    /* renamed from: volatile, reason: not valid java name */
    public static <T> T m16251volatile(Iterator<? extends T> it, int i, @b51 T t) {
        m16223else(i);
        m16229if(it, i);
        return (T) m16249transient(it, t);
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m16252while(Iterator<?> it, @b51 Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }
}
