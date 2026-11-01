package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.gm1;
import android.support.v4.jd0;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.mn0;
import android.support.v4.nn0;
import android.support.v4.o8;
import com.google.common.base.Cdefault;
import com.google.common.base.Cextends;
import freemarker.core.b2;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.Cclass;
import sun.misc.Unsafe;

@gm1(gm1.Cdo.FULL)
@ki0(emulated = true)
/* loaded from: classes2.dex */
public abstract class AbstractFuture<V> extends mn0 implements ListenableFuture<V> {

    /* renamed from: case, reason: not valid java name */
    private static final long f15603case = 1000;

    /* renamed from: else, reason: not valid java name */
    private static final Cif f15604else;

    /* renamed from: goto, reason: not valid java name */
    private static final Object f15605goto;

    /* renamed from: new, reason: not valid java name */
    private static final boolean f15606new = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", b2.f23510do));

    /* renamed from: try, reason: not valid java name */
    private static final Logger f15607try = Logger.getLogger(AbstractFuture.class.getName());

    /* renamed from: do, reason: not valid java name */
    @b51
    private volatile Object f15608do;

    /* renamed from: for, reason: not valid java name */
    @b51
    private volatile Ccatch f15609for;

    /* renamed from: if, reason: not valid java name */
    @b51
    private volatile Ctry f15610if;

    public interface Trusted<V> extends ListenableFuture<V> {
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$break, reason: invalid class name */
    public static final class Cbreak extends Cif {

        /* renamed from: case, reason: not valid java name */
        public static final long f15611case;

        /* renamed from: do, reason: not valid java name */
        public static final Unsafe f15612do;

        /* renamed from: for, reason: not valid java name */
        public static final long f15613for;

        /* renamed from: if, reason: not valid java name */
        public static final long f15614if;

        /* renamed from: new, reason: not valid java name */
        public static final long f15615new;

        /* renamed from: try, reason: not valid java name */
        public static final long f15616try;

