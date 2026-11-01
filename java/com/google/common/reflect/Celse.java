package com.google.common.reflect;

import android.support.v4.af1;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* renamed from: com.google.common.reflect.else, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Celse<T> {
    public final Type capture() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        af1.m225return(genericSuperclass instanceof ParameterizedType, "%s isn't parameterized", genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
