package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.o8;
import com.google.common.base.Cwhile;
import com.google.common.graph.Cfinally;

@o8
/* renamed from: com.google.common.graph.volatile, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cvolatile<N, E> extends Cnew<N> {

    /* renamed from: case, reason: not valid java name */
    public boolean f15128case;

    /* renamed from: else, reason: not valid java name */
    public Cwhile<? super E> f15129else;

    /* renamed from: goto, reason: not valid java name */
    public Cwhile<Integer> f15130goto;

    private Cvolatile(boolean z) {
        super(z);
        this.f15128case = false;
        this.f15129else = Cwhile.m16859new();
        this.f15130goto = Cwhile.absent();
    }

    /* renamed from: class, reason: not valid java name */
    public static Cvolatile<Object, Object> m16845class() {
        return new Cvolatile<>(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    private <N1 extends N, E1 extends E> Cvolatile<N1, E1> m16846new() {
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public static <N, E> Cvolatile<N, E> m16847this(Network<N, E> network) {
        return new Cvolatile(network.isDirected()).m16852do(network.allowsParallelEdges()).m16856if(network.allowsSelfLoops()).m16851catch(network.nodeOrder()).m16850case(network.edgeOrder());
    }

    /* renamed from: try, reason: not valid java name */
    public static Cvolatile<Object, Object> m16848try() {
        return new Cvolatile<>(true);
    }

    /* renamed from: break, reason: not valid java name */
    public <N1 extends N, E1 extends E> Cfinally.Cnew<N1, E1> m16849break() {
        return new Cfinally.Cnew<>(m16846new());
    }

    /* renamed from: case, reason: not valid java name */
    public <E1 extends E> Cvolatile<N, E1> m16850case(Cwhile<E1> cwhile) {
        Cvolatile<N, E1> cvolatile = (Cvolatile<N, E1>) m16846new();
        cvolatile.f15129else = (Cwhile) af1.m205continue(cwhile);
        return cvolatile;
    }

    /* renamed from: catch, reason: not valid java name */
    public <N1 extends N> Cvolatile<N1, E> m16851catch(Cwhile<N1> cwhile) {
        Cvolatile<N1, E> cvolatile = (Cvolatile<N1, E>) m16846new();
        cvolatile.f15085for = (Cwhile) af1.m205continue(cwhile);
        return cvolatile;
    }

    /* renamed from: do, reason: not valid java name */
    public Cvolatile<N, E> m16852do(boolean z) {
        this.f15128case = z;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Cvolatile<N, E> m16853else(int i) {
        this.f15130goto = Cwhile.of(Integer.valueOf(Cdefault.m16707if(i)));
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public <N1 extends N, E1 extends E> MutableNetwork<N1, E1> m16854for() {
        return new Cthis(this);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cvolatile<N, E> m16855goto(int i) {
        this.f15088try = Cwhile.of(Integer.valueOf(Cdefault.m16707if(i)));
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public Cvolatile<N, E> m16856if(boolean z) {
        this.f15086if = z;
        return this;
    }
}
