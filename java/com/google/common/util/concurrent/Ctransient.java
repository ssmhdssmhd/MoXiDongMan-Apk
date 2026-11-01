package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ji0;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.primitives.Cbreak;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@li0
@o8
/* renamed from: com.google.common.util.concurrent.transient, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctransient {

    /* renamed from: do, reason: not valid java name */
    private final boolean f15904do;

    /* renamed from: for, reason: not valid java name */
    @ji0("lock")
    private Cdo f15905for;

    /* renamed from: if, reason: not valid java name */
    private final ReentrantLock f15906if;

    @o8
    /* renamed from: com.google.common.util.concurrent.transient$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: do, reason: not valid java name */
        @hf2
        public final Ctransient f15907do;

        /* renamed from: for, reason: not valid java name */
        @ji0("monitor.lock")
        public int f15908for = 0;

        /* renamed from: if, reason: not valid java name */
        public final Condition f15909if;

        /* renamed from: new, reason: not valid java name */
        @ji0("monitor.lock")
        @b51
        public Cdo f15910new;

        public Cdo(Ctransient ctransient) {
            this.f15907do = (Ctransient) af1.m227strictfp(ctransient, "monitor");
            this.f15909if = ctransient.f15906if.newCondition();
        }

        /* renamed from: do */
        public abstract boolean mo18091do();
    }

    public Ctransient() {
        this(false);
    }

    @ji0("lock")
    /* renamed from: case, reason: not valid java name */
    private void m18327case(Cdo cdo) {
        int i = cdo.f15908for - 1;
        cdo.f15908for = i;
        if (i == 0) {
            Cdo cdo2 = this.f15905for;
            Cdo cdo3 = null;
            while (cdo2 != cdo) {
                cdo3 = cdo2;
                cdo2 = cdo2.f15910new;
            }
            if (cdo3 == null) {
                this.f15905for = cdo2.f15910new;
            } else {
                cdo3.f15910new = cdo2.f15910new;
            }
            cdo2.f15910new = null;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    private static long m18328continue(long j, long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 - (System.nanoTime() - j);
    }

    /* renamed from: default, reason: not valid java name */
    private static long m18329default(long j) {
        if (j <= 0) {
            return 0L;
        }
        long jNanoTime = System.nanoTime();
        if (jNanoTime == 0) {
            return 1L;
        }
        return jNanoTime;
    }

    @ji0("lock")
    /* renamed from: for, reason: not valid java name */
    private boolean m18331for(Cdo cdo, long j, boolean z) throws InterruptedException {
        boolean z2 = true;
        while (j > 0) {
            if (z2) {
                if (z) {
                    try {
                        m18338volatile();
                    } finally {
                        if (!z2) {
                            m18327case(cdo);
                        }
                    }
                }
                m18337try(cdo);
                z2 = false;
            }
            j = cdo.f15909if.awaitNanos(j);
            if (cdo.mo18091do()) {
                if (!z2) {
                    m18327case(cdo);
                }
                return true;
            }
        }
        return false;
    }

    @ji0("lock")
    /* renamed from: if, reason: not valid java name */
    private void m18332if(Cdo cdo, boolean z) throws InterruptedException {
        if (z) {
            m18338volatile();
        }
        m18337try(cdo);
        do {
            try {
                cdo.f15909if.await();
            } finally {
                m18327case(cdo);
            }
        } while (!cdo.mo18091do());
    }

    /* renamed from: interface, reason: not valid java name */
    private static long m18333interface(long j, TimeUnit timeUnit) {
        return Cbreak.m17467case(timeUnit.toNanos(j), 0L, 6917529027641081853L);
    }

    @ji0("lock")
    /* renamed from: new, reason: not valid java name */
    private void m18334new(Cdo cdo, boolean z) {
        if (z) {
            m18338volatile();
        }
        m18337try(cdo);
        do {
            try {
                cdo.f15909if.awaitUninterruptibly();
            } finally {
                m18327case(cdo);
            }
        } while (!cdo.mo18091do());
    }

    @ji0("lock")
    /* renamed from: private, reason: not valid java name */
    private boolean m18335private(Cdo cdo) {
        try {
            return cdo.mo18091do();
        } catch (Throwable th) {
            m18336strictfp();
            throw th;
        }
    }

    @ji0("lock")
    /* renamed from: strictfp, reason: not valid java name */
    private void m18336strictfp() {
        for (Cdo cdo = this.f15905for; cdo != null; cdo = cdo.f15910new) {
            cdo.f15909if.signalAll();
        }
    }

    @ji0("lock")
    /* renamed from: try, reason: not valid java name */
    private void m18337try(Cdo cdo) {
        int i = cdo.f15908for;
        cdo.f15908for = i + 1;
        if (i == 0) {
            cdo.f15910new = this.f15905for;
            this.f15905for = cdo;
        }
    }

    @ji0("lock")
    /* renamed from: volatile, reason: not valid java name */
    private void m18338volatile() {
        for (Cdo cdo = this.f15905for; cdo != null; cdo = cdo.f15910new) {
            if (m18335private(cdo)) {
                cdo.f15909if.signal();
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(Cdo cdo, long j, TimeUnit timeUnit) throws Throwable {
        long jM18333interface = m18333interface(j, timeUnit);
        boolean z = true;
        if (!(cdo.f15907do == this) || !this.f15906if.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (cdo.mo18091do()) {
            return true;
        }
        long jM18329default = m18329default(jM18333interface);
        boolean zInterrupted = Thread.interrupted();
        long jM18328continue = jM18333interface;
        boolean z2 = true;
        while (true) {
            try {
                try {
                    boolean zM18331for = m18331for(cdo, jM18328continue, z2);
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    return zM18331for;
                } catch (Throwable th) {
                    th = th;
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (InterruptedException unused) {
                if (cdo.mo18091do()) {
                    Thread.currentThread().interrupt();
                    return true;
                }
                jM18328continue = m18328continue(jM18329default, jM18333interface);
                zInterrupted = true;
                z2 = false;
            } catch (Throwable th2) {
                th = th2;
                z = zInterrupted;
                if (z) {
                }
                throw th;
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m18339abstract() {
        ReentrantLock reentrantLock = this.f15906if;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                m18338volatile();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m18340break(Cdo cdo, long j, TimeUnit timeUnit) {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        if (!m18348goto(j, timeUnit)) {
            return false;
        }
        try {
            boolean zMo18091do = cdo.mo18091do();
            if (!zMo18091do) {
            }
            return zMo18091do;
        } finally {
            this.f15906if.unlock();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m18341catch(Cdo cdo) throws InterruptedException {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        reentrantLock.lockInterruptibly();
        try {
            boolean zMo18091do = cdo.mo18091do();
            if (!zMo18091do) {
            }
            return zMo18091do;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m18342class(Cdo cdo, long j, TimeUnit timeUnit) throws InterruptedException {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        if (!reentrantLock.tryLock(j, timeUnit)) {
            return false;
        }
        try {
            boolean zMo18091do = cdo.mo18091do();
            if (!zMo18091do) {
            }
            return zMo18091do;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m18343const() throws InterruptedException {
        this.f15906if.lockInterruptibly();
    }

    /* renamed from: else, reason: not valid java name */
    public void m18344else() {
        this.f15906if.lock();
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m18345extends() {
        return this.f15904do;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m18346final(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f15906if.tryLock(j, timeUnit);
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m18347finally() {
        return this.f15906if.isLocked();
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m18348goto(long j, TimeUnit timeUnit) throws Throwable {
        boolean zTryLock;
        long jM18333interface = m18333interface(j, timeUnit);
        ReentrantLock reentrantLock = this.f15906if;
        boolean z = true;
        if (!this.f15904do && reentrantLock.tryLock()) {
            return true;
        }
        boolean zInterrupted = Thread.interrupted();
        try {
            long jNanoTime = System.nanoTime();
            long jM18328continue = jM18333interface;
            while (true) {
                try {
                    try {
                        zTryLock = reentrantLock.tryLock(jM18328continue, TimeUnit.NANOSECONDS);
                        break;
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    jM18328continue = m18328continue(jNanoTime, jM18333interface);
                    zInterrupted = true;
                }
            }
            if (zInterrupted) {
                Thread.currentThread().interrupt();
            }
            return zTryLock;
        } catch (Throwable th2) {
            th = th2;
            z = zInterrupted;
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public void m18349implements(Cdo cdo) throws InterruptedException {
        if (!(cdo.f15907do == this) || !this.f15906if.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (cdo.mo18091do()) {
            return;
        }
        m18332if(cdo, true);
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m18350import(Cdo cdo, long j, TimeUnit timeUnit) throws Throwable {
        long jM18329default;
        long jM18328continue;
        long jM18333interface = m18333interface(j, timeUnit);
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        boolean zInterrupted = Thread.interrupted();
        boolean zM18331for = true;
        try {
            if (this.f15904do || !reentrantLock.tryLock()) {
                jM18329default = m18329default(jM18333interface);
                long jM18328continue2 = jM18333interface;
                while (true) {
                    try {
                        try {
                            break;
                        } catch (Throwable th) {
                            th = th;
                            zInterrupted = true;
                            if (zInterrupted) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    } catch (InterruptedException unused) {
                        jM18328continue2 = m18328continue(jM18329default, jM18333interface);
                        zInterrupted = true;
                    }
                }
                if (!reentrantLock.tryLock(jM18328continue2, TimeUnit.NANOSECONDS)) {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    return false;
                }
            } else {
                jM18329default = 0;
            }
            while (!cdo.mo18091do()) {
                try {
                    if (jM18329default == 0) {
                        jM18329default = m18329default(jM18333interface);
                        jM18328continue = jM18333interface;
                    } else {
                        jM18328continue = m18328continue(jM18329default, jM18333interface);
                    }
                    zM18331for = m18331for(cdo, jM18328continue, zIsHeldByCurrentThread);
                } catch (InterruptedException unused2) {
                    zIsHeldByCurrentThread = false;
                    zInterrupted = true;
                } catch (Throwable th2) {
                    reentrantLock.unlock();
                    throw th2;
                }
            }
            if (!zM18331for) {
                reentrantLock.unlock();
            }
            if (zInterrupted) {
                Thread.currentThread().interrupt();
            }
            return zM18331for;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public boolean m18351instanceof(Cdo cdo, long j, TimeUnit timeUnit) throws InterruptedException {
        long jM18333interface = m18333interface(j, timeUnit);
        if (!(cdo.f15907do == this) || !this.f15906if.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (cdo.mo18091do()) {
            return true;
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return m18331for(cdo, jM18333interface, true);
    }

    /* renamed from: native, reason: not valid java name */
    public int m18352native() {
        return this.f15906if.getHoldCount();
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m18353package() {
        return this.f15906if.isHeldByCurrentThread();
    }

    /* renamed from: protected, reason: not valid java name */
    public boolean m18354protected() {
        return this.f15906if.tryLock();
    }

    /* renamed from: public, reason: not valid java name */
    public int m18355public() {
        return this.f15906if.getQueueLength();
    }

    /* renamed from: return, reason: not valid java name */
    public int m18356return(Cdo cdo) {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        this.f15906if.lock();
        try {
            return cdo.f15908for;
        } finally {
            this.f15906if.unlock();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m18357static(Thread thread) {
        return this.f15906if.hasQueuedThread(thread);
    }

    /* renamed from: super, reason: not valid java name */
    public void m18358super(Cdo cdo) throws InterruptedException {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lockInterruptibly();
        try {
            if (cdo.mo18091do()) {
                return;
            }
            m18332if(cdo, zIsHeldByCurrentThread);
        } catch (Throwable th) {
            m18339abstract();
            throw th;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m18359switch() {
        return this.f15906if.hasQueuedThreads();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m18360synchronized(Cdo cdo) {
        if (!(cdo.f15907do == this) || !this.f15906if.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (cdo.mo18091do()) {
            return;
        }
        m18334new(cdo, true);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m18361this(Cdo cdo) {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        reentrantLock.lock();
        try {
            boolean zMo18091do = cdo.mo18091do();
            if (!zMo18091do) {
            }
            return zMo18091do;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0049  */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m18362throw(Cdo cdo, long j, TimeUnit timeUnit) throws InterruptedException {
        long jM18329default;
        long jM18333interface = m18333interface(j, timeUnit);
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        boolean z = false;
        if (this.f15904do) {
            jM18329default = m18329default(jM18333interface);
            if (!reentrantLock.tryLock(j, timeUnit)) {
                return false;
            }
        } else {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            if (reentrantLock.tryLock()) {
                jM18329default = 0;
            }
        }
        try {
            if (cdo.mo18091do()) {
                z = true;
            } else {
                if (jM18329default != 0) {
                    jM18333interface = m18328continue(jM18329default, jM18333interface);
                }
                if (m18331for(cdo, jM18333interface, zIsHeldByCurrentThread)) {
                }
            }
            if (!z) {
            }
            return z;
        } catch (Throwable th) {
            if (!zIsHeldByCurrentThread) {
                try {
                    m18338volatile();
                } finally {
                    reentrantLock.unlock();
                }
            }
            throw th;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m18363throws(Cdo cdo) {
        return m18356return(cdo) > 0;
    }

    /* renamed from: transient, reason: not valid java name */
    public boolean m18364transient(Cdo cdo) {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean zMo18091do = cdo.mo18091do();
            if (!zMo18091do) {
            }
            return zMo18091do;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m18365while(Cdo cdo) {
        if (cdo.f15907do != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f15906if;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lock();
        try {
            if (cdo.mo18091do()) {
                return;
            }
            m18334new(cdo, zIsHeldByCurrentThread);
        } catch (Throwable th) {
            m18339abstract();
            throw th;
        }
    }

    public Ctransient(boolean z) {
        this.f15905for = null;
        this.f15904do = z;
        this.f15906if = new ReentrantLock(z);
    }
}
