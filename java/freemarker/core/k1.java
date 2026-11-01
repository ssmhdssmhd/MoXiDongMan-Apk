package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateModelIterator;

/* loaded from: classes.dex */
final class k1 extends j1 {

    /* renamed from: for, reason: not valid java name */
    private final int f23992for;

    public k1(TemplateModelIterator templateModelIterator, int i, boolean z) {
        super(templateModelIterator, z);
        this.f23992for = i;
    }

    @Override // freemarker.core.i1
    /* renamed from: for */
    public i1 mo28080for() {
        return new k1(m28320do(), this.f23992for, true);
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public boolean isEmpty() {
        return this.f23992for == 0;
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public int size() throws k52 {
        return this.f23992for;
    }
}
