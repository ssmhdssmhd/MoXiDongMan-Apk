package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class v70 {
    private v70() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m8760case(Subscription subscription, Subscription subscription2, Class<?> cls) {
        Cif.m29468else(subscription2, "next is null");
        if (subscription == null) {
            return true;
        }
        subscription2.cancel();
        if (subscription == Cfor.CANCELLED) {
            return false;
        }
        m8763if(cls);
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m8761do(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m8762for(AtomicReference<Disposable> atomicReference, Disposable disposable, Class<?> cls) {
        Cif.m29468else(disposable, "next is null");
        if (atomicReference.compareAndSet(null, disposable)) {
            return true;
        }
        disposable.dispose();
        if (atomicReference.get() == Cdo.DISPOSED) {
            return false;
        }
        m8763if(cls);
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8763if(Class<?> cls) {
        jp1.l(new pg1(m8761do(cls.getName())));
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m8764new(AtomicReference<Subscription> atomicReference, Subscription subscription, Class<?> cls) {
        Cif.m29468else(subscription, "next is null");
        if (atomicReference.compareAndSet(null, subscription)) {
            return true;
        }
        subscription.cancel();
        if (atomicReference.get() == Cfor.CANCELLED) {
            return false;
        }
        m8763if(cls);
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m8765try(Disposable disposable, Disposable disposable2, Class<?> cls) {
        Cif.m29468else(disposable2, "next is null");
        if (disposable == null) {
            return true;
        }
        disposable2.dispose();
        if (disposable == Cdo.DISPOSED) {
            return false;
        }
        m8763if(cls);
        return false;
    }
}
