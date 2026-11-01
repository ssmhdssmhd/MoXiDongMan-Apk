package org.apache.commons.lang3.concurrent;

import java.lang.Thread;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.lang3.builder.Builder;

/* renamed from: org.apache.commons.lang3.concurrent.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements ThreadFactory {

    /* renamed from: case, reason: not valid java name */
    private final Boolean f28684case;

    /* renamed from: do, reason: not valid java name */
    private final AtomicLong f28685do;

    /* renamed from: for, reason: not valid java name */
    private final Thread.UncaughtExceptionHandler f28686for;

    /* renamed from: if, reason: not valid java name */
    private final ThreadFactory f28687if;

    /* renamed from: new, reason: not valid java name */
    private final String f28688new;

    /* renamed from: try, reason: not valid java name */
    private final Integer f28689try;

    /* renamed from: org.apache.commons.lang3.concurrent.new$if, reason: invalid class name */
    public static class Cif implements Builder<Cnew> {

        /* renamed from: do, reason: not valid java name */
        private ThreadFactory f28690do;

        /* renamed from: for, reason: not valid java name */
        private String f28691for;

        /* renamed from: if, reason: not valid java name */
        private Thread.UncaughtExceptionHandler f28692if;

        /* renamed from: new, reason: not valid java name */
        private Integer f28693new;

        /* renamed from: try, reason: not valid java name */
        private Boolean f28694try;

        /* renamed from: break, reason: not valid java name */
        public void m32329break() {
            this.f28690do = null;
            this.f28692if = null;
            this.f28691for = null;
            this.f28693new = null;
            this.f28694try = null;
        }

        @Override // org.apache.commons.lang3.builder.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cnew build() {
            Cnew cnew = new Cnew(this);
            m32329break();
            return cnew;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m32331catch(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            Objects.requireNonNull(uncaughtExceptionHandler, "Uncaught exception handler must not be null!");
            this.f28692if = uncaughtExceptionHandler;
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m32332class(ThreadFactory threadFactory) {
            Objects.requireNonNull(threadFactory, "Wrapped ThreadFactory must not be null!");
            this.f28690do = threadFactory;
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m32333else(boolean z) {
            this.f28694try = Boolean.valueOf(z);
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m32334goto(String str) {
            Objects.requireNonNull(str, "Naming pattern must not be null!");
            this.f28691for = str;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m32335this(int i) {
            this.f28693new = Integer.valueOf(i);
            return this;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m32317else(Thread thread) {
        if (m32321if() != null) {
            thread.setName(String.format(m32321if(), Long.valueOf(this.f28685do.incrementAndGet())));
        }
        if (m32323try() != null) {
            thread.setUncaughtExceptionHandler(m32323try());
        }
        if (m32320for() != null) {
            thread.setPriority(m32320for().intValue());
        }
        if (m32319do() != null) {
            thread.setDaemon(m32319do().booleanValue());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final ThreadFactory m32318case() {
        return this.f28687if;
    }

    /* renamed from: do, reason: not valid java name */
    public final Boolean m32319do() {
        return this.f28684case;
    }

    /* renamed from: for, reason: not valid java name */
    public final Integer m32320for() {
        return this.f28689try;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m32321if() {
        return this.f28688new;
    }

    /* renamed from: new, reason: not valid java name */
    public long m32322new() {
        return this.f28685do.get();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = m32318case().newThread(runnable);
        m32317else(threadNewThread);
        return threadNewThread;
    }

    /* renamed from: try, reason: not valid java name */
    public final Thread.UncaughtExceptionHandler m32323try() {
        return this.f28686for;
    }

    private Cnew(Cif cif) {
        if (cif.f28690do == null) {
            this.f28687if = Executors.defaultThreadFactory();
        } else {
            this.f28687if = cif.f28690do;
        }
        this.f28688new = cif.f28691for;
        this.f28689try = cif.f28693new;
        this.f28684case = cif.f28694try;
        this.f28686for = cif.f28692if;
        this.f28685do = new AtomicLong();
    }
}
