package freemarker.ext.jython;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import org.python.core.Py;
import org.python.core.PyException;
import org.python.core.PyObject;

/* renamed from: freemarker.ext.jython.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cif implements TemplateNumberModel {

    /* renamed from: new, reason: not valid java name */
    public static final ModelFactory f24905new = new Cdo();

    /* renamed from: freemarker.ext.jython.new$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cnew((PyObject) obj, (Cgoto) objectWrapper);
        }
    }

    public Cnew(PyObject pyObject, Cgoto cgoto) {
        super(pyObject, cgoto);
    }

    @Override // freemarker.template.TemplateNumberModel
    public Number getAsNumber() throws k52 {
        try {
            Object obj__tojava__ = this.f24903do.__tojava__(Number.class);
            if (obj__tojava__ != null && obj__tojava__ != Py.NoConversion) {
                return (Number) obj__tojava__;
            }
            return Double.valueOf(this.f24903do.__float__().getValue());
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }
}
