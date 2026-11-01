package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;

/* loaded from: classes.dex */
class p1 implements TemplateModelIterator {

    /* renamed from: do, reason: not valid java name */
    private final TemplateSequenceModel f24059do;

    /* renamed from: for, reason: not valid java name */
    private int f24060for = 0;

    /* renamed from: if, reason: not valid java name */
    private Integer f24061if;

    public p1(TemplateSequenceModel templateSequenceModel) throws k52 {
        this.f24059do = templateSequenceModel;
    }

    @Override // freemarker.template.TemplateModelIterator
    public boolean hasNext() {
        if (this.f24061if == null) {
            try {
                this.f24061if = Integer.valueOf(this.f24059do.size());
            } catch (k52 e) {
                throw new RuntimeException("Error when getting sequence size", e);
            }
        }
        return this.f24060for < this.f24061if.intValue();
    }

    @Override // freemarker.template.TemplateModelIterator
    public TemplateModel next() throws k52 {
        TemplateSequenceModel templateSequenceModel = this.f24059do;
        int i = this.f24060for;
        this.f24060for = i + 1;
        return templateSequenceModel.get(i);
    }
}
