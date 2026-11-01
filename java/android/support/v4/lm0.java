package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u001b\u0012\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0004H\u0096\u0002¨\u0006\n"}, d2 = {"Landroid/support/v4/lm0;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroid/support/v4/km0;", "", "iterator", "Lkotlin/Function0;", "iteratorFactory", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class lm0<T> implements Iterable<km0<? extends T>>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    private final Function0<Iterator<T>> f3712do;

    /* JADX WARN: Multi-variable type inference failed */
    public lm0(@m41 Function0<? extends Iterator<? extends T>> iteratorFactory) {
        Csuper.m30700throw(iteratorFactory, "iteratorFactory");
        this.f3712do = iteratorFactory;
    }

    @Override // java.lang.Iterable
    @m41
    public Iterator<km0<T>> iterator() {
        return new mm0(this.f3712do.invoke());
    }
}
