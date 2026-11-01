package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.jd0;
import android.support.v4.ji0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.util.concurrent.Ctransient;
import com.google.common.util.concurrent.ListenerCallQueue;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@li0
@o8
/* renamed from: com.google.common.util.concurrent.case, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ccase implements Service {

    /* renamed from: break, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15676break;

    /* renamed from: catch, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15677catch;

    /* renamed from: class, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15678class;

    /* renamed from: const, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15679const;

    /* renamed from: final, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15680final;

    /* renamed from: super, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15682super;

    /* renamed from: goto, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15681goto = new Cdo();

    /* renamed from: this, reason: not valid java name */
    private static final ListenerCallQueue.Event<Service.Cif> f15683this = new Cif();

    /* renamed from: do, reason: not valid java name */
    private final Ctransient f15685do = new Ctransient();

    /* renamed from: if, reason: not valid java name */
    private final Ctransient.Cdo f15688if = new Cgoto();

    /* renamed from: for, reason: not valid java name */
    private final Ctransient.Cdo f15687for = new Cthis();

    /* renamed from: new, reason: not valid java name */
    private final Ctransient.Cdo f15689new = new Celse();

    /* renamed from: try, reason: not valid java name */
    private final Ctransient.Cdo f15690try = new Cbreak();

    /* renamed from: case, reason: not valid java name */
    private final ListenerCallQueue<Service.Cif> f15684case = new ListenerCallQueue<>();

    /* renamed from: else, reason: not valid java name */
    private volatile Ccatch f15686else = new Ccatch(Service.Cfor.NEW);

    /* renamed from: com.google.common.util.concurrent.case$break, reason: invalid class name */
    public final class Cbreak extends Ctransient.Cdo {
        public Cbreak() {
            super(Ccase.this.f15685do);
        }

        @Override // com.google.common.util.concurrent.Ctransient.Cdo
        /* renamed from: do, reason: not valid java name */
        public boolean mo18091do() {
            return Ccase.this.state().isTerminal();
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$case, reason: invalid class name and collision with other inner class name */
    public static /* synthetic */ class C0146case {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f15692do;

        static {
            int[] iArr = new int[Service.Cfor.values().length];
            f15692do = iArr;
            try {
                iArr[Service.Cfor.NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15692do[Service.Cfor.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15692do[Service.Cfor.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15692do[Service.Cfor.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15692do[Service.Cfor.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15692do[Service.Cfor.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$catch, reason: invalid class name */
    public static final class Ccatch {

        /* renamed from: do, reason: not valid java name */
        public final Service.Cfor f15693do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public final Throwable f15694for;

        /* renamed from: if, reason: not valid java name */
        public final boolean f15695if;

        public Ccatch(Service.Cfor cfor) {
            this(cfor, false, null);
        }

        /* renamed from: do, reason: not valid java name */
        public Service.Cfor m18092do() {
            return (this.f15695if && this.f15693do == Service.Cfor.STARTING) ? Service.Cfor.STOPPING : this.f15693do;
        }

        /* renamed from: if, reason: not valid java name */
        public Throwable m18093if() {
            Service.Cfor cfor = this.f15693do;
            af1.K(cfor == Service.Cfor.FAILED, "failureCause() is only valid if the service has failed, service is %s", cfor);
            return this.f15694for;
        }

        public Ccatch(Service.Cfor cfor, boolean z, @b51 Throwable th) {
            af1.m225return(!z || cfor == Service.Cfor.STARTING, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", cfor);
            af1.m206default(!((cfor == Service.Cfor.FAILED) ^ (th != null)), "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", cfor, th);
            this.f15693do = cfor;
            this.f15695if = z;
            this.f15694for = th;
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$do, reason: invalid class name */
    public static class Cdo implements ListenerCallQueue.Event<Service.Cif> {
        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Service.Cif cif) {
            cif.mo18040for();
        }

        public String toString() {
            return "starting()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$else, reason: invalid class name */
    public final class Celse extends Ctransient.Cdo {
        public Celse() {
            super(Ccase.this.f15685do);
        }

        @Override // com.google.common.util.concurrent.Ctransient.Cdo
        /* renamed from: do */
        public boolean mo18091do() {
            return Ccase.this.state().compareTo(Service.Cfor.RUNNING) >= 0;
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$for, reason: invalid class name */
    public static class Cfor implements ListenerCallQueue.Event<Service.Cif> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Service.Cfor f15697do;

        public Cfor(Service.Cfor cfor) {
            this.f15697do = cfor;
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Service.Cif cif) {
            cif.mo18043try(this.f15697do);
        }

        public String toString() {
            return "terminated({from = " + this.f15697do + "})";
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$goto, reason: invalid class name */
    public final class Cgoto extends Ctransient.Cdo {
        public Cgoto() {
            super(Ccase.this.f15685do);
        }

        @Override // com.google.common.util.concurrent.Ctransient.Cdo
        /* renamed from: do */
        public boolean mo18091do() {
            return Ccase.this.state() == Service.Cfor.NEW;
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$if, reason: invalid class name */
    public static class Cif implements ListenerCallQueue.Event<Service.Cif> {
        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Service.Cif cif) {
            cif.mo18041if();
        }

        public String toString() {
            return "running()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$new, reason: invalid class name */
    public static class Cnew implements ListenerCallQueue.Event<Service.Cif> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Service.Cfor f15699do;

        public Cnew(Service.Cfor cfor) {
            this.f15699do = cfor;
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Service.Cif cif) {
            cif.mo18042new(this.f15699do);
        }

        public String toString() {
            return "stopping({from = " + this.f15699do + "})";
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$this, reason: invalid class name */
    public final class Cthis extends Ctransient.Cdo {
        public Cthis() {
            super(Ccase.this.f15685do);
        }

        @Override // com.google.common.util.concurrent.Ctransient.Cdo
        /* renamed from: do */
        public boolean mo18091do() {
            return Ccase.this.state().compareTo(Service.Cfor.RUNNING) <= 0;
        }
    }

    /* renamed from: com.google.common.util.concurrent.case$try, reason: invalid class name */
    public class Ctry implements ListenerCallQueue.Event<Service.Cif> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Service.Cfor f15701do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Throwable f15703if;

        public Ctry(Service.Cfor cfor, Throwable th) {
            this.f15701do = cfor;
            this.f15703if = th;
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Service.Cif cif) {
            cif.mo18039do(this.f15701do, this.f15703if);
        }

        public String toString() {
            return "failed({from = " + this.f15701do + ", cause = " + this.f15703if + "})";
        }
    }

    static {
        Service.Cfor cfor = Service.Cfor.STARTING;
        f15676break = m18082super(cfor);
        Service.Cfor cfor2 = Service.Cfor.RUNNING;
        f15677catch = m18082super(cfor2);
        f15678class = m18084throw(Service.Cfor.NEW);
        f15679const = m18084throw(cfor);
        f15680final = m18084throw(cfor2);
        f15682super = m18084throw(Service.Cfor.STOPPING);
    }

    /* renamed from: break, reason: not valid java name */
    private void m18075break(Service.Cfor cfor) {
        if (cfor == Service.Cfor.STARTING) {
            this.f15684case.m18035new(f15676break);
        } else {
            if (cfor != Service.Cfor.RUNNING) {
                throw new AssertionError();
            }
            this.f15684case.m18035new(f15677catch);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m18076catch(Service.Cfor cfor) {
        switch (C0146case.f15692do[cfor.ordinal()]) {
            case 1:
                this.f15684case.m18035new(f15678class);
                return;
            case 2:
                this.f15684case.m18035new(f15679const);
                return;
            case 3:
                this.f15684case.m18035new(f15680final);
                return;
            case 4:
                this.f15684case.m18035new(f15682super);
                return;
            case 5:
            case 6:
                throw new AssertionError();
            default:
                return;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m18078else(Service.Cfor cfor, Throwable th) {
        this.f15684case.m18035new(new Ctry(cfor, th));
    }

    /* renamed from: for, reason: not valid java name */
    private void m18079for() {
        if (this.f15685do.m18353package()) {
            return;
        }
        this.f15684case.m18033for();
    }

    /* renamed from: goto, reason: not valid java name */
    private void m18080goto() {
        this.f15684case.m18035new(f15683this);
    }

    @ji0("monitor")
    /* renamed from: if, reason: not valid java name */
    private void m18081if(Service.Cfor cfor) {
        Service.Cfor cforState = state();
        if (cforState != cfor) {
            if (cforState == Service.Cfor.FAILED) {
                throw new IllegalStateException("Expected the service " + this + " to be " + cfor + ", but the service has FAILED", failureCause());
            }
            throw new IllegalStateException("Expected the service " + this + " to be " + cfor + ", but was " + cforState);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static ListenerCallQueue.Event<Service.Cif> m18082super(Service.Cfor cfor) {
        return new Cnew(cfor);
    }

    /* renamed from: this, reason: not valid java name */
    private void m18083this() {
        this.f15684case.m18035new(f15681goto);
    }

    /* renamed from: throw, reason: not valid java name */
    private static ListenerCallQueue.Event<Service.Cif> m18084throw(Service.Cfor cfor) {
        return new Cfor(cfor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Cif cif, Executor executor) {
        this.f15684case.m18034if(cif, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f15685do.m18365while(this.f15689new);
        try {
            m18081if(Service.Cfor.RUNNING);
        } finally {
            this.f15685do.m18339abstract();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f15685do.m18365while(this.f15690try);
        try {
            m18081if(Service.Cfor.TERMINATED);
        } finally {
            this.f15685do.m18339abstract();
        }
    }

    @jd0
    /* renamed from: case, reason: not valid java name */
    public abstract void mo18085case();

    /* renamed from: class, reason: not valid java name */
    public final void m18086class(Throwable th) {
        af1.m205continue(th);
        this.f15685do.m18344else();
        try {
            Service.Cfor cforState = state();
            int i = C0146case.f15692do[cforState.ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3 || i == 4) {
                    this.f15686else = new Ccatch(Service.Cfor.FAILED, false, th);
                    m18078else(cforState, th);
                } else if (i != 5) {
                }
                return;
            }
            throw new IllegalStateException("Failed while in state:" + cforState, th);
        } finally {
            this.f15685do.m18339abstract();
            m18079for();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m18087const() {
        this.f15685do.m18344else();
        try {
            if (this.f15686else.f15693do == Service.Cfor.STARTING) {
                if (this.f15686else.f15695if) {
                    this.f15686else = new Ccatch(Service.Cfor.STOPPING);
                    mo18085case();
                } else {
                    this.f15686else = new Ccatch(Service.Cfor.RUNNING);
                    m18080goto();
                }
                return;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Cannot notifyStarted() when the service is " + this.f15686else.f15693do);
            m18086class(illegalStateException);
            throw illegalStateException;
        } finally {
            this.f15685do.m18339abstract();
            m18079for();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f15686else.m18093if();
    }

    /* renamed from: final, reason: not valid java name */
    public final void m18088final() {
        this.f15685do.m18344else();
        try {
            Service.Cfor cforState = state();
            switch (C0146case.f15692do[cforState.ordinal()]) {
                case 1:
                case 5:
                case 6:
                    throw new IllegalStateException("Cannot notifyStopped() when the service is " + cforState);
                case 2:
                case 3:
                case 4:
                    this.f15686else = new Ccatch(Service.Cfor.TERMINATED);
                    m18076catch(cforState);
                    break;
            }
        } finally {
            this.f15685do.m18339abstract();
            m18079for();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return state() == Service.Cfor.RUNNING;
    }

    @jd0
    /* renamed from: new, reason: not valid java name */
    public void m18089new() {
    }

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service startAsync() {
        if (!this.f15685do.m18361this(this.f15688if)) {
            throw new IllegalStateException("Service " + this + " has already been started");
        }
        try {
            this.f15686else = new Ccatch(Service.Cfor.STARTING);
            m18083this();
            mo18090try();
        } finally {
            try {
                return this;
            } finally {
            }
        }
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.Cfor state() {
        return this.f15686else.m18092do();
    }

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service stopAsync() {
        if (this.f15685do.m18361this(this.f15687for)) {
            try {
                Service.Cfor cforState = state();
                switch (C0146case.f15692do[cforState.ordinal()]) {
                    case 1:
                        this.f15686else = new Ccatch(Service.Cfor.TERMINATED);
                        m18076catch(Service.Cfor.NEW);
                        break;
                    case 2:
                        Service.Cfor cfor = Service.Cfor.STARTING;
                        this.f15686else = new Ccatch(cfor, true, null);
                        m18075break(cfor);
                        m18089new();
                        break;
                    case 3:
                        this.f15686else = new Ccatch(Service.Cfor.STOPPING);
                        m18075break(Service.Cfor.RUNNING);
                        mo18085case();
                        break;
                    case 4:
                    case 5:
                    case 6:
                        throw new AssertionError("isStoppable is incorrectly implemented, saw: " + cforState);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return this;
    }

    public String toString() {
        return getClass().getSimpleName() + " [" + state() + "]";
    }

    @jd0
    /* renamed from: try, reason: not valid java name */
    public abstract void mo18090try();

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        if (this.f15685do.m18350import(this.f15689new, j, timeUnit)) {
            try {
                m18081if(Service.Cfor.RUNNING);
            } finally {
                this.f15685do.m18339abstract();
            }
        } else {
            throw new TimeoutException("Timed out waiting for " + this + " to reach the RUNNING state.");
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        if (this.f15685do.m18350import(this.f15690try, j, timeUnit)) {
            try {
                m18081if(Service.Cfor.TERMINATED);
            } finally {
                this.f15685do.m18339abstract();
            }
        } else {
            throw new TimeoutException("Timed out waiting for " + this + " to reach a terminal state. Current state: " + state());
        }
    }
}
