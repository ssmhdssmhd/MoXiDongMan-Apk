package org.chromium.base;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import android.support.v4.le2;
import android.support.v4.o7;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Locale;
import org.chromium.base.annotations.CalledByNative;

/* loaded from: classes3.dex */
public class LocaleUtils {

    @le2
    @VisibleForTesting
    @RequiresApi(24)
    /* renamed from: org.chromium.base.LocaleUtils$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static LocaleList m36852do(String str, LocaleList localeList) {
            return LocaleList.forLanguageTags(String.format("%1$s,%2$s", str, localeList.toLanguageTags().replaceFirst(String.format("(^|,)%1$s$|%1$s,", str), "")));
        }

        /* renamed from: for, reason: not valid java name */
        public static void m36853for(Configuration configuration) {
            LocaleList.setDefault(configuration.getLocales());
        }

        /* renamed from: if, reason: not valid java name */
        public static void m36854if(Context context, Configuration configuration, String str) {
            configuration.setLocales(m36852do(str, context.getResources().getConfiguration().getLocales()));
        }
    }

    private LocaleUtils() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m36839break(String str) {
        int iIndexOf = str.indexOf(45);
        return iIndexOf < 0 ? str : str.substring(0, iIndexOf);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m36840case(String str) {
        str.hashCode();
        switch (str) {
            case "in":
                return "id";
            case "iw":
                return "he";
            case "ji":
                return "yi";
            case "jw":
                return "jv";
            case "tl":
                return "fil";
            default:
                return str;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m36841catch(Locale locale) {
        String strM36840case = m36840case(locale.getLanguage());
        String country = locale.getCountry();
        if (strM36840case.equals("no") && country.equals("NO") && locale.getVariant().equals("NY")) {
            return "nn-NO";
        }
        if (country.isEmpty()) {
            return strM36840case;
        }
        return strM36840case + "-" + country;
    }

    @TargetApi(24)
    /* renamed from: class, reason: not valid java name */
    public static String m36842class(LocaleList localeList) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < localeList.size(); i++) {
            arrayList.add(m36841catch(m36847goto(localeList.get(i))));
        }
        return TextUtils.join(",", arrayList);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m36843const(Context context, Configuration configuration, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            Cdo.m36854if(context, configuration, str);
        } else {
            configuration.setLocale(Locale.forLanguageTag(str));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Locale m36844do(String str) {
        return Build.VERSION.SDK_INT >= 21 ? m36845else(Locale.forLanguageTag(str)) : m36848if(str);
    }

    @TargetApi(21)
    @VisibleForTesting
    /* renamed from: else, reason: not valid java name */
    public static Locale m36845else(Locale locale) {
        String language = locale.getLanguage();
        String strM36851try = m36851try(language);
        return strM36851try.equals(language) ? locale : new Locale.Builder().setLocale(locale).setLanguage(strM36851try).build();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m36846for(Configuration configuration) {
        Locale locale = configuration.locale;
        return locale != null ? locale.toLanguageTag() : "";
    }

    @CalledByNative
    private static String getDefaultCountryCode() {
        CommandLine commandLineM36766else = CommandLine.m36766else();
        return commandLineM36766else.mo36779class(o7.f4456private) ? commandLineM36766else.mo36785this(o7.f4456private) : Locale.getDefault().getCountry();
    }

    @CalledByNative
    public static String getDefaultLocaleListString() {
        return Build.VERSION.SDK_INT >= 24 ? m36842class(LocaleList.getDefault()) : getDefaultLocaleString();
    }

    @CalledByNative
    public static String getDefaultLocaleString() {
        return m36841catch(Locale.getDefault());
    }

    @TargetApi(21)
    @VisibleForTesting
    /* renamed from: goto, reason: not valid java name */
    public static Locale m36847goto(Locale locale) {
        String language = locale.getLanguage();
        String strM36840case = m36840case(language);
        return strM36840case.equals(language) ? locale : new Locale.Builder().setLocale(locale).setLanguage(strM36840case).build();
    }

    /* renamed from: if, reason: not valid java name */
    public static Locale m36848if(String str) {
        String[] strArrSplit = str.split("-");
        if (strArrSplit.length == 0) {
            return new Locale("");
        }
        String strM36851try = m36851try(strArrSplit[0]);
        if (strM36851try.length() != 2 && strM36851try.length() != 3) {
            return new Locale("");
        }
        if (strArrSplit.length == 1) {
            return new Locale(strM36851try);
        }
        String str2 = strArrSplit[1];
        return (str2.length() == 2 || str2.length() == 3) ? new Locale(strM36851try, str2) : new Locale(strM36851try);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m36849new(Context context) {
        return m36846for(context.getResources().getConfiguration());
    }

    /* renamed from: this, reason: not valid java name */
    public static void m36850this(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 24) {
            Cdo.m36853for(configuration);
        } else {
            Locale.setDefault(configuration.locale);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m36851try(String str) {
        str.hashCode();
        return !str.equals("fil") ? !str.equals("und") ? str : "" : "tl";
    }
}
