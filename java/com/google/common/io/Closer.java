package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cextends;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;

@li0
@o8
/* loaded from: classes2.dex */
public final class Closer implements Closeable {

    /* renamed from: new, reason: not valid java name */
    private static final Suppressor f15234new;

    /* renamed from: do, reason: not valid java name */
    @af2
    public final Suppressor f15235do;

    /* renamed from: for, reason: not valid java name */
    @l01
    private Throwable f15236for;

    /* renamed from: if, reason: not valid java name */
    private final Deque<Closeable> f15237if = new ArrayDeque(4);

    @af2
    public interface Suppressor {
        void suppress(Closeable closeable, Throwable th, Throwable th2);
    }

    @af2
    /* renamed from: com.google.common.io.Closer$do, reason: invalid class name */
    public static final class Cdo implements Suppressor {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f15238do = new Cdo();

        @Override // com.google.common.io.Closer.Suppressor
        public void suppress(Closeable closeable, Throwable th, Throwable th2) {
            Cbreak.f15241do.log(Level.WARNING, "Suppressing exception thrown when closing " + closeable, th2);
        }
    }

    @af2
    /* renamed from: com.google.common.io.Closer$if, reason: invalid class name */
    public static final class Cif implements Suppressor {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f15239do = new Cif();

        /* renamed from: if, reason: not valid java name */
        public static final Method f15240if = m16980do();

        /* renamed from: do, reason: not valid java name */
        private static Method m16980do() {
            try {
                return Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable unused) {
                return null;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public static boolean m16981if() {
            return f15240if != null;
        }

        @Override // com.google.common.io.Closer.Suppressor
        public void suppress(Closeable closeable, Throwable th, Throwable th2) {
            if (th == th2) {
                return;
            }
            try {
                f15240if.invoke(th, th2);
            } catch (Throwable unused) {
                Cdo.f15238do.suppress(closeable, th, th2);
            }
        }
    }

    static {
        f15234new = Cif.m16981if() ? Cif.f15239do : Cdo.f15238do;
    }

    @af2
    public Closer(Suppressor suppressor) {
        this.f15235do = (Suppressor) af1.m205continue(suppressor);
    }

    /* renamed from: do, reason: not valid java name */
    public static Closer m16975do() {
        return new Closer(f15234new);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        Throwable th = this.f15236for;
        while (!this.f15237if.isEmpty()) {
            Closeable closeableRemoveFirst = this.f15237if.removeFirst();
            try {
                closeableRemoveFirst.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.f15235do.suppress(closeableRemoveFirst, th, th2);
                }
            }
        }
        if (this.f15236for != null || th == null) {
            return;
        }
        Cextends.m15058public(th, IOException.class);
        throw new AssertionError(th);
    }

    /* renamed from: for, reason: not valid java name */
    public RuntimeException m16976for(Throwable th) throws Throwable {
        af1.m205continue(th);
        this.f15236for = th;
        Cextends.m15058public(th, IOException.class);
        throw new RuntimeException(th);
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public <C extends Closeable> C m16977if(@b51 C c) {
        if (c != null) {
            this.f15237if.addFirst(c);
        }
        return c;
    }

    /* renamed from: new, reason: not valid java name */
    public <X extends Exception> RuntimeException m16978new(Throwable th, Class<X> cls) throws Exception {
        af1.m205continue(th);
        this.f15236for = th;
        Cextends.m15058public(th, IOException.class);
        Cextends.m15058public(th, cls);
        throw new RuntimeException(th);
    }

    /* renamed from: try, reason: not valid java name */
    public <X1 extends Exception, X2 extends Exception> RuntimeException m16979try(Throwable th, Class<X1> cls, Class<X2> cls2) throws Exception {
        af1.m205continue(th);
        this.f15236for = th;
        Cextends.m15058public(th, IOException.class);
        Cextends.m15059return(th, cls, cls2);
        throw new RuntimeException(th);
    }
}
