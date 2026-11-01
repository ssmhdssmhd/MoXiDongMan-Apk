package android.support.v4;

import freemarker.ext.beans.Cnew;
import freemarker.ext.beans.Ctry;
import freemarker.template.TemplateBooleanModel;

/* loaded from: classes.dex */
public class ac extends Cnew implements TemplateBooleanModel {

    /* renamed from: else, reason: not valid java name */
    private final boolean f88else;

    public ac(Boolean bool, Ctry ctry) {
        super(bool, ctry, false);
        this.f88else = bool.booleanValue();
    }

    @Override // freemarker.template.TemplateBooleanModel
    public boolean getAsBoolean() {
        return this.f88else;
    }
}
