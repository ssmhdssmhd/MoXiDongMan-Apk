package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.ObjectWrapperAndUnwrapper;
import freemarker.template.TemplateModel;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: freemarker.ext.beans.abstract, reason: invalid class name */
/* loaded from: classes.dex */
class Cabstract extends Cvolatile {
    public Cabstract(boolean z) {
        super(z);
    }

    @Override // freemarker.ext.beans.Cvolatile
    /* renamed from: catch, reason: not valid java name */
    public Class[] mo28488catch(Cthis cthis) {
        return cthis.mo28630for();
    }

    @Override // freemarker.ext.beans.Cvolatile
    /* renamed from: if, reason: not valid java name */
    public void mo28489if(Class[] clsArr, int[] iArr) {
    }

    @Override // freemarker.ext.beans.Cvolatile
    /* renamed from: try, reason: not valid java name */
    public Cextends mo28490try(List list, Ctry ctry) throws k52 {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        int size = list.size();
        Class<?>[][] clsArrM28737this = m28737this();
        if (clsArrM28737this.length <= size) {
            return Cimport.f24589new;
        }
        Class<?>[] clsArr = clsArrM28737this[size];
        if (clsArr == null) {
            return Cimport.f24589new;
        }
        Object[] objArr = new Object[size];
        int[] iArrM28735goto = m28735goto(size);
        if (iArrM28735goto == Cvolatile.f24660case) {
            iArrM28735goto = null;
        }
        Iterator it = list.iterator();
        for (int i = 0; i < size; i++) {
            Object objU = ctry.u((TemplateModel) it.next(), clsArr[i], iArrM28735goto != null ? iArrM28735goto[i] : 0);
            if (objU == ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
                return Cimport.m28639case(i + 1);
            }
            objArr[i] = objU;
        }
        Cdefault cdefaultM28731case = m28731case(objArr, false);
        if (!(cdefaultM28731case instanceof Cthis)) {
            return Cimport.m28642if((Cwhile) cdefaultM28731case, objArr);
        }
        Cthis cthis = (Cthis) cdefaultM28731case;
        if (!this.f24666try) {
            Ctry.m28686this(cthis.mo28630for(), objArr);
        } else if (iArrM28735goto != null) {
            m28734for(objArr, cthis.mo28630for(), iArrM28735goto);
        }
        return new Cfinally(cthis, objArr);
    }
}
