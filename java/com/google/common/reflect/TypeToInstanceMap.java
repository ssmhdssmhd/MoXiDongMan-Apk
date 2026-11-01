package com.google.common.reflect;

import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.o8;
import android.support.v4.v10;
import java.util.Map;

@v10("Use ImmutableTypeToInstanceMap or MutableTypeToInstanceMap")
@o8
/* loaded from: classes2.dex */
public interface TypeToInstanceMap<B> extends Map<Cbreak<? extends B>, B> {
    @b51
    <T extends B> T getInstance(Cbreak<T> cbreak);

    @b51
    <T extends B> T getInstance(Class<T> cls);

    @lf
    @b51
    <T extends B> T putInstance(Cbreak<T> cbreak, @b51 T t);

    @lf
    @b51
    <T extends B> T putInstance(Class<T> cls, @b51 T t);
}
