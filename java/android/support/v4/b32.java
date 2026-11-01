package android.support.v4;

import com.luck.picture.lib.rxbus2.Cnew;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class b32 {

    /* renamed from: do, reason: not valid java name */
    public Method f327do;

    /* renamed from: for, reason: not valid java name */
    public Class<?> f328for;

    /* renamed from: if, reason: not valid java name */
    public Cnew f329if;

    /* renamed from: new, reason: not valid java name */
    public Object f330new;

    /* renamed from: try, reason: not valid java name */
    public int f331try;

    public b32(Object obj, Method method, Class<?> cls, int i, Cnew cnew) {
        this.f327do = method;
        this.f329if = cnew;
        this.f328for = cls;
        this.f330new = obj;
        this.f331try = i;
    }

    /* renamed from: do, reason: not valid java name */
    public void m435do(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?>[] parameterTypes = this.f327do.getParameterTypes();
            if (parameterTypes != null && parameterTypes.length == 1) {
                this.f327do.invoke(this.f330new, obj);
            } else if (parameterTypes == null || parameterTypes.length == 0) {
                this.f327do.invoke(this.f330new, new Object[0]);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }
}
