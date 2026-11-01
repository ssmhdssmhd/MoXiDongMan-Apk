package com.google.common.graph;

import android.support.v4.lf;
import android.support.v4.o8;

@o8
/* loaded from: classes2.dex */
public interface MutableGraph<N> extends Graph<N> {
    @lf
    boolean addNode(N n);

    @lf
    boolean putEdge(Cimport<N> cimport);

    @lf
    boolean putEdge(N n, N n2);

    @lf
    boolean removeEdge(Cimport<N> cimport);

    @lf
    boolean removeEdge(N n, N n2);

    @lf
    boolean removeNode(N n);
}
