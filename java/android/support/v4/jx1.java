package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Cwhile;
import kotlin.collections.builders.Cfor;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMutableSet;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010)\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001b\b\u0000\u0012\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u001a¢\u0006\u0004\b\u001c\u0010\u001dB\t\b\u0016¢\u0006\u0004\b\u001c\u0010\u001eB\u0011\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u0016¢\u0006\u0004\b\u001c\u0010 J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u000bH\u0016J\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0016\u0010\u0013\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u0010\u0014\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u0010\u0015\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016R\u0016\u0010\u0019\u001a\u00020\u00168V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006!"}, d2 = {"Landroid/support/v4/jx1;", ExifInterface.LONGITUDE_EAST, "", "Landroid/support/v4/b;", "", "if", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "Landroid/support/v4/ub2;", FreemarkerServlet.r, "add", "remove", "", "iterator", "", "elements", "addAll", "removeAll", "retainAll", "", "do", "()I", "size", "Lkotlin/collections/builders/for;", "backing", "<init>", "(Lkotlin/collections/builders/for;)V", "()V", "initialCapacity", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class jx1<E> extends b<E> implements Set<E>, KMutableSet {

    /* renamed from: do, reason: not valid java name */
    private final Cfor<E, ?> f3238do;

    public jx1(@m41 Cfor<E, ?> backing) {
        Csuper.m30700throw(backing, "backing");
        this.f3238do = backing;
    }

    @Override // android.support.v4.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        return this.f3238do.m29919catch(e) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@m41 Collection<? extends E> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f3238do.m29923final();
        return super.addAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f3238do.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f3238do.containsKey(obj);
    }

    @Override // android.support.v4.b
    /* renamed from: do */
    public int mo414do() {
        return this.f3238do.size();
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public final Set<E> m4125if() {
        this.f3238do.m29920const();
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f3238do.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @m41
    public Iterator<E> iterator() {
        return this.f3238do.m29921continue();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f3238do.m29925instanceof(obj) >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f3238do.m29923final();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        this.f3238do.m29923final();
        return super.retainAll(elements);
    }

    public jx1() {
        this(new Cfor());
    }

    public jx1(int i) {
        this(new Cfor(i));
    }
}
