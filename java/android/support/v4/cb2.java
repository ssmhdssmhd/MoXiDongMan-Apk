package android.support.v4;

import java.util.Iterator;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;

@iz1(version = "1.3")
@Cfor(level = Ctry.ERROR, message = "This class is not going to be stabilized and is to be removed soon.")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u0003\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u0002H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0004ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\b"}, d2 = {"Landroid/support/v4/cb2;", "", "Landroid/support/v4/ab2;", "do", "()S", "if", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class cb2 implements Iterator<ab2>, KMappedMarker {
    /* renamed from: do, reason: not valid java name */
    public final short m841do() {
        return mo842if();
    }

    /* renamed from: if, reason: not valid java name */
    public abstract short mo842if();

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ ab2 next() {
        return ab2.m141if(m841do());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
