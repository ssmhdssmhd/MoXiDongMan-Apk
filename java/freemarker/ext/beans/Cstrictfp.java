package freemarker.ext.beans;

import android.support.v4.az1;
import android.support.v4.k52;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.util.Collections;
import java.util.List;

/* renamed from: freemarker.ext.beans.strictfp, reason: invalid class name */
/* loaded from: classes.dex */
public class Cstrictfp implements TemplateMethodModelEx, TemplateSequenceModel {

    /* renamed from: do, reason: not valid java name */
    private final Object f24616do;

    /* renamed from: for, reason: not valid java name */
    private final Ctry f24617for;

    /* renamed from: if, reason: not valid java name */
    private final Ccontinue f24618if;

    public Cstrictfp(Object obj, Ccontinue ccontinue, Ctry ctry) {
        this.f24616do = obj;
        this.f24618if = ccontinue;
        this.f24617for = ctry;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        Cfinally cfinallyM28577else = this.f24618if.m28577else(list, this.f24617for);
        try {
            return cfinallyM28577else.m28612new(this.f24617for, this.f24616do);
        } catch (Exception e) {
            if (e instanceof k52) {
                throw ((k52) e);
            }
            throw j.m28651catch(this.f24616do, cfinallyM28577else.m28611if(), e);
        }
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        return (TemplateModel) exec(Collections.singletonList(new az1(Integer.valueOf(i))));
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() throws k52 {
        throw new k52("?size is unsupported for " + getClass().getName());
    }
}
