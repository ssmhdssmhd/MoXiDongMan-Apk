package android.support.v4;

import java.util.NoSuchElementException;

@ki0
/* loaded from: classes2.dex */
public abstract class e<T> extends ac2<T> {

    /* renamed from: do, reason: not valid java name */
    @b51
    private T f1170do;

    public e(@b51 T t) {
        this.f1170do = t;
    }

    @b51
    /* renamed from: do, reason: not valid java name */
    public abstract T mo1571do(T t);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1170do != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        try {
            T t = this.f1170do;
            this.f1170do = mo1571do(t);
            return t;
        } catch (Throwable th) {
            this.f1170do = mo1571do(this.f1170do);
            throw th;
        }
    }
}
