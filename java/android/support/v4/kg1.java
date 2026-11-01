package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty2;

/* loaded from: classes3.dex */
public abstract class kg1 extends mg1 implements KProperty2 {
    public kg1() {
    }

    @Override // kotlin.jvm.internal.Cclass
    public KCallable computeReflected() {
        return dm1.m1425native(this);
    }

    @Override // kotlin.reflect.KProperty2
    @iz1(version = "1.1")
    public Object getDelegate(Object obj, Object obj2) {
        return ((KProperty2) getReflected()).getDelegate(obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }

    @iz1(version = "1.4")
    public kg1(Class cls, String str, String str2, int i) {
        super(Cclass.NO_RECEIVER, cls, str, str2, i);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty2.Getter getGetter() {
        return ((KProperty2) getReflected()).getGetter();
    }
}
