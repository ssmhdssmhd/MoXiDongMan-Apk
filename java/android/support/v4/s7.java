package android.support.v4;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import net.minidev.asm.FieldFilter;

/* loaded from: classes3.dex */
public class s7 implements FieldFilter {

    /* renamed from: do, reason: not valid java name */
    public static final s7 f6036do = new s7();

    @Override // net.minidev.asm.FieldFilter
    public boolean canRead(Field field) {
        return true;
    }

    @Override // net.minidev.asm.FieldFilter
    public boolean canUse(Field field) {
        return true;
    }

    @Override // net.minidev.asm.FieldFilter
    public boolean canUse(Field field, Method method) {
        return true;
    }

    @Override // net.minidev.asm.FieldFilter
    public boolean canWrite(Field field) {
        return true;
    }
}
