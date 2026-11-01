package com.google.common.graph;

import android.support.v4.lf;
import android.support.v4.o8;

@o8
/* loaded from: classes2.dex */
public interface MutableValueGraph<N, V> extends ValueGraph<N, V> {
    @lf
    boolean addNode(N n);

    @lf
    V putEdgeValue(Cimport<N> cimport, V v);

    @lf
    V putEdgeValue(N n, N n2, V v);

    @lf
    V removeEdge(Cimport<N> cimport);

    @lf
    V removeEdge(N n, N n2);

    @lf
    boolean removeNode(N n);
}
