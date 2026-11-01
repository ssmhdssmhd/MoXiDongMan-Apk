package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;

/* loaded from: classes.dex */
class o1 implements TemplateModelIterator {

    /* renamed from: do, reason: not valid java name */
    private final TemplateCollectionModel f24021do;

    /* renamed from: if, reason: not valid java name */
    private TemplateModelIterator f24022if;

    public o1(TemplateCollectionModel templateCollectionModel) {
        this.f24021do = templateCollectionModel;
    }

    /* renamed from: do, reason: not valid java name */
    private void m28189do() throws k52 {
        if (this.f24022if == null) {
            this.f24022if = this.f24021do.iterator();
        }
    }

    @Override // freemarker.template.TemplateModelIterator
    public boolean hasNext() throws k52 {
        m28189do();
        return this.f24022if.hasNext();
    }

    @Override // freemarker.template.TemplateModelIterator
    public TemplateModel next() throws k52 {
        m28189do();
        return this.f24022if.next();
    }
}
