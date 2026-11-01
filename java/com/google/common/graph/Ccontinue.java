package com.google.common.graph;

import android.support.v4.b51;
import java.util.Map;

/* renamed from: com.google.common.graph.continue, reason: invalid class name */
/* loaded from: classes2.dex */
class Ccontinue<K, V> extends Cabstract<K, V> {

    /* renamed from: for, reason: not valid java name */
    @b51
    private volatile transient Cdo<K, V> f15010for;

    /* renamed from: new, reason: not valid java name */
    @b51
    private volatile transient Cdo<K, V> f15011new;

    /* renamed from: com.google.common.graph.continue$do, reason: invalid class name */
    public static final class Cdo<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f15012do;

        /* renamed from: if, reason: not valid java name */
        public final V f15013if;

        public Cdo(K k, V v) {
            this.f15012do = k;
            this.f15013if = v;
        }
    }

    public Ccontinue(Map<K, V> map) {
        super(map);
    }

    /* renamed from: class, reason: not valid java name */
    private void m16695class(Cdo<K, V> cdo) {
        this.f15011new = this.f15010for;
        this.f15010for = cdo;
    }

    /* renamed from: const, reason: not valid java name */
    private void m16696const(K k, V v) {
        m16695class(new Cdo<>(k, v));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.Cabstract
    /* renamed from: case */
    public V mo16657case(@b51 Object obj) {
        V vMo16659else = mo16659else(obj);
        if (vMo16659else != null) {
            return vMo16659else;
        }
        V vM16661goto = m16661goto(obj);
        if (vM16661goto != null) {
            m16696const(obj, vM16661goto);
        }
        return vM16661goto;
    }

    @Override // com.google.common.graph.Cabstract
    /* renamed from: else */
    public V mo16659else(@b51 Object obj) {
        V v = (V) super.mo16659else(obj);
        if (v != null) {
            return v;
        }
        Cdo<K, V> cdo = this.f15010for;
        if (cdo != null && cdo.f15012do == obj) {
            return cdo.f15013if;
        }
        Cdo<K, V> cdo2 = this.f15011new;
        if (cdo2 == null || cdo2.f15012do != obj) {
            return null;
        }
        m16695class(cdo2);
        return cdo2.f15013if;
    }

    @Override // com.google.common.graph.Cabstract
    /* renamed from: new */
    public void mo16662new() {
        super.mo16662new();
        this.f15010for = null;
        this.f15011new = null;
    }
}
