package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.FunctionBase;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;

/* loaded from: classes3.dex */
public class je0 extends Cclass implements FunctionBase, KFunction {
    private final int arity;

    @iz1(version = "1.4")
    private final int flags;

    public je0(int i) {
        this(i, Cclass.NO_RECEIVER, null, null, null, 0);
    }

    @Override // kotlin.jvm.internal.Cclass
    @iz1(version = "1.1")
    public KCallable computeReflected() {
        return dm1.m1421for(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof je0) {
            je0 je0Var = (je0) obj;
            return Csuper.m30676else(getOwner(), je0Var.getOwner()) && getName().equals(je0Var.getName()) && getSignature().equals(je0Var.getSignature()) && this.flags == je0Var.flags && this.arity == je0Var.arity && Csuper.m30676else(getBoundReceiver(), je0Var.getBoundReceiver());
        }
        if (obj instanceof KFunction) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KFunction
    @iz1(version = "1.1")
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    @iz1(version = "1.1")
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    @iz1(version = "1.1")
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // kotlin.reflect.KFunction
    @iz1(version = "1.1")
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.Cclass, kotlin.reflect.KCallable, kotlin.reflect.KFunction
    @iz1(version = "1.1")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        KCallable kCallableCompute = compute();
        if (kCallableCompute != this) {
            return kCallableCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + dm1.f1082if;
    }

    @iz1(version = "1.1")
    public je0(int i, Object obj) {
        this(i, obj, null, null, null, 0);
    }

    @Override // kotlin.jvm.internal.Cclass
    @iz1(version = "1.1")
    public KFunction getReflected() {
        return (KFunction) super.getReflected();
    }

    @iz1(version = "1.4")
    public je0(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
        this.flags = i2 >> 1;
    }
}
