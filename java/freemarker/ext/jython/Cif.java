package freemarker.ext.jython;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import java.util.Iterator;
import java.util.List;
import org.python.core.Py;
import org.python.core.PyException;
import org.python.core.PyObject;

/* renamed from: freemarker.ext.jython.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements TemplateBooleanModel, TemplateScalarModel, TemplateHashModel, TemplateMethodModelEx, AdapterTemplateModel, WrapperTemplateModel {

    /* renamed from: for, reason: not valid java name */
    public static final ModelFactory f24902for = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final PyObject f24903do;

    /* renamed from: if, reason: not valid java name */
    public final Cgoto f24904if;

    /* renamed from: freemarker.ext.jython.if$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cif((PyObject) obj, (Cgoto) objectWrapper);
        }
    }

    public Cif(PyObject pyObject, Cgoto cgoto) {
        this.f24903do = pyObject;
        this.f24904if = cgoto;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        int size = list.size();
        try {
            if (size == 0) {
                return this.f24904if.wrap(this.f24903do.__call__());
            }
            int i = 0;
            if (size == 1) {
                Cgoto cgoto = this.f24904if;
                return cgoto.wrap(this.f24903do.__call__(cgoto.m29058new((TemplateModel) list.get(0))));
            }
            PyObject[] pyObjectArr = new PyObject[size];
            Iterator it = list.iterator();
            while (it.hasNext()) {
                pyObjectArr[i] = this.f24904if.m29058new((TemplateModel) it.next());
                i++;
            }
            return this.f24904if.wrap(this.f24903do.__call__(pyObjectArr));
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        PyObject pyObject__finditem__;
        if (str != null) {
            str = str.intern();
        }
        try {
            if (this.f24904if.m29055do()) {
                pyObject__finditem__ = this.f24903do.__findattr__(str);
                if (pyObject__finditem__ == null) {
                    pyObject__finditem__ = this.f24903do.__finditem__(str);
                }
            } else {
                pyObject__finditem__ = this.f24903do.__finditem__(str);
                if (pyObject__finditem__ == null) {
                    pyObject__finditem__ = this.f24903do.__findattr__(str);
                }
            }
            return this.f24904if.wrap(pyObject__finditem__);
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        PyObject pyObject = this.f24903do;
        if (pyObject == null) {
            return null;
        }
        Object obj__tojava__ = pyObject.__tojava__(cls);
        return obj__tojava__ == Py.NoConversion ? this.f24903do.__tojava__(Object.class) : obj__tojava__;
    }

    @Override // freemarker.template.TemplateBooleanModel
    public boolean getAsBoolean() throws k52 {
        try {
            return this.f24903do.__nonzero__();
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() throws k52 {
        try {
            return this.f24903do.toString();
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        PyObject pyObject = this.f24903do;
        if (pyObject == null) {
            return null;
        }
        return pyObject.__tojava__(Object.class);
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() throws k52 {
        try {
            return this.f24903do.__len__() == 0;
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }
}
