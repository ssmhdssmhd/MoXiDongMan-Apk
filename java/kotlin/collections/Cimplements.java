package kotlin.collections;

import android.support.v4.Csynchronized;
import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0017\u0010\t\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\t\u0010\u0006J \u0010\u000b\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/collections/implements;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/support/v4/synchronized;", "", "index", "get", "(I)Ljava/lang/Object;", "Landroid/support/v4/ub2;", FreemarkerServlet.r, "if", "element", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "add", "(ILjava/lang/Object;)V", "", "do", "Ljava/util/List;", "delegate", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.implements, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cimplements<T> extends Csynchronized<T> {

    /* renamed from: do, reason: not valid java name */
    private final List<T> f27727do;

    public Cimplements(@m41 List<T> delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.f27727do = delegate;
    }

    @Override // android.support.v4.Csynchronized, java.util.AbstractList, java.util.List
    public void add(int i, T t) {
        this.f27727do.add(Cstatic.o0(this, i), t);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f27727do.clear();
    }

    @Override // android.support.v4.Csynchronized
    /* renamed from: do */
    public int mo7663do() {
        return this.f27727do.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return this.f27727do.get(Cstatic.n0(this, i));
    }

    @Override // android.support.v4.Csynchronized
    /* renamed from: if */
    public T mo7664if(int i) {
        return this.f27727do.remove(Cstatic.n0(this, i));
    }

    @Override // android.support.v4.Csynchronized, java.util.AbstractList, java.util.List
    public T set(int i, T t) {
        return this.f27727do.set(Cstatic.n0(this, i), t);
    }
}
