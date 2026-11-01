package com.google.common.base;

import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.li0;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

@li0
/* loaded from: classes.dex */
public class FinalizableReferenceQueue implements Closeable {

    /* renamed from: try, reason: not valid java name */
    private static final String f13613try = "com.google.common.base.internal.Finalizer";

    /* renamed from: do, reason: not valid java name */
    public final ReferenceQueue<Object> f13614do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f13615for;

    /* renamed from: if, reason: not valid java name */
    public final PhantomReference<Object> f13616if;

    /* renamed from: new, reason: not valid java name */
    private static final Logger f13612new = Logger.getLogger(FinalizableReferenceQueue.class.getName());

    /* renamed from: case, reason: not valid java name */
    private static final Method f13611case = m14978for(m14979new(new Cfor(), new Cdo(), new Cif()));

    public interface FinalizerLoader {
        @b51
        Class<?> loadFinalizer();
    }

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$do, reason: invalid class name */
    public static class Cdo implements FinalizerLoader {

        /* renamed from: do, reason: not valid java name */
        private static final String f13617do = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.";

        /* renamed from: do, reason: not valid java name */
        public URL m14981do() throws IOException {
            String str = FinalizableReferenceQueue.f13613try.replace(Ctry.f28883do, Attributes.InternalPrefix) + ".class";
            URL resource = getClass().getClassLoader().getResource(str);
            if (resource == null) {
                throw new FileNotFoundException(str);
            }
            String string = resource.toString();
            if (string.endsWith(str)) {
                return new URL(resource, string.substring(0, string.length() - str.length()));
            }
            throw new IOException("Unsupported path style: " + string);
        }

        /* renamed from: if, reason: not valid java name */
        public URLClassLoader m14982if(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        @b51
        public Class<?> loadFinalizer() {
            try {
                return m14982if(m14981do()).loadClass(FinalizableReferenceQueue.f13613try);
            } catch (Exception e) {
                FinalizableReferenceQueue.f13612new.log(Level.WARNING, f13617do, (Throwable) e);
                return null;
            }
        }
    }

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$for, reason: invalid class name */
    public static class Cfor implements FinalizerLoader {

        /* renamed from: do, reason: not valid java name */
        @af2
        public static boolean f13618do;

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        @b51
        public Class<?> loadFinalizer() {
            if (f13618do) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader != null) {
                    try {
                        return systemClassLoader.loadClass(FinalizableReferenceQueue.f13613try);
                    } catch (ClassNotFoundException unused) {
                    }
                }
                return null;
            } catch (SecurityException unused2) {
                FinalizableReferenceQueue.f13612new.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    /* renamed from: com.google.common.base.FinalizableReferenceQueue$if, reason: invalid class name */
    public static class Cif implements FinalizerLoader {
        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public Class<?> loadFinalizer() {
            try {
                return Class.forName("android.support.v4.ib0");
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    public FinalizableReferenceQueue() {
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f13614do = referenceQueue;
        PhantomReference<Object> phantomReference = new PhantomReference<>(this, referenceQueue);
        this.f13616if = phantomReference;
        boolean z = true;
        try {
            f13611case.invoke(null, FinalizableReference.class, referenceQueue, phantomReference);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (Throwable th) {
            f13612new.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
            z = false;
        }
        this.f13615for = z;
    }

    /* renamed from: for, reason: not valid java name */
    public static Method m14978for(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static Class<?> m14979new(FinalizerLoader... finalizerLoaderArr) {
        for (FinalizerLoader finalizerLoader : finalizerLoaderArr) {
            Class<?> clsLoadFinalizer = finalizerLoader.loadFinalizer();
            if (clsLoadFinalizer != null) {
                return clsLoadFinalizer;
            }
        }
        throw new AssertionError();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13616if.enqueue();
        m14980if();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    public void m14980if() {
        if (this.f13615for) {
            return;
        }
        while (true) {
            Reference<? extends Object> referencePoll = this.f13614do.poll();
            if (referencePoll == 0) {
                return;
            }
            referencePoll.clear();
            try {
                ((FinalizableReference) referencePoll).finalizeReferent();
            } catch (Throwable th) {
                f13612new.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
        }
    }
}
