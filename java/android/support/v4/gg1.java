package android.support.v4;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty0;

/* loaded from: classes3.dex */
public abstract class gg1 extends mg1 implements KProperty0 {
    public gg1() {
    }

    @Override // kotlin.jvm.internal.Cclass
    public KCallable computeReflected() {
        return dm1.m1438while(this);
    }

    @Override // kotlin.reflect.KProperty0
    @iz1(version = "1.1")
    public Object getDelegate() {
        return ((KProperty0) getReflected()).getDelegate();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }

    @iz1(version = "1.1")
    public gg1(Object obj) {
        super(obj);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty0.Getter getGetter() {
        return ((KProperty0) getReflected()).getGetter();
    }

    @iz1(version = "1.4")
    public gg1(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
