package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class i extends Ccatch {
    public i(Ctry ctry) {
        super(ctry);
    }

    @Override // freemarker.ext.beans.Ccatch, freemarker.template.TemplateHashModel
    public /* bridge */ /* synthetic */ TemplateModel get(String str) throws k52 {
        return super.get(str);
    }

    @Override // freemarker.ext.beans.Ccatch
    /* renamed from: if */
    public TemplateModel mo28504if(Class cls) {
        Object[] enumConstants = cls.getEnumConstants();
        if (enumConstants == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : enumConstants) {
            Enum r2 = (Enum) obj;
            linkedHashMap.put(r2.name(), r2);
        }
        return new a(linkedHashMap, m28505new());
    }

    @Override // freemarker.ext.beans.Ccatch, freemarker.template.TemplateHashModel
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }
}
