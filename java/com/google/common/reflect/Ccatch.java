package com.google.common.reflect;

import com.google.common.collect.c3;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;

/* renamed from: com.google.common.reflect.catch, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ccatch {

    /* renamed from: do, reason: not valid java name */
    private final Set<Type> f15560do = c3.m15706return();

    /* renamed from: case */
    public void mo17802case(WildcardType wildcardType) {
    }

    /* renamed from: do, reason: not valid java name */
    public final void m17830do(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.f15560do.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        mo17805try((TypeVariable) type);
                    } else if (type instanceof WildcardType) {
                        mo17802case((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        mo17804new((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        mo17806if((Class) type);
                    } else {
                        if (!(type instanceof GenericArrayType)) {
                            throw new AssertionError("Unknown type: " + type);
                        }
                        mo17803for((GenericArrayType) type);
                    }
                } catch (Throwable th) {
                    this.f15560do.remove(type);
                    throw th;
                }
            }
        }
    }

    /* renamed from: for */
    public void mo17803for(GenericArrayType genericArrayType) {
    }

    /* renamed from: if */
    public void mo17806if(Class<?> cls) {
    }

    /* renamed from: new */
    public void mo17804new(ParameterizedType parameterizedType) {
    }

    /* renamed from: try */
    public void mo17805try(TypeVariable<?> typeVariable) {
    }
}
