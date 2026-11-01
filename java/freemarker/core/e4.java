package freemarker.core;

import android.support.v4.k52;
import android.support.v4.ob2;
import android.support.v4.vn0;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateNumberModel;
import java.util.Date;

/* loaded from: classes.dex */
public final class e4 {
    private e4() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m27982do(String str) throws vn0 {
        if (str.length() != 0) {
            throw new vn0("This number format doesn't support any parameters.");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Number m27983for(TemplateNumberModel templateNumberModel) throws k52, ob2 {
        Number asNumber = templateNumberModel.getAsNumber();
        if (asNumber != null) {
            return asNumber;
        }
        throw f0.m28020public(Number.class, templateNumberModel, null);
    }

    /* renamed from: if, reason: not valid java name */
    public static Date m27984if(TemplateDateModel templateDateModel) throws k52 {
        Date asDate = templateDateModel.getAsDate();
        if (asDate != null) {
            return asDate;
        }
        throw f0.m28020public(Date.class, templateDateModel, null);
    }
}
