package freemarker.template;

import android.support.v4.k52;
import freemarker.core.d0;
import java.util.Locale;

/* renamed from: freemarker.template.final, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfinal implements TemplateScalarModel {
    /* renamed from: do, reason: not valid java name */
    public abstract String mo29221do(Locale locale) throws k52;

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() throws k52 {
        return mo29221do(d0.w1().m28268strictfp());
    }
}
