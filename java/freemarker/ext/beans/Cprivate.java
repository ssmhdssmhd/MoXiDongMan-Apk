package freemarker.ext.beans;

import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;

/* renamed from: freemarker.ext.beans.private, reason: invalid class name */
/* loaded from: classes.dex */
public class Cprivate extends Cnew implements TemplateNumberModel {

    /* renamed from: else, reason: not valid java name */
    public static final ModelFactory f24603else = new Cdo();

    /* renamed from: freemarker.ext.beans.private$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cprivate((Number) obj, (Ctry) objectWrapper);
        }
    }

    public Cprivate(Number number, Ctry ctry) {
        super(number, ctry);
    }

    @Override // freemarker.template.TemplateNumberModel
    public Number getAsNumber() {
        return (Number) this.f24599do;
    }
}
