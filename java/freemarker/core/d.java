package freemarker.core;

import android.support.v4.jl2;
import android.support.v4.vl2;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
class d {

    /* renamed from: freemarker.core.d$do, reason: invalid class name */
    public static abstract class Cdo extends z1 {
        @Override // freemarker.core.z1
        public TemplateModel s(d0 d0Var) throws TemplateException {
            Object objM28025try = f0.m28025try(this.f24114goto.m28055throws(d0Var), this.f24114goto, null, d0Var);
            y1 y1Var = this.f24321final;
            if (objM28025try instanceof String) {
                return t((String) objM28025try, y1Var, d0Var);
            }
            TemplateMarkupOutputModel templateMarkupOutputModel = (TemplateMarkupOutputModel) objM28025try;
            y1 outputFormat = templateMarkupOutputModel.getOutputFormat();
            if (outputFormat == y1Var || y1Var.mo888for()) {
                return templateMarkupOutputModel;
            }
            String strMo28196break = outputFormat.mo28196break(templateMarkupOutputModel);
            if (strMo28196break != null) {
                return y1Var.mo28200goto(strMo28196break);
            }
            throw new vl2(this.f24114goto, "The left side operand of ?", this.f24115this, " is in ", new jl2(outputFormat), " format, which differs from the current output format, ", new jl2(y1Var), ". Conversion wasn't possible.");
        }

        public abstract TemplateModel t(String str, y1 y1Var, d0 d0Var) throws TemplateException;
    }

    /* renamed from: freemarker.core.d$for, reason: invalid class name */
    public static class Cfor extends Cdo {
        @Override // freemarker.core.d.Cdo
        public TemplateModel t(String str, y1 y1Var, d0 d0Var) throws TemplateException {
            return y1Var.mo28198else(str);
        }
    }

    /* renamed from: freemarker.core.d$if, reason: invalid class name */
    public static class Cif extends Cdo {
        @Override // freemarker.core.d.Cdo
        public TemplateModel t(String str, y1 y1Var, d0 d0Var) throws TemplateException {
            return y1Var.mo28200goto(str);
        }
    }
}
