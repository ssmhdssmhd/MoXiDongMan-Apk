package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002¨\u0006\b"}, d2 = {"Landroid/support/v4/zq;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "", "iterator", "sequence", "<init>", "(Lkotlin/sequences/Sequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class zq<T> implements Sequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Sequence<T>> f8631do;

    public zq(@m41 Sequence<? extends T> sequence) {
        Csuper.m30700throw(sequence, "sequence");
        this.f8631do = new AtomicReference<>(sequence);
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        Sequence<T> andSet = this.f8631do.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
