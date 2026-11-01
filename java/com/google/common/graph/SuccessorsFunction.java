package com.google.common.graph;

import android.support.v4.o8;
import android.support.v4.v10;

@v10("Implement with a lambda, or use GraphBuilder to build a Graph with the desired edges")
@o8
/* loaded from: classes2.dex */
public interface SuccessorsFunction<N> {
    Iterable<? extends N> successors(N n);
}
