package freemarker.ext.beans;

import android.support.v4.bl2;
import android.support.v4.hl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.core.TemplateMarkupOutputModel;
import freemarker.core.z4;
import freemarker.template.ObjectWrapperAndUnwrapper;
import freemarker.template.TemplateModel;
import freemarker.template.utility.Cif;
import java.lang.reflect.Array;
import java.lang.reflect.Member;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class b {

    /* renamed from: for, reason: not valid java name */
    public static final String f24475for = "A markup output value can be converted to markup string like value?markup_string. But consider if the Java method whose argument it will be can handle markup strings properly.";

    /* renamed from: do, reason: not valid java name */
    private final Member f24476do;

    /* renamed from: if, reason: not valid java name */
    private final Class[] f24477if;

    public b(Member member, Class[] clsArr) {
        this.f24476do = member;
        this.f24477if = clsArr;
    }

    /* renamed from: do, reason: not valid java name */
    private k52 m28491do(int i, TemplateModel templateModel, Class cls) {
        z4 z4Var = new z4(j.m28650case(this.f24476do), " couldn't be called: Can't convert the ", new hl2(Integer.valueOf(i + 1)), " argument's value to the target Java type, ", Cif.m29270break(cls), ". The type of the actual value was: ", new bl2(templateModel));
        if ((templateModel instanceof TemplateMarkupOutputModel) && cls.isAssignableFrom(String.class)) {
            z4Var.m28402this(f24475for);
        }
        return new vl2(z4Var);
    }

    /* renamed from: if, reason: not valid java name */
    private k52 m28492if(int i, Class cls) {
        return new vl2(j.m28650case(this.f24476do), " couldn't be called: The value of the ", new hl2(Integer.valueOf(i + 1)), " argument was null, but the target Java parameter type (", Cif.m29270break(cls), ") is primitive and so can't store null.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    private Object[] m28493try(List list, Class[] clsArr, boolean z, Ctry ctry) throws k52, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        Object objTryUnwrapTo;
        if (list == null) {
            return null;
        }
        int length = clsArr.length;
        int size = list.size();
        Object[] objArr = new Object[length];
        Iterator it = list.iterator();
        int i = z ? length - 1 : length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < i) {
            Class cls = clsArr[i3];
            TemplateModel templateModel = (TemplateModel) it.next();
            Object objTryUnwrapTo2 = ctry.tryUnwrapTo(templateModel, cls);
            if (objTryUnwrapTo2 == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                throw m28491do(i3, templateModel, cls);
            }
            if (objTryUnwrapTo2 == null && cls.isPrimitive()) {
                throw m28492if(i3, cls);
            }
            objArr[i3] = objTryUnwrapTo2;
            i3++;
        }
        if (z) {
            Class cls2 = clsArr[length - 1];
            Class<?> componentType = cls2.getComponentType();
            if (it.hasNext()) {
                TemplateModel templateModel2 = (TemplateModel) it.next();
                int i4 = size - i3;
                if (i4 != 1 || (objTryUnwrapTo = ctry.tryUnwrapTo(templateModel2, cls2)) == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                    Object objNewInstance = Array.newInstance(componentType, i4);
                    while (i2 < i4) {
                        TemplateModel templateModel3 = (TemplateModel) (i2 == 0 ? templateModel2 : it.next());
                        Object objTryUnwrapTo3 = ctry.tryUnwrapTo(templateModel3, componentType);
                        if (objTryUnwrapTo3 == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                            throw m28491do(i3 + i2, templateModel3, componentType);
                        }
                        if (objTryUnwrapTo3 == null && componentType.isPrimitive()) {
                            throw m28492if(i3 + i2, componentType);
                        }
                        Array.set(objNewInstance, i2, objTryUnwrapTo3);
                        i2++;
                    }
                    objArr[i3] = objNewInstance;
                } else {
                    objArr[i3] = objTryUnwrapTo;
                }
            } else {
                objArr[i3] = Array.newInstance(componentType, 0);
            }
        }
        return objArr;
    }

    /* renamed from: for, reason: not valid java name */
    public Member m28494for() {
        return this.f24476do;
    }

    /* renamed from: new, reason: not valid java name */
    public Object[] m28495new(List list, Ctry ctry) throws k52 {
        List list2 = list == null ? Collections.EMPTY_LIST : list;
        boolean zM28658goto = j.m28658goto(this.f24476do);
        int length = this.f24477if.length;
        if (zM28658goto) {
            int i = length - 1;
            if (i > list2.size()) {
                Object[] objArr = new Object[7];
                objArr[0] = j.m28650case(this.f24476do);
                objArr[1] = " takes at least ";
                objArr[2] = Integer.valueOf(i);
                objArr[3] = i != 1 ? " arguments" : " argument";
                objArr[4] = ", but ";
                objArr[5] = Integer.valueOf(list2.size());
                objArr[6] = " was given.";
                throw new vl2(objArr);
            }
        } else if (length != list2.size()) {
            Object[] objArr2 = new Object[7];
            objArr2[0] = j.m28650case(this.f24476do);
            objArr2[1] = " takes ";
            objArr2[2] = Integer.valueOf(length);
            objArr2[3] = length != 1 ? " arguments" : " argument";
            objArr2[4] = ", but ";
            objArr2[5] = Integer.valueOf(list2.size());
            objArr2[6] = " was given.";
            throw new vl2(objArr2);
        }
        return m28493try(list2, this.f24477if, zM28658goto, ctry);
    }
}
