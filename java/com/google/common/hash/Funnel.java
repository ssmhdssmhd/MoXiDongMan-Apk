package com.google.common.hash;

import android.support.v4.o8;
import android.support.v4.v10;
import java.io.Serializable;

@v10("Implement with a lambda")
@o8
/* loaded from: classes2.dex */
public interface Funnel<T> extends Serializable {
    void funnel(T t, PrimitiveSink primitiveSink);
}
