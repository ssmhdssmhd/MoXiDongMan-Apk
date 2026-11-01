package freemarker.core;

import android.support.v4.k52;
import android.support.v4.w41;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;

/* loaded from: classes.dex */
class m1 extends j1 {

    /* renamed from: for, reason: not valid java name */
    private final TemplateSequenceModel f24008for;

    public m1(TemplateModelIterator templateModelIterator, TemplateSequenceModel templateSequenceModel) {
        super(templateModelIterator, true);
        w41.check(templateSequenceModel);
        this.f24008for = templateSequenceModel;
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public boolean isEmpty() throws k52 {
        return this.f24008for.size() == 0;
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public int size() throws k52 {
        return this.f24008for.size();
    }

    @Override // freemarker.core.i1
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public m1 mo28080for() {
        return this;
    }
}