        /* renamed from: com.google.common.util.concurrent.AbstractFuture$break$do, reason: invalid class name */
        public static class Cdo implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new Cdo());
            }
            try {
                f15613for = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("for"));
                f15614if = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("if"));
                f15615new = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("do"));
                f15616try = unsafe.objectFieldOffset(Ccatch.class.getDeclaredField("do"));
                f15611case = unsafe.objectFieldOffset(Ccatch.class.getDeclaredField("if"));
                f15612do = unsafe;
            } catch (Exception e2) {
                Cextends.m15062switch(e2);
                throw new RuntimeException(e2);
            }
        }

        private Cbreak() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: do, reason: not valid java name */
        public boolean mo17983do(AbstractFuture<?> abstractFuture, Ctry ctry, Ctry ctry2) {
            return f15612do.compareAndSwapObject(abstractFuture, f15614if, ctry, ctry2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: for, reason: not valid java name */
        public boolean mo17984for(AbstractFuture<?> abstractFuture, Ccatch ccatch, Ccatch ccatch2) {
            return f15612do.compareAndSwapObject(abstractFuture, f15613for, ccatch, ccatch2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: if, reason: not valid java name */
        public boolean mo17985if(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            return f15612do.compareAndSwapObject(abstractFuture, f15615new, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: new, reason: not valid java name */
        public void mo17986new(Ccatch ccatch, Ccatch ccatch2) {
            f15612do.putObject(ccatch, f15611case, ccatch2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: try, reason: not valid java name */
        public void mo17987try(Ccatch ccatch, Thread thread) {
            f15612do.putObject(ccatch, f15616try, thread);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$case, reason: invalid class name */
    public static final class Ccase extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Ccatch, Thread> f15617do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<AbstractFuture, Ccatch> f15618for;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Ccatch, Ccatch> f15619if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<AbstractFuture, Ctry> f15620new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<AbstractFuture, Object> f15621try;

        public Ccase(AtomicReferenceFieldUpdater<Ccatch, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Ccatch, Ccatch> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, Ccatch> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, Ctry> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f15617do = atomicReferenceFieldUpdater;
            this.f15619if = atomicReferenceFieldUpdater2;
            this.f15618for = atomicReferenceFieldUpdater3;
            this.f15620new = atomicReferenceFieldUpdater4;
            this.f15621try = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: do */
        public boolean mo17983do(AbstractFuture<?> abstractFuture, Ctry ctry, Ctry ctry2) {
            return this.f15620new.compareAndSet(abstractFuture, ctry, ctry2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: for */
        public boolean mo17984for(AbstractFuture<?> abstractFuture, Ccatch ccatch, Ccatch ccatch2) {
            return this.f15618for.compareAndSet(abstractFuture, ccatch, ccatch2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: if */
        public boolean mo17985if(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            return this.f15621try.compareAndSet(abstractFuture, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: new */
        public void mo17986new(Ccatch ccatch, Ccatch ccatch2) {
            this.f15619if.lazySet(ccatch, ccatch2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: try */
        public void mo17987try(Ccatch ccatch, Thread thread) {
            this.f15617do.lazySet(ccatch, thread);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$catch, reason: invalid class name */
    public static final class Ccatch {

        /* renamed from: for, reason: not valid java name */
        public static final Ccatch f15622for = new Ccatch(false);

        /* renamed from: do, reason: not valid java name */
        @b51
        public volatile Thread f15623do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public volatile Ccatch f15624if;

        public Ccatch(boolean z) {
        }

        /* renamed from: do, reason: not valid java name */
        public void m17989do(Ccatch ccatch) {
            AbstractFuture.f15604else.mo17986new(this, ccatch);
        }

        /* renamed from: if, reason: not valid java name */
        public void m17990if() {
            Thread thread = this.f15623do;
            if (thread != null) {
                this.f15623do = null;
                LockSupport.unpark(thread);
            }
        }

        public Ccatch() {
            AbstractFuture.f15604else.mo17987try(this, Thread.currentThread());
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$else, reason: invalid class name */
    public static final class Celse<V> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final AbstractFuture<V> f15625do;

        /* renamed from: if, reason: not valid java name */
        public final ListenableFuture<? extends V> f15626if;

        public Celse(AbstractFuture<V> abstractFuture, ListenableFuture<? extends V> listenableFuture) {
            this.f15625do = abstractFuture;
            this.f15626if = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractFuture) this.f15625do).f15608do != this) {
                return;
            }
            if (AbstractFuture.f15604else.mo17985if(this.f15625do, this, AbstractFuture.m17968return(this.f15626if))) {
                AbstractFuture.m17964import(this.f15625do);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: for, reason: not valid java name */
        public static final Cfor f15627for;

        /* renamed from: new, reason: not valid java name */
        public static final Cfor f15628new;

        /* renamed from: do, reason: not valid java name */
        public final boolean f15629do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public final Throwable f15630if;

        static {
            if (AbstractFuture.f15606new) {
                f15628new = null;
                f15627for = null;
            } else {
                f15628new = new Cfor(false, null);
                f15627for = new Cfor(true, null);
            }
        }

        public Cfor(boolean z, @b51 Throwable th) {
            this.f15629do = z;
            this.f15630if = th;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$goto, reason: invalid class name */
    public static final class Cgoto extends Cif {
        private Cgoto() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: do */
        public boolean mo17983do(AbstractFuture<?> abstractFuture, Ctry ctry, Ctry ctry2) {
            synchronized (abstractFuture) {
                if (((AbstractFuture) abstractFuture).f15610if != ctry) {
                    return false;
                }
                ((AbstractFuture) abstractFuture).f15610if = ctry2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: for */
        public boolean mo17984for(AbstractFuture<?> abstractFuture, Ccatch ccatch, Ccatch ccatch2) {
            synchronized (abstractFuture) {
                if (((AbstractFuture) abstractFuture).f15609for != ccatch) {
                    return false;
                }
                ((AbstractFuture) abstractFuture).f15609for = ccatch2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: if */
        public boolean mo17985if(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                if (((AbstractFuture) abstractFuture).f15608do != obj) {
                    return false;
                }
                ((AbstractFuture) abstractFuture).f15608do = obj2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: new */
        public void mo17986new(Ccatch ccatch, Ccatch ccatch2) {
            ccatch.f15624if = ccatch2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.Cif
        /* renamed from: try */
        public void mo17987try(Ccatch ccatch, Thread thread) {
            ccatch.f15623do = thread;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$if, reason: invalid class name */
    public static abstract class Cif {
        private Cif() {
        }

        /* renamed from: do */
        public abstract boolean mo17983do(AbstractFuture<?> abstractFuture, Ctry ctry, Ctry ctry2);

        /* renamed from: for */
        public abstract boolean mo17984for(AbstractFuture<?> abstractFuture, Ccatch ccatch, Ccatch ccatch2);

        /* renamed from: if */
        public abstract boolean mo17985if(AbstractFuture<?> abstractFuture, Object obj, Object obj2);

        /* renamed from: new */
        public abstract void mo17986new(Ccatch ccatch, Ccatch ccatch2);

        /* renamed from: try */
        public abstract void mo17987try(Ccatch ccatch, Thread thread);
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cnew f15631if = new Cnew(new Cdo("Failure occurred while trying to finish a future."));

        /* renamed from: do, reason: not valid java name */
        public final Throwable f15632do;

        /* renamed from: com.google.common.util.concurrent.AbstractFuture$new$do, reason: invalid class name */
        public static class Cdo extends Throwable {
            public Cdo(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public Cnew(Throwable th) {
            this.f15632do = (Throwable) af1.m205continue(th);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$this, reason: invalid class name */
    public static abstract class Cthis<V> extends AbstractFuture<V> implements Trusted<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @lf
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @lf
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @lf
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: new, reason: not valid java name */
        public static final Ctry f15633new = new Ctry(null, null);

        /* renamed from: do, reason: not valid java name */
        public final Runnable f15634do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public Ctry f15635for;

        /* renamed from: if, reason: not valid java name */
        public final Executor f15636if;

        public Ctry(Runnable runnable, Executor executor) {
            this.f15634do = runnable;
            this.f15636if = executor;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.common.util.concurrent.AbstractFuture$do] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.common.util.concurrent.AbstractFuture$break] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.common.util.concurrent.AbstractFuture$case] */
    static {
        Cgoto cgoto;
        ?? r1 = 0;
        r1 = 0;
        try {
            cgoto = new Cbreak();
            th = null;
        } catch (Throwable th) {
            th = th;
            try {
                cgoto = new Ccase(AtomicReferenceFieldUpdater.newUpdater(Ccatch.class, Thread.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Ccatch.class, Ccatch.class, "if"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Ccatch.class, "for"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Ctry.class, "if"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "do"));
            } catch (Throwable th2) {
                cgoto = new Cgoto();
                r1 = th2;
            }
        }
        f15604else = cgoto;
        if (r1 != 0) {
            ?? r0 = f15607try;
            Level level = Level.SEVERE;
            r0.log(level, "UnsafeAtomicHelper is broken!", th);
            r0.log(level, "SafeAtomicHelper is broken!", r1);
        }
        f15605goto = new Object();
    }

    /* renamed from: class, reason: not valid java name */
    private void m17956class(StringBuilder sb) {
        try {
            Object objM17969static = m17969static(this);
            sb.append("SUCCESS, result=[");
            m17970super(sb, objM17969static);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m17957const(StringBuilder sb) {
        String strM15038for;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.f15608do;
        if (obj instanceof Celse) {
            sb.append(", setFuture=[");
            m17970super(sb, ((Celse) obj).f15626if);
            sb.append("]");
        } else {
            try {
                strM15038for = Cdefault.m15038for(mo17977default());
            } catch (RuntimeException | StackOverflowError e) {
                strM15038for = "Exception thrown from implementation: " + e.getClass();
            }
            if (strM15038for != null) {
                sb.append(", info=[");
                sb.append(strM15038for);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            m17956class(sb);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m17959extends() {
        Ccatch ccatch;
        do {
            ccatch = this.f15609for;
        } while (!f15604else.mo17984for(this, ccatch, Ccatch.f15622for));
        while (ccatch != null) {
            ccatch.m17990if();
            ccatch = ccatch.f15624if;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private void m17960finally(Ccatch ccatch) {
        ccatch.f15623do = null;
        while (true) {
            Ccatch ccatch2 = this.f15609for;
            if (ccatch2 == Ccatch.f15622for) {
                return;
            }
            Ccatch ccatch3 = null;
            while (ccatch2 != null) {
                Ccatch ccatch4 = ccatch2.f15624if;
                if (ccatch2.f15623do != null) {
                    ccatch3 = ccatch2;
                } else if (ccatch3 != null) {
                    ccatch3.f15624if = ccatch4;
                    if (ccatch3.f15623do == null) {
                        break;
                    }
                } else if (!f15604else.mo17984for(this, ccatch2, ccatch4)) {
                    break;
                }
                ccatch2 = ccatch4;
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public static void m17964import(AbstractFuture<?> abstractFuture) {
        Ctry ctry = null;
        while (true) {
            abstractFuture.m17959extends();
            abstractFuture.mo17978final();
            Ctry ctryM17974while = abstractFuture.m17974while(ctry);
            while (ctryM17974while != null) {
                ctry = ctryM17974while.f15635for;
                Runnable runnable = ctryM17974while.f15634do;
                if (runnable instanceof Celse) {
                    Celse celse = (Celse) runnable;
                    abstractFuture = celse.f15625do;
                    if (((AbstractFuture) abstractFuture).f15608do == celse) {
                        if (f15604else.mo17985if(abstractFuture, celse, m17968return(celse.f15626if))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m17965native(runnable, ctryM17974while.f15636if);
                }
                ctryM17974while = ctry;
            }
            return;
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static void m17965native(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f15607try.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: public, reason: not valid java name */
    private V m17967public(Object obj) throws ExecutionException {
        if (obj instanceof Cfor) {
            throw m17972throw("Task was cancelled.", ((Cfor) obj).f15630if);
        }
        if (obj instanceof Cnew) {
            throw new ExecutionException(((Cnew) obj).f15632do);
        }
        if (obj == f15605goto) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: return, reason: not valid java name */
    public static Object m17968return(ListenableFuture<?> listenableFuture) {
        Throwable thM5278do;
        if (listenableFuture instanceof Trusted) {
            Object obj = ((AbstractFuture) listenableFuture).f15608do;
            if (!(obj instanceof Cfor)) {
                return obj;
            }
            Cfor cfor = (Cfor) obj;
            return cfor.f15629do ? cfor.f15630if != null ? new Cfor(false, cfor.f15630if) : Cfor.f15628new : obj;
        }
        if ((listenableFuture instanceof mn0) && (thM5278do = nn0.m5278do((mn0) listenableFuture)) != null) {
            return new Cnew(thM5278do);
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        if ((!f15606new) && zIsCancelled) {
            return Cfor.f15628new;
        }
        try {
            Object objM17969static = m17969static(listenableFuture);
            if (!zIsCancelled) {
                return objM17969static == null ? f15605goto : objM17969static;
            }
            return new Cfor(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture));
        } catch (CancellationException e) {
            if (zIsCancelled) {
                return new Cfor(false, e);
            }
            return new Cnew(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
        } catch (ExecutionException e2) {
            if (!zIsCancelled) {
                return new Cnew(e2.getCause());
            }
            return new Cfor(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e2));
        } catch (Throwable th) {
            return new Cnew(th);
        }
    }

    /* renamed from: static, reason: not valid java name */
    private static <V> V m17969static(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* renamed from: super, reason: not valid java name */
    private void m17970super(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private static CancellationException m17972throw(@b51 String str, @b51 Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: while, reason: not valid java name */
    private Ctry m17974while(Ctry ctry) {
        Ctry ctry2;
        do {
            ctry2 = this.f15610if;
        } while (!f15604else.mo17983do(this, ctry2, Ctry.f15633new));
        Ctry ctry3 = ctry;
        Ctry ctry4 = ctry2;
        while (ctry4 != null) {
            Ctry ctry5 = ctry4.f15635for;
            ctry4.f15635for = ctry3;
            ctry3 = ctry4;
            ctry4 = ctry5;
        }
        return ctry3;
    }

    @lf
    /* renamed from: abstract, reason: not valid java name */
    public boolean mo17975abstract(ListenableFuture<? extends V> listenableFuture) {
        Cnew cnew;
        af1.m205continue(listenableFuture);
        Object obj = this.f15608do;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!f15604else.mo17985if(this, null, m17968return(listenableFuture))) {
                    return false;
                }
                m17964import(this);
                return true;
            }
            Celse celse = new Celse(this, listenableFuture);
            if (f15604else.mo17985if(this, null, celse)) {
                try {
                    listenableFuture.addListener(celse, Cthrow.INSTANCE);
                } catch (Throwable th) {
                    try {
                        cnew = new Cnew(th);
                    } catch (Throwable unused) {
                        cnew = Cnew.f15631if;
                    }
                    f15604else.mo17985if(this, celse, cnew);
                }
                return true;
            }
            obj = this.f15608do;
        }
        if (obj instanceof Cfor) {
            listenableFuture.cancel(((Cfor) obj).f15629do);
        }
        return false;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Ctry ctry;
        af1.m227strictfp(runnable, "Runnable was null.");
        af1.m227strictfp(executor, "Executor was null.");
        if (!isDone() && (ctry = this.f15610if) != Ctry.f15633new) {
            Ctry ctry2 = new Ctry(runnable, executor);
            do {
                ctry2.f15635for = ctry;
                if (f15604else.mo17983do(this, ctry, ctry2)) {
                    return;
                } else {
                    ctry = this.f15610if;
                }
            } while (ctry != Ctry.f15633new);
        }
        m17965native(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    @lf
    public boolean cancel(boolean z) {
        Object obj = this.f15608do;
        if (!(obj == null) && !(obj instanceof Celse)) {
            return false;
        }
        Cfor cfor = f15606new ? new Cfor(z, new CancellationException("Future.cancel() was called.")) : z ? Cfor.f15627for : Cfor.f15628new;
        boolean z2 = false;
        AbstractFuture<V> abstractFuture = this;
        while (true) {
            if (f15604else.mo17985if(abstractFuture, obj, cfor)) {
                if (z) {
                    abstractFuture.mo17981switch();
                }
                m17964import(abstractFuture);
                if (!(obj instanceof Celse)) {
                    return true;
                }
                ListenableFuture<? extends V> listenableFuture = ((Celse) obj).f15626if;
                if (!(listenableFuture instanceof Trusted)) {
                    listenableFuture.cancel(z);
                    return true;
                }
                abstractFuture = (AbstractFuture) listenableFuture;
                obj = abstractFuture.f15608do;
                if (!(obj == null) && !(obj instanceof Celse)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = abstractFuture.f15608do;
                if (!(obj instanceof Celse)) {
                    return z2;
                }
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final boolean m17976continue() {
        Object obj = this.f15608do;
        return (obj instanceof Cfor) && ((Cfor) obj).f15629do;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b51
    /* renamed from: default, reason: not valid java name */
    public String mo17977default() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    @Override // android.support.v4.mn0
    @b51
    /* renamed from: do */
    public final Throwable mo4951do() {
        if (!(this instanceof Trusted)) {
            return null;
        }
        Object obj = this.f15608do;
        if (obj instanceof Cnew) {
            return ((Cnew) obj).f15632do;
        }
        return null;
    }

    @jd0
    @o8
    /* renamed from: final, reason: not valid java name */
    public void mo17978final() {
    }

    @Override // java.util.concurrent.Future
    @lf
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f15608do;
        if ((obj != null) && (!(obj instanceof Celse))) {
            return m17967public(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            Ccatch ccatch = this.f15609for;
            if (ccatch != Ccatch.f15622for) {
                Ccatch ccatch2 = new Ccatch();
                do {
                    ccatch2.m17989do(ccatch);
                    if (f15604else.mo17984for(this, ccatch, ccatch2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                m17960finally(ccatch2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f15608do;
                            if ((obj2 != null) && (!(obj2 instanceof Celse))) {
                                return m17967public(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        m17960finally(ccatch2);
                    } else {
                        ccatch = this.f15609for;
                    }
                } while (ccatch != Ccatch.f15622for);
            }
            return m17967public(this.f15608do);
        }
        while (nanos > 0) {
            Object obj3 = this.f15608do;
            if ((obj3 != null) && (!(obj3 instanceof Celse))) {
                return m17967public(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + j + Cclass.f28652do + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + Cclass.f28652do + lowerCase;
                if (z) {
                    str3 = str3 + ",";
                }
                str2 = str3 + Cclass.f28652do;
            }
            if (z) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f15608do instanceof Cfor;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof Celse)) & (this.f15608do != null);
    }

    @lf
    /* renamed from: package, reason: not valid java name */
    public boolean mo17979package(@b51 V v) {
        if (v == null) {
            v = (V) f15605goto;
        }
        if (!f15604else.mo17985if(this, null, v)) {
            return false;
        }
        m17964import(this);
        return true;
    }

    @lf
    /* renamed from: private, reason: not valid java name */
    public boolean mo17980private(Throwable th) {
        if (!f15604else.mo17985if(this, null, new Cnew((Throwable) af1.m205continue(th)))) {
            return false;
        }
        m17964import(this);
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public void mo17981switch() {
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m17982throws(@b51 Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m17976continue());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m17956class(sb);
        } else {
            m17957const(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    @lf
    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f15608do;
            if ((obj2 != null) & (!(obj2 instanceof Celse))) {
                return m17967public(obj2);
            }
            Ccatch ccatch = this.f15609for;
            if (ccatch != Ccatch.f15622for) {
                Ccatch ccatch2 = new Ccatch();
                do {
                    ccatch2.m17989do(ccatch);
                    if (f15604else.mo17984for(this, ccatch, ccatch2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f15608do;
                            } else {
                                m17960finally(ccatch2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof Celse))));
                        return m17967public(obj);
                    }
                    ccatch = this.f15609for;
                } while (ccatch != Ccatch.f15622for);
            }
            return m17967public(this.f15608do);
        }
        throw new InterruptedException();
    }
}
