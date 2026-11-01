package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.mc;
import freemarker.template.ObjectWrapperAndUnwrapper;
import freemarker.template.TemplateModel;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: freemarker.ext.beans.interface, reason: invalid class name */
/* loaded from: classes.dex */
class Cinterface extends Cvolatile {
    public Cinterface(boolean z) {
        super(z);
    }

    /* renamed from: class, reason: not valid java name */
    private Object m28647class(Object[] objArr, List list, Cthis cthis, Ctry ctry) throws k52, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        Class[] clsArrMo28630for = cthis.mo28630for();
        int length = clsArrMo28630for.length;
        int i = length - 1;
        Class<?> componentType = clsArrMo28630for[i].getComponentType();
        int length2 = objArr.length;
        if (objArr.length == length) {
            Object objTryUnwrapTo = ctry.tryUnwrapTo((TemplateModel) list.get(i), componentType);
            if (objTryUnwrapTo == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                return Integer.valueOf(i + 1);
            }
            Object objNewInstance = Array.newInstance(componentType, 1);
            Array.set(objNewInstance, 0, objTryUnwrapTo);
            objArr[i] = objNewInstance;
            return objArr;
        }
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        Object objNewInstance2 = Array.newInstance(componentType, length2 - i);
        for (int i2 = i; i2 < length2; i2++) {
            Object objTryUnwrapTo2 = ctry.tryUnwrapTo((TemplateModel) list.get(i2), componentType);
            if (objTryUnwrapTo2 == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                return Integer.valueOf(i2 + 1);
            }
            Array.set(objNewInstance2, i2 - i, objTryUnwrapTo2);
        }
        objArr2[i] = objNewInstance2;
        return objArr2;
    }

    /* renamed from: const, reason: not valid java name */
    private void m28648const(int i, Class[] clsArr, int[] iArr) {
        Class[] clsArr2 = m28737this()[i];
        if (clsArr2 == null) {
            return;
        }
        int length = clsArr2.length;
        int length2 = clsArr.length;
        int iMin = Math.min(length2, length);
        for (int i2 = 0; i2 < iMin; i2++) {
            clsArr2[i2] = m28736new(clsArr2[i2], clsArr[i2]);
        }
        if (length > length2) {
            Class cls = clsArr[length2 - 1];
            while (length2 < length) {
                clsArr2[length2] = m28736new(clsArr2[length2], cls);
                length2++;
            }
        }
        if (this.f24666try) {
            m28730break(i, iArr);
        }
    }

    @Override // freemarker.ext.beans.Cvolatile
    /* renamed from: catch */
    public Class[] mo28488catch(Cthis cthis) {
        Class[] clsArr = (Class[]) cthis.mo28630for().clone();
        int length = clsArr.length - 1;
        Class<?> componentType = clsArr[length].getComponentType();
        if (componentType == null) {
            throw new mc("Only varargs methods should be handled here");
        }
        clsArr[length] = componentType;
        return clsArr;
    }

    @Override // freemarker.ext.beans.Cvolatile
    /* renamed from: if */
    public void mo28489if(Class[] clsArr, int[] iArr) {
        Class[] clsArr2;
        int length = clsArr.length;
        Class[][] clsArrM28737this = m28737this();
        int i = length - 1;
        int i2 = i;
        while (true) {
            if (i2 < 0) {
                break;
            }
            Class[] clsArr3 = clsArrM28737this[i2];
            if (clsArr3 != null) {
                m28648const(length, clsArr3, m28735goto(i2));
                break;
            }
            i2--;
        }
        int i3 = length + 1;
        if (i3 < clsArrM28737this.length && (clsArr2 = clsArrM28737this[i3]) != null) {
            m28648const(length, clsArr2, m28735goto(i3));
        }
        while (i3 < clsArrM28737this.length) {
            m28648const(i3, clsArr, iArr);
            i3++;
        }
        if (length > 0) {
            m28648const(i, clsArr, iArr);
        }
    }

    @Override // freemarker.ext.beans.Cvolatile
    /* renamed from: try */
    public Cextends mo28490try(List list, Ctry ctry) throws k52, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        List list2 = list == null ? Collections.EMPTY_LIST : list;
        int size = list2.size();
        Class<?>[][] clsArrM28737this = m28737this();
        Object[] objArr = new Object[size];
        int iMin = Math.min(size + 1, clsArrM28737this.length - 1);
        int[] iArrM28735goto = null;
        loop0: while (iMin >= 0) {
            Class<?>[] clsArr = clsArrM28737this[iMin];
            if (clsArr != null) {
                iArrM28735goto = m28735goto(iMin);
                if (iArrM28735goto == Cvolatile.f24660case) {
                    iArrM28735goto = null;
                }
                Iterator it = list2.iterator();
                int i = 0;
                while (i < size) {
                    int i2 = i < iMin ? i : iMin - 1;
                    Object objU = ctry.u((TemplateModel) it.next(), clsArr[i2], iArrM28735goto != null ? iArrM28735goto[i2] : 0);
                    if (objU == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                        break;
                    }
                    objArr[i] = objU;
                    i++;
                }
                break loop0;
            }
            if (iMin == 0) {
                return Cimport.f24589new;
            }
            iMin--;
        }
        Cdefault cdefaultM28731case = m28731case(objArr, true);
        if (!(cdefaultM28731case instanceof Cthis)) {
            return Cimport.m28642if((Cwhile) cdefaultM28731case, objArr);
        }
        Cthis cthis = (Cthis) cdefaultM28731case;
        Object objM28647class = m28647class(objArr, list2, cthis, ctry);
        if (!(objM28647class instanceof Object[])) {
            return Cimport.m28639case(((Integer) objM28647class).intValue());
        }
        Object[] objArr2 = (Object[]) objM28647class;
        if (!this.f24666try) {
            Ctry.m28686this(cthis.mo28630for(), objArr2);
        } else if (iArrM28735goto != null) {
            m28734for(objArr2, cthis.mo28630for(), iArrM28735goto);
        }
        return new Cfinally(cthis, objArr2);
    }
}
