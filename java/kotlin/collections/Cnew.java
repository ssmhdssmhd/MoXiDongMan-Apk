package kotlin.collections;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@iz1(version = "1.1")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010*\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b'\u0018\u0000 \u001d*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0004\u001e\u001f !B\t\b\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H¦\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\fJ\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0016\u0010\u001a\u001a\u00020\u00048&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\""}, d2 = {"Lkotlin/collections/new;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/do;", "", "", "index", "get", "(I)Ljava/lang/Object;", "", "iterator", "element", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "listIterator", "fromIndex", "toIndex", "subList", "", "other", "", "equals", "hashCode", "getSize", "()I", "size", "<init>", "()V", "Companion", "do", "if", "for", "new", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew<E> extends kotlin.collections.Cdo<E> implements List<E>, KMappedMarker {

    @m41
    public static final Cdo Companion = new Cdo(null);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\b\u0010\u0007J'\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000f\u0010\fJ\u001b\u0010\u0012\u001a\u00020\u00022\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0016\u001a\u00020\u00152\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00102\n\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0000¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"kotlin/collections/new$do", "", "", "index", "size", "Landroid/support/v4/ub2;", "if", "(II)V", "for", "fromIndex", "toIndex", "new", "(III)V", "startIndex", "endIndex", "do", "", "c", "case", "(Ljava/util/Collection;)I", "other", "", "try", "(Ljava/util/Collection;Ljava/util/Collection;)Z", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.new$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        /* renamed from: case, reason: not valid java name */
        public final int m30119case(@m41 Collection<?> c) {
            Csuper.m30700throw(c, "c");
            Iterator<?> it = c.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m30120do(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("startIndex: " + i + ", endIndex: " + i2 + ", size: " + i3);
            }
            if (i <= i2) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i + " > endIndex: " + i2);
        }

        /* renamed from: for, reason: not valid java name */
        public final void m30121for(int i, int i2) {
            if (i < 0 || i > i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m30122if(int i, int i2) {
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m30123new(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + i3);
            }
            if (i <= i2) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i + " > toIndex: " + i2);
        }

        /* renamed from: try, reason: not valid java name */
        public final boolean m30124try(@m41 Collection<?> c, @m41 Collection<?> other) {
            Csuper.m30700throw(c, "c");
            Csuper.m30700throw(other, "other");
            if (c.size() != other.size()) {
                return false;
            }
            Iterator<?> it = other.iterator();
            Iterator<?> it2 = c.iterator();
            while (it2.hasNext()) {
                if (!Csuper.m30676else(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0092\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u000f\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\b\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\u000e"}, d2 = {"kotlin/collections/new$for", "Lkotlin/collections/new$if;", "Lkotlin/collections/new;", "", "", "hasPrevious", "", "nextIndex", "previous", "()Ljava/lang/Object;", "previousIndex", "index", "<init>", "(Lkotlin/collections/new;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.new$for, reason: invalid class name */
    public class Cfor extends Cnew<E>.Cif implements ListIterator<E>, KMappedMarker {
        public Cfor(int i) {
            super();
            Cnew.Companion.m30121for(i, Cnew.this.size());
            m30126if(i);
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return m30125do() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return m30125do();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            Cnew cnew = Cnew.this;
            m30126if(m30125do() - 1);
            return (E) cnew.get(m30125do());
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return m30125do() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\b\u0092\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\f\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"kotlin/collections/new$if", "", "", "hasNext", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "()I", "if", "(I)V", "index", "<init>", "(Lkotlin/collections/new;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.new$if, reason: invalid class name */
    public class Cif implements Iterator<E>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        private int f27731do;

        public Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public final int m30125do() {
            return this.f27731do;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27731do < Cnew.this.size();
        }

        /* renamed from: if, reason: not valid java name */
        public final void m30126if(int i) {
            this.f27731do = i;
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Cnew cnew = Cnew.this;
            int i = this.f27731do;
            this.f27731do = i + 1;
            return (E) cnew.get(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0012\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u0004B%\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\nR\u0016\u0010\u0013\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, d2 = {"kotlin/collections/new$new", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/new;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "(I)Ljava/lang/Object;", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "_size", "if", "Lkotlin/collections/new;", "list", "for", "fromIndex", "getSize", "()I", "size", "toIndex", "<init>", "(Lkotlin/collections/new;II)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.new$new, reason: invalid class name and collision with other inner class name */
    public static final class C0358new<E> extends Cnew<E> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        private int f27733do;

        /* renamed from: for, reason: not valid java name */
        private final int f27734for;

        /* renamed from: if, reason: not valid java name */
        private final Cnew<E> f27735if;

        /* JADX WARN: Multi-variable type inference failed */
        public C0358new(@m41 Cnew<? extends E> list, int i, int i2) {
            Csuper.m30700throw(list, "list");
            this.f27735if = list;
            this.f27734for = i;
            Cnew.Companion.m30123new(i, i2, list.size());
            this.f27733do = i2 - i;
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public E get(int i) {
            Cnew.Companion.m30122if(i, this.f27733do);
            return this.f27735if.get(this.f27734for + i);
        }

        @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
        public int getSize() {
            return this.f27733do;
        }
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@z41 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.m30124try(this, (Collection) obj);
        }
        return false;
    }

    public abstract E get(int i);

    @Override // kotlin.collections.Cdo
    public abstract int getSize();

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.m30119case(this);
    }

    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (Csuper.m30676else(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // kotlin.collections.Cdo, java.util.Collection, java.lang.Iterable, java.util.Set
    @m41
    public Iterator<E> iterator() {
        return new Cif();
    }

    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Csuper.m30676else(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    @m41
    public ListIterator<E> listIterator() {
        return new Cfor(0);
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @m41
    public List<E> subList(int i, int i2) {
        return new C0358new(this, i, i2);
    }

    @Override // java.util.List
    @m41
    public ListIterator<E> listIterator(int i) {
        return new Cfor(i);
    }
}
