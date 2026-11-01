package org.apache.commons.lang3.time;

/* renamed from: org.apache.commons.lang3.time.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {

    /* renamed from: case, reason: not valid java name */
    private static final long f28809case = 1000000;

    /* renamed from: for, reason: not valid java name */
    private long f28811for;

    /* renamed from: new, reason: not valid java name */
    private long f28813new;

    /* renamed from: try, reason: not valid java name */
    private long f28814try;

    /* renamed from: do, reason: not valid java name */
    private Cfor f28810do = Cfor.UNSTARTED;

    /* renamed from: if, reason: not valid java name */
    private Cif f28812if = Cif.UNSPLIT;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: org.apache.commons.lang3.time.case$for, reason: invalid class name */
    public static abstract class Cfor {
        public static final Cfor RUNNING;
        public static final Cfor STOPPED;
        public static final Cfor SUSPENDED;
        public static final Cfor UNSTARTED;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cfor[] f28815do;

        /* renamed from: org.apache.commons.lang3.time.case$for$do, reason: invalid class name */
        public enum Cdo extends Cfor {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStarted() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStopped() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isSuspended() {
                return false;
            }
        }

        /* renamed from: org.apache.commons.lang3.time.case$for$for, reason: invalid class name and collision with other inner class name */
        public enum C0393for extends Cfor {
            public C0393for(String str, int i) {
                super(str, i);
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStarted() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStopped() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isSuspended() {
                return false;
            }
        }

        /* renamed from: org.apache.commons.lang3.time.case$for$if, reason: invalid class name */
        public enum Cif extends Cfor {
            public Cif(String str, int i) {
                super(str, i);
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStarted() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStopped() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isSuspended() {
                return false;
            }
        }

        /* renamed from: org.apache.commons.lang3.time.case$for$new, reason: invalid class name */
        public enum Cnew extends Cfor {
            public Cnew(String str, int i) {
                super(str, i);
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStarted() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isStopped() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.Ccase.Cfor
            public boolean isSuspended() {
                return true;
            }
        }

        static {
            Cdo cdo = new Cdo("UNSTARTED", 0);
            UNSTARTED = cdo;
            Cif cif = new Cif("RUNNING", 1);
            RUNNING = cif;
            C0393for c0393for = new C0393for("STOPPED", 2);
            STOPPED = c0393for;
            Cnew cnew = new Cnew("SUSPENDED", 3);
            SUSPENDED = cnew;
            f28815do = new Cfor[]{cdo, cif, c0393for, cnew};
        }

        private Cfor(String str, int i) {
        }

        public static Cfor valueOf(String str) {
            return (Cfor) Enum.valueOf(Cfor.class, str);
        }

        public static Cfor[] values() {
            return (Cfor[]) f28815do.clone();
        }

        public abstract boolean isStarted();

        public abstract boolean isStopped();

        public abstract boolean isSuspended();
    }

    /* renamed from: org.apache.commons.lang3.time.case$if, reason: invalid class name */
    public enum Cif {
        SPLIT,
        UNSPLIT
    }

    /* renamed from: break, reason: not valid java name */
    public void m32611break() {
        if (this.f28810do != Cfor.SUSPENDED) {
            throw new IllegalStateException("Stopwatch must be suspended to resume. ");
        }
        this.f28811for += System.nanoTime() - this.f28814try;
        this.f28810do = Cfor.RUNNING;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m32612case() {
        return this.f28810do.isStarted();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m32613catch() {
        if (this.f28810do != Cfor.RUNNING) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        this.f28814try = System.nanoTime();
        this.f28812if = Cif.SPLIT;
    }

    /* renamed from: class, reason: not valid java name */
    public void m32614class() {
        Cfor cfor = this.f28810do;
        if (cfor == Cfor.STOPPED) {
            throw new IllegalStateException("Stopwatch must be reset before being restarted. ");
        }
        if (cfor != Cfor.UNSTARTED) {
            throw new IllegalStateException("Stopwatch already started. ");
        }
        this.f28811for = System.nanoTime();
        this.f28813new = System.currentTimeMillis();
        this.f28810do = Cfor.RUNNING;
    }

    /* renamed from: const, reason: not valid java name */
    public void m32615const() {
        Cfor cfor = this.f28810do;
        Cfor cfor2 = Cfor.RUNNING;
        if (cfor != cfor2 && cfor != Cfor.SUSPENDED) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        if (cfor == cfor2) {
            this.f28814try = System.nanoTime();
        }
        this.f28810do = Cfor.STOPPED;
    }

    /* renamed from: do, reason: not valid java name */
    public long m32616do() {
        long jNanoTime;
        long j;
        Cfor cfor = this.f28810do;
        if (cfor == Cfor.STOPPED || cfor == Cfor.SUSPENDED) {
            jNanoTime = this.f28814try;
            j = this.f28811for;
        } else {
            if (cfor == Cfor.UNSTARTED) {
                return 0L;
            }
            if (cfor != Cfor.RUNNING) {
                throw new RuntimeException("Illegal running state has occurred.");
            }
            jNanoTime = System.nanoTime();
            j = this.f28811for;
        }
        return jNanoTime - j;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m32617else() {
        return this.f28810do.isStopped();
    }

    /* renamed from: final, reason: not valid java name */
    public void m32618final() {
        if (this.f28810do != Cfor.RUNNING) {
            throw new IllegalStateException("Stopwatch must be running to suspend. ");
        }
        this.f28814try = System.nanoTime();
        this.f28810do = Cfor.SUSPENDED;
    }

    /* renamed from: for, reason: not valid java name */
    public long m32619for() {
        return m32621if() / f28809case;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m32620goto() {
        return this.f28810do.isSuspended();
    }

    /* renamed from: if, reason: not valid java name */
    public long m32621if() {
        if (this.f28812if == Cif.SPLIT) {
            return this.f28814try - this.f28811for;
        }
        throw new IllegalStateException("Stopwatch must be split to get the split time. ");
    }

    /* renamed from: new, reason: not valid java name */
    public long m32622new() {
        if (this.f28810do != Cfor.UNSTARTED) {
            return this.f28813new;
        }
        throw new IllegalStateException("Stopwatch has not been started");
    }

    /* renamed from: super, reason: not valid java name */
    public String m32623super() {
        return org.apache.commons.lang3.time.Cif.m32677new(m32619for());
    }

    /* renamed from: this, reason: not valid java name */
    public void m32624this() {
        this.f28810do = Cfor.UNSTARTED;
        this.f28812if = Cif.UNSPLIT;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m32625throw() {
        if (this.f28812if != Cif.SPLIT) {
            throw new IllegalStateException("Stopwatch has not been split. ");
        }
        this.f28812if = Cif.UNSPLIT;
    }

    public String toString() {
        return org.apache.commons.lang3.time.Cif.m32677new(m32626try());
    }

    /* renamed from: try, reason: not valid java name */
    public long m32626try() {
        return m32616do() / f28809case;
    }
}
