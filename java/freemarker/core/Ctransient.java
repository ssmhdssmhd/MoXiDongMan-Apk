package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.util.List;

/* renamed from: freemarker.core.transient, reason: invalid class name */
/* loaded from: classes.dex */
class Ctransient {

    /* renamed from: freemarker.core.transient$case, reason: invalid class name */
    public static class Ccase extends Cif {
        public Ccase() {
            super();
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelR = r(d0Var);
            return templateModelR == null ? TemplateModel.NOTHING : templateModelR;
        }
    }

    /* renamed from: freemarker.core.transient$for, reason: invalid class name */
    public static class Cfor extends Cif {

        /* renamed from: final, reason: not valid java name */
        private static final TemplateMethodModelEx f24230final = new Cdo();

        /* renamed from: freemarker.core.transient$for$do, reason: invalid class name */
        public static class Cdo implements TemplateMethodModelEx {
            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int size = list.size();
                if (size == 0) {
                    throw b5.m27874super("?default", size, 1, Integer.MAX_VALUE);
                }
                for (int i = 0; i < size; i++) {
                    TemplateModel templateModel = (TemplateModel) list.get(i);
                    if (templateModel != null) {
                        return templateModel;
                    }
                }
                return null;
            }
        }

        /* renamed from: freemarker.core.transient$for$if, reason: invalid class name */
        public static class Cif implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final TemplateModel f24231do;

            public Cif(TemplateModel templateModel) {
                this.f24231do = templateModel;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) {
                return this.f24231do;
            }
        }

        public Cfor() {
            super();
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelR = r(d0Var);
            return templateModelR == null ? f24230final : new Cif(templateModelR);
        }
    }

    /* renamed from: freemarker.core.transient$if, reason: invalid class name */
    public static abstract class Cif extends Creturn {
        private Cif() {
        }

        public TemplateModel r(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws;
            h0 h0Var = this.f24114goto;
            if (!(h0Var instanceof g3)) {
                return h0Var.m28055throws(d0Var);
            }
            boolean zO3 = d0Var.o3(true);
            try {
                templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            } catch (b1 unused) {
                templateModelM28055throws = null;
            } catch (Throwable th) {
                d0Var.o3(zO3);
                throw th;
            }
            d0Var.o3(zO3);
            return templateModelM28055throws;
        }
    }

    /* renamed from: freemarker.core.transient$new, reason: invalid class name */
    public static class Cnew extends Cif {
        public Cnew() {
            super();
        }

        @Override // freemarker.core.h0
        /* renamed from: continue */
        public boolean mo27884continue(d0 d0Var) throws TemplateException {
            return mo27807native(d0Var) == TemplateBooleanModel.TRUE;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            return r(d0Var) == null ? TemplateBooleanModel.FALSE : TemplateBooleanModel.TRUE;
        }
    }

    /* renamed from: freemarker.core.transient$try, reason: invalid class name */
    public static class Ctry extends Cif {
        public Ctry() {
            super();
        }

        @Override // freemarker.core.h0
        /* renamed from: continue */
        public boolean mo27884continue(d0 d0Var) throws TemplateException {
            return mo27807native(d0Var) == TemplateBooleanModel.TRUE;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            return h0.m28041implements(r(d0Var)) ? TemplateBooleanModel.FALSE : TemplateBooleanModel.TRUE;
        }
    }

    private Ctransient() {
    }
}
