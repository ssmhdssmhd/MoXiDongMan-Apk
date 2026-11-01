package freemarker.ext.jython;

import freemarker.ext.beans.Cthrow;
import freemarker.ext.beans.Ctry;
import freemarker.ext.util.Cif;
import freemarker.template.TemplateModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.python.core.Py;
import org.python.core.PyDictionary;
import org.python.core.PyFloat;
import org.python.core.PyInteger;
import org.python.core.PyLong;
import org.python.core.PyNone;
import org.python.core.PyObject;
import org.python.core.PySequence;
import org.python.core.PyStringMap;

/* renamed from: freemarker.ext.jython.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor extends Cif {

    /* renamed from: new, reason: not valid java name */
    private final Cgoto f24895new;

    public Cfor(Cgoto cgoto) {
        this.f24895new = cgoto;
    }

    @Override // freemarker.ext.util.Cif
    /* renamed from: if */
    public TemplateModel mo4608if(Object obj) {
        boolean z;
        Ccase ccase = Celse.f24894do;
        boolean z2 = false;
        if (ccase.mo29053if(obj)) {
            Object objMo29052for = ccase.mo29052for(obj);
            if (objMo29052for instanceof TemplateModel) {
                return (TemplateModel) objMo29052for;
            }
            boolean z3 = objMo29052for instanceof Map;
            if (objMo29052for instanceof Date) {
                return new Cthrow((Date) objMo29052for, Ctry.m28685super());
            }
            if (objMo29052for instanceof Collection) {
                if (!(objMo29052for instanceof List)) {
                    obj = new ArrayList((Collection) objMo29052for);
                }
                z2 = z3;
                z = true;
            } else {
                z2 = z3;
                z = false;
            }
        } else {
            z = false;
        }
        if (!(obj instanceof PyObject)) {
            obj = Py.java2py(obj);
        }
        if (z2 || (obj instanceof PyDictionary) || (obj instanceof PyStringMap)) {
            return Cdo.f24891else.create(obj, this.f24895new);
        }
        if (z || (obj instanceof PySequence)) {
            return Ctry.f24906new.create(obj, this.f24895new);
        }
        if ((obj instanceof PyInteger) || (obj instanceof PyLong) || (obj instanceof PyFloat)) {
            return Cnew.f24905new.create(obj, this.f24895new);
        }
        if (obj instanceof PyNone) {
            return null;
        }
        return Cif.f24902for.create(obj, this.f24895new);
    }

    @Override // freemarker.ext.util.Cif
    /* renamed from: try */
    public boolean mo4609try(Object obj) {
        return true;
    }
}
