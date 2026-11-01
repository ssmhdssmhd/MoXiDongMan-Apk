package freemarker.template;

import android.support.v4.k52;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* renamed from: freemarker.template.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    private String f25255do;

    /* renamed from: if, reason: not valid java name */
    private String f25256if;

    public Cwhile(String str, String str2) {
        this.f25256if = str;
        this.f25255do = str2;
    }

    @Override // freemarker.template.Cfinal
    /* renamed from: do */
    public String mo29221do(Locale locale) throws k52 {
        try {
            return ResourceBundle.getBundle(this.f25256if, locale).getString(this.f25255do);
        } catch (MissingResourceException e) {
            throw new k52("missing resource", (Exception) e);
        }
    }
}
