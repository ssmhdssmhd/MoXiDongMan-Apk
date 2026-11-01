package freemarker.ext.rhino;

import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.ext.beans.Ctry;
import freemarker.ext.util.ModelFactory;
import freemarker.template.TemplateModel;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.UniqueTag;
import org.mozilla.javascript.Wrapper;

/* renamed from: freemarker.ext.rhino.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Ctry {

    /* renamed from: finally, reason: not valid java name */
    private static final Object f24910finally;

    /* renamed from: freemarker.ext.rhino.for$do, reason: invalid class name */
    public static class Cdo implements PrivilegedExceptionAction {
        @Override // java.security.PrivilegedExceptionAction
        public Object run() throws Exception {
            return Undefined.class.getField("instance").get(null);
        }
    }

    static {
        try {
            f24910finally = AccessController.doPrivileged(new Cdo());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new kb2(e2);
        }
    }

    @Override // freemarker.ext.beans.Ctry
    /* renamed from: switch */
    public ModelFactory mo28709switch(Class cls) {
        return Scriptable.class.isAssignableFrom(cls) ? Cif.f24911for : super.mo28709switch(cls);
    }

    @Override // freemarker.ext.beans.Ctry, freemarker.template.ObjectWrapper
    public TemplateModel wrap(Object obj) throws k52 {
        if (obj == f24910finally || obj == UniqueTag.NOT_FOUND) {
            return null;
        }
        if (obj == UniqueTag.NULL_VALUE) {
            return super.wrap(null);
        }
        if (obj instanceof Wrapper) {
            obj = ((Wrapper) obj).unwrap();
        }
        return super.wrap(obj);
    }
}
