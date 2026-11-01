package freemarker.core;

import android.support.v4.k52;
import freemarker.core.h0;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
abstract class IntermediateStreamOperationLikeBuiltIn extends Cinterface {

    /* renamed from: final, reason: not valid java name */
    private h0 f23443final;

    /* renamed from: super, reason: not valid java name */
    private ElementTransformer f23444super;

    /* renamed from: throw, reason: not valid java name */
    private boolean f23445throw;

    public interface ElementTransformer {
        TemplateModel transformElement(TemplateModel templateModel, d0 d0Var) throws TemplateException;
    }

    /* renamed from: freemarker.core.IntermediateStreamOperationLikeBuiltIn$do, reason: invalid class name */
    public static class Cdo implements ElementTransformer {

        /* renamed from: do, reason: not valid java name */
        private final x1 f23446do;

        /* renamed from: if, reason: not valid java name */
        private final h0 f23447if;

        public Cdo(x1 x1Var, h0 h0Var) {
            this.f23446do = x1Var;
            this.f23447if = h0Var;
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn.ElementTransformer
        public TemplateModel transformElement(TemplateModel templateModel, d0 d0Var) throws TemplateException {
            return d0Var.O2(d0Var, this.f23446do, Collections.singletonList(new i0(templateModel, this.f23447if)), this.f23447if);
        }
    }

    /* renamed from: freemarker.core.IntermediateStreamOperationLikeBuiltIn$for, reason: invalid class name */
    public static class Cfor implements ElementTransformer {

        /* renamed from: do, reason: not valid java name */
        private final TemplateMethodModel f23448do;

        public Cfor(TemplateMethodModel templateMethodModel) {
            this.f23448do = templateMethodModel;
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn.ElementTransformer
        public TemplateModel transformElement(TemplateModel templateModel, d0 d0Var) throws k52 {
            Object objExec = this.f23448do.exec(Collections.singletonList(templateModel));
            return objExec instanceof TemplateModel ? (TemplateModel) objExec : d0Var.m28258implements().wrap(objExec);
        }
    }

    /* renamed from: freemarker.core.IntermediateStreamOperationLikeBuiltIn$if, reason: invalid class name */
    public static class Cif implements ElementTransformer {

        /* renamed from: do, reason: not valid java name */
        private final w1 f23449do;

        public Cif(w1 w1Var) {
            this.f23449do = w1Var;
        }

        @Override // freemarker.core.IntermediateStreamOperationLikeBuiltIn.ElementTransformer
        public TemplateModel transformElement(TemplateModel templateModel, d0 d0Var) throws TemplateException {
            return this.f23449do.e(templateModel, d0Var);
        }
    }

    private ElementTransformer A(d0 d0Var) throws TemplateException {
        ElementTransformer elementTransformer = this.f23444super;
        if (elementTransformer != null) {
            return elementTransformer;
        }
        TemplateModel templateModelM28055throws = this.f23443final.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateMethodModel) {
            return new Cfor((TemplateMethodModel) templateModelM28055throws);
        }
        if (templateModelM28055throws instanceof x1) {
            return new Cdo((x1) templateModelM28055throws, this.f23443final);
        }
        throw new o2(this.f23443final, templateModelM28055throws, true, true, null, d0Var);
    }

    public h0 B() {
        return this.f23443final;
    }

    public final boolean C() {
        return this.f23445throw;
    }

    @Override // freemarker.core.h0
    /* renamed from: native, reason: not valid java name */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModelIterator p1Var;
        boolean zM28081if;
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateCollectionModel) {
            p1Var = C() ? new o1((TemplateCollectionModel) templateModelM28055throws) : ((TemplateCollectionModel) templateModelM28055throws).iterator();
            zM28081if = templateModelM28055throws instanceof i1 ? ((i1) templateModelM28055throws).m28081if() : templateModelM28055throws instanceof TemplateSequenceModel;
        } else {
            if (!(templateModelM28055throws instanceof TemplateSequenceModel)) {
                throw new t2(this.f24114goto, templateModelM28055throws, d0Var);
            }
            p1Var = new p1((TemplateSequenceModel) templateModelM28055throws);
            zM28081if = true;
        }
        return z(p1Var, templateModelM28055throws, zM28081if, A(d0Var), d0Var);
    }

    @Override // freemarker.core.Creturn
    public void q(h0 h0Var) {
        super.q(h0Var);
        h0Var.mo27808switch();
    }

    @Override // freemarker.core.Cinterface
    public void r(List<h0> list, m4 m4Var, m4 m4Var2) throws h3 {
        if (list.size() != 1) {
            throw y("requires exactly 1", m4Var, m4Var2);
        }
        h0 h0Var = list.get(0);
        this.f23443final = h0Var;
        if (h0Var instanceof w1) {
            w1 w1Var = (w1) h0Var;
            s(w1Var, 1);
            this.f23444super = new Cif(w1Var);
        }
    }

    @Override // freemarker.core.h0
    /* renamed from: switch, reason: not valid java name */
    public final void mo27808switch() {
        this.f23445throw = true;
    }

    @Override // freemarker.core.Cinterface
    public void t(h0 h0Var, String str, h0 h0Var2, h0.Cdo cdo) {
        ((IntermediateStreamOperationLikeBuiltIn) h0Var).f23443final = this.f23443final.m28053return(str, h0Var2, cdo);
    }

    @Override // freemarker.core.Cinterface
    public h0 u(int i) {
        if (i == 0) {
            return this.f23443final;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.Cinterface
    public List<h0> v() {
        return Collections.singletonList(this.f23443final);
    }

    @Override // freemarker.core.Cinterface
    public int w() {
        return 1;
    }

    @Override // freemarker.core.Cinterface
    public final boolean x() {
        return true;
    }

    public abstract TemplateModel z(TemplateModelIterator templateModelIterator, TemplateModel templateModel, boolean z, ElementTransformer elementTransformer, d0 d0Var) throws TemplateException;
}
