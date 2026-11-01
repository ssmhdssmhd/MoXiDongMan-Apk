package freemarker.ext.jython;

import org.python.core.PyJavaInstance;
import org.python.core.PyObject;

/* renamed from: freemarker.ext.jython.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Ccase {
    @Override // freemarker.ext.jython.Ccase
    /* renamed from: do, reason: not valid java name */
    public String mo29051do(PyObject pyObject) {
        return pyObject.getType().getFullName();
    }

    @Override // freemarker.ext.jython.Ccase
    /* renamed from: for, reason: not valid java name */
    public Object mo29052for(Object obj) {
        return ((PyJavaInstance) obj).__tojava__(Object.class);
    }

    @Override // freemarker.ext.jython.Ccase
    /* renamed from: if, reason: not valid java name */
    public boolean mo29053if(Object obj) {
        return obj instanceof PyJavaInstance;
    }
}
