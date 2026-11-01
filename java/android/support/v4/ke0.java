package android.support.v4;

import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* loaded from: classes3.dex */
public class ke0 extends je0 {
    public ke0(int i, KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(i, Cclass.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @iz1(version = "1.4")
    public ke0(int i, Class cls, String str, String str2, int i2) {
        super(i, Cclass.NO_RECEIVER, cls, str, str2, i2);
    }

    @iz1(version = "1.4")
    public ke0(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2, i2);
    }
}
