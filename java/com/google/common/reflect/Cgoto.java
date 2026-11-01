package com.google.common.reflect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.o8;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

@o8
/* renamed from: com.google.common.reflect.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cgoto<T> extends Celse<T> {

    /* renamed from: do, reason: not valid java name */
    public final TypeVariable<?> f15575do;

    public Cgoto() {
        Type typeCapture = capture();
        af1.m225return(typeCapture instanceof TypeVariable, "%s should be a type variable.", typeCapture);
        this.f15575do = (TypeVariable) typeCapture;
    }

    public final boolean equals(@b51 Object obj) {
        if (obj instanceof Cgoto) {
            return this.f15575do.equals(((Cgoto) obj).f15575do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15575do.hashCode();
    }

    public String toString() {
        return this.f15575do.toString();
    }
}
