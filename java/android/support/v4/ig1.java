package android.support.v4;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty1;

/* loaded from: classes3.dex */
public abstract class ig1 extends mg1 implements KProperty1 {
    public ig1() {
    }

    @Override // kotlin.jvm.internal.Cclass
    public KCallable computeReflected() {
        return dm1.m1424import(this);
    }

    @Override // kotlin.reflect.KProperty1
    @iz1(version = "1.1")
    public Object getDelegate(Object obj) {
        return ((KProperty1) getReflected()).getDelegate(obj);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }

    @iz1(version = "1.1")
    public ig1(Object obj) {
        super(obj);
    }

    @Override // kotlin.reflect.KProperty
    public KProperty1.Getter getGetter() {
        return ((KProperty1) getReflected()).getGetter();
    }

    @iz1(version = "1.4")
    public ig1(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
