package org.chromium.net.impl;

import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.yc2;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.net.Cpublic;
import org.chromium.net.impl.JavaUrlRequestUtils;

/* renamed from: org.chromium.net.impl.else, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Celse extends yc2 {

    /* renamed from: goto, reason: not valid java name */
    public static final int f33636goto = 8192;

    /* renamed from: case, reason: not valid java name */
    private long f33637case;

    /* renamed from: do, reason: not valid java name */
    private final AtomicInteger f33638do = new AtomicInteger(3);

    /* renamed from: else, reason: not valid java name */
    private long f33639else;

    /* renamed from: for, reason: not valid java name */
    private final Executor f33640for;

    /* renamed from: if, reason: not valid java name */
    private final Executor f33641if;

    /* renamed from: new, reason: not valid java name */
    private final Cpublic f33642new;

    /* renamed from: try, reason: not valid java name */
    private ByteBuffer f33643try;

    /* renamed from: org.chromium.net.impl.else$do, reason: invalid class name */
    public class Cdo implements Executor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Executor f33644do;

        public Cdo(Executor executor) {
            this.f33644do = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f33644do.execute(runnable);
            } catch (RejectedExecutionException e) {
                Celse.this.m37662static(e);
            }
        }
    }

    /* renamed from: org.chromium.net.impl.else$for, reason: invalid class name */
    public class Cfor implements JavaUrlRequestUtils.CheckedRunnable {

        /* renamed from: org.chromium.net.impl.else$for$do, reason: invalid class name */
        public class Cdo implements JavaUrlRequestUtils.CheckedRunnable {
            public Cdo() {
            }

            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public void run() throws Exception {
                Cpublic cpublic = Celse.this.f33642new;
                Celse celse = Celse.this;
                cpublic.mo37421if(celse, celse.f33643try);
            }
        }

        public Cfor() {
        }

        @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
        public void run() throws Exception {
            Celse.this.m37659native();
            Celse.this.f33638do.set(0);
            Celse.this.m37654super(new Cdo());
        }
    }

    /* renamed from: org.chromium.net.impl.else$if, reason: invalid class name */
    public class Cif implements JavaUrlRequestUtils.CheckedRunnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f33648do;

        /* renamed from: org.chromium.net.impl.else$if$do, reason: invalid class name */
        public class Cdo implements JavaUrlRequestUtils.CheckedRunnable {
            public Cdo() {
            }

            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public void run() throws Exception {
                Cpublic cpublic = Celse.this.f33642new;
                Celse celse = Celse.this;
                cpublic.mo37421if(celse, celse.f33643try);
            }
        }

        public Cif(boolean z) {
            this.f33648do = z;
        }

        @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
        public void run() throws Exception {
            Celse.this.f33643try.flip();
            if (Celse.this.f33637case != -1 && Celse.this.f33637case - Celse.this.f33639else < Celse.this.f33643try.remaining()) {
                Celse.this.m37662static(new IllegalArgumentException(String.format(Locale.getDefault(), "Read upload data length %d exceeds expected length %d", Long.valueOf(Celse.this.f33639else + Celse.this.f33643try.remaining()), Long.valueOf(Celse.this.f33637case))));
                return;
            }
            Celse.m37646break(Celse.this, r0.m37661return(r0.f33643try));
            if (Celse.this.f33639else < Celse.this.f33637case || (Celse.this.f33637case == -1 && !this.f33648do)) {
                Celse.this.f33643try.clear();
                Celse.this.f33638do.set(0);
                Celse.this.m37654super(new Cdo());
            } else if (Celse.this.f33637case == -1) {
                Celse.this.m37664throw();
            } else if (Celse.this.f33637case == Celse.this.f33639else) {
                Celse.this.m37664throw();
            } else {
                Celse.this.m37662static(new IllegalArgumentException(String.format(Locale.getDefault(), "Read upload data length %d exceeds expected length %d", Long.valueOf(Celse.this.f33639else), Long.valueOf(Celse.this.f33637case))));
            }
        }
    }

    /* renamed from: org.chromium.net.impl.else$new, reason: invalid class name */
    public class Cnew implements JavaUrlRequestUtils.CheckedRunnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f33651do;

        public Cnew(boolean z) {
            this.f33651do = z;
        }

        @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
        public void run() throws Exception {
            Celse celse = Celse.this;
            celse.f33637case = celse.f33642new.mo37419do();
            if (Celse.this.f33637case == 0) {
                Celse.this.m37664throw();
                return;
            }
            if (Celse.this.f33637case <= 0 || Celse.this.f33637case >= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                Celse.this.f33643try = ByteBuffer.allocateDirect(8192);
            } else {
                Celse celse2 = Celse.this;
                celse2.f33643try = ByteBuffer.allocateDirect(((int) celse2.f33637case) + 1);
            }
            Celse celse3 = Celse.this;
            celse3.m37660public(celse3.f33637case);
            if (this.f33651do) {
                Celse.this.m37656throws();
            } else {
                Celse.this.f33638do.set(1);
                Celse.this.f33642new.mo37420for(Celse.this);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.net.impl.else$try, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Ctry {
        public static final int Z6 = 0;
        public static final int a7 = 1;
        public static final int b7 = 2;
        public static final int c7 = 3;
    }

    public Celse(Executor executor, Executor executor2, Cpublic cpublic) {
        this.f33641if = new Cdo(executor);
        this.f33640for = executor2;
        this.f33642new = cpublic;
    }

    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ long m37646break(Celse celse, long j) {
        long j2 = celse.f33639else + j;
        celse.f33639else = j2;
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public void m37654super(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            this.f33641if.execute(m37658import(checkedRunnable));
        } catch (RejectedExecutionException e) {
            m37662static(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public void m37656throws() {
        this.f33640for.execute(m37665while(new Cfor()));
    }

    @Override // android.support.v4.yc2
    /* renamed from: do */
    public void mo9806do(Exception exc) {
        m37662static(exc);
    }

    @Override // android.support.v4.yc2
    /* renamed from: for */
    public void mo9807for(Exception exc) {
        m37662static(exc);
    }

    @Override // android.support.v4.yc2
    /* renamed from: if */
    public void mo9808if(boolean z) {
        if (this.f33638do.compareAndSet(0, 2)) {
            this.f33640for.execute(m37665while(new Cif(z)));
            return;
        }
        throw new IllegalStateException("onReadSucceeded() called when not awaiting a read result; in state: " + this.f33638do.get());
    }

    /* renamed from: import, reason: not valid java name */
    public abstract Runnable m37658import(JavaUrlRequestUtils.CheckedRunnable checkedRunnable);

    /* renamed from: native, reason: not valid java name */
    public abstract void m37659native() throws IOException;

    @Override // android.support.v4.yc2
    /* renamed from: new */
    public void mo9809new() {
        if (this.f33638do.compareAndSet(1, 2)) {
            m37656throws();
            return;
        }
        throw new IllegalStateException("onRewindSucceeded() called when not awaiting a rewind; in state: " + this.f33638do.get());
    }

    /* renamed from: public, reason: not valid java name */
    public abstract void m37660public(long j);

    /* renamed from: return, reason: not valid java name */
    public abstract int m37661return(ByteBuffer byteBuffer) throws IOException;

    /* renamed from: static, reason: not valid java name */
    public abstract void m37662static(Throwable th);

    /* renamed from: switch, reason: not valid java name */
    public void m37663switch(boolean z) {
        m37654super(new Cnew(z));
    }

    /* renamed from: throw, reason: not valid java name */
    public abstract void m37664throw() throws IOException;

    /* renamed from: while, reason: not valid java name */
    public abstract Runnable m37665while(JavaUrlRequestUtils.CheckedRunnable checkedRunnable);
}
