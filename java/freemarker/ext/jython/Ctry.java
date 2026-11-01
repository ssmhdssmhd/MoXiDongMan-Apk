package freemarker.ext.jython;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;
import org.python.core.PyException;
import org.python.core.PyObject;

/* renamed from: freemarker.ext.jython.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends freemarker.ext.jython.Cif implements TemplateSequenceModel, TemplateCollectionModel {

    /* renamed from: new, reason: not valid java name */
    public static final ModelFactory f24906new = new Cdo();

    /* renamed from: freemarker.ext.jython.try$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Ctry((PyObject) obj, (Cgoto) objectWrapper);
        }
    }

    /* renamed from: freemarker.ext.jython.try$if, reason: invalid class name */
    public class Cif implements TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        public int f24907do = 0;

        public Cif() {
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            return this.f24907do < Ctry.this.size();
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            Ctry ctry = Ctry.this;
            int i = this.f24907do;
            this.f24907do = i + 1;
            return ctry.get(i);
        }
    }

    public Ctry(PyObject pyObject, Cgoto cgoto) {
        super(pyObject, cgoto);
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        try {
            return this.f24904if.wrap(this.f24903do.__finditem__(i));
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() {
        return new Cif();
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() throws k52 {
        try {
            return this.f24903do.__len__();
        } catch (PyException e) {
            throw new k52((Exception) e);
        }
    }
}
