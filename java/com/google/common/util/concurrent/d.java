package com.google.common.util.concurrent;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.ji0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cpublic;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrows;
import com.google.common.base.Function;
import com.google.common.collect.Cextends;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.a2;
import com.google.common.collect.b1;
import com.google.common.collect.b2;
import com.google.common.collect.g1;
import com.google.common.collect.h1;
import com.google.common.collect.k2;
import com.google.common.collect.r0;
import com.google.common.collect.v0;
import com.google.common.collect.x0;
import com.google.common.collect.x1;
import com.google.common.util.concurrent.Ctransient;
import com.google.common.util.concurrent.ListenerCallQueue;
import com.google.common.util.concurrent.Service;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
@o8
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: for, reason: not valid java name */
    private static final Logger f15714for = Logger.getLogger(d.class.getName());

    /* renamed from: new, reason: not valid java name */
    private static final ListenerCallQueue.Event<Cnew> f15715new = new Cdo();

    /* renamed from: try, reason: not valid java name */
    private static final ListenerCallQueue.Event<Cnew> f15716try = new Cif();

    /* renamed from: do, reason: not valid java name */
    private final Celse f15717do;

    /* renamed from: if, reason: not valid java name */
    private final v0<Service> f15718if;

    /* renamed from: com.google.common.util.concurrent.d$case, reason: invalid class name */
    public static final class Ccase extends Service.Cif {

        /* renamed from: do, reason: not valid java name */
        public final Service f15719do;

        /* renamed from: if, reason: not valid java name */
        public final WeakReference<Celse> f15720if;

        public Ccase(Service service, WeakReference<Celse> weakReference) {
            this.f15719do = service;
            this.f15720if = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: do */
        public void mo18039do(Service.Cfor cfor, Throwable th) {
            Celse celse = this.f15720if.get();
            if (celse != null) {
                if (!(this.f15719do instanceof Ctry)) {
                    d.f15714for.log(Level.SEVERE, "Service " + this.f15719do + " has failed in the " + cfor + " state.", th);
                }
                celse.m18129final(this.f15719do, cfor, Service.Cfor.FAILED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: for */
        public void mo18040for() {
            Celse celse = this.f15720if.get();
            if (celse != null) {
                celse.m18129final(this.f15719do, Service.Cfor.NEW, Service.Cfor.STARTING);
                if (this.f15719do instanceof Ctry) {
                    return;
                }
                d.f15714for.log(Level.FINE, "Starting {0}.", this.f15719do);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: if */
        public void mo18041if() {
            Celse celse = this.f15720if.get();
            if (celse != null) {
                celse.m18129final(this.f15719do, Service.Cfor.STARTING, Service.Cfor.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: new */
        public void mo18042new(Service.Cfor cfor) {
            Celse celse = this.f15720if.get();
            if (celse != null) {
                celse.m18129final(this.f15719do, cfor, Service.Cfor.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Cif
        /* renamed from: try */
        public void mo18043try(Service.Cfor cfor) {
            Celse celse = this.f15720if.get();
            if (celse != null) {
                if (!(this.f15719do instanceof Ctry)) {
                    d.f15714for.log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{this.f15719do, cfor});
                }
                celse.m18129final(this.f15719do, cfor, Service.Cfor.TERMINATED);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.d$do, reason: invalid class name */
    public static class Cdo implements ListenerCallQueue.Event<Cnew> {
        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Cnew cnew) {
            cnew.m18142if();
        }

        public String toString() {
            return "healthy()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.d$else, reason: invalid class name */
    public static final class Celse {

        /* renamed from: break, reason: not valid java name */
        public final ListenerCallQueue<Cnew> f15721break;

        /* renamed from: case, reason: not valid java name */
        @ji0("monitor")
        public boolean f15722case;

        /* renamed from: do, reason: not valid java name */
        public final Ctransient f15723do = new Ctransient();

        /* renamed from: else, reason: not valid java name */
        public final int f15724else;

        /* renamed from: for, reason: not valid java name */
        @ji0("monitor")
        public final Multiset<Service.Cfor> f15725for;

        /* renamed from: goto, reason: not valid java name */
        public final Ctransient.Cdo f15726goto;

        /* renamed from: if, reason: not valid java name */
        @ji0("monitor")
        public final SetMultimap<Service.Cfor, Service> f15727if;

        /* renamed from: new, reason: not valid java name */
        @ji0("monitor")
        public final Map<Service, Cthrows> f15728new;

        /* renamed from: this, reason: not valid java name */
        public final Ctransient.Cdo f15729this;

        /* renamed from: try, reason: not valid java name */
        @ji0("monitor")
        public boolean f15730try;

        /* renamed from: com.google.common.util.concurrent.d$else$do, reason: invalid class name */
        public class Cdo implements Function<Map.Entry<Service, Long>, Long> {
            public Cdo() {
            }

            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Long apply(Map.Entry<Service, Long> entry) {
                return entry.getValue();
            }
        }

        /* renamed from: com.google.common.util.concurrent.d$else$for, reason: invalid class name */
        public final class Cfor extends Ctransient.Cdo {
            public Cfor() {
                super(Celse.this.f15723do);
            }

            @Override // com.google.common.util.concurrent.Ctransient.Cdo
            @ji0("ServiceManagerState.this.monitor")
            /* renamed from: do */
            public boolean mo18091do() {
                int iCount = Celse.this.f15725for.count(Service.Cfor.RUNNING);
                Celse celse = Celse.this;
                return iCount == celse.f15724else || celse.f15725for.contains(Service.Cfor.STOPPING) || Celse.this.f15725for.contains(Service.Cfor.TERMINATED) || Celse.this.f15725for.contains(Service.Cfor.FAILED);
            }
        }

        /* renamed from: com.google.common.util.concurrent.d$else$if, reason: invalid class name */
        public class Cif implements ListenerCallQueue.Event<Cnew> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Service f15733do;

            public Cif(Service service) {
                this.f15733do = service;
            }

            @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void call(Cnew cnew) {
                cnew.m18140do(this.f15733do);
            }

            public String toString() {
                return "failed({service=" + this.f15733do + "})";
            }
        }

        /* renamed from: com.google.common.util.concurrent.d$else$new, reason: invalid class name */
        public final class Cnew extends Ctransient.Cdo {
            public Cnew() {
                super(Celse.this.f15723do);
            }

            @Override // com.google.common.util.concurrent.Ctransient.Cdo
            @ji0("ServiceManagerState.this.monitor")
            /* renamed from: do */
            public boolean mo18091do() {
                return Celse.this.f15725for.count(Service.Cfor.TERMINATED) + Celse.this.f15725for.count(Service.Cfor.FAILED) == Celse.this.f15724else;
            }
        }

        public Celse(r0<Service> r0Var) {
            SetMultimap<Service.Cfor, Service> setMultimapMo15497do = a2.m15492for(Service.Cfor.class).m15505else().mo15497do();
            this.f15727if = setMultimapMo15497do;
            this.f15725for = setMultimapMo15497do.keys();
            this.f15728new = Maps.o();
            this.f15726goto = new Cfor();
            this.f15729this = new Cnew();
            this.f15721break = new ListenerCallQueue<>();
            this.f15724else = r0Var.size();
            setMultimapMo15497do.putAll(Service.Cfor.NEW, r0Var);
        }

        /* renamed from: break, reason: not valid java name */
        public void m18122break() {
            this.f15721break.m18035new(d.f15716try);
        }

        @ji0("monitor")
        /* renamed from: case, reason: not valid java name */
        public void m18123case() {
            Multiset<Service.Cfor> multiset = this.f15725for;
            Service.Cfor cfor = Service.Cfor.RUNNING;
            if (multiset.count(cfor) == this.f15724else) {
                return;
            }
            throw new IllegalStateException("Expected to be healthy after starting. The following services are not running: " + b2.m15565final(this.f15727if, Cpublic.m15182while(Cpublic.m15164const(cfor))));
        }

        /* renamed from: catch, reason: not valid java name */
        public void m18124catch() {
            this.f15723do.m18344else();
            try {
                if (!this.f15722case) {
                    this.f15730try = true;
                    return;
                }
                ArrayList arrayListM16520while = x1.m16520while();
                ac2<Service> it = m18125class().values().iterator();
                while (it.hasNext()) {
                    Service next = it.next();
                    if (next.state() != Service.Cfor.NEW) {
                        arrayListM16520while.add(next);
                    }
                }
                throw new IllegalArgumentException("Services started transitioning asynchronously before the ServiceManager was constructed: " + arrayListM16520while);
            } finally {
                this.f15723do.m18339abstract();
            }
        }

        /* renamed from: class, reason: not valid java name */
        public b1<Service.Cfor, Service> m18125class() {
            h1.Cdo cdoBuilder = h1.builder();
            this.f15723do.m18344else();
            try {
                for (Map.Entry<Service.Cfor, Service> entry : this.f15727if.entries()) {
                    if (!(entry.getValue() instanceof Ctry)) {
                        cdoBuilder.mo15547else(entry);
                    }
                }
                this.f15723do.m18339abstract();
                return cdoBuilder.mo15546do();
            } catch (Throwable th) {
                this.f15723do.m18339abstract();
                throw th;
            }
        }

        /* renamed from: const, reason: not valid java name */
        public x0<Service, Long> m18126const() {
            this.f15723do.m18344else();
            try {
                ArrayList arrayListM16512return = x1.m16512return(this.f15728new.size());
                for (Map.Entry<Service, Cthrows> entry : this.f15728new.entrySet()) {
                    Service key = entry.getKey();
                    Cthrows value = entry.getValue();
                    if (!value.m15218this() && !(key instanceof Ctry)) {
                        arrayListM16512return.add(Maps.b(key, Long.valueOf(value.m15217else(TimeUnit.MILLISECONDS))));
                    }
                }
                this.f15723do.m18339abstract();
                Collections.sort(arrayListM16512return, k2.natural().onResultOf(new Cdo()));
                return x0.copyOf(arrayListM16512return);
            } catch (Throwable th) {
                this.f15723do.m18339abstract();
                throw th;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public void m18127do(Cnew cnew, Executor executor) {
            this.f15721break.m18034if(cnew, executor);
        }

        /* renamed from: else, reason: not valid java name */
        public void m18128else() {
            af1.u(!this.f15723do.m18353package(), "It is incorrect to execute listeners with the monitor held.");
            this.f15721break.m18033for();
        }

        /* renamed from: final, reason: not valid java name */
        public void m18129final(Service service, Service.Cfor cfor, Service.Cfor cfor2) {
            af1.m205continue(service);
            af1.m220new(cfor != cfor2);
            this.f15723do.m18344else();
            try {
                this.f15722case = true;
                if (this.f15730try) {
                    af1.O(this.f15727if.remove(cfor, service), "Service %s not at the expected location in the state map %s", service, cfor);
                    af1.O(this.f15727if.put(cfor2, service), "Service %s in the state map unexpectedly at %s", service, cfor2);
                    Cthrows cthrowsM15209for = this.f15728new.get(service);
                    if (cthrowsM15209for == null) {
                        cthrowsM15209for = Cthrows.m15209for();
                        this.f15728new.put(service, cthrowsM15209for);
                    }
                    Service.Cfor cfor3 = Service.Cfor.RUNNING;
                    if (cfor2.compareTo(cfor3) >= 0 && cthrowsM15209for.m15218this()) {
                        cthrowsM15209for.m15216class();
                        if (!(service instanceof Ctry)) {
                            d.f15714for.log(Level.FINE, "Started {0} in {1}.", new Object[]{service, cthrowsM15209for});
                        }
                    }
                    Service.Cfor cfor4 = Service.Cfor.FAILED;
                    if (cfor2 == cfor4) {
                        m18131goto(service);
                    }
                    if (this.f15725for.count(cfor3) == this.f15724else) {
                        m18135this();
                    } else if (this.f15725for.count(Service.Cfor.TERMINATED) + this.f15725for.count(cfor4) == this.f15724else) {
                        m18122break();
                    }
                }
            } finally {
                this.f15723do.m18339abstract();
                m18128else();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m18130for(long j, TimeUnit timeUnit) throws TimeoutException {
            this.f15723do.m18344else();
            try {
                if (this.f15723do.a(this.f15726goto, j, timeUnit)) {
                    m18123case();
                    return;
                }
                throw new TimeoutException("Timeout waiting for the services to become healthy. The following services have not started: " + b2.m15565final(this.f15727if, Cpublic.m15167final(g1.of(Service.Cfor.NEW, Service.Cfor.STARTING))));
            } finally {
                this.f15723do.m18339abstract();
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public void m18131goto(Service service) {
            this.f15721break.m18035new(new Cif(service));
        }

        /* renamed from: if, reason: not valid java name */
        public void m18132if() {
            this.f15723do.m18365while(this.f15726goto);
            try {
                m18123case();
            } finally {
                this.f15723do.m18339abstract();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m18133new() {
            this.f15723do.m18365while(this.f15729this);
            this.f15723do.m18339abstract();
        }

        /* renamed from: super, reason: not valid java name */
        public void m18134super(Service service) {
            this.f15723do.m18344else();
            try {
                if (this.f15728new.get(service) == null) {
                    this.f15728new.put(service, Cthrows.m15209for());
                }
            } finally {
                this.f15723do.m18339abstract();
            }
        }

        /* renamed from: this, reason: not valid java name */
        public void m18135this() {
            this.f15721break.m18035new(d.f15715new);
        }

        /* renamed from: try, reason: not valid java name */
        public void m18136try(long j, TimeUnit timeUnit) throws TimeoutException {
            this.f15723do.m18344else();
            try {
                if (this.f15723do.a(this.f15729this, j, timeUnit)) {
                    return;
                }
                throw new TimeoutException("Timeout waiting for the services to stop. The following services have not stopped: " + b2.m15565final(this.f15727if, Cpublic.m15182while(Cpublic.m15167final(EnumSet.of(Service.Cfor.TERMINATED, Service.Cfor.FAILED)))));
            } finally {
                this.f15723do.m18339abstract();
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.d$for, reason: invalid class name */
    public static final class Cfor extends Throwable {
        private Cfor() {
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.util.concurrent.d$if, reason: invalid class name */
    public static class Cif implements ListenerCallQueue.Event<Cnew> {
        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Cnew cnew) {
            cnew.m18141for();
        }

        public String toString() {
            return "stopped()";
        }
    }

    @o8
    /* renamed from: com.google.common.util.concurrent.d$new, reason: invalid class name */
    public static abstract class Cnew {
        /* renamed from: do, reason: not valid java name */
        public void m18140do(Service service) {
        }

        /* renamed from: for, reason: not valid java name */
        public void m18141for() {
        }

        /* renamed from: if, reason: not valid java name */
        public void m18142if() {
        }
    }

    /* renamed from: com.google.common.util.concurrent.d$try, reason: invalid class name */
    public static final class Ctry extends com.google.common.util.concurrent.Ccase {
        private Ctry() {
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: case */
        public void mo18085case() {
            m18088final();
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: try */
        public void mo18090try() {
            m18087const();
        }

        public /* synthetic */ Ctry(Cdo cdo) {
            this();
        }
    }

    public d(Iterable<? extends Service> iterable) {
        v0<Service> v0VarCopyOf = v0.copyOf(iterable);
        if (v0VarCopyOf.isEmpty()) {
            Cdo cdo = null;
            f15714for.log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new Cfor(cdo));
            v0VarCopyOf = v0.of(new Ctry(cdo));
        }
        Celse celse = new Celse(v0VarCopyOf);
        this.f15717do = celse;
        this.f15718if = v0VarCopyOf;
        WeakReference weakReference = new WeakReference(celse);
        ac2<Service> it = v0VarCopyOf.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            next.addListener(new Ccase(next, weakReference), Cimplements.m18221for());
            af1.m225return(next.state() == Service.Cfor.NEW, "Can only manage NEW services, %s", next);
        }
        this.f15717do.m18124catch();
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m18110break() {
        ac2<Service> it = this.f15718if.iterator();
        while (it.hasNext()) {
            if (!it.next().isRunning()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public void m18111case() {
        this.f15717do.m18132if();
    }

    /* renamed from: catch, reason: not valid java name */
    public b1<Service.Cfor, Service> m18112catch() {
        return this.f15717do.m18125class();
    }

    @lf
    /* renamed from: class, reason: not valid java name */
    public d m18113class() {
        ac2<Service> it = this.f15718if.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            Service.Cfor cforState = next.state();
            af1.O(cforState == Service.Cfor.NEW, "Service %s is %s, cannot start it.", next, cforState);
        }
        ac2<Service> it2 = this.f15718if.iterator();
        while (it2.hasNext()) {
            Service next2 = it2.next();
            try {
                this.f15717do.m18134super(next2);
                next2.startAsync();
            } catch (IllegalStateException e) {
                f15714for.log(Level.WARNING, "Unable to start Service " + next2, (Throwable) e);
            }
        }
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public x0<Service, Long> m18114const() {
        return this.f15717do.m18126const();
    }

    /* renamed from: else, reason: not valid java name */
    public void m18115else(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15717do.m18130for(j, timeUnit);
    }

    @lf
    /* renamed from: final, reason: not valid java name */
    public d m18116final() {
        ac2<Service> it = this.f15718if.iterator();
        while (it.hasNext()) {
            it.next().stopAsync();
        }
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m18117goto() {
        this.f15717do.m18133new();
    }

    /* renamed from: new, reason: not valid java name */
    public void m18118new(Cnew cnew) {
        this.f15717do.m18127do(cnew, Cimplements.m18221for());
    }

    /* renamed from: this, reason: not valid java name */
    public void m18119this(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15717do.m18136try(j, timeUnit);
    }

    public String toString() {
        return Csuper.m15185if(d.class).m15190case("services", Cextends.m15774try(this.f15718if, Cpublic.m15182while(Cpublic.m15177super(Ctry.class)))).toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m18120try(Cnew cnew, Executor executor) {
        this.f15717do.m18127do(cnew, executor);
    }
}
