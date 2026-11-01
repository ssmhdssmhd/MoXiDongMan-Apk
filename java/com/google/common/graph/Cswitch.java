package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.o8;
import android.support.v4.v10;
import com.google.common.base.Cwhile;
import com.google.common.graph.Cextends;
import com.google.common.graph.Cwhile;

@v10
@o8
/* renamed from: com.google.common.graph.switch, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cswitch<N> extends Cnew<N> {
    private Cswitch(boolean z) {
        super(z);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cswitch<Object> m16819catch() {
        return new Cswitch<>(false);
    }

    /* renamed from: else, reason: not valid java name */
    public static <N> Cswitch<N> m16820else(Graph<N> graph) {
        return (Cswitch<N>) new Cswitch(graph.isDirected()).m16825do(graph.allowsSelfLoops()).m16823break(graph.nodeOrder());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    private <N1 extends N> Cswitch<N1> m16821for() {
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cswitch<Object> m16822try() {
        return new Cswitch<>(true);
    }

    /* renamed from: break, reason: not valid java name */
    public <N1 extends N> Cswitch<N1> m16823break(Cwhile<N1> cwhile) {
        Cswitch<N1> cswitchM16821for = m16821for();
        cswitchM16821for.f15085for = (Cwhile) af1.m205continue(cwhile);
        return cswitchM16821for;
    }

    /* renamed from: case, reason: not valid java name */
    public Cswitch<N> m16824case(int i) {
        this.f15088try = Cwhile.of(Integer.valueOf(Cdefault.m16707if(i)));
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Cswitch<N> m16825do(boolean z) {
        this.f15086if = z;
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public <N1 extends N> Cextends.Cdo<N1> m16826goto() {
        return new Cextends.Cdo<>(m16821for());
    }

    /* renamed from: if, reason: not valid java name */
    public <N1 extends N> MutableGraph<N1> m16827if() {
        return new Cgoto(this);
    }

    /* renamed from: new, reason: not valid java name */
    public Cswitch<N> m16828new() {
        Cswitch<N> cswitch = new Cswitch<>(this.f15084do);
        cswitch.f15086if = this.f15086if;
        cswitch.f15085for = this.f15085for;
        cswitch.f15088try = this.f15088try;
        cswitch.f15087new = this.f15087new;
        return cswitch;
    }

    /* renamed from: this, reason: not valid java name */
    public <N1 extends N> Cswitch<N1> m16829this(Cwhile<N1> cwhile) {
        af1.m225return(cwhile.m16864goto() == Cwhile.Cif.UNORDERED || cwhile.m16864goto() == Cwhile.Cif.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", cwhile);
        Cswitch<N1> cswitchM16821for = m16821for();
        cswitchM16821for.f15087new = (Cwhile) af1.m205continue(cwhile);
        return cswitchM16821for;
    }
}
