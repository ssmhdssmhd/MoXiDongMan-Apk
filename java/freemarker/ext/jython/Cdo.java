package freemarker.ext.jython;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import org.python.core.PyException;
import org.python.core.PyObject;

/* renamed from: freemarker.ext.jython.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif implements TemplateHashModelEx {

    /* renamed from: case, reason: not valid java name */
    private static final String f24890case = "values";

    /* renamed from: else, reason: not valid java name */
    public static final ModelFactory f24891else = new C0256do();

    /* renamed from: new, reason: not valid java name */
    private static final String f24892new = "keys";

    /* renamed from: try, reason: not valid java name */
    private static final String f24893try = "keySet";

    /* renamed from: freemarker.ext.jython.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0256do implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cdo((PyObject) obj, (Cgoto) objectWrapper);
        }
    }

    public Cdo(PyObject pyObject, Cgoto cgoto) {
        super(pyObject, cgoto);
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() throws k52 {
        try {
            PyObject pyObject__findattr__ = this.f24903do.__findattr__(f24892new);
            if (pyObject__findattr__ == null) {
                pyObject__findattr__ = this.f24903do.__findattr__(f24893try);
            }
            if (pyObject__findattr__ != null) {
                return (TemplateCollectionModel) this.f24904if.wrap(pyObject__findattr__.__call__());
            }
            throw new k52("'?keys' is not supported as there is no 'keys' nor 'keySet' attribute on an instance of " + Celse.f24894do.mo29051do(this.f24903do));
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() throws k52 {
        try {
            return this.f24903do.__len__();
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() throws k52 {
        try {
            PyObject pyObject__findattr__ = this.f24903do.__findattr__(f24890case);
            if (pyObject__findattr__ != null) {
                return (TemplateCollectionModel) this.f24904if.wrap(pyObject__findattr__.__call__());
            }
            throw new k52("'?values' is not supported as there is no 'values' attribute on an instance of " + Celse.f24894do.mo29051do(this.f24903do));
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }
}
