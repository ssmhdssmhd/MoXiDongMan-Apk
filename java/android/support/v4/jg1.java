package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* loaded from: classes3.dex */
public class jg1 extends ig1 {
    public jg1(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(Cclass.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return getGetter().call(obj);
    }

    @iz1(version = "1.4")
    public jg1(Class cls, String str, String str2, int i) {
        super(Cclass.NO_RECEIVER, cls, str, str2, i);
    }

    @iz1(version = "1.4")
    public jg1(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
