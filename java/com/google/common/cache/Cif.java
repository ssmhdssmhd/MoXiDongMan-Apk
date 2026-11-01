package com.google.common.cache;

import android.support.v4.af1;
import android.support.v4.df;
import android.support.v4.il;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.li0;
import android.support.v4.t3;
import android.support.v4.vm1;
import com.google.common.base.Cfinally;
import com.google.common.base.Csuper;
import com.google.common.base.Cthis;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.LocalCache;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@ki0(emulated = true)
/* renamed from: com.google.common.cache.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif<K, V> {

    /* renamed from: extends, reason: not valid java name */
    public static final int f13909extends = -1;

    /* renamed from: import, reason: not valid java name */
    private static final int f13910import = 4;

    /* renamed from: native, reason: not valid java name */
    private static final int f13911native = 0;

    /* renamed from: public, reason: not valid java name */
    private static final int f13912public = 0;

    /* renamed from: while, reason: not valid java name */
    private static final int f13917while = 16;

    /* renamed from: case, reason: not valid java name */
    @l01
    public Weigher<? super K, ? super V> f13919case;

    /* renamed from: class, reason: not valid java name */
    @l01
    public Cthis<Object> f13921class;

    /* renamed from: const, reason: not valid java name */
    @l01
    public Cthis<Object> f13922const;

    /* renamed from: else, reason: not valid java name */
    @l01
    public LocalCache.Cpublic f13924else;

    /* renamed from: final, reason: not valid java name */
    @l01
    public RemovalListener<? super K, ? super V> f13925final;

    /* renamed from: goto, reason: not valid java name */
    @l01
    public LocalCache.Cpublic f13927goto;

    /* renamed from: super, reason: not valid java name */
    @l01
    public Cfinally f13930super;

    /* renamed from: return, reason: not valid java name */
    public static final Supplier<? extends AbstractCache.StatsCounter> f13913return = Suppliers.m15017new(new Cdo());

    /* renamed from: static, reason: not valid java name */
    public static final df f13914static = new df(0, 0, 0, 0, 0, 0);

    /* renamed from: switch, reason: not valid java name */
    public static final Supplier<AbstractCache.StatsCounter> f13915switch = new C0082if();

    /* renamed from: throws, reason: not valid java name */
    public static final Cfinally f13916throws = new Cfor();

    /* renamed from: default, reason: not valid java name */
    private static final Logger f13908default = Logger.getLogger(Cif.class.getName());

    /* renamed from: do, reason: not valid java name */
    public boolean f13923do = true;

    /* renamed from: if, reason: not valid java name */
    public int f13928if = -1;

    /* renamed from: for, reason: not valid java name */
    public int f13926for = -1;

    /* renamed from: new, reason: not valid java name */
    public long f13929new = -1;

    /* renamed from: try, reason: not valid java name */
    public long f13933try = -1;

    /* renamed from: this, reason: not valid java name */
    public long f13931this = -1;

    /* renamed from: break, reason: not valid java name */
    public long f13918break = -1;

    /* renamed from: catch, reason: not valid java name */
    public long f13920catch = -1;

    /* renamed from: throw, reason: not valid java name */
    public Supplier<? extends AbstractCache.StatsCounter> f13932throw = f13913return;

    /* renamed from: com.google.common.cache.if$do, reason: invalid class name */
    public static class Cdo implements AbstractCache.StatsCounter {
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public df snapshot() {
            return Cif.f13914static;
        }
    }

    /* renamed from: com.google.common.cache.if$for, reason: invalid class name */
    public static class Cfor extends Cfinally {
        @Override // com.google.common.base.Cfinally
        /* renamed from: do */
        public long mo15100do() {
            return 0L;
        }
    }

    /* renamed from: com.google.common.cache.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0082if implements Supplier<AbstractCache.StatsCounter> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public AbstractCache.StatsCounter get() {
            return new AbstractCache.Cdo();
        }
    }

    /* renamed from: com.google.common.cache.if$new, reason: invalid class name */
    public enum Cnew implements RemovalListener<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(vm1<Object, Object> vm1Var) {
        }
    }

    /* renamed from: com.google.common.cache.if$try, reason: invalid class name */
    public enum Ctry implements Weigher<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.Weigher
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
    }

    private Cif() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Cif<Object, Object> m15296abstract() {
        return new Cif<>();
    }

    /* renamed from: for, reason: not valid java name */
    private void m15297for() {
        af1.u(this.f13920catch == -1, "refreshAfterWrite requires a LoadingCache");
    }

    @li0
    /* renamed from: goto, reason: not valid java name */
    public static Cif<Object, Object> m15298goto(CacheBuilderSpec cacheBuilderSpec) {
        return cacheBuilderSpec.m15226case().m15312finally();
    }

    /* renamed from: new, reason: not valid java name */
    private void m15299new() {
        if (this.f13919case == null) {
            af1.u(this.f13933try == -1, "maximumWeight requires weigher");
        } else if (this.f13923do) {
            af1.u(this.f13933try != -1, "weigher requires maximumWeight");
        } else if (this.f13933try == -1) {
            f13908default.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    @li0
    /* renamed from: this, reason: not valid java name */
    public static Cif<Object, Object> m15300this(String str) {
        return m15298goto(CacheBuilderSpec.m15225try(str));
    }

    @li0
    public Cif<K, V> a() {
        return m15321protected(LocalCache.Cpublic.WEAK);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public <K1 extends K, V1 extends V> Cif<K1, V1> b(Weigher<? super K1, ? super V1> weigher) {
        af1.t(this.f13919case == null);
        if (this.f13923do) {
            long j = this.f13929new;
            af1.F(j == -1, "weigher can not be combined with maximum size", j);
        }
        this.f13919case = (Weigher) af1.m205continue(weigher);
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public int m15301break() {
        int i = this.f13926for;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    /* renamed from: case, reason: not valid java name */
    public Cif<K, V> m15302case(long j, TimeUnit timeUnit) {
        long j2 = this.f13918break;
        af1.F(j2 == -1, "expireAfterAccess was already set to %s ns", j2);
        af1.m224public(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.f13918break = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public long m15303catch() {
        long j = this.f13918break;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    /* renamed from: class, reason: not valid java name */
    public long m15304class() {
        long j = this.f13931this;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    /* renamed from: const, reason: not valid java name */
    public int m15305const() {
        int i = this.f13928if;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    /* renamed from: continue, reason: not valid java name */
    public Cif<K, V> m15306continue() {
        this.f13932throw = f13915switch;
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m15307default() {
        return this.f13932throw == f13915switch;
    }

    /* renamed from: do, reason: not valid java name */
    public <K1 extends K, V1 extends V> Cache<K1, V1> m15308do() {
        m15299new();
        m15297for();
        return new LocalCache.Csuper(this);
    }

    /* renamed from: else, reason: not valid java name */
    public Cif<K, V> m15309else(long j, TimeUnit timeUnit) {
        long j2 = this.f13931this;
        af1.F(j2 == -1, "expireAfterWrite was already set to %s ns", j2);
        af1.m224public(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.f13931this = timeUnit.toNanos(j);
        return this;
    }

    @li0
    /* renamed from: extends, reason: not valid java name */
    public Cif<K, V> m15310extends(Cthis<Object> cthis) {
        Cthis<Object> cthis2 = this.f13921class;
        af1.K(cthis2 == null, "key equivalence was already set to %s", cthis2);
        this.f13921class = (Cthis) af1.m205continue(cthis);
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Cthis<Object> m15311final() {
        return (Cthis) Csuper.m15183do(this.f13921class, m15326super().defaultEquivalence());
    }

    @li0
    /* renamed from: finally, reason: not valid java name */
    public Cif<K, V> m15312finally() {
        this.f13923do = false;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public <K1 extends K, V1 extends V> LoadingCache<K1, V1> m15313if(com.google.common.cache.Cfor<? super K1, V1> cfor) {
        m15299new();
        return new LocalCache.Cfinal(this, cfor);
    }

    /* renamed from: implements, reason: not valid java name */
    public Cif<K, V> m15314implements(Cfinally cfinally) {
        af1.t(this.f13930super == null);
        this.f13930super = (Cfinally) af1.m205continue(cfinally);
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public <K1 extends K, V1 extends V> RemovalListener<K1, V1> m15315import() {
        return (RemovalListener) Csuper.m15183do(this.f13925final, Cnew.INSTANCE);
    }

    @li0
    /* renamed from: instanceof, reason: not valid java name */
    public Cif<K, V> m15316instanceof(Cthis<Object> cthis) {
        Cthis<Object> cthis2 = this.f13922const;
        af1.K(cthis2 == null, "value equivalence was already set to %s", cthis2);
        this.f13922const = (Cthis) af1.m205continue(cthis);
        return this;
    }

    /* renamed from: interface, reason: not valid java name */
    public Cif<K, V> m15317interface(LocalCache.Cpublic cpublic) {
        LocalCache.Cpublic cpublic2 = this.f13924else;
        af1.K(cpublic2 == null, "Key strength was already set to %s", cpublic2);
        this.f13924else = (LocalCache.Cpublic) af1.m205continue(cpublic);
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Supplier<? extends AbstractCache.StatsCounter> m15318native() {
        return this.f13932throw;
    }

    /* renamed from: package, reason: not valid java name */
    public Cif<K, V> m15319package(long j) {
        long j2 = this.f13929new;
        af1.F(j2 == -1, "maximum size was already set to %s", j2);
        long j3 = this.f13933try;
        af1.F(j3 == -1, "maximum weight was already set to %s", j3);
        af1.u(this.f13919case == null, "maximum size can not be combined with weigher");
        af1.m235try(j >= 0, "maximum size must not be negative");
        this.f13929new = j;
        return this;
    }

    @li0
    /* renamed from: private, reason: not valid java name */
    public Cif<K, V> m15320private(long j) {
        long j2 = this.f13933try;
        af1.F(j2 == -1, "maximum weight was already set to %s", j2);
        long j3 = this.f13929new;
        af1.F(j3 == -1, "maximum size was already set to %s", j3);
        this.f13933try = j;
        af1.m235try(j >= 0, "maximum weight must not be negative");
        return this;
    }

    /* renamed from: protected, reason: not valid java name */
    public Cif<K, V> m15321protected(LocalCache.Cpublic cpublic) {
        LocalCache.Cpublic cpublic2 = this.f13927goto;
        af1.K(cpublic2 == null, "Value strength was already set to %s", cpublic2);
        this.f13927goto = (LocalCache.Cpublic) af1.m205continue(cpublic);
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public Cfinally m15322public(boolean z) {
        Cfinally cfinally = this.f13930super;
        return cfinally != null ? cfinally : z ? Cfinally.m15099if() : f13916throws;
    }

    /* renamed from: return, reason: not valid java name */
    public Cthis<Object> m15323return() {
        return (Cthis) Csuper.m15183do(this.f13922const, m15324static().defaultEquivalence());
    }

    /* renamed from: static, reason: not valid java name */
    public LocalCache.Cpublic m15324static() {
        return (LocalCache.Cpublic) Csuper.m15183do(this.f13927goto, LocalCache.Cpublic.STRONG);
    }

    @li0
    /* renamed from: strictfp, reason: not valid java name */
    public Cif<K, V> m15325strictfp(long j, TimeUnit timeUnit) {
        af1.m205continue(timeUnit);
        long j2 = this.f13920catch;
        af1.F(j2 == -1, "refresh was already set to %s ns", j2);
        af1.m224public(j > 0, "duration must be positive: %s %s", j, timeUnit);
        this.f13920catch = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: super, reason: not valid java name */
    public LocalCache.Cpublic m15326super() {
        return (LocalCache.Cpublic) Csuper.m15183do(this.f13924else, LocalCache.Cpublic.STRONG);
    }

    /* renamed from: switch, reason: not valid java name */
    public <K1 extends K, V1 extends V> Weigher<K1, V1> m15327switch() {
        return (Weigher) Csuper.m15183do(this.f13919case, Ctry.INSTANCE);
    }

    @li0
    /* renamed from: synchronized, reason: not valid java name */
    public Cif<K, V> m15328synchronized() {
        return m15317interface(LocalCache.Cpublic.WEAK);
    }

    /* renamed from: throw, reason: not valid java name */
    public long m15329throw() {
        if (this.f13931this == 0 || this.f13918break == 0) {
            return 0L;
        }
        return this.f13919case == null ? this.f13929new : this.f13933try;
    }

    /* renamed from: throws, reason: not valid java name */
    public Cif<K, V> m15330throws(int i) {
        int i2 = this.f13928if;
        af1.A(i2 == -1, "initial capacity was already set to %s", i2);
        af1.m220new(i >= 0);
        this.f13928if = i;
        return this;
    }

    public String toString() {
        Csuper.Cif cifM15184for = Csuper.m15184for(this);
        int i = this.f13928if;
        if (i != -1) {
            cifM15184for.m15200new("initialCapacity", i);
        }
        int i2 = this.f13926for;
        if (i2 != -1) {
            cifM15184for.m15200new("concurrencyLevel", i2);
        }
        long j = this.f13929new;
        if (j != -1) {
            cifM15184for.m15203try("maximumSize", j);
        }
        long j2 = this.f13933try;
        if (j2 != -1) {
            cifM15184for.m15203try("maximumWeight", j2);
        }
        if (this.f13931this != -1) {
            cifM15184for.m15190case("expireAfterWrite", this.f13931this + "ns");
        }
        if (this.f13918break != -1) {
            cifM15184for.m15190case("expireAfterAccess", this.f13918break + "ns");
        }
        LocalCache.Cpublic cpublic = this.f13924else;
        if (cpublic != null) {
            cifM15184for.m15190case("keyStrength", t3.m7689else(cpublic.toString()));
        }
        LocalCache.Cpublic cpublic2 = this.f13927goto;
        if (cpublic2 != null) {
            cifM15184for.m15190case("valueStrength", t3.m7689else(cpublic2.toString()));
        }
        if (this.f13921class != null) {
            cifM15184for.m15202throw("keyEquivalence");
        }
        if (this.f13922const != null) {
            cifM15184for.m15202throw("valueEquivalence");
        }
        if (this.f13925final != null) {
            cifM15184for.m15202throw("removalListener");
        }
        return cifM15184for.toString();
    }

    @li0
    /* renamed from: transient, reason: not valid java name */
    public Cif<K, V> m15331transient() {
        return m15321protected(LocalCache.Cpublic.SOFT);
    }

    /* renamed from: try, reason: not valid java name */
    public Cif<K, V> m15332try(int i) {
        int i2 = this.f13926for;
        af1.A(i2 == -1, "concurrency level was already set to %s", i2);
        af1.m220new(i > 0);
        this.f13926for = i;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @il
    /* renamed from: volatile, reason: not valid java name */
    public <K1 extends K, V1 extends V> Cif<K1, V1> m15333volatile(RemovalListener<? super K1, ? super V1> removalListener) {
        af1.t(this.f13925final == null);
        this.f13925final = (RemovalListener) af1.m205continue(removalListener);
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public long m15334while() {
        long j = this.f13920catch;
        if (j == -1) {
            return 0L;
        }
        return j;
    }
}
