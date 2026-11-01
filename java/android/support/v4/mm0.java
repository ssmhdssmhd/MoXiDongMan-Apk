package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0005\u001a\u00020\u0004H\u0086\u0002J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086\u0002¨\u0006\n"}, d2 = {"Landroid/support/v4/mm0;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroid/support/v4/km0;", "", "hasNext", "do", "iterator", "<init>", "(Ljava/util/Iterator;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class mm0<T> implements Iterator<km0<? extends T>>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    private int f3960do;

    /* renamed from: if, reason: not valid java name */
    private final Iterator<T> f3961if;

    /* JADX WARN: Multi-variable type inference failed */
    public mm0(@m41 Iterator<? extends T> iterator) {
        Csuper.m30700throw(iterator, "iterator");
        this.f3961if = iterator;
    }

    @Override // java.util.Iterator
    @m41
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final km0<T> next() {
        int i = this.f3960do;
        this.f3960do = i + 1;
        if (i < 0) {
            Cthrow.j();
        }
        return new km0<>(i, this.f3961if.next());
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3961if.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
