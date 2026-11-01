package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Csuper;
import com.google.common.base.Cthis;
import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class y1 {

    /* renamed from: else, reason: not valid java name */
    private static final int f14871else = 16;

    /* renamed from: goto, reason: not valid java name */
    private static final int f14872goto = 4;

    /* renamed from: this, reason: not valid java name */
    public static final int f14873this = -1;

    /* renamed from: case, reason: not valid java name */
    @l01
    public Cthis<Object> f14874case;

    /* renamed from: do, reason: not valid java name */
    public boolean f14875do;

    /* renamed from: new, reason: not valid java name */
    @l01
    public MapMakerInternalMap.Csuper f14878new;

    /* renamed from: try, reason: not valid java name */
    @l01
    public MapMakerInternalMap.Csuper f14879try;

    /* renamed from: if, reason: not valid java name */
    public int f14877if = -1;

    /* renamed from: for, reason: not valid java name */
    public int f14876for = -1;

    /* renamed from: com.google.common.collect.y1$do, reason: invalid class name */
    public enum Cdo {
        VALUE
    }

    /* renamed from: break, reason: not valid java name */
    public y1 m16528break(MapMakerInternalMap.Csuper csuper) {
        MapMakerInternalMap.Csuper csuper2 = this.f14878new;
        af1.K(csuper2 == null, "Key strength was already set to %s", csuper2);
        this.f14878new = (MapMakerInternalMap.Csuper) af1.m205continue(csuper);
        if (csuper != MapMakerInternalMap.Csuper.STRONG) {
            this.f14875do = true;
        }
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public MapMakerInternalMap.Csuper m16529case() {
        return (MapMakerInternalMap.Csuper) Csuper.m15183do(this.f14879try, MapMakerInternalMap.Csuper.STRONG);
    }

    /* renamed from: catch, reason: not valid java name */
    public y1 m16530catch(MapMakerInternalMap.Csuper csuper) {
        MapMakerInternalMap.Csuper csuper2 = this.f14879try;
        af1.K(csuper2 == null, "Value strength was already set to %s", csuper2);
        this.f14879try = (MapMakerInternalMap.Csuper) af1.m205continue(csuper);
        if (csuper != MapMakerInternalMap.Csuper.STRONG) {
            this.f14875do = true;
        }
        return this;
    }

    @lf
    @li0
    /* renamed from: class, reason: not valid java name */
    public y1 m16531class() {
        return m16528break(MapMakerInternalMap.Csuper.WEAK);
    }

    @lf
    @li0
    /* renamed from: const, reason: not valid java name */
    public y1 m16532const() {
        return m16530catch(MapMakerInternalMap.Csuper.WEAK);
    }

    @lf
    /* renamed from: do, reason: not valid java name */
    public y1 m16533do(int i) {
        int i2 = this.f14876for;
        af1.A(i2 == -1, "concurrency level was already set to %s", i2);
        af1.m220new(i > 0);
        this.f14876for = i;
        return this;
    }

    @lf
    /* renamed from: else, reason: not valid java name */
    public y1 m16534else(int i) {
        int i2 = this.f14877if;
        af1.A(i2 == -1, "initial capacity was already set to %s", i2);
        af1.m220new(i >= 0);
        this.f14877if = i;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public int m16535for() {
        int i = this.f14877if;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    @lf
    @li0
    /* renamed from: goto, reason: not valid java name */
    public y1 m16536goto(Cthis<Object> cthis) {
        Cthis<Object> cthis2 = this.f14874case;
        af1.K(cthis2 == null, "key equivalence was already set to %s", cthis2);
        this.f14874case = (Cthis) af1.m205continue(cthis);
        this.f14875do = true;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public int m16537if() {
        int i = this.f14876for;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthis<Object> m16538new() {
        return (Cthis) Csuper.m15183do(this.f14874case, m16540try().defaultEquivalence());
    }

    /* renamed from: this, reason: not valid java name */
    public <K, V> ConcurrentMap<K, V> m16539this() {
        return !this.f14875do ? new ConcurrentHashMap(m16535for(), 0.75f, m16537if()) : MapMakerInternalMap.create(this);
    }

    public String toString() {
        Csuper.Cif cifM15184for = Csuper.m15184for(this);
        int i = this.f14877if;
        if (i != -1) {
            cifM15184for.m15200new("initialCapacity", i);
        }
        int i2 = this.f14876for;
        if (i2 != -1) {
            cifM15184for.m15200new("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Csuper csuper = this.f14878new;
        if (csuper != null) {
            cifM15184for.m15190case("keyStrength", android.support.v4.t3.m7689else(csuper.toString()));
        }
        MapMakerInternalMap.Csuper csuper2 = this.f14879try;
        if (csuper2 != null) {
            cifM15184for.m15190case("valueStrength", android.support.v4.t3.m7689else(csuper2.toString()));
        }
        if (this.f14874case != null) {
            cifM15184for.m15202throw("keyEquivalence");
        }
        return cifM15184for.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public MapMakerInternalMap.Csuper m16540try() {
        return (MapMakerInternalMap.Csuper) Csuper.m15183do(this.f14878new, MapMakerInternalMap.Csuper.STRONG);
    }
}
