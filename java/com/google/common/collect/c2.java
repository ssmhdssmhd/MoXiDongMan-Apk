package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Cpublic;
import com.google.common.base.Cthrow;
import com.google.common.base.Predicate;
import com.google.common.collect.Multiset;
import com.google.common.collect.c3;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public final class c2 {

    /* renamed from: com.google.common.collect.c2$break, reason: invalid class name */
    public static final class Cbreak<E> extends Cfinal<E> {

        /* renamed from: for, reason: not valid java name */
        public final Multiset<E> f14127for;

        /* renamed from: new, reason: not valid java name */
        public final Predicate<? super E> f14128new;

        /* renamed from: com.google.common.collect.c2$break$do, reason: invalid class name */
        public class Cdo implements Predicate<Multiset.Entry<E>> {
            public Cdo() {
            }

            @Override // com.google.common.base.Predicate
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public boolean apply(Multiset.Entry<E> entry) {
                return Cbreak.this.f14128new.apply(entry.getElement());
            }
        }

        public Cbreak(Multiset<E> multiset, Predicate<? super E> predicate) {
            super(null);
            this.f14127for = (Multiset) af1.m205continue(multiset);
            this.f14128new = (Predicate) af1.m205continue(predicate);
        }

        @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
        public int add(@b51 E e, int i) {
            af1.m206default(this.f14128new.apply(e), "Element %s does not match predicate %s", e, this.f14128new);
            return this.f14127for.add(e, i);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@b51 Object obj) {
            int iCount = this.f14127for.count(obj);
            if (iCount <= 0 || !this.f14128new.apply(obj)) {
                return 0;
            }
            return iCount;
        }

        @Override // com.google.common.collect.Cthis
        public Set<E> createElementSet() {
            return c3.m15712this(this.f14127for.elementSet(), this.f14128new);
        }

        @Override // com.google.common.collect.Cthis
        public Set<Multiset.Entry<E>> createEntrySet() {
            return c3.m15712this(this.f14127for.entrySet(), new Cdo());
        }

        @Override // com.google.common.collect.c2.Cfinal, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<E> iterator() {
            return s1.m16248throws(this.f14127for.iterator(), this.f14128new);
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<Multiset.Entry<E>> entryIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
        public int remove(@b51 Object obj, int i) {
            Cdefault.m15742if(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            if (contains(obj)) {
                return this.f14127for.remove(obj, i);
            }
            return 0;
        }
    }

    /* renamed from: com.google.common.collect.c2$case, reason: invalid class name */
    public static abstract class Ccase<E> implements Multiset.Entry<E> {
        @Override // com.google.common.collect.Multiset.Entry
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return getCount() == entry.getCount() && Cthrow.m15205do(getElement(), entry.getElement());
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.Multiset.Entry
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return strValueOf;
            }
            return strValueOf + " x " + count;
        }
    }

    /* renamed from: com.google.common.collect.c2$catch, reason: invalid class name */
    public static class Ccatch<E> extends Ccase<E> implements Serializable {
        private static final long serialVersionUID = 0;
        private final int count;

        @b51
        private final E element;

        public Ccatch(@b51 E e, int i) {
            this.element = e;
            this.count = i;
            Cdefault.m15742if(i, "count");
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            return this.count;
        }

        @Override // com.google.common.collect.Multiset.Entry
        @b51
        public final E getElement() {
            return this.element;
        }

        public Ccatch<E> nextInBucket() {
            return null;
        }
    }

    /* renamed from: com.google.common.collect.c2$class, reason: invalid class name */
    public static final class Cclass<E> implements Iterator<E> {

        /* renamed from: case, reason: not valid java name */
        private boolean f14130case;

        /* renamed from: do, reason: not valid java name */
        private final Multiset<E> f14131do;

        /* renamed from: for, reason: not valid java name */
        @l01
        private Multiset.Entry<E> f14132for;

        /* renamed from: if, reason: not valid java name */
        private final Iterator<Multiset.Entry<E>> f14133if;

        /* renamed from: new, reason: not valid java name */
        private int f14134new;

        /* renamed from: try, reason: not valid java name */
        private int f14135try;

        public Cclass(Multiset<E> multiset, Iterator<Multiset.Entry<E>> it) {
            this.f14131do = multiset;
            this.f14133if = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14134new > 0 || this.f14133if.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.f14134new == 0) {
                Multiset.Entry<E> next = this.f14133if.next();
                this.f14132for = next;
                int count = next.getCount();
                this.f14134new = count;
                this.f14135try = count;
            }
            this.f14134new--;
            this.f14130case = true;
            return this.f14132for.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14130case);
            if (this.f14135try == 1) {
                this.f14133if.remove();
            } else {
                this.f14131do.remove(this.f14132for.getElement());
            }
            this.f14135try--;
            this.f14130case = false;
        }
    }

    /* renamed from: com.google.common.collect.c2$const, reason: invalid class name */
    public static class Cconst<E> extends a0<E> implements Serializable {
        private static final long serialVersionUID = 0;
        public final Multiset<? extends E> delegate;

        @l01
        public transient Set<E> elementSet;

        @l01
        public transient Set<Multiset.Entry<E>> entrySet;

        public Cconst(Multiset<? extends E> multiset) {
            this.delegate = multiset;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        public Set<E> createElementSet() {
            return Collections.unmodifiableSet(this.delegate.elementSet());
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set = this.elementSet;
            if (set != null) {
                return set;
            }
            Set<E> setCreateElementSet = createElementSet();
            this.elementSet = setCreateElementSet;
            return setCreateElementSet;
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            Set<Multiset.Entry<E>> setUnmodifiableSet = Collections.unmodifiableSet(this.delegate.entrySet());
            this.entrySet = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return s1.s(this.delegate.iterator());
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
        public int setCount(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
        public int add(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
        public boolean setCount(E e, int i, int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.a0, android.support.v4.qd0, android.support.v4.ae0
        public Multiset<E> delegate() {
            return this.delegate;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c2$do, reason: invalid class name */
    public static class Cdo<E> extends Cfinal<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Multiset f14136for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Multiset f14137new;

        /* renamed from: com.google.common.collect.c2$do$do, reason: invalid class name and collision with other inner class name */
        public class C0091do extends com.google.common.collect.Cfor<Multiset.Entry<E>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14138for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ Iterator f14139new;

            public C0091do(Iterator it, Iterator it2) {
                this.f14138for = it;
                this.f14139new = it2;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Multiset.Entry<E> mo15521do() {
                if (this.f14138for.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f14138for.next();
                    Object element = entry.getElement();
                    return c2.m15645catch(element, Math.max(entry.getCount(), Cdo.this.f14137new.count(element)));
                }
                while (this.f14139new.hasNext()) {
                    Multiset.Entry entry2 = (Multiset.Entry) this.f14139new.next();
                    Object element2 = entry2.getElement();
                    if (!Cdo.this.f14136for.contains(element2)) {
                        return c2.m15645catch(element2, entry2.getCount());
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f14136for = multiset;
            this.f14137new = multiset2;
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@b51 Object obj) {
            return this.f14136for.contains(obj) || this.f14137new.contains(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            return Math.max(this.f14136for.count(obj), this.f14137new.count(obj));
        }

        @Override // com.google.common.collect.Cthis
        public Set<E> createElementSet() {
            return c3.a(this.f14136for.elementSet(), this.f14137new.elementSet());
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new C0091do(this.f14136for.entrySet().iterator(), this.f14137new.entrySet().iterator());
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f14136for.isEmpty() && this.f14137new.isEmpty();
        }
    }

    /* renamed from: com.google.common.collect.c2$else, reason: invalid class name */
    public static final class Celse implements Comparator<Multiset.Entry<?>> {

        /* renamed from: do, reason: not valid java name */
        public static final Celse f14141do = new Celse();

        private Celse() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Multiset.Entry<?> entry, Multiset.Entry<?> entry2) {
            return entry2.getCount() - entry.getCount();
        }
    }

    /* renamed from: com.google.common.collect.c2$final, reason: invalid class name */
    public static abstract class Cfinal<E> extends com.google.common.collect.Cthis<E> {
        private Cfinal() {
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            elementSet().clear();
        }

        @Override // com.google.common.collect.Cthis
        public int distinctElements() {
            return elementSet().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<E> iterator() {
            return c2.m15652final(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return c2.m15664super(this);
        }

        public /* synthetic */ Cfinal(Cdo cdo) {
            this();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c2$for, reason: invalid class name */
    public static class Cfor<E> extends Cfinal<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Multiset f14142for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Multiset f14143new;

        /* renamed from: com.google.common.collect.c2$for$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Multiset.Entry<E>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14144for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ Iterator f14145new;

            public Cdo(Iterator it, Iterator it2) {
                this.f14144for = it;
                this.f14145new = it2;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Multiset.Entry<E> mo15521do() {
                if (this.f14144for.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f14144for.next();
                    Object element = entry.getElement();
                    return c2.m15645catch(element, entry.getCount() + Cfor.this.f14143new.count(element));
                }
                while (this.f14145new.hasNext()) {
                    Multiset.Entry entry2 = (Multiset.Entry) this.f14145new.next();
                    Object element2 = entry2.getElement();
                    if (!Cfor.this.f14142for.contains(element2)) {
                        return c2.m15645catch(element2, entry2.getCount());
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f14142for = multiset;
            this.f14143new = multiset2;
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@b51 Object obj) {
            return this.f14142for.contains(obj) || this.f14143new.contains(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            return this.f14142for.count(obj) + this.f14143new.count(obj);
        }

        @Override // com.google.common.collect.Cthis
        public Set<E> createElementSet() {
            return c3.a(this.f14142for.elementSet(), this.f14143new.elementSet());
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new Cdo(this.f14142for.entrySet().iterator(), this.f14143new.entrySet().iterator());
        }

        @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f14142for.isEmpty() && this.f14143new.isEmpty();
        }

        @Override // com.google.common.collect.c2.Cfinal, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return com.google.common.math.Cnew.m17348public(this.f14142for.size(), this.f14143new.size());
        }
    }

    /* renamed from: com.google.common.collect.c2$goto, reason: invalid class name */
    public static abstract class Cgoto<E> extends c3.Ccatch<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo15489do().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return mo15489do().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return mo15489do().containsAll(collection);
        }

        /* renamed from: do */
        public abstract Multiset<E> mo15489do();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo15489do().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract Iterator<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return mo15489do().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo15489do().entrySet().size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c2$if, reason: invalid class name */
    public static class Cif<E> extends Cfinal<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Multiset f14147for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Multiset f14148new;

        /* renamed from: com.google.common.collect.c2$if$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<Multiset.Entry<E>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14149for;

            public Cdo(Iterator it) {
                this.f14149for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Multiset.Entry<E> mo15521do() {
                while (this.f14149for.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f14149for.next();
                    Object element = entry.getElement();
                    int iMin = Math.min(entry.getCount(), Cif.this.f14148new.count(element));
                    if (iMin > 0) {
                        return c2.m15645catch(element, iMin);
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f14147for = multiset;
            this.f14148new = multiset2;
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            int iCount = this.f14147for.count(obj);
            if (iCount == 0) {
                return 0;
            }
            return Math.min(iCount, this.f14148new.count(obj));
        }

        @Override // com.google.common.collect.Cthis
        public Set<E> createElementSet() {
            return c3.m15691final(this.f14147for.elementSet(), this.f14148new.elementSet());
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new Cdo(this.f14147for.entrySet().iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c2$new, reason: invalid class name */
    public static class Cnew<E> extends Cfinal<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Multiset f14151for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Multiset f14152new;

        /* renamed from: com.google.common.collect.c2$new$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<E> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14153for;

            public Cdo(Iterator it) {
                this.f14153for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public E mo15521do() {
                while (this.f14153for.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f14153for.next();
                    E e = (E) entry.getElement();
                    if (entry.getCount() > Cnew.this.f14152new.count(e)) {
                        return e;
                    }
                }
                return m15805if();
            }
        }

        /* renamed from: com.google.common.collect.c2$new$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cfor<Multiset.Entry<E>> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14155for;

            public Cif(Iterator it) {
                this.f14155for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Multiset.Entry<E> mo15521do() {
                while (this.f14155for.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f14155for.next();
                    Object element = entry.getElement();
                    int count = entry.getCount() - Cnew.this.f14152new.count(element);
                    if (count > 0) {
                        return c2.m15645catch(element, count);
                    }
                }
                return m15805if();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f14151for = multiset;
            this.f14152new = multiset2;
        }

        @Override // com.google.common.collect.c2.Cfinal, com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multiset
        public int count(@b51 Object obj) {
            int iCount = this.f14151for.count(obj);
            if (iCount == 0) {
                return 0;
            }
            return Math.max(0, iCount - this.f14152new.count(obj));
        }

        @Override // com.google.common.collect.c2.Cfinal, com.google.common.collect.Cthis
        public int distinctElements() {
            return s1.m(entryIterator());
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<E> elementIterator() {
            return new Cdo(this.f14151for.entrySet().iterator());
        }

        @Override // com.google.common.collect.Cthis
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new Cif(this.f14151for.entrySet().iterator());
        }
    }

    /* renamed from: com.google.common.collect.c2$this, reason: invalid class name */
    public static abstract class Cthis<E> extends c3.Ccatch<Multiset.Entry<E>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo15678do().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && mo15678do().count(entry.getElement()) == entry.getCount();
        }

        /* renamed from: do, reason: not valid java name */
        public abstract Multiset<E> mo15678do();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                Object element = entry.getElement();
                int count = entry.getCount();
                if (count != 0) {
                    return mo15678do().setCount(element, count, 0);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.c2$try, reason: invalid class name */
    public static class Ctry<E> extends o3<Multiset.Entry<E>, E> {
        public Ctry(Iterator it) {
            super(it);
        }

        @Override // com.google.common.collect.o3
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public E mo15451do(Multiset.Entry<E> entry) {
            return entry.getElement();
        }
    }

    private c2() {
    }

    @o8
    /* renamed from: break, reason: not valid java name */
    public static <E> Multiset<E> m15643break(Multiset<E> multiset, Predicate<? super E> predicate) {
        if (!(multiset instanceof Cbreak)) {
            return new Cbreak(multiset, predicate);
        }
        Cbreak cbreak = (Cbreak) multiset;
        return new Cbreak(cbreak.f14127for, Cpublic.m15173new(cbreak.f14128new, predicate));
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static <E> c1<E> m15644case(Multiset<E> multiset) {
        Multiset.Entry[] entryArr = (Multiset.Entry[]) multiset.entrySet().toArray(new Multiset.Entry[0]);
        Arrays.sort(entryArr, Celse.f14141do);
        return c1.copyFromEntries(Arrays.asList(entryArr));
    }

    /* renamed from: catch, reason: not valid java name */
    public static <E> Multiset.Entry<E> m15645catch(@b51 E e, int i) {
        return new Ccatch(e, i);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m15646class(Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).elementSet().size();
        }
        return 11;
    }

    /* renamed from: const, reason: not valid java name */
    public static <E> Multiset<E> m15647const(Multiset<E> multiset, Multiset<?> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        return new Cif(multiset, multiset2);
    }

    @o8
    /* renamed from: default, reason: not valid java name */
    public static <E> Multiset<E> m15648default(Multiset<? extends E> multiset, Multiset<? extends E> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        return new Cdo(multiset, multiset2);
    }

    /* renamed from: do, reason: not valid java name */
    private static <E> boolean m15649do(Multiset<E> multiset, com.google.common.collect.Ccase<? extends E> ccase) {
        if (ccase.isEmpty()) {
            return false;
        }
        ccase.addTo(multiset);
        return true;
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static <E> Multiset<E> m15650else(Multiset<E> multiset, Multiset<?> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        return new Cnew(multiset, multiset2);
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public static <E> Multiset<E> m15651extends(c1<E> c1Var) {
        return (Multiset) af1.m205continue(c1Var);
    }

    /* renamed from: final, reason: not valid java name */
    public static <E> Iterator<E> m15652final(Multiset<E> multiset) {
        return new Cclass(multiset, multiset.entrySet().iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: finally, reason: not valid java name */
    public static <E> Multiset<E> m15653finally(Multiset<? extends E> multiset) {
        return ((multiset instanceof Cconst) || (multiset instanceof c1)) ? multiset : new Cconst((Multiset) af1.m205continue(multiset));
    }

    /* renamed from: for, reason: not valid java name */
    public static <E> boolean m15654for(Multiset<E> multiset, Collection<? extends E> collection) {
        af1.m205continue(multiset);
        af1.m205continue(collection);
        if (collection instanceof Multiset) {
            return m15656if(multiset, m15659new(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return s1.m16222do(multiset, collection.iterator());
    }

    /* renamed from: goto, reason: not valid java name */
    public static <E> Iterator<E> m15655goto(Iterator<Multiset.Entry<E>> it) {
        return new Ctry(it);
    }

    /* renamed from: if, reason: not valid java name */
    private static <E> boolean m15656if(Multiset<E> multiset, Multiset<? extends E> multiset2) {
        if (multiset2 instanceof com.google.common.collect.Ccase) {
            return m15649do(multiset, (com.google.common.collect.Ccase) multiset2);
        }
        if (multiset2.isEmpty()) {
            return false;
        }
        for (Multiset.Entry<? extends E> entry : multiset2.entrySet()) {
            multiset.add(entry.getElement(), entry.getCount());
        }
        return true;
    }

    @lf
    /* renamed from: import, reason: not valid java name */
    public static boolean m15657import(Multiset<?> multiset, Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return m15670while(multiset, (Multiset) iterable);
        }
        af1.m205continue(multiset);
        af1.m205continue(iterable);
        boolean zRemove = false;
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            zRemove |= multiset.remove(it.next());
        }
        return zRemove;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m15658native(Multiset<?> multiset, Collection<?> collection) {
        af1.m205continue(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().retainAll(collection);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Multiset<T> m15659new(Iterable<T> iterable) {
        return (Multiset) iterable;
    }

    @o8
    /* renamed from: package, reason: not valid java name */
    public static <E> SortedMultiset<E> m15660package(SortedMultiset<E> sortedMultiset) {
        return new w3((SortedMultiset) af1.m205continue(sortedMultiset));
    }

    @lf
    /* renamed from: public, reason: not valid java name */
    public static boolean m15661public(Multiset<?> multiset, Multiset<?> multiset2) {
        return m15662return(multiset, multiset2);
    }

    /* renamed from: return, reason: not valid java name */
    private static <E> boolean m15662return(Multiset<E> multiset, Multiset<?> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Multiset.Entry<E> next = it.next();
            int iCount = multiset2.count(next.getElement());
            if (iCount == 0) {
                it.remove();
            } else if (iCount < next.getCount()) {
                multiset.setCount(next.getElement(), iCount);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: static, reason: not valid java name */
    public static <E> int m15663static(Multiset<E> multiset, E e, int i) {
        Cdefault.m15742if(i, "count");
        int iCount = multiset.count(e);
        int i2 = i - iCount;
        if (i2 > 0) {
            multiset.add(e, i2);
        } else if (i2 < 0) {
            multiset.remove(e, -i2);
        }
        return iCount;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m15664super(Multiset<?> multiset) {
        long count = 0;
        while (multiset.entrySet().iterator().hasNext()) {
            count += r4.next().getCount();
        }
        return com.google.common.primitives.Cthis.m17704throws(count);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <E> boolean m15665switch(Multiset<E> multiset, E e, int i, int i2) {
        Cdefault.m15742if(i, "oldCount");
        Cdefault.m15742if(i2, "newCount");
        if (multiset.count(e) != i) {
            return false;
        }
        multiset.setCount(e, i2);
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m15666this(Multiset<?> multiset, @b51 Object obj) {
        if (obj == multiset) {
            return true;
        }
        if (obj instanceof Multiset) {
            Multiset multiset2 = (Multiset) obj;
            if (multiset.size() == multiset2.size() && multiset.entrySet().size() == multiset2.entrySet().size()) {
                for (Multiset.Entry entry : multiset2.entrySet()) {
                    if (multiset.count(entry.getElement()) != entry.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m15667throw(Multiset<?> multiset, Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().removeAll(collection);
    }

    @o8
    /* renamed from: throws, reason: not valid java name */
    public static <E> Multiset<E> m15668throws(Multiset<? extends E> multiset, Multiset<? extends E> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        return new Cfor(multiset, multiset2);
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public static boolean m15669try(Multiset<?> multiset, Multiset<?> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        for (Multiset.Entry<?> entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) < entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    @lf
    /* renamed from: while, reason: not valid java name */
    public static boolean m15670while(Multiset<?> multiset, Multiset<?> multiset2) {
        af1.m205continue(multiset);
        af1.m205continue(multiset2);
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Multiset.Entry<?> next = it.next();
            int iCount = multiset2.count(next.getElement());
            if (iCount >= next.getCount()) {
                it.remove();
            } else if (iCount > 0) {
                multiset.remove(next.getElement(), iCount);
            }
            z = true;
        }
        return z;
    }
}
