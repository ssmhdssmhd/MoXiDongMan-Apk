package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.base.Function;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class x1 {

    /* renamed from: com.google.common.collect.x1$break, reason: invalid class name */
    public static class Cbreak<T> extends AbstractList<T> {

        /* renamed from: do, reason: not valid java name */
        private final List<T> f14857do;

        /* renamed from: com.google.common.collect.x1$break$do, reason: invalid class name */
        public class Cdo implements ListIterator<T> {

            /* renamed from: do, reason: not valid java name */
            public boolean f14858do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ ListIterator f14860if;

            public Cdo(ListIterator listIterator) {
                this.f14860if = listIterator;
            }

            @Override // java.util.ListIterator
            public void add(T t) {
                this.f14860if.add(t);
                this.f14860if.previous();
                this.f14858do = false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f14860if.hasPrevious();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f14860if.hasNext();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f14858do = true;
                return (T) this.f14860if.previous();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return Cbreak.this.m16523new(this.f14860if.nextIndex());
            }

            @Override // java.util.ListIterator
            public T previous() {
                if (!hasPrevious()) {
                    throw new NoSuchElementException();
                }
                this.f14858do = true;
                return (T) this.f14860if.next();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return nextIndex() - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                Cdefault.m15744try(this.f14858do);
                this.f14860if.remove();
                this.f14858do = false;
            }

            @Override // java.util.ListIterator
            public void set(T t) {
                af1.t(this.f14858do);
                this.f14860if.set(t);
            }
        }

        public Cbreak(List<T> list) {
            this.f14857do = (List) af1.m205continue(list);
        }

        /* renamed from: for, reason: not valid java name */
        private int m16522for(int i) {
            int size = size();
            af1.m222private(i, size);
            return (size - 1) - i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public int m16523new(int i) {
            int size = size();
            af1.q(i, size);
            return size - i;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, @b51 T t) {
            this.f14857do.add(m16523new(i), t);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f14857do.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return this.f14857do.get(m16522for(i));
        }

        /* renamed from: if, reason: not valid java name */
        public List<T> m16524if() {
            return this.f14857do;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new Cdo(this.f14857do.listIterator(m16523new(i)));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return this.f14857do.remove(m16522for(i));
        }

        @Override // java.util.AbstractList
        public void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T set(int i, @b51 T t) {
            return this.f14857do.set(m16522for(i), t);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14857do.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> subList(int i, int i2) {
            af1.s(i, i2, size());
            return x1.m16509package(this.f14857do.subList(m16523new(i2), m16523new(i)));
        }
    }

    /* renamed from: com.google.common.collect.x1$case, reason: invalid class name */
    public static class Ccase<T> extends AbstractList<List<T>> {

        /* renamed from: do, reason: not valid java name */
        public final List<T> f14861do;

        /* renamed from: if, reason: not valid java name */
        public final int f14862if;

        public Ccase(List<T> list, int i) {
            this.f14861do = list;
            this.f14862if = i;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<T> get(int i) {
            af1.m222private(i, size());
            int i2 = this.f14862if;
            int i3 = i * i2;
            return this.f14861do.subList(i3, Math.min(i2 + i3, this.f14861do.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f14861do.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.google.common.math.Cnew.m17340else(this.f14861do.size(), this.f14862if, RoundingMode.CEILING);
        }
    }

    /* renamed from: com.google.common.collect.x1$catch, reason: invalid class name */
    public static final class Ccatch extends v0<Character> {
        private final String string;

        public Ccatch(String str) {
            this.string = str;
        }

        @Override // com.google.common.collect.v0, java.util.List
        public int indexOf(@b51 Object obj) {
            if (obj instanceof Character) {
                return this.string.indexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.v0, java.util.List
        public int lastIndexOf(@b51 Object obj) {
            if (obj instanceof Character) {
                return this.string.lastIndexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.string.length();
        }

        @Override // java.util.List
        public Character get(int i) {
            af1.m222private(i, size());
            return Character.valueOf(this.string.charAt(i));
        }

        @Override // com.google.common.collect.v0, java.util.List
        public v0<Character> subList(int i, int i2) {
            af1.s(i, i2, size());
            return x1.m16499else(this.string.substring(i, i2));
        }
    }

    /* renamed from: com.google.common.collect.x1$class, reason: invalid class name */
    public static class Cclass<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final List<F> fromList;
        public final Function<? super F, ? extends T> function;

        /* renamed from: com.google.common.collect.x1$class$do, reason: invalid class name */
        public class Cdo extends p3<F, T> {
            public Cdo(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // com.google.common.collect.o3
            /* renamed from: do */
            public T mo15451do(F f) {
                return Cclass.this.function.apply(f);
            }
        }

        public Cclass(List<F> list, Function<? super F, ? extends T> function) {
            this.fromList = (List) af1.m205continue(list);
            this.function = (Function) af1.m205continue(function);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.fromList.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return this.function.apply(this.fromList.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new Cdo(this.fromList.listIterator(i));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return this.function.apply(this.fromList.remove(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    /* renamed from: com.google.common.collect.x1$const, reason: invalid class name */
    public static class Cconst<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;
        public final List<F> fromList;
        public final Function<? super F, ? extends T> function;

        /* renamed from: com.google.common.collect.x1$const$do, reason: invalid class name */
        public class Cdo extends p3<F, T> {
            public Cdo(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // com.google.common.collect.o3
            /* renamed from: do */
            public T mo15451do(F f) {
                return Cconst.this.function.apply(f);
            }
        }

        public Cconst(List<F> list, Function<? super F, ? extends T> function) {
            this.fromList = (List) af1.m205continue(list);
            this.function = (Function) af1.m205continue(function);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.fromList.clear();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new Cdo(this.fromList.listIterator(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.x1$do, reason: invalid class name */
    public static class Cdo<E> extends Celse<E> {

        /* renamed from: if, reason: not valid java name */
        private static final long f14865if = 0;

        public Cdo(List list) {
            super(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i) {
            return this.f14866do.listIterator(i);
        }
    }

    /* renamed from: com.google.common.collect.x1$else, reason: invalid class name */
    public static class Celse<E> extends Cfor<E> implements RandomAccess {
        public Celse(List<E> list) {
            super(list);
        }
    }

    /* renamed from: com.google.common.collect.x1$final, reason: invalid class name */
    public static class Cfinal<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;

        @b51
        public final E first;
        public final E[] rest;

        @b51
        public final E second;

        public Cfinal(@b51 E e, @b51 E e2, E[] eArr) {
            this.first = e;
            this.second = e2;
            this.rest = (E[]) ((Object[]) af1.m205continue(eArr));
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.first;
            }
            if (i == 1) {
                return this.second;
            }
            af1.m222private(i, size());
            return this.rest[i - 2];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.google.common.math.Cnew.m17348public(this.rest.length, 2);
        }
    }

    /* renamed from: com.google.common.collect.x1$for, reason: invalid class name */
    public static class Cfor<E> extends AbstractList<E> {

        /* renamed from: do, reason: not valid java name */
        public final List<E> f14866do;

        public Cfor(List<E> list) {
            this.f14866do = (List) af1.m205continue(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, E e) {
            this.f14866do.add(i, e);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            return this.f14866do.addAll(i, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f14866do.contains(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            return this.f14866do.get(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public E remove(int i) {
            return this.f14866do.remove(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int i, E e) {
            return this.f14866do.set(i, e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14866do.size();
        }
    }

    /* renamed from: com.google.common.collect.x1$goto, reason: invalid class name */
    public static class Cgoto<T> extends Ccase<T> implements RandomAccess {
        public Cgoto(List<T> list, int i) {
            super(list, i);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.x1$if, reason: invalid class name */
    public static class Cif<E> extends Cfor<E> {

        /* renamed from: if, reason: not valid java name */
        private static final long f14867if = 0;

        public Cif(List list) {
            super(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i) {
            return this.f14866do.listIterator(i);
        }
    }

    /* renamed from: com.google.common.collect.x1$new, reason: invalid class name */
    public static final class Cnew extends AbstractList<Character> {

        /* renamed from: do, reason: not valid java name */
        private final CharSequence f14868do;

        public Cnew(CharSequence charSequence) {
            this.f14868do = charSequence;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Character get(int i) {
            af1.m222private(i, size());
            return Character.valueOf(this.f14868do.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14868do.length();
        }
    }

    /* renamed from: com.google.common.collect.x1$this, reason: invalid class name */
    public static class Cthis<T> extends Cbreak<T> implements RandomAccess {
        public Cthis(List<T> list) {
            super(list);
        }
    }

    /* renamed from: com.google.common.collect.x1$try, reason: invalid class name */
    public static class Ctry<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;

        @b51
        public final E first;
        public final E[] rest;

        public Ctry(@b51 E e, E[] eArr) {
            this.first = e;
            this.rest = (E[]) ((Object[]) af1.m205continue(eArr));
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            af1.m222private(i, size());
            return i == 0 ? this.first : this.rest[i - 1];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.google.common.math.Cnew.m17348public(this.rest.length, 1);
        }
    }

    private x1() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <F, T> List<T> m16491abstract(List<F> list, Function<? super F, ? extends T> function) {
        return list instanceof RandomAccess ? new Cclass(list, function) : new Cconst(list, function);
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m16492break(List<?> list, @b51 Object obj) {
        if (obj == af1.m205continue(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return s1.m16239public(list.iterator(), list2.iterator());
        }
        for (int i = 0; i < size; i++) {
            if (!Cthrow.m15205do(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> List<T> m16493case(Iterable<T> iterable) {
        return (List) iterable;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m16494catch(List<?> list) {
        Iterator<?> it = list.iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode = (((iHashCode * 31) + (next == null ? 0 : next.hashCode())) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m16495class(List<?> list, @b51 Object obj) {
        if (list instanceof RandomAccess) {
            return m16496const(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (Cthrow.m15205do(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    /* renamed from: const, reason: not valid java name */
    private static int m16496const(List<?> list, @b51 Object obj) {
        int size = list.size();
        int i = 0;
        if (obj == null) {
            while (i < size) {
                if (list.get(i) == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        while (i < size) {
            if (obj.equals(list.get(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @ki0(serializable = true)
    /* renamed from: default, reason: not valid java name */
    public static <E> LinkedList<E> m16497default() {
        return new LinkedList<>();
    }

    /* renamed from: do, reason: not valid java name */
    public static <E> boolean m16498do(List<E> list, int i, Iterable<? extends E> iterable) {
        ListIterator<E> listIterator = list.listIterator(i);
        Iterator<? extends E> it = iterable.iterator();
        boolean z = false;
        while (it.hasNext()) {
            listIterator.add(it.next());
            z = true;
        }
        return z;
    }

    /* renamed from: else, reason: not valid java name */
    public static v0<Character> m16499else(String str) {
        return new Ccatch((String) af1.m205continue(str));
    }

    @ki0(serializable = true)
    /* renamed from: extends, reason: not valid java name */
    public static <E> LinkedList<E> m16500extends(Iterable<? extends E> iterable) {
        LinkedList<E> linkedListM16497default = m16497default();
        r1.m16182do(linkedListM16497default, iterable);
        return linkedListM16497default;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m16501final(List<?> list, @b51 Object obj) {
        if (list instanceof RandomAccess) {
            return m16514super(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (Cthrow.m15205do(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T> List<List<T>> m16502finally(List<T> list, int i) {
        af1.m205continue(list);
        af1.m220new(i > 0);
        return list instanceof RandomAccess ? new Cgoto(list, i) : new Ccase(list, i);
    }

    /* renamed from: for, reason: not valid java name */
    public static <E> List<E> m16503for(@b51 E e, E[] eArr) {
        return new Ctry(e, eArr);
    }

    @o8
    /* renamed from: goto, reason: not valid java name */
    public static List<Character> m16504goto(CharSequence charSequence) {
        return new Cnew((CharSequence) af1.m205continue(charSequence));
    }

    /* renamed from: if, reason: not valid java name */
    public static <E> List<E> m16505if(@b51 E e, @b51 E e2, E[] eArr) {
        return new Cfinal(e, e2, eArr);
    }

    @ki0(serializable = true)
    /* renamed from: import, reason: not valid java name */
    public static <E> ArrayList<E> m16506import(Iterable<? extends E> iterable) {
        af1.m205continue(iterable);
        return iterable instanceof Collection ? new ArrayList<>(Cextends.m15771if(iterable)) : m16507native(iterable.iterator());
    }

    @ki0(serializable = true)
    /* renamed from: native, reason: not valid java name */
    public static <E> ArrayList<E> m16507native(Iterator<? extends E> it) {
        ArrayList<E> arrayListM16520while = m16520while();
        s1.m16222do(arrayListM16520while, it);
        return arrayListM16520while;
    }

    /* renamed from: new, reason: not valid java name */
    public static <B> List<List<B>> m16508new(List<? extends List<? extends B>> list) {
        return Cthrows.m16367for(list);
    }

    /* renamed from: package, reason: not valid java name */
    public static <T> List<T> m16509package(List<T> list) {
        return list instanceof v0 ? ((v0) list).reverse() : list instanceof Cbreak ? ((Cbreak) list).m16524if() : list instanceof RandomAccess ? new Cthis(list) : new Cbreak(list);
    }

    /* renamed from: private, reason: not valid java name */
    public static <E> List<E> m16510private(List<E> list, int i, int i2) {
        return (list instanceof RandomAccess ? new Cdo(list) : new Cif(list)).subList(i, i2);
    }

    @SafeVarargs
    @ki0(serializable = true)
    /* renamed from: public, reason: not valid java name */
    public static <E> ArrayList<E> m16511public(E... eArr) {
        af1.m205continue(eArr);
        ArrayList<E> arrayList = new ArrayList<>(m16516this(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    @ki0(serializable = true)
    /* renamed from: return, reason: not valid java name */
    public static <E> ArrayList<E> m16512return(int i) {
        Cdefault.m15742if(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    @ki0(serializable = true)
    /* renamed from: static, reason: not valid java name */
    public static <E> ArrayList<E> m16513static(int i) {
        return new ArrayList<>(m16516this(i));
    }

    /* renamed from: super, reason: not valid java name */
    private static int m16514super(List<?> list, @b51 Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    @li0
    /* renamed from: switch, reason: not valid java name */
    public static <E> CopyOnWriteArrayList<E> m16515switch() {
        return new CopyOnWriteArrayList<>();
    }

    @af2
    /* renamed from: this, reason: not valid java name */
    public static int m16516this(int i) {
        Cdefault.m15742if(i, "arraySize");
        return com.google.common.primitives.Cthis.m17704throws(i + 5 + (i / 10));
    }

    /* renamed from: throw, reason: not valid java name */
    public static <E> ListIterator<E> m16517throw(List<E> list, int i) {
        return new Cfor(list).listIterator(i);
    }

    @li0
    /* renamed from: throws, reason: not valid java name */
    public static <E> CopyOnWriteArrayList<E> m16518throws(Iterable<? extends E> iterable) {
        return new CopyOnWriteArrayList<>(iterable instanceof Collection ? Cextends.m15771if(iterable) : m16506import(iterable));
    }

    @SafeVarargs
    /* renamed from: try, reason: not valid java name */
    public static <B> List<List<B>> m16519try(List<? extends B>... listArr) {
        return m16508new(Arrays.asList(listArr));
    }

    @ki0(serializable = true)
    /* renamed from: while, reason: not valid java name */
    public static <E> ArrayList<E> m16520while() {
        return new ArrayList<>();
    }
}
