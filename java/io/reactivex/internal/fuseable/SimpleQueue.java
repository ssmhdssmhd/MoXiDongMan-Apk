package io.reactivex.internal.fuseable;

import android.support.v4.a51;
import android.support.v4.b41;

/* loaded from: classes3.dex */
public interface SimpleQueue<T> {
    void clear();

    boolean isEmpty();

    boolean offer(@b41 T t);

    boolean offer(@b41 T t, @b41 T t2);

    @a51
    T poll() throws Exception;
}
