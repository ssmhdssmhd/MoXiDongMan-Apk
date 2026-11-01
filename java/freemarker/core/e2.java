package freemarker.core;

import android.support.v4.k52;
import android.support.v4.nl2;
import freemarker.ext.beans.Cnew;
import freemarker.ext.beans.Ctry;
import freemarker.template.Cstatic;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.util.List;

/* loaded from: classes.dex */
class e2 extends Creturn {

    /* renamed from: final, reason: not valid java name */
    public static Class<?> f23679final;

    /* renamed from: freemarker.core.e2$do, reason: invalid class name */
    public class Cdo implements TemplateMethodModelEx {

        /* renamed from: do, reason: not valid java name */
        private final Class<?> f23680do;

        /* renamed from: if, reason: not valid java name */
        private final d0 f23682if;

        public Cdo(String str, d0 d0Var, Cstatic cstatic) throws TemplateException {
            this.f23682if = d0Var;
            Class<?> clsResolve = d0Var.m28261interface().resolve(str, d0Var, cstatic);
            this.f23680do = clsResolve;
            if (!TemplateModel.class.isAssignableFrom(clsResolve)) {
                throw new nl2(e2.this, d0Var, "Class ", clsResolve.getName(), " does not implement freemarker.template.TemplateModel");
            }
            if (Cnew.class.isAssignableFrom(clsResolve)) {
                throw new nl2(e2.this, d0Var, "Bean Models cannot be instantiated using the ?", e2.this.f24115this, " built-in");
            }
            Class<?> cls = e2.f23679final;
            if (cls != null && cls.isAssignableFrom(clsResolve)) {
                throw new nl2(e2.this, d0Var, "Jython Models cannot be instantiated using the ?", e2.this.f24115this, " built-in");
            }
        }

        @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            ObjectWrapper objectWrapperM28258implements = this.f23682if.m28258implements();
            return (objectWrapperM28258implements instanceof Ctry ? (Ctry) objectWrapperM28258implements : Ctry.m28685super()).b(this.f23680do, list);
        }
    }

    static {
        try {
            f23679final = Class.forName("freemarker.ext.jython.if");
        } catch (Throwable unused) {
            f23679final = null;
        }
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        return new Cdo(this.f24114goto.mo28045default(d0Var), d0Var, this.f24114goto.getTemplate());
    }
}
