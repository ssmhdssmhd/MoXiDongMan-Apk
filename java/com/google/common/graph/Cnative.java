package com.google.common.graph;

import android.support.v4.af1;
import com.google.common.collect.c3;
import com.google.common.collect.g1;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.google.common.graph.native, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cnative<N> extends com.google.common.collect.Cfor<Cimport<N>> {

    /* renamed from: case, reason: not valid java name */
    public Iterator<N> f15079case;

    /* renamed from: for, reason: not valid java name */
    private final BaseGraph<N> f15080for;

    /* renamed from: new, reason: not valid java name */
    private final Iterator<N> f15081new;

    /* renamed from: try, reason: not valid java name */
    public N f15082try;

    /* renamed from: com.google.common.graph.native$for, reason: invalid class name */
    public static final class Cfor<N> extends Cnative<N> {

        /* renamed from: else, reason: not valid java name */
        private Set<N> f15083else;

        @Override // com.google.common.collect.Cfor
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> mo15521do() {
            while (true) {
                if (this.f15079case.hasNext()) {
                    N next = this.f15079case.next();
                    if (!this.f15083else.contains(next)) {
                        return Cimport.m16766catch(this.f15082try, next);
                    }
                } else {
                    this.f15083else.add(this.f15082try);
                    if (!m16800new()) {
                        this.f15083else = null;
                        return m15805if();
                    }
                }
            }
        }

        private Cfor(BaseGraph<N> baseGraph) {
            super(baseGraph);
            this.f15083else = c3.m15687default(baseGraph.nodes().size());
        }
    }

    /* renamed from: com.google.common.graph.native$if, reason: invalid class name */
    public static final class Cif<N> extends Cnative<N> {
        @Override // com.google.common.collect.Cfor
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> mo15521do() {
            while (!this.f15079case.hasNext()) {
                if (!m16800new()) {
                    return m15805if();
                }
            }
            return Cimport.m16768goto(this.f15082try, this.f15079case.next());
        }

        private Cif(BaseGraph<N> baseGraph) {
            super(baseGraph);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static <N> Cnative<N> m16799try(BaseGraph<N> baseGraph) {
        return baseGraph.isDirected() ? new Cif(baseGraph) : new Cfor(baseGraph);
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m16800new() {
        af1.t(!this.f15079case.hasNext());
        if (!this.f15081new.hasNext()) {
            return false;
        }
        N next = this.f15081new.next();
        this.f15082try = next;
        this.f15079case = this.f15080for.successors((BaseGraph<N>) next).iterator();
        return true;
    }

    private Cnative(BaseGraph<N> baseGraph) {
        this.f15082try = null;
        this.f15079case = g1.of().iterator();
        this.f15080for = baseGraph;
        this.f15081new = baseGraph.nodes().iterator();
    }
}
