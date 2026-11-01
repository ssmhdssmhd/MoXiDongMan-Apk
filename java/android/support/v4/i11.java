package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* loaded from: classes3.dex */
public class i11 extends h11 {
    public i11(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(Cclass.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return getGetter().call(obj);
    }

    @Override // kotlin.reflect.KMutableProperty1
    public void set(Object obj, Object obj2) {
        getSetter().call(obj, obj2);
    }

    @iz1(version = "1.4")
    public i11(Class cls, String str, String str2, int i) {
        super(Cclass.NO_RECEIVER, cls, str, str2, i);
    }

    @iz1(version = "1.4")
    public i11(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
