package android.support.v4;

import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;

/* loaded from: classes.dex */
public class e22 implements TemplateSequenceModel {

    /* renamed from: do, reason: not valid java name */
    private String[] f1235do;

    /* renamed from: if, reason: not valid java name */
    private TemplateScalarModel[] f1236if;

    public e22(String[] strArr) {
        this.f1235do = strArr;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) {
        if (this.f1236if == null) {
            this.f1236if = new TemplateScalarModel[this.f1235do.length];
        }
        TemplateScalarModel templateScalarModel = this.f1236if[i];
        if (templateScalarModel != null) {
            return templateScalarModel;
        }
        ez1 ez1Var = new ez1(this.f1235do[i]);
        this.f1236if[i] = ez1Var;
        return ez1Var;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return this.f1235do.length;
    }
}
