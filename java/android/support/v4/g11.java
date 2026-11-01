package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* loaded from: classes3.dex */
public class g11 extends f11 {
    public g11(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(Cclass.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @Override // kotlin.reflect.KProperty0
    public Object get() {
        return getGetter().call(new Object[0]);
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(Object obj) {
        getSetter().call(obj);
    }

    @iz1(version = "1.4")
    public g11(Class cls, String str, String str2, int i) {
        super(Cclass.NO_RECEIVER, cls, str, str2, i);
    }

    @iz1(version = "1.4")
    public g11(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
