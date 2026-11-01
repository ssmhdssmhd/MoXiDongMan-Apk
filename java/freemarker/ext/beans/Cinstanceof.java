package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelAdapter;
import freemarker.template.TemplateSequenceModel;
import java.util.AbstractList;

/* renamed from: freemarker.ext.beans.instanceof, reason: invalid class name */
/* loaded from: classes.dex */
class Cinstanceof extends AbstractList implements TemplateModelAdapter {

    /* renamed from: do, reason: not valid java name */
    private final Ctry f24593do;

    /* renamed from: if, reason: not valid java name */
    private final TemplateSequenceModel f24594if;

    public Cinstanceof(TemplateSequenceModel templateSequenceModel, Ctry ctry) {
        this.f24594if = templateSequenceModel;
        this.f24593do = ctry;
    }

    /* renamed from: do, reason: not valid java name */
    public TemplateSequenceModel m28646do() {
        return this.f24594if;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        try {
            return this.f24593do.unwrap(this.f24594if.get(i));
        } catch (k52 e) {
            throw new kb2(e);
        }
    }

    @Override // freemarker.template.TemplateModelAdapter
    public TemplateModel getTemplateModel() {
        return this.f24594if;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        try {
            return this.f24594if.size();
        } catch (k52 e) {
            throw new kb2(e);
        }
    }
}
