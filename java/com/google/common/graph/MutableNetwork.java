package com.google.common.graph;

import android.support.v4.lf;
import android.support.v4.o8;

@o8
/* loaded from: classes2.dex */
public interface MutableNetwork<N, E> extends Network<N, E> {
    @lf
    boolean addEdge(Cimport<N> cimport, E e);

    @lf
    boolean addEdge(N n, N n2, E e);

    @lf
    boolean addNode(N n);

    @lf
    boolean removeEdge(E e);

    @lf
    boolean removeNode(N n);
}
