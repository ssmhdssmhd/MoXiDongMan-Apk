package kotlin.jvm.internal;

import android.support.v4.dm1;
import android.support.v4.iz1;
import android.support.v4.sr0;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.reflect.Cnew;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;

/* renamed from: kotlin.jvm.internal.class, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cclass implements KCallable, Serializable {

    @iz1(version = "1.1")
    public static final Object NO_RECEIVER = Cdo.f27871do;

    @iz1(version = "1.4")
    private final boolean isTopLevel;

    @iz1(version = "1.4")
    private final String name;

    @iz1(version = "1.4")
    private final Class owner;

    @iz1(version = "1.1")
    public final Object receiver;
    private transient KCallable reflected;

    @iz1(version = "1.4")
    private final String signature;

    @iz1(version = "1.2")
    /* renamed from: kotlin.jvm.internal.class$do, reason: invalid class name */
    public static class Cdo implements Serializable {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo f27871do = new Cdo();

        private Cdo() {
        }

        private Object readResolve() throws ObjectStreamException {
            return f27871do;
        }
    }

    public Cclass() {
        this(NO_RECEIVER);
    }

    @Override // kotlin.reflect.KCallable
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // kotlin.reflect.KCallable
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    @iz1(version = "1.1")
    public KCallable compute() {
        KCallable kCallable = this.reflected;
        if (kCallable != null) {
            return kCallable;
        }
        KCallable kCallableComputeReflected = computeReflected();
        this.reflected = kCallableComputeReflected;
        return kCallableComputeReflected;
    }

    public abstract KCallable computeReflected();

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    @iz1(version = "1.1")
    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.name;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? dm1.m1417else(cls) : dm1.m1426new(cls);
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        return getReflected().getParameters();
    }

    @iz1(version = "1.1")
    public KCallable getReflected() {
        KCallable kCallableCompute = compute();
        if (kCallableCompute != this) {
            return kCallableCompute;
        }
        throw new sr0();
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // kotlin.reflect.KCallable
    @iz1(version = "1.1")
    public List<KTypeParameter> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.KCallable
    @iz1(version = "1.1")
    public Cnew getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // kotlin.reflect.KCallable
    @iz1(version = "1.1")
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // kotlin.reflect.KCallable
    @iz1(version = "1.1")
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // kotlin.reflect.KCallable
    @iz1(version = "1.1")
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // kotlin.reflect.KCallable, kotlin.reflect.KFunction
    @iz1(version = "1.3")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    @iz1(version = "1.1")
    public Cclass(Object obj) {
        this(obj, null, null, null, false);
    }

    @iz1(version = "1.4")
    public Cclass(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }
}
