package freemarker.core;

import android.support.v4.k52;
import android.support.v4.kb2;
import android.support.v4.nl2;
import freemarker.ext.beans.Cnew;
import freemarker.template.Cstatic;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;

@Deprecated
/* loaded from: classes.dex */
public abstract class h0 extends h4 {

    /* renamed from: else, reason: not valid java name */
    public TemplateModel f23810else;

    /* renamed from: freemarker.core.h0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public boolean f23811do;
    }

    private boolean a(TemplateModel templateModel, d0 d0Var, freemarker.template.Cdo cdo) throws TemplateException {
        if (templateModel instanceof TemplateBooleanModel) {
            return ((TemplateBooleanModel) templateModel).getAsBoolean();
        }
        if (d0Var == null ? !cdo.y() : !d0Var.y()) {
            throw new h2(this, templateModel, d0Var);
        }
        return (templateModel == null || m28041implements(templateModel)) ? false : true;
    }

    /* renamed from: implements, reason: not valid java name */
    public static boolean m28041implements(TemplateModel templateModel) throws k52 {
        if (templateModel instanceof Cnew) {
            return ((Cnew) templateModel).isEmpty();
        }
        if (templateModel instanceof TemplateSequenceModel) {
            return ((TemplateSequenceModel) templateModel).size() == 0;
        }
        if (templateModel instanceof TemplateScalarModel) {
            String asString = ((TemplateScalarModel) templateModel).getAsString();
            return asString == null || asString.length() == 0;
        }
        if (templateModel == null) {
            return true;
        }
        if (!(templateModel instanceof TemplateMarkupOutputModel)) {
            return templateModel instanceof TemplateCollectionModel ? !((TemplateCollectionModel) templateModel).iterator().hasNext() : templateModel instanceof TemplateHashModel ? ((TemplateHashModel) templateModel).isEmpty() : ((templateModel instanceof TemplateNumberModel) || (templateModel instanceof TemplateDateModel) || (templateModel instanceof TemplateBooleanModel)) ? false : true;
        }
        TemplateMarkupOutputModel templateMarkupOutputModel = (TemplateMarkupOutputModel) templateModel;
        return templateMarkupOutputModel.getOutputFormat().mo28197class(templateMarkupOutputModel);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private boolean m28042strictfp(d0 d0Var, freemarker.template.Cdo cdo) throws TemplateException {
        return a(m28055throws(d0Var), d0Var, cdo);
    }

    /* renamed from: abstract, reason: not valid java name */
    public String m28043abstract(d0 d0Var, String str) throws TemplateException {
        return f0.m28012else(m28055throws(d0Var), this, str, d0Var);
    }

    public final boolean b(TemplateModel templateModel, freemarker.template.Cdo cdo) throws TemplateException {
        return a(templateModel, null, cdo);
    }

    public final Number c(TemplateModel templateModel, d0 d0Var) throws TemplateException {
        if (templateModel instanceof TemplateNumberModel) {
            return f0.m28017import((TemplateNumberModel) templateModel, this);
        }
        throw new r2(this, templateModel, d0Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: const, reason: not valid java name */
    public final void mo28044const(Cstatic cstatic, int i, int i2, int i3, int i4) {
        super.mo28044const(cstatic, i, i2, i3, i4);
        if (mo27817instanceof()) {
            try {
                this.f23810else = mo27807native(null);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        return m28042strictfp(d0Var, null);
    }

    /* renamed from: default, reason: not valid java name */
    public String mo28045default(d0 d0Var) throws TemplateException {
        return f0.m28019new(m28055throws(d0Var), this, null, d0Var);
    }

    /* renamed from: extends, reason: not valid java name */
    public String m28046extends(d0 d0Var, String str) throws TemplateException {
        return f0.m28019new(m28055throws(d0Var), this, str, d0Var);
    }

    /* renamed from: finally, reason: not valid java name */
    public Object m28047finally(d0 d0Var) throws TemplateException {
        return f0.m28025try(m28055throws(d0Var), this, null, d0Var);
    }

    /* renamed from: instanceof */
    public abstract boolean mo27817instanceof();

    /* renamed from: interface, reason: not valid java name */
    public final TemplateModel m28048interface(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = m28055throws(d0Var);
        m28052public(templateModelM28055throws, d0Var);
        return templateModelM28055throws;
    }

    /* renamed from: native */
    public abstract TemplateModel mo27807native(d0 d0Var) throws TemplateException;

    /* renamed from: package, reason: not valid java name */
    public Object m28049package(d0 d0Var, String str) throws TemplateException {
        return f0.m28025try(m28055throws(d0Var), this, str, d0Var);
    }

    /* renamed from: private, reason: not valid java name */
    public String m28050private(d0 d0Var) throws TemplateException {
        return f0.m28012else(m28055throws(d0Var), this, null, d0Var);
    }

    /* renamed from: protected, reason: not valid java name */
    public Number m28051protected(d0 d0Var) throws TemplateException {
        return c(m28055throws(d0Var), d0Var);
    }

    /* renamed from: public, reason: not valid java name */
    public final void m28052public(TemplateModel templateModel, d0 d0Var) throws b1 {
        if (templateModel == null) {
            throw b1.getInstance(this, d0Var);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final h0 m28053return(String str, h0 h0Var, Cdo cdo) {
        h0 h0VarMo27818static = mo27818static(str, h0Var, cdo);
        if (h0VarMo27818static.f23822for == 0) {
            h0VarMo27818static.m28069if(this);
        }
        return h0VarMo27818static;
    }

    /* renamed from: static */
    public abstract h0 mo27818static(String str, h0 h0Var, Cdo cdo);

    /* renamed from: switch */
    public void mo27808switch() {
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final boolean m28054synchronized(TemplateModel templateModel, d0 d0Var) throws TemplateException {
        return a(templateModel, d0Var, null);
    }

    /* renamed from: throws, reason: not valid java name */
    public final TemplateModel m28055throws(d0 d0Var) throws TemplateException {
        try {
            TemplateModel templateModel = this.f23810else;
            return templateModel != null ? templateModel : mo27807native(d0Var);
        } catch (m0 e) {
            throw e;
        } catch (TemplateException e2) {
            throw e2;
        } catch (Exception e3) {
            if (d0Var != null && f0.m28021return(e3, d0Var)) {
                throw new nl2(this, e3, d0Var, "Expression has thrown an unchecked exception; see the cause exception.");
            }
            if (e3 instanceof RuntimeException) {
                throw ((RuntimeException) e3);
            }
            throw new kb2(e3);
        }
    }

    @Deprecated
    /* renamed from: transient, reason: not valid java name */
    public final TemplateModel m28056transient(d0 d0Var) throws TemplateException {
        return m28055throws(d0Var);
    }

    /* renamed from: volatile, reason: not valid java name */
    public boolean m28057volatile(freemarker.template.Cdo cdo) throws TemplateException {
        return m28042strictfp(null, cdo);
    }
}
