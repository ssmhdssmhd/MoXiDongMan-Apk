package android.support.v4;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.Iterator;
import org.chromium.base.Callback;
import org.chromium.base.ObserverList;
import org.chromium.base.supplier.Cif;
import org.chromium.base.supplier.ObservableSupplier;

/* loaded from: classes3.dex */
public class h61<E> implements ObservableSupplier<E> {

    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ boolean f2319case = false;

    /* renamed from: try, reason: not valid java name */
    private static boolean f2320try;

    /* renamed from: for, reason: not valid java name */
    private E f2322for;

    /* renamed from: do, reason: not valid java name */
    private final Thread f2321do = Thread.currentThread();

    /* renamed from: if, reason: not valid java name */
    private final Handler f2323if = new Handler();

    /* renamed from: new, reason: not valid java name */
    private final ObserverList<Callback<E>> f2324new = new ObserverList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public /* synthetic */ void m2953for(Object obj, Callback callback) {
        if (this.f2322for == obj && this.f2324new.m36875break(callback)) {
            callback.onResult(this.f2322for);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m2954if() {
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2955try(boolean z) {
        f2320try = z;
    }

    @Override // org.chromium.base.supplier.ObservableSupplier
    public E addObserver(final Callback<E> callback) {
        m2954if();
        this.f2324new.m36878try(callback);
        final E e = this.f2322for;
        if (e != null) {
            this.f2323if.post(new Runnable() { // from class: android.support.v4.g61
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2064do.m2953for(e, callback);
                }
            });
        }
        return this.f2322for;
    }

    @Override // org.chromium.base.supplier.Supplier
    @Nullable
    public E get() {
        m2954if();
        return this.f2322for;
    }

    @Override // org.chromium.base.supplier.Supplier
    public /* synthetic */ boolean hasValue() {
        return Cif.m37202do(this);
    }

    /* renamed from: new, reason: not valid java name */
    public void m2956new(E e) {
        m2954if();
        if (e == this.f2322for) {
            return;
        }
        this.f2322for = e;
        Iterator<Callback<E>> it = this.f2324new.iterator();
        while (it.hasNext()) {
            it.next().onResult(this.f2322for);
        }
    }

    @Override // org.chromium.base.supplier.ObservableSupplier
    public void removeObserver(Callback<E> callback) {
        m2954if();
        this.f2324new.m36876class(callback);
    }
}
