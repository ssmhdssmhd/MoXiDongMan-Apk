package freemarker.core;

import android.support.v4.nl2;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.utility.Ccase;
import freemarker.template.utility.Cclass;

/* loaded from: classes.dex */
public interface TemplateClassResolver {
    public static final TemplateClassResolver UNRESTRICTED_RESOLVER = new Cdo();
    public static final TemplateClassResolver SAFER_RESOLVER = new Cif();
    public static final TemplateClassResolver ALLOWS_NOTHING_RESOLVER = new Cfor();

    /* renamed from: freemarker.core.TemplateClassResolver$do, reason: invalid class name */
    public static class Cdo implements TemplateClassResolver {
        @Override // freemarker.core.TemplateClassResolver
        public Class resolve(String str, d0 d0Var, Cstatic cstatic) throws TemplateException {
            try {
                return freemarker.template.utility.Cif.m29285try(str);
            } catch (ClassNotFoundException e) {
                throw new nl2(e, d0Var);
            }
        }
    }

    /* renamed from: freemarker.core.TemplateClassResolver$for, reason: invalid class name */
    public static class Cfor implements TemplateClassResolver {
        @Override // freemarker.core.TemplateClassResolver
        public Class resolve(String str, d0 d0Var, Cstatic cstatic) throws TemplateException {
            throw b5.m27866native(str, d0Var);
        }
    }

    /* renamed from: freemarker.core.TemplateClassResolver$if, reason: invalid class name */
    public static class Cif implements TemplateClassResolver {
        @Override // freemarker.core.TemplateClassResolver
        public Class resolve(String str, d0 d0Var, Cstatic cstatic) throws TemplateException {
            if (str.equals(Cclass.class.getName()) || str.equals(Ccase.class.getName()) || str.equals("freemarker.template.utility.JythonRuntime")) {
                throw b5.m27866native(str, d0Var);
            }
            try {
                return freemarker.template.utility.Cif.m29285try(str);
            } catch (ClassNotFoundException e) {
                throw new nl2(e, d0Var);
            }
        }
    }

    Class resolve(String str, d0 d0Var, Cstatic cstatic) throws TemplateException;
}
