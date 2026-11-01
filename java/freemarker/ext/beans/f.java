package freemarker.ext.beans;

import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;

/* loaded from: classes.dex */
public class f extends Cnew implements TemplateScalarModel {

    /* renamed from: else, reason: not valid java name */
    public static final ModelFactory f24543else = new Cdo();

    /* renamed from: freemarker.ext.beans.f$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new f(obj, (Ctry) objectWrapper);
        }
    }

    public f(Object obj, Ctry ctry) {
        super(obj, ctry);
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return this.f24599do.toString();
    }
}
