package freemarker.ext.jython;

import org.python.core.PyInstance;
import org.python.core.PyObject;

/* renamed from: freemarker.ext.jython.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends Ccase {
    @Override // freemarker.ext.jython.Ccase
    /* renamed from: do */
    public String mo29051do(PyObject pyObject) {
        return pyObject.getType().getName();
    }

    @Override // freemarker.ext.jython.Ccase
    /* renamed from: for */
    public Object mo29052for(Object obj) {
        return ((PyInstance) obj).__tojava__(Object.class);
    }

    @Override // freemarker.ext.jython.Ccase
    /* renamed from: if */
    public boolean mo29053if(Object obj) {
        return obj instanceof PyInstance;
    }
}
