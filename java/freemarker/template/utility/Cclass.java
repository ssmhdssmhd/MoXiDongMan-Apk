package freemarker.template.utility;

import android.support.v4.k52;
import freemarker.ext.beans.Ctry;
import freemarker.template.TemplateMethodModelEx;
import java.util.List;

/* renamed from: freemarker.template.utility.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass implements TemplateMethodModelEx {
    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        if (list.isEmpty()) {
            throw new k52("This method must have at least one argument, the name of the class to instantiate.");
        }
        try {
            Class<?> clsM29285try = Cif.m29285try(list.get(0).toString());
            Ctry ctryM28685super = Ctry.m28685super();
            return ctryM28685super.wrap(ctryM28685super.b(clsM29285try, list.subList(1, list.size())));
        } catch (Exception e) {
            throw new k52(e.getMessage());
        }
    }
}
