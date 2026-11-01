package freemarker.ext.jsp;

import android.support.v4.fl2;
import android.support.v4.il2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.core.d0;
import freemarker.core.z4;
import freemarker.ext.beans.Ctry;
import freemarker.ext.jsp.Cconst;
import freemarker.template.ObjectWrapper;
import freemarker.template.ObjectWrapperAndUnwrapper;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.utility.Csuper;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/* renamed from: freemarker.ext.jsp.break, reason: invalid class name */
/* loaded from: classes3.dex */
class Cbreak {

    /* renamed from: do, reason: not valid java name */
    public final String f24806do;

    /* renamed from: for, reason: not valid java name */
    private final Method f24807for;

    /* renamed from: if, reason: not valid java name */
    private final Class f24808if;

    /* renamed from: new, reason: not valid java name */
    private final Map f24809new = new HashMap();

    public Cbreak(String str, Class cls) throws NoSuchMethodException, SecurityException, IntrospectionException {
        Method method;
        this.f24806do = str;
        this.f24808if = cls;
        for (PropertyDescriptor propertyDescriptor : Introspector.getBeanInfo(cls).getPropertyDescriptors()) {
            Method writeMethod = propertyDescriptor.getWriteMethod();
            if (writeMethod != null) {
                this.f24809new.put(propertyDescriptor.getName(), writeMethod);
            }
        }
        try {
            method = cls.getMethod("setDynamicAttribute", String.class, String.class, Object.class);
        } catch (NoSuchMethodException unused) {
            method = null;
        }
        this.f24807for = method;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m28883if(RuntimeException runtimeException) {
        Class<?> cls = runtimeException.getClass();
        return cls == NullPointerException.class || cls == IllegalArgumentException.class || cls == ClassCastException.class || cls == IndexOutOfBoundsException.class;
    }

    /* renamed from: do, reason: not valid java name */
    public Object m28884do() throws IllegalAccessException, InstantiationException {
        return this.f24808if.newInstance();
    }

    /* renamed from: for, reason: not valid java name */
    public void m28885for(Object obj, Map map, ObjectWrapper objectWrapper) throws IllegalAccessException, k52, InvocationTargetException {
        if (map == null || map.isEmpty()) {
            return;
        }
        ObjectWrapperAndUnwrapper objectWrapperAndUnwrapperM28685super = objectWrapper instanceof ObjectWrapperAndUnwrapper ? (ObjectWrapperAndUnwrapper) objectWrapper : Ctry.m28685super();
        Object[] objArr = new Object[1];
        for (Map.Entry entry : map.entrySet()) {
            Object objUnwrap = objectWrapperAndUnwrapperM28685super.unwrap((TemplateModel) entry.getValue());
            objArr[0] = objUnwrap;
            Object key = entry.getKey();
            Method method = (Method) this.f24809new.get(key);
            if (method == null) {
                Method method2 = this.f24807for;
                if (method2 == null) {
                    throw new k52("Unknown property " + Csuper.m29330synchronized(key.toString()) + " on instance of " + this.f24808if.getName());
                }
                method2.invoke(obj, null, key, objArr[0]);
            } else {
                if (objUnwrap instanceof BigDecimal) {
                    objArr[0] = Ctry.m28680else((BigDecimal) objUnwrap, method.getParameterTypes()[0]);
                }
                try {
                    method.invoke(obj, objArr);
                } catch (Exception e) {
                    Class<?> cls = method.getParameterTypes()[0];
                    Object[] objArr2 = new Object[6];
                    objArr2[0] = "Failed to set JSP tag parameter ";
                    objArr2[1] = new fl2(key);
                    objArr2[2] = " (declared type: ";
                    objArr2[3] = new il2(cls) + ", actual value's type: ";
                    objArr2[4] = objArr[0] != null ? new il2(objArr[0].getClass()) : "Null";
                    objArr2[5] = "). See cause exception for the more specific cause...";
                    z4 z4Var = new z4(objArr2);
                    if ((e instanceof IllegalArgumentException) && !cls.isAssignableFrom(String.class) && objArr[0] != null && (objArr[0] instanceof String)) {
                        z4Var.m28397break("This problem is often caused by unnecessary parameter quotation. Paramters aren't quoted in FTL, similarly as they aren't quoted in most languages. For example, these parameter assignments are wrong: ", "<@my.tag p1=\"true\" p2=\"10\" p3=\"${someVariable}\" p4=\"${x+1}\" />", ". The correct form is: ", "<@my.tag p1=true p2=10 p3=someVariable p4=x+1 />", ". Only string literals are quoted (regardless of where they occur): ", "<@my.box style=\"info\" message=\"Hello ${name}!\" width=200 />", ".");
                    }
                    throw new vl2(e, (d0) null, z4Var);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    public final k52 m28886new(Exception exc) throws k52 {
        if (exc instanceof RuntimeException) {
            RuntimeException runtimeException = (RuntimeException) exc;
            if (!m28883if(runtimeException)) {
                throw runtimeException;
            }
        }
        if (exc instanceof k52) {
            throw ((k52) exc);
        }
        if (exc instanceof Cconst.Cif) {
            return m28886new(((Cconst.Cif) exc).m28920if());
        }
        return new k52("Error while invoking the " + Csuper.m29330synchronized(this.f24806do) + " JSP custom tag; see cause exception", exc instanceof TemplateException, exc);
    }
}
