package org.apache.commons.lang3.builder;

import android.support.v4.t72;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.apache.commons.lang3.Cif;

/* renamed from: org.apache.commons.lang3.builder.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends t72 {

    /* renamed from: case, reason: not valid java name */
    private boolean f28622case;

    /* renamed from: else, reason: not valid java name */
    public String[] f28623else;

    /* renamed from: goto, reason: not valid java name */
    private Class<?> f28624goto;

    /* renamed from: try, reason: not valid java name */
    private boolean f28625try;

    public Ctry(Object obj) {
        super(obj);
        this.f28625try = false;
        this.f28622case = false;
        this.f28624goto = null;
    }

    public static String[] G(Collection<String> collection) {
        return collection == null ? Cif.f28724for : H(collection.toArray());
    }

    public static String[] H(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj.toString());
            }
        }
        return (String[]) arrayList.toArray(Cif.f28724for);
    }

    public static String I(Object obj) {
        return M(obj, null, false, false, null);
    }

    public static String J(Object obj, Ccase ccase) {
        return M(obj, ccase, false, false, null);
    }

    public static String K(Object obj, Ccase ccase, boolean z) {
        return M(obj, ccase, z, false, null);
    }

    public static String L(Object obj, Ccase ccase, boolean z, boolean z2) {
        return M(obj, ccase, z, z2, null);
    }

    public static <T> String M(T t, Ccase ccase, boolean z, boolean z2, Class<? super T> cls) {
        return new Ctry(t, ccase, null, cls, z, z2).toString();
    }

    public static String N(Object obj, Collection<String> collection) {
        return O(obj, G(collection));
    }

    public static String O(Object obj, String... strArr) {
        return new Ctry(obj).E(strArr).toString();
    }

    public boolean A() {
        return this.f28622case;
    }

    public Ctry B(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException {
        o().reflectionAppendArrayDetail(n(), null, obj);
        return this;
    }

    public void C(boolean z) {
        this.f28625try = z;
    }

    public void D(boolean z) {
        this.f28622case = z;
    }

    public Ctry E(String... strArr) {
        if (strArr == null) {
            this.f28623else = null;
        } else {
            String[] strArrH = H(strArr);
            this.f28623else = strArrH;
            Arrays.sort(strArrH);
        }
        return this;
    }

    public void F(Class<?> cls) {
        Object objM;
        if (cls != null && (objM = m()) != null && !cls.isInstance(objM)) {
            throw new IllegalArgumentException("Specified class is not a superclass of the object");
        }
        this.f28624goto = cls;
    }

    @Override // android.support.v4.t72
    public String toString() throws SecurityException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (m() == null) {
            return o().getNullText();
        }
        Class<?> superclass = m().getClass();
        v(superclass);
        while (superclass.getSuperclass() != null && superclass != x()) {
            superclass = superclass.getSuperclass();
            v(superclass);
        }
        return super.toString();
    }

    public boolean u(Field field) {
        if (field.getName().indexOf(36) != -1) {
            return false;
        }
        if (Modifier.isTransient(field.getModifiers()) && !A()) {
            return false;
        }
        if (Modifier.isStatic(field.getModifiers()) && !z()) {
            return false;
        }
        String[] strArr = this.f28623else;
        return strArr == null || Arrays.binarySearch(strArr, field.getName()) < 0;
    }

    public void v(Class<?> cls) throws SecurityException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (cls.isArray()) {
            B(m());
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (Field field : declaredFields) {
            String name = field.getName();
            if (u(field)) {
                try {
                    m7752final(name, y(field));
                } catch (IllegalAccessException e) {
                    throw new InternalError("Unexpected IllegalAccessException: " + e.getMessage());
                }
            }
        }
    }

    public String[] w() {
        return (String[]) this.f28623else.clone();
    }

    public Class<?> x() {
        return this.f28624goto;
    }

    public Object y(Field field) throws IllegalAccessException, IllegalArgumentException {
        return field.get(m());
    }

    public boolean z() {
        return this.f28625try;
    }

    public Ctry(Object obj, Ccase ccase) {
        super(obj, ccase);
        this.f28625try = false;
        this.f28622case = false;
        this.f28624goto = null;
    }

    public Ctry(Object obj, Ccase ccase, StringBuffer stringBuffer) {
        super(obj, ccase, stringBuffer);
        this.f28625try = false;
        this.f28622case = false;
        this.f28624goto = null;
    }

    public <T> Ctry(T t, Ccase ccase, StringBuffer stringBuffer, Class<? super T> cls, boolean z, boolean z2) {
        super(t, ccase, stringBuffer);
        this.f28625try = false;
        this.f28622case = false;
        this.f28624goto = null;
        F(cls);
        D(z);
        C(z2);
    }
}
