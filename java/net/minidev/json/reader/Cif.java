package net.minidev.json.reader;

import android.support.v4.wo0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.minidev.json.Cfor;

/* renamed from: net.minidev.json.reader.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements JsonWriterI<Object> {
    @Override // net.minidev.json.reader.JsonWriterI
    public <E> void writeJSONString(E e, Appendable appendable, Cfor cfor) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        Class<?> type;
        try {
            cfor.m31587super(appendable);
            boolean z = false;
            for (Class<?> superclass = e.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
                for (Field field : superclass.getDeclaredFields()) {
                    int modifiers = field.getModifiers();
                    if ((modifiers & 152) <= 0) {
                        if ((modifiers & 1) > 0) {
                            objInvoke = field.get(e);
                        } else {
                            Method declaredMethod = null;
                            try {
                                declaredMethod = superclass.getDeclaredMethod(wo0.m9253for(field.getName()), new Class[0]);
                            } catch (Exception unused) {
                            }
                            if (declaredMethod == null && ((type = field.getType()) == Boolean.TYPE || type == Boolean.class)) {
                                declaredMethod = superclass.getDeclaredMethod(wo0.m9255new(field.getName()), new Class[0]);
                            }
                            if (declaredMethod != null) {
                                objInvoke = declaredMethod.invoke(e, new Object[0]);
                            }
                        }
                        if (objInvoke != null || !cfor.m31578else()) {
                            if (z) {
                                cfor.m31579final(appendable);
                            } else {
                                z = true;
                            }
                            Ctry.m31685catch(field.getName(), objInvoke, appendable, cfor);
                        }
                    }
                }
            }
            cfor.m31589throw(appendable);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
