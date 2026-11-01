package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.Csuper;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;

/* loaded from: classes3.dex */
public abstract class mg1 extends Cclass implements KProperty {
    public mg1() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof mg1) {
            mg1 mg1Var = (mg1) obj;
            return getOwner().equals(mg1Var.getOwner()) && getName().equals(mg1Var.getName()) && getSignature().equals(mg1Var.getSignature()) && Csuper.m30676else(getBoundReceiver(), mg1Var.getBoundReceiver());
        }
        if (obj instanceof KProperty) {
            return obj.equals(compute());
        }
        return false;
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KProperty
    @iz1(version = "1.1")
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // kotlin.reflect.KProperty
    @iz1(version = "1.1")
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        KCallable kCallableCompute = compute();
        if (kCallableCompute != this) {
            return kCallableCompute.toString();
        }
        return "property " + getName() + dm1.f1082if;
    }

    @iz1(version = "1.1")
    public mg1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.Cclass
    @iz1(version = "1.1")
    public KProperty getReflected() {
        return (KProperty) super.getReflected();
    }

    @iz1(version = "1.4")
    public mg1(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
    }
}
