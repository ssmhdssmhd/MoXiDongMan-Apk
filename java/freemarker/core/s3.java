package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;

/* loaded from: classes.dex */
class s3 implements TemplateModelIterator {

    /* renamed from: do, reason: not valid java name */
    private final TemplateSequenceModel f24133do;

    /* renamed from: for, reason: not valid java name */
    private int f24134for = 0;

    /* renamed from: if, reason: not valid java name */
    private final int f24135if;

    public s3(TemplateSequenceModel templateSequenceModel) throws k52 {
        this.f24133do = templateSequenceModel;
        this.f24135if = templateSequenceModel.size();
    }

    @Override // freemarker.template.TemplateModelIterator
    public boolean hasNext() {
        return this.f24134for < this.f24135if;
    }

    @Override // freemarker.template.TemplateModelIterator
    public TemplateModel next() throws k52 {
        TemplateSequenceModel templateSequenceModel = this.f24133do;
        int i = this.f24134for;
        this.f24134for = i + 1;
        return templateSequenceModel.get(i);
    }
}
