package freemarker.core;

import android.support.v4.p52;
import android.support.v4.xk2;
import freemarker.template.utility.Csuper;
import java.util.Locale;
import java.util.Map;

/* renamed from: freemarker.core.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry extends g4 {

    /* renamed from: do, reason: not valid java name */
    private final String f24232do;

    /* renamed from: if, reason: not valid java name */
    private final Map<Locale, String> f24233if;

    public Ctry(String str) {
        this.f24232do = str;
        this.f24233if = null;
    }

    @Override // freemarker.core.g4
    /* renamed from: do */
    public f4 mo28039do(String str, Locale locale, d0 d0Var) throws p52 {
        String str2;
        e4.m27982do(str);
        try {
            Map<Locale, String> map = this.f24233if;
            if (map != null) {
                str2 = map.get(locale);
                Locale localeM9530do = locale;
                while (str2 == null) {
                    localeM9530do = xk2.m9530do(localeM9530do);
                    if (localeM9530do == null) {
                        break;
                    }
                    str2 = this.f24233if.get(localeM9530do);
                }
            } else {
                str2 = null;
            }
            if (str2 == null) {
                str2 = this.f24232do;
            }
            return d0Var.z2(str2, locale);
        } catch (p52 e) {
            throw new Cfor("Failed to create format based on target format string,  " + Csuper.m29330synchronized(str) + ". Reason given: " + e.getMessage(), e);
        }
    }

    public Ctry(String str, Map<Locale, String> map) {
        this.f24232do = str;
        this.f24233if = map;
    }
}
