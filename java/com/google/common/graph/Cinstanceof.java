package com.google.common.graph;

import android.support.v4.af1;
import android.support.v4.o8;
import com.google.common.base.Cwhile;
import com.google.common.graph.Cpackage;

@o8
/* renamed from: com.google.common.graph.instanceof, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cinstanceof<N, V> extends Cnew<N> {
    private Cinstanceof(boolean z) {
        super(z);
    }

    /* renamed from: case, reason: not valid java name */
    public static <N, V> Cinstanceof<N, V> m16776case(ValueGraph<N, V> valueGraph) {
        return (Cinstanceof<N, V>) new Cinstanceof(valueGraph.isDirected()).m16780do(valueGraph.allowsSelfLoops()).m16782goto(valueGraph.nodeOrder());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    private <N1 extends N, V1 extends V> Cinstanceof<N1, V1> m16777for() {
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cinstanceof<Object, Object> m16778new() {
        return new Cinstanceof<>(true);
    }

    /* renamed from: this, reason: not valid java name */
    public static Cinstanceof<Object, Object> m16779this() {
        return new Cinstanceof<>(false);
    }

    /* renamed from: do, reason: not valid java name */
    public Cinstanceof<N, V> m16780do(boolean z) {
        this.f15086if = z;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public <N1 extends N, V1 extends V> Cpackage.Cif<N1, V1> m16781else() {
        return new Cpackage.Cif<>(m16777for());
    }

    /* renamed from: goto, reason: not valid java name */
    public <N1 extends N> Cinstanceof<N1, V> m16782goto(Cwhile<N1> cwhile) {
        Cinstanceof<N1, V> cinstanceof = (Cinstanceof<N1, V>) m16777for();
        cinstanceof.f15085for = (Cwhile) af1.m205continue(cwhile);
        return cinstanceof;
    }

    /* renamed from: if, reason: not valid java name */
    public <N1 extends N, V1 extends V> MutableValueGraph<N1, V1> m16783if() {
        return new Cbreak(this);
    }

    /* renamed from: try, reason: not valid java name */
    public Cinstanceof<N, V> m16784try(int i) {
        this.f15088try = Cwhile.of(Integer.valueOf(Cdefault.m16707if(i)));
        return this;
    }
}
