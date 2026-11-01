package android.support.v4;

import java.util.Locale;

/* loaded from: classes.dex */
public class xk2 {
    /* renamed from: do, reason: not valid java name */
    public static Locale m9530do(Locale locale) {
        String country = locale.getCountry();
        if (locale.getVariant().length() != 0) {
            String language = locale.getLanguage();
            return country != null ? new Locale(language, country) : new Locale(language);
        }
        if (country.length() != 0) {
            return new Locale(locale.getLanguage());
        }
        return null;
    }
}
