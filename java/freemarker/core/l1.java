package freemarker.core;

import android.support.v4.k52;
import android.support.v4.w41;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateModelIterator;

/* loaded from: classes.dex */
class l1 extends j1 {

    /* renamed from: for, reason: not valid java name */
    private final TemplateCollectionModelEx f24006for;

    public l1(TemplateModelIterator templateModelIterator, TemplateCollectionModelEx templateCollectionModelEx, boolean z) {
        super(templateModelIterator, z);
        w41.check(templateCollectionModelEx);
        this.f24006for = templateCollectionModelEx;
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public boolean isEmpty() throws k52 {
        return this.f24006for.isEmpty();
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public int size() throws k52 {
        return this.f24006for.size();
    }

    @Override // freemarker.core.i1
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public l1 mo28080for() {
        return new l1(m28320do(), this.f24006for, true);
    }
}
