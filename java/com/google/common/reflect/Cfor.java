package com.google.common.reflect;

import android.support.v4.af1;
import android.support.v4.b51;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

/* renamed from: com.google.common.reflect.for, reason: invalid class name */
/* loaded from: classes2.dex */
class Cfor extends AccessibleObject implements Member {

    /* renamed from: do, reason: not valid java name */
    private final AccessibleObject f15573do;

    /* renamed from: if, reason: not valid java name */
    private final Member f15574if;

    public <M extends AccessibleObject & Member> Cfor(M m) {
        af1.m205continue(m);
        this.f15573do = m;
        this.f15574if = m;
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m17860break() {
        return Modifier.isSynchronized(getModifiers());
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m17861case() {
        return Modifier.isPrivate(getModifiers());
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m17862catch() {
        return Modifier.isTransient(getModifiers());
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m17863class() {
        return Modifier.isVolatile(getModifiers());
    }

    /* renamed from: do */
    public Cbreak<?> mo17797do() {
        return Cbreak.of((Class) getDeclaringClass());
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m17864else() {
        return Modifier.isProtected(getModifiers());
    }

    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return mo17797do().equals(cfor.mo17797do()) && this.f15574if.equals(cfor.f15574if);
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m17865for() {
        return Modifier.isFinal(getModifiers());
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f15573do.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f15573do.getAnnotations();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f15573do.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.Member
    public Class<?> getDeclaringClass() {
        return this.f15574if.getDeclaringClass();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f15574if.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f15574if.getName();
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m17866goto() {
        return Modifier.isPublic(getModifiers());
    }

    public int hashCode() {
        return this.f15574if.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m17867if() {
        return Modifier.isAbstract(getModifiers());
    }

    @Override // java.lang.reflect.AccessibleObject
    public final boolean isAccessible() {
        return this.f15573do.isAccessible();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f15573do.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f15574if.isSynthetic();
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m17868new() {
        return Modifier.isNative(getModifiers());
    }

    @Override // java.lang.reflect.AccessibleObject
    public final void setAccessible(boolean z) throws SecurityException {
        this.f15573do.setAccessible(z);
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m17869this() {
        return Modifier.isStatic(getModifiers());
    }

    public String toString() {
        return this.f15574if.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m17870try() {
        return (m17861case() || m17866goto() || m17864else()) ? false : true;
    }
}
