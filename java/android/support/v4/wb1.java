package android.support.v4;

import com.google.common.reflect.Cbreak;
import com.google.common.reflect.Ctry;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;

@o8
/* loaded from: classes2.dex */
public final class wb1 implements AnnotatedElement {

    /* renamed from: do, reason: not valid java name */
    private final Ctry<?, ?> f7450do;

    /* renamed from: for, reason: not valid java name */
    private final Cbreak<?> f7451for;

    /* renamed from: if, reason: not valid java name */
    private final int f7452if;

    /* renamed from: new, reason: not valid java name */
    private final com.google.common.collect.v0<Annotation> f7453new;

    public wb1(Ctry<?, ?> ctry, int i, Cbreak<?> cbreak, Annotation[] annotationArr) {
        this.f7450do = ctry;
        this.f7452if = i;
        this.f7451for = cbreak;
        this.f7453new = com.google.common.collect.v0.copyOf(annotationArr);
    }

    /* renamed from: do, reason: not valid java name */
    public Ctry<?, ?> m9116do() {
        return this.f7450do;
    }

    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof wb1)) {
            return false;
        }
        wb1 wb1Var = (wb1) obj;
        return this.f7452if == wb1Var.f7452if && this.f7450do.equals(wb1Var.f7450do);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @b51
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        af1.m205continue(cls);
        ac2<Annotation> it = this.f7453new.iterator();
        while (it.hasNext()) {
            Annotation next = it.next();
            if (cls.isInstance(next)) {
                return cls.cast(next);
            }
        }
        return null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getDeclaredAnnotationsByType(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @b51
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        af1.m205continue(cls);
        return (A) com.google.common.collect.t.m16313import(this.f7453new).m16325final(cls).m16338super().orNull();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        return (Annotation[]) this.f7453new.toArray(new Annotation[0]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) com.google.common.collect.t.m16313import(this.f7453new).m16325final(cls).m16332package(cls));
    }

    public int hashCode() {
        return this.f7452if;
    }

    /* renamed from: if, reason: not valid java name */
    public Cbreak<?> m9117if() {
        return this.f7451for;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return getAnnotation(cls) != null;
    }

    public String toString() {
        return this.f7451for + " arg" + this.f7452if;
    }
}
