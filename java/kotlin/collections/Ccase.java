package kotlin.collections;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.internal.Cfinal;
import kotlin.jvm.internal.Cgoto;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\f\u0012\u0006\u0010\u0017\u001a\u00020\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0016J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0096\u0002J\u0017\u0010\u000e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\r0\f¢\u0006\u0004\b\u000e\u0010\u000fR!\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u000fR\u0019\u0010\u0017\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00188V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0019¨\u0006\u001d"}, d2 = {"Lkotlin/collections/case;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "elements", "containsAll", "", "iterator", "", "", "toArray", "()[Ljava/lang/Object;", "do", "[Ljava/lang/Object;", "if", "values", "Z", "for", "()Z", "isVarargs", "", "()I", "size", "<init>", "([Ljava/lang/Object;Z)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase<T> implements Collection<T>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final T[] f27681do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f27682if;

    public Ccase(@m41 T[] values, boolean z) {
        Csuper.m30700throw(values, "values");
        this.f27681do = values;
        this.f27682if = z;
    }

    @Override // java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return Cclass.c7(this.f27681do, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public int m29970do() {
        return this.f27681do.length;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m29971for() {
        return this.f27682if;
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public final T[] m29972if() {
        return this.f27681do;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f27681do.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    @m41
    public Iterator<T> iterator() {
        return Cgoto.m30666do(this.f27681do);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return m29970do();
    }

    @Override // java.util.Collection
    @m41
    public final Object[] toArray() {
        return Csuper.m30151goto(this.f27681do, this.f27682if);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) Cfinal.m30665if(this, tArr);
    }
}
