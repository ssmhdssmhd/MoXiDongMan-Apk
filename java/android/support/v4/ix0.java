package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Cwhile;
import kotlin.collections.builders.Cfor;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010'\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010&\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u001d\b\u0000\u0012\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\t\u001a\u00020\u00052\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001c\u0010\f\u001a\u00020\u00052\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J\"\u0010\u000f\u001a\u00020\u00052\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\rH\u0016J\u001c\u0010\u0010\u001a\u00020\u00052\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J\u001b\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0011H\u0096\u0002J\"\u0010\u0013\u001a\u00020\u00052\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\rH\u0016J\"\u0010\u0014\u001a\u00020\u00052\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\rH\u0016J\"\u0010\u0015\u001a\u00020\u00052\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\rH\u0016R\u0016\u0010\u0019\u001a\u00020\u00168V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R%\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Landroid/support/v4/ix0;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroid/support/v4/implements;", "", "", "isEmpty", "", "element", "for", "Landroid/support/v4/ub2;", FreemarkerServlet.r, "try", "", "elements", "addAll", "new", "", "iterator", "containsAll", "removeAll", "retainAll", "", "do", "()I", "size", "Lkotlin/collections/builders/for;", "backing", "Lkotlin/collections/builders/for;", "case", "()Lkotlin/collections/builders/for;", "<init>", "(Lkotlin/collections/builders/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ix0<K, V> extends Cimplements<Map.Entry<K, V>, K, V> {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Cfor<K, V> f2931do;

    public ix0(@m41 Cfor<K, V> backing) {
        Csuper.m30700throw(backing, "backing");
        this.f2931do = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@m41 Collection<? extends Map.Entry<K, V>> elements) {
        Csuper.m30700throw(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @m41
    /* renamed from: case, reason: not valid java name */
    public final Cfor<K, V> m3630case() {
        return this.f2931do;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f2931do.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        return this.f2931do.m29929throw(elements);
    }

    @Override // android.support.v4.b
    /* renamed from: do */
    public int mo414do() {
        return this.f2931do.size();
    }

    @Override // android.support.v4.Cimplements
    /* renamed from: for */
    public boolean mo3513for(@m41 Map.Entry<? extends K, ? extends V> element) {
        Csuper.m30700throw(element, "element");
        return this.f2931do.m29931while(element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f2931do.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @m41
    public Iterator<Map.Entry<K, V>> iterator() {
        return this.f2931do.m29928return();
    }

    @Override // android.support.v4.Cimplements
    /* renamed from: new */
    public boolean mo3515new(@m41 Map.Entry element) {
        Csuper.m30700throw(element, "element");
        return this.f2931do.m29930transient(element);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f2931do.m29923final();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f2931do.m29923final();
        return super.retainAll(elements);
    }

    @Override // android.support.v4.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(@m41 Map.Entry<K, V> element) {
        Csuper.m30700throw(element, "element");
        throw new UnsupportedOperationException();
    }
}
