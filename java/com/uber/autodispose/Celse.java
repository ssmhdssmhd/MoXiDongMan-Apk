package com.uber.autodispose;

import android.support.v4.jp1;
import android.support.v4.pg1;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* renamed from: com.uber.autodispose.else, reason: invalid class name */
/* loaded from: classes2.dex */
final class Celse {
    private Celse() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static String m24611do(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m24612for(AtomicReference<Disposable> atomicReference, Disposable disposable, Class<?> cls) {
        Cconst.m24610do(disposable, "next is null");
        if (atomicReference.compareAndSet(null, disposable)) {
            return true;
        }
        disposable.dispose();
        if (atomicReference.get() == Cif.DISPOSED) {
            return false;
        }
        m24613if(cls);
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m24613if(Class<?> cls) {
        jp1.l(new pg1(m24611do(cls.getName())));
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m24614new(AtomicReference<Subscription> atomicReference, Subscription subscription, Class<?> cls) {
        Cconst.m24610do(subscription, "next is null");
        if (atomicReference.compareAndSet(null, subscription)) {
            return true;
        }
        subscription.cancel();
        if (atomicReference.get() == Cnative.CANCELLED) {
            return false;
        }
        m24613if(cls);
        return false;
    }
}
