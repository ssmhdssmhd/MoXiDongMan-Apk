package freemarker.ext.jython;

import android.support.v4.c81;
import android.support.v4.k52;
import freemarker.ext.util.Cif;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelAdapter;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import org.python.core.Py;
import org.python.core.PyException;
import org.python.core.PyInteger;
import org.python.core.PyLong;
import org.python.core.PyObject;
import org.python.core.PyString;

/* renamed from: freemarker.ext.jython.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements ObjectWrapper {

    /* renamed from: for, reason: not valid java name */
    private static final Class f24896for = PyObject.class;

    /* renamed from: new, reason: not valid java name */
    public static final Cgoto f24897new = new Cgoto();

    /* renamed from: do, reason: not valid java name */
    private final Cif f24898do = new Cfor(this);

    /* renamed from: if, reason: not valid java name */
    private boolean f24899if = true;

    /* renamed from: freemarker.ext.jython.goto$do, reason: invalid class name */
    public class Cdo extends PyObject implements TemplateModelAdapter {

        /* renamed from: do, reason: not valid java name */
        private final TemplateModel f24900do;

        public Cdo(TemplateModel templateModel) {
            this.f24900do = templateModel;
        }

        /* renamed from: else, reason: not valid java name */
        private String m29059else() {
            TemplateModel templateModel = this.f24900do;
            return templateModel == null ? "null" : templateModel.getClass().getName();
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: org.python.core.PyException */
        /* renamed from: case, reason: not valid java name */
        public boolean m29060case() throws PyException {
            try {
                TemplateModel templateModel = this.f24900do;
                if (templateModel instanceof TemplateBooleanModel) {
                    return ((TemplateBooleanModel) templateModel).getAsBoolean();
                }
                if (templateModel instanceof TemplateSequenceModel) {
                    return ((TemplateSequenceModel) templateModel).size() > 0;
                }
                if (templateModel instanceof TemplateHashModel) {
                    return !((TemplateHashModelEx) templateModel).isEmpty();
                }
                return false;
            } catch (k52 e) {
                throw Py.JavaError(e);
            }
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: org.python.core.PyException */
        /* renamed from: do, reason: not valid java name */
        public PyObject m29061do(PyObject[] pyObjectArr, String[] strArr) throws PyException {
            TemplateModel templateModel = this.f24900do;
            if (!(templateModel instanceof TemplateMethodModel)) {
                throw Py.TypeError("call of non-method model (" + m29059else() + ")");
            }
            boolean z = templateModel instanceof TemplateMethodModelEx;
            ArrayList arrayList = new ArrayList(pyObjectArr.length);
            for (int i = 0; i < pyObjectArr.length; i++) {
                try {
                    arrayList.add(z ? Cgoto.this.wrap(pyObjectArr[i]) : pyObjectArr[i] == null ? null : pyObjectArr[i].toString());
                } catch (k52 e) {
                    throw Py.JavaError(e);
                }
            }
            return Cgoto.this.m29058new((TemplateModel) ((TemplateMethodModelEx) this.f24900do).exec(arrayList));
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: org.python.core.PyException */
        /* renamed from: for, reason: not valid java name */
        public PyObject m29062for(String str) throws PyException {
            TemplateModel templateModel = this.f24900do;
            if (templateModel instanceof TemplateHashModel) {
                try {
                    return Cgoto.this.m29058new(((TemplateHashModel) templateModel).get(str));
                } catch (k52 e) {
                    throw Py.JavaError(e);
                }
            }
            throw Py.TypeError("item lookup on non-hash model (" + m29059else() + ")");
        }

        @Override // freemarker.template.TemplateModelAdapter
        public TemplateModel getTemplateModel() {
            return this.f24900do;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: org.python.core.PyException */
        /* renamed from: if, reason: not valid java name */
        public PyObject m29063if(int i) throws PyException {
            TemplateModel templateModel = this.f24900do;
            if (templateModel instanceof TemplateSequenceModel) {
                try {
                    return Cgoto.this.m29058new(((TemplateSequenceModel) templateModel).get(i));
                } catch (k52 e) {
                    throw Py.JavaError(e);
                }
            }
            throw Py.TypeError("item lookup on non-sequence model (" + m29059else() + ")");
        }

        /* renamed from: new, reason: not valid java name */
        public PyObject m29064new(PyObject pyObject) {
            return pyObject instanceof PyInteger ? m29063if(((PyInteger) pyObject).getValue()) : m29062for(pyObject.toString());
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: org.python.core.PyException */
        /* renamed from: try, reason: not valid java name */
        public int m29065try() throws PyException {
            try {
                TemplateModel templateModel = this.f24900do;
                if (templateModel instanceof TemplateSequenceModel) {
                    return ((TemplateSequenceModel) templateModel).size();
                }
                if (templateModel instanceof TemplateHashModelEx) {
                    return ((TemplateHashModelEx) templateModel).size();
                }
                return 0;
            } catch (k52 e) {
                throw Py.JavaError(e);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m29055do() {
        return this.f24899if;
    }

    /* renamed from: for, reason: not valid java name */
    public void m29056for(boolean z) {
        this.f24898do.m29134goto(z);
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized void m29057if(boolean z) {
        this.f24899if = z;
    }

    /* renamed from: new, reason: not valid java name */
    public PyObject m29058new(TemplateModel templateModel) throws k52 {
        if (templateModel instanceof AdapterTemplateModel) {
            return Py.java2py(((AdapterTemplateModel) templateModel).getAdaptedObject(f24896for));
        }
        if (templateModel instanceof WrapperTemplateModel) {
            return Py.java2py(((WrapperTemplateModel) templateModel).getWrappedObject());
        }
        if (templateModel instanceof TemplateScalarModel) {
            return new PyString(((TemplateScalarModel) templateModel).getAsString());
        }
        if (!(templateModel instanceof TemplateNumberModel)) {
            return new Cdo(templateModel);
        }
        Number asNumber = ((TemplateNumberModel) templateModel).getAsNumber();
        if (asNumber instanceof BigDecimal) {
            asNumber = c81.m791if(asNumber);
        }
        return asNumber instanceof BigInteger ? new PyLong((BigInteger) asNumber) : Py.java2py(asNumber);
    }

    @Override // freemarker.template.ObjectWrapper
    public TemplateModel wrap(Object obj) {
        if (obj == null) {
            return null;
        }
        return this.f24898do.m29133for(obj);
    }
}
