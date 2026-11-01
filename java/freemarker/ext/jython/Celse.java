package freemarker.ext.jython;

import freemarker.core.k;
import freemarker.template.utility.Csuper;
import org.python.core.PySystemState;

/* renamed from: freemarker.ext.jython.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse {

    /* renamed from: do, reason: not valid java name */
    public static final Ccase f24894do;

    static {
        try {
            int iC = Csuper.C(PySystemState.class.getField(k.f23925continue).get(null).toString());
            ClassLoader classLoader = Ccase.class.getClassLoader();
            try {
                if (iC >= 2005000) {
                    f24894do = (Ccase) classLoader.loadClass("freemarker.ext.jython._Jython25VersionAdapter").newInstance();
                } else if (iC >= 2002000) {
                    f24894do = (Ccase) classLoader.loadClass("freemarker.ext.jython._Jython22VersionAdapter").newInstance();
                } else {
                    f24894do = (Ccase) classLoader.loadClass("freemarker.ext.jython._Jython20And21VersionAdapter").newInstance();
                }
            } catch (ClassNotFoundException e) {
                throw m29054do(e);
            } catch (IllegalAccessException e2) {
                throw m29054do(e2);
            } catch (InstantiationException e3) {
                throw m29054do(e3);
            }
        } catch (Exception e4) {
            throw new RuntimeException("Failed to get Jython version: " + e4);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static RuntimeException m29054do(Exception exc) {
        return new RuntimeException("Unexpected exception when creating JythonVersionAdapter", exc);
    }
}
