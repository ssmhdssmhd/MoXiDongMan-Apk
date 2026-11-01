package android.support.v4;

import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0010\t\n\u0002\b\u0006\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0003\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0002H&¨\u0006\b"}, d2 = {"Landroid/support/v4/yv0;", "", "", "do", "()Ljava/lang/Long;", "if", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class yv0 implements Iterator<Long>, KMappedMarker {
    @Override // java.util.Iterator
    @m41
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Long next() {
        return Long.valueOf(mo372if());
    }

    /* renamed from: if */
    public abstract long mo372if();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
