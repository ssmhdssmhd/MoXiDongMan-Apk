package freemarker.core;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.core.d1;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.util.List;

/* renamed from: freemarker.core.instanceof, reason: invalid class name */
/* loaded from: classes.dex */
class Cinstanceof {

    /* renamed from: freemarker.core.instanceof$break, reason: invalid class name */
    public static class Cbreak extends Cextends {

        /* renamed from: freemarker.core.instanceof$break$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final d1.Cdo f23862do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cbreak.this.g(list, 1, Integer.MAX_VALUE);
                return list.get(this.f23862do.m27951try() % list.size());
            }

            private Cdo(d1.Cdo cdo) {
                this.f23862do = cdo;
            }
        }

        @Override // freemarker.core.Cextends
        public TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException {
            return new Cdo(cdo);
        }
    }

    /* renamed from: freemarker.core.instanceof$case, reason: invalid class name */
    public static class Ccase extends Cif {
        @Override // freemarker.core.Cinstanceof.Cif
        public boolean t(d1.Cdo cdo, d0 d0Var) {
            return cdo.m27951try() % 2 != 0;
        }
    }

    /* renamed from: freemarker.core.instanceof$catch, reason: invalid class name */
    public static class Ccatch extends Cextends {

        /* renamed from: super, reason: not valid java name */
        private static final ez1 f23864super = new ez1("odd");

        /* renamed from: throw, reason: not valid java name */
        private static final ez1 f23865throw = new ez1("even");

        @Override // freemarker.core.Cextends
        public TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException {
            return cdo.m27951try() % 2 == 0 ? f23864super : f23865throw;
        }
    }

    /* renamed from: freemarker.core.instanceof$class, reason: invalid class name */
    public static class Cclass extends Cextends {

        /* renamed from: super, reason: not valid java name */
        private static final ez1 f23866super = new ez1("Odd");

        /* renamed from: throw, reason: not valid java name */
        private static final ez1 f23867throw = new ez1("Even");

        @Override // freemarker.core.Cextends
        public TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException {
            return cdo.m27951try() % 2 == 0 ? f23866super : f23867throw;
        }
    }

    /* renamed from: freemarker.core.instanceof$else, reason: invalid class name */
    public static class Celse extends Cif {
        @Override // freemarker.core.Cinstanceof.Cif
        public boolean t(d1.Cdo cdo, d0 d0Var) {
            return cdo.m27951try() == 0;
        }
    }

    /* renamed from: freemarker.core.instanceof$for, reason: invalid class name */
    public static class Cfor extends Cextends {
        @Override // freemarker.core.Cextends
        public TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException {
            return new az1(cdo.m27951try() + 1);
        }
    }

    /* renamed from: freemarker.core.instanceof$goto, reason: invalid class name */
    public static class Cgoto extends Cif {
        @Override // freemarker.core.Cinstanceof.Cif
        public boolean t(d1.Cdo cdo, d0 d0Var) {
            return !cdo.m27947case();
        }
    }

    /* renamed from: freemarker.core.instanceof$if, reason: invalid class name */
    public static abstract class Cif extends Cextends {
        @Override // freemarker.core.Cextends
        public final TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException {
            return t(cdo, d0Var) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }

        public abstract boolean t(d1.Cdo cdo, d0 d0Var);
    }

    /* renamed from: freemarker.core.instanceof$new, reason: invalid class name */
    public static class Cnew extends Cif {
        @Override // freemarker.core.Cinstanceof.Cif
        public boolean t(d1.Cdo cdo, d0 d0Var) {
            return cdo.m27947case();
        }
    }

    /* renamed from: freemarker.core.instanceof$this, reason: invalid class name */
    public static class Cthis extends Cif {
        @Override // freemarker.core.Cinstanceof.Cif
        public boolean t(d1.Cdo cdo, d0 d0Var) {
            return cdo.m27951try() % 2 == 0;
        }
    }

    /* renamed from: freemarker.core.instanceof$try, reason: invalid class name */
    public static class Ctry extends Cextends {
        @Override // freemarker.core.Cextends
        public TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException {
            return new az1(cdo.m27951try());
        }
    }
}
