package com.bumptech.glide.load.engine.prefill;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.engine.prefill.for, reason: invalid class name */
/* loaded from: classes.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final Map<Cnew, Integer> f9880do;

    /* renamed from: for, reason: not valid java name */
    private int f9881for;

    /* renamed from: if, reason: not valid java name */
    private final List<Cnew> f9882if;

    /* renamed from: new, reason: not valid java name */
    private int f9883new;

    public Cfor(Map<Cnew, Integer> map) {
        this.f9880do = map;
        this.f9882if = new ArrayList(map.keySet());
        Iterator<Integer> it = map.values().iterator();
        while (it.hasNext()) {
            this.f9881for += it.next().intValue();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m11551do() {
        return this.f9881for;
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m11552for() {
        Cnew cnew = this.f9882if.get(this.f9883new);
        Integer num = this.f9880do.get(cnew);
        if (num.intValue() == 1) {
            this.f9880do.remove(cnew);
            this.f9882if.remove(this.f9883new);
        } else {
            this.f9880do.put(cnew, Integer.valueOf(num.intValue() - 1));
        }
        this.f9881for--;
        this.f9883new = this.f9882if.isEmpty() ? 0 : (this.f9883new + 1) % this.f9882if.size();
        return cnew;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m11553if() {
        return this.f9881for == 0;
    }
}
