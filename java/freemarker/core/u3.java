package freemarker.core;

import android.support.v4.k52;
import android.support.v4.w41;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModelIterator;

/* loaded from: classes.dex */
class u3 implements TemplateCollectionModel {

    /* renamed from: do, reason: not valid java name */
    private TemplateModelIterator f24241do;

    public u3(TemplateModelIterator templateModelIterator) {
        w41.check(templateModelIterator);
        this.f24241do = templateModelIterator;
    }

    /* renamed from: do, reason: not valid java name */
    public TemplateModelIterator m28320do() {
        return this.f24241do;
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        TemplateModelIterator templateModelIterator = this.f24241do;
        if (templateModelIterator == null) {
            throw new IllegalStateException("Can't return the iterator again, as this TemplateCollectionModel can only be iterated once.");
        }
        this.f24241do = null;
        return templateModelIterator;
    }
}
