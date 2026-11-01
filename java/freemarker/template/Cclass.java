package freemarker.template;

import android.support.v4.k52;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.utility.Cfor;
import java.util.List;

/* renamed from: freemarker.template.class, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cclass implements TemplateBooleanModel, TemplateScalarModel, TemplateSequenceModel, TemplateHashModelEx2, TemplateMethodModelEx {

    /* renamed from: do, reason: not valid java name */
    private static final TemplateModel f25095do = new Cclass();

    private Cclass() {
    }

    /* renamed from: do, reason: not valid java name */
    public static TemplateModel m29220do() {
        return f25095do;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) {
        return null;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        throw new k52("Can't get item from an empty sequence.");
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) {
        return null;
    }

    @Override // freemarker.template.TemplateBooleanModel
    public boolean getAsBoolean() {
        return false;
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return "";
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return true;
    }

    @Override // freemarker.template.TemplateHashModelEx2
    public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() throws k52 {
        return Cfor.f25206catch;
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() {
        return Cfor.f25210goto;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return 0;
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() {
        return Cfor.f25210goto;
    }
}
