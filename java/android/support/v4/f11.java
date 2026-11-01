package android.support.v4;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KProperty0;

/* loaded from: classes3.dex */
public abstract class f11 extends l11 implements KMutableProperty0 {
    public f11() {
    }

    @Override // kotlin.jvm.internal.Cclass
    public KCallable computeReflected() {
        return dm1.m1434this(this);
    }

    @Override // kotlin.reflect.KProperty0
    @iz1(version = "1.1")
    public Object getDelegate() {
        return ((KMutableProperty0) getReflected()).getDelegate();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }

    @iz1(version = "1.1")
    public f11(Object obj) {
        super(obj);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty0.Getter getGetter() {
        return ((KMutableProperty0) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty
    public KMutableProperty0.Setter getSetter() {
        return ((KMutableProperty0) getReflected()).getSetter();
    }

    @iz1(version = "1.4")
    public f11(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
