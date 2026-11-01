package freemarker.core;

import android.support.v4.p52;
import android.support.v4.xk2;
import freemarker.template.utility.Csuper;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* renamed from: freemarker.core.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew extends a4 {

    /* renamed from: do, reason: not valid java name */
    private final String f24018do;

    /* renamed from: if, reason: not valid java name */
    private final Map<Locale, String> f24019if;

    public Cnew(String str) {
        this.f24018do = str;
        this.f24019if = null;
    }

    @Override // freemarker.core.a4
    /* renamed from: do */
    public z3 mo27821do(String str, int i, Locale locale, TimeZone timeZone, boolean z, d0 d0Var) throws p52 {
        String str2;
        e4.m27982do(str);
        try {
            Map<Locale, String> map = this.f24019if;
            if (map != null) {
                str2 = map.get(locale);
                Locale localeM9530do = locale;
                while (str2 == null) {
                    localeM9530do = xk2.m9530do(localeM9530do);
                    if (localeM9530do == null) {
                        break;
                    }
                    str2 = this.f24019if.get(localeM9530do);
                }
            } else {
                str2 = null;
            }
            if (str2 == null) {
                str2 = this.f24018do;
            }
            return d0Var.o2(str2, i, locale, timeZone, z);
        } catch (p52 e) {
            throw new Cfor("Failed to create format based on target format string,  " + Csuper.m29330synchronized(str) + ". Reason given: " + e.getMessage(), e);
        }
    }

    public Cnew(String str, Map<Locale, String> map) {
        this.f24018do = str;
        this.f24019if = map;
    }
}
