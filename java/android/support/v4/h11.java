package android.support.v4;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty1;

/* loaded from: classes3.dex */
public abstract class h11 extends l11 implements KMutableProperty1 {
    public h11() {
    }

    @Override // kotlin.jvm.internal.Cclass
    public KCallable computeReflected() {
        return dm1.m1410break(this);
    }

    @Override // kotlin.reflect.KProperty1
    @iz1(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((KMutableProperty1) getReflected()).getDelegate(obj);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }

    @iz1(version = "1.1")
    public h11(Object obj) {
        super(obj);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty1.Getter getGetter() {
        return ((KMutableProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public KMutableProperty1.Setter getSetter() {
        return ((KMutableProperty1) getReflected()).getSetter();
    }

    @iz1(version = "1.4")
    public h11(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
