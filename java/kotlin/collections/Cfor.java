package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\t\u0010\u0005\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\bH$J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u00020\bH\u0004R\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0011¨\u0006\u0015"}, d2 = {"Lkotlin/collections/for;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "new", "hasNext", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "Landroid/support/v4/ub2;", "do", ES6Iterator.VALUE_PROPERTY, "for", "(Ljava/lang/Object;)V", "if", "Lkotlin/collections/f;", "Lkotlin/collections/f;", "state", "Ljava/lang/Object;", "nextValue", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    private f f27724do = f.NotReady;

    /* renamed from: if, reason: not valid java name */
    private T f27725if;

    /* renamed from: new, reason: not valid java name */
    private final boolean m30082new() {
        this.f27724do = f.Failed;
        mo30083do();
        return this.f27724do == f.Ready;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo30083do();

    /* renamed from: for, reason: not valid java name */
    public final void m30084for(T t) {
        this.f27725if = t;
        this.f27724do = f.Ready;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        f fVar = this.f27724do;
        if (!(fVar != f.Failed)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i = Cif.f27726do[fVar.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m30082new();
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m30085if() {
        this.f27724do = f.Done;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f27724do = f.NotReady;
        return this.f27725if;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
