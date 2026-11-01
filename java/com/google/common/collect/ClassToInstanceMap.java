package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.v10;
import java.util.Map;

@v10("Use ImmutableClassToInstanceMap or MutableClassToInstanceMap")
@ki0
/* loaded from: classes2.dex */
public interface ClassToInstanceMap<B> extends Map<Class<? extends B>, B> {
    <T extends B> T getInstance(Class<T> cls);

    @lf
    <T extends B> T putInstance(Class<T> cls, @b51 T t);
}
