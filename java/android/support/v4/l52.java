package android.support.v4;

import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.util.List;

/* loaded from: classes3.dex */
public class l52 implements TemplateSequenceModel {

    /* renamed from: do, reason: not valid java name */
    private List f3546do;

    public l52(List list) {
        this.f3546do = list;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) {
        return (TemplateModel) this.f3546do.get(i);
    }

    public Object getWrappedObject() {
        return this.f3546do;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return this.f3546do.size();
    }
}
