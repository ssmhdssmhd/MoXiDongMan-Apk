package org.chromium.base;

import android.support.v4.dl;
import android.support.v4.ed;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@dl("Lifetime assertions aren't used when DCHECK is off.")
/* loaded from: classes3.dex */
public class LifetimeAssert {

    /* renamed from: for, reason: not valid java name */
    public static TestHook f33023for;

    /* renamed from: do, reason: not valid java name */
    @VisibleForTesting
    public final Cfor f33024do;

    /* renamed from: if, reason: not valid java name */
    private final Object f33025if;

    public interface TestHook {
        void onCleaned(Cfor cfor, String str);
    }

    /* renamed from: org.chromium.base.LifetimeAssert$do, reason: invalid class name */
    public static class Cdo extends RuntimeException {
        public Cdo() {
            super("vvv This is where object was created. vvv");
        }
    }

    @VisibleForTesting
    /* renamed from: org.chromium.base.LifetimeAssert$for, reason: invalid class name */
    public static class Cfor extends PhantomReference<Object> {

        /* renamed from: new, reason: not valid java name */
        private static ReferenceQueue<Object> f33026new = new ReferenceQueue<>();

        /* renamed from: try, reason: not valid java name */
        private static Set<Cfor> f33027try = Collections.synchronizedSet(new HashSet());

        /* renamed from: do, reason: not valid java name */
        public boolean f33028do;

        /* renamed from: for, reason: not valid java name */
        public final Cdo f33029for;

        /* renamed from: if, reason: not valid java name */
        public final Class<?> f33030if;

        /* renamed from: org.chromium.base.LifetimeAssert$for$do, reason: invalid class name */
        public class Cdo extends Thread {
            public Cdo(String str) {
                super(str);
                setDaemon(true);
                start();
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        Cfor cfor = (Cfor) Cfor.f33026new.remove();
                        if (Cfor.f33027try.remove(cfor)) {
                            if (cfor.f33028do) {
                                TestHook testHook = LifetimeAssert.f33023for;
                                if (testHook != null) {
                                    testHook.onCleaned(cfor, null);
                                }
                            } else {
                                String str = String.format("Object of type %s was GC'ed without cleanup. Refer to \"Caused by\" for where object was created.", cfor.f33030if.getName());
                                TestHook testHook2 = LifetimeAssert.f33023for;
                                if (testHook2 == null) {
                                    throw new Cif(str, cfor.f33029for);
                                }
                                testHook2.onCleaned(cfor, str);
                            }
                        }
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }

        static {
            new Cdo("GcStateAssertQueue");
        }

        public Cfor(Object obj, Cdo cdo, boolean z) {
            super(obj, f33026new);
            this.f33029for = cdo;
            this.f33028do = z;
            this.f33030if = obj.getClass();
            f33027try.add(this);
        }
    }

    /* renamed from: org.chromium.base.LifetimeAssert$if, reason: invalid class name */
    public static class Cif extends RuntimeException {
        public Cif(String str, Throwable th) {
            super(str, th);
        }
    }

    private LifetimeAssert(Cfor cfor, Object obj) {
        this.f33024do = cfor;
        this.f33025if = obj;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m36832do() throws Cif {
        if (ed.f1398if) {
            synchronized (Cfor.f33027try) {
                try {
                    for (Cfor cfor : Cfor.f33027try) {
                        if (!cfor.f33028do) {
                            throw new Cif(String.format("Object of type %s was not destroyed after test completed. Refer to \"Caused by\" for where object was created.", cfor.f33030if.getName()), cfor.f33029for);
                        }
                    }
                } finally {
                    Cfor.f33027try.clear();
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static LifetimeAssert m36833for(Object obj, boolean z) {
        if (ed.f1398if) {
            return new LifetimeAssert(new Cfor(obj, new Cdo(), z), obj);
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static LifetimeAssert m36834if(Object obj) {
        if (ed.f1398if) {
            return new LifetimeAssert(new Cfor(obj, new Cdo(), false), obj);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m36835new() {
        if (ed.f1398if) {
            Cfor.f33027try.clear();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36836try(LifetimeAssert lifetimeAssert, boolean z) {
        if (ed.f1398if) {
            synchronized (lifetimeAssert.f33025if) {
                lifetimeAssert.f33024do.f33028do = z;
            }
        }
    }
}
