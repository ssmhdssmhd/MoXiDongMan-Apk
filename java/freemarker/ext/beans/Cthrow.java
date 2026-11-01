package freemarker.ext.beans;

import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateModel;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

/* renamed from: freemarker.ext.beans.throw, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthrow extends Cnew implements TemplateDateModel {

    /* renamed from: goto, reason: not valid java name */
    public static final ModelFactory f24621goto = new Cdo();

    /* renamed from: else, reason: not valid java name */
    private final int f24622else;

    /* renamed from: freemarker.ext.beans.throw$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cthrow((Date) obj, (Ctry) objectWrapper);
        }
    }

    public Cthrow(Date date, Ctry ctry) {
        super(date, ctry);
        if (date instanceof java.sql.Date) {
            this.f24622else = 2;
            return;
        }
        if (date instanceof Time) {
            this.f24622else = 1;
        } else if (date instanceof Timestamp) {
            this.f24622else = 3;
        } else {
            this.f24622else = ctry.m28695final();
        }
    }

    @Override // freemarker.template.TemplateDateModel
    public Date getAsDate() {
        return (Date) this.f24599do;
    }

    @Override // freemarker.template.TemplateDateModel
    public int getDateType() {
        return this.f24622else;
    }
}
