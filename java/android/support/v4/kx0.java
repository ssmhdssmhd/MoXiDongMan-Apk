package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.collections.builders.Cfor;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMutableCollection;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001b\b\u0000\u0012\u0010\u0010\u0019\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00000\u0018¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\t\u0010\bJ\u0016\u0010\f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\bJ\u0016\u0010\u0012\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016J\u0016\u0010\u0013\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016R\u0016\u0010\u0017\u001a\u00020\u00148V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R#\u0010\u0019\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00000\u00188\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Landroid/support/v4/kx0;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Landroid/support/v4/instanceof;", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "add", "", "elements", "addAll", "Landroid/support/v4/ub2;", FreemarkerServlet.r, "", "iterator", "remove", "removeAll", "retainAll", "", "do", "()I", "size", "Lkotlin/collections/builders/for;", "backing", "Lkotlin/collections/builders/for;", "if", "()Lkotlin/collections/builders/for;", "<init>", "(Lkotlin/collections/builders/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class kx0<V> extends Cinstanceof<V> implements Collection<V>, KMutableCollection {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Cfor<?, V> f3499do;

    public kx0(@m41 Cfor<?, V> backing) {
        Csuper.m30700throw(backing, "backing");
        this.f3499do = backing;
    }

    @Override // android.support.v4.Cinstanceof, java.util.AbstractCollection, java.util.Collection
    public boolean add(V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(@m41 Collection<? extends V> elements) {
        Csuper.m30700throw(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f3499do.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f3499do.containsValue(obj);
    }

    @Override // android.support.v4.Cinstanceof
    /* renamed from: do */
    public int mo3522do() {
        return this.f3499do.size();
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public final Cfor<?, V> m4533if() {
        return this.f3499do;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f3499do.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    @m41
    public Iterator<V> iterator() {
        return this.f3499do.b();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.f3499do.a(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f3499do.m29923final();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f3499do.m29923final();
        return super.retainAll(elements);
    }
}
