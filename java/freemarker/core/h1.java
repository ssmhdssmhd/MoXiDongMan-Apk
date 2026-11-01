package freemarker.core;

import android.support.v4.vn0;
import freemarker.log.Cif;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
class h1 extends g4 {

    /* renamed from: new, reason: not valid java name */
    private static final int f23815new = 1024;

    /* renamed from: do, reason: not valid java name */
    public static final h1 f23812do = new h1();

    /* renamed from: if, reason: not valid java name */
    private static final Cif f23814if = Cif.m29193break("freemarker.runtime");

    /* renamed from: for, reason: not valid java name */
    private static final ConcurrentHashMap<Cdo, NumberFormat> f23813for = new ConcurrentHashMap<>();

    /* renamed from: freemarker.core.h1$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final String f23816do;

        /* renamed from: if, reason: not valid java name */
        private final Locale f23817if;

        public Cdo(String str, Locale locale) {
            this.f23816do = str;
            this.f23817if = locale;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return cdo.f23816do.equals(this.f23816do) && cdo.f23817if.equals(this.f23817if);
        }

        public int hashCode() {
            return this.f23816do.hashCode() ^ this.f23817if.hashCode();
        }
    }

    private h1() {
    }

    @Override // freemarker.core.g4
    /* renamed from: do */
    public f4 mo28039do(String str, Locale locale, d0 d0Var) throws vn0 {
        NumberFormat numberFormatM27795const;
        Cdo cdo = new Cdo(str, locale);
        ConcurrentHashMap<Cdo, NumberFormat> concurrentHashMap = f23813for;
        NumberFormat numberFormat = concurrentHashMap.get(cdo);
        if (numberFormat == null) {
            if ("number".equals(str)) {
                numberFormatM27795const = NumberFormat.getNumberInstance(locale);
            } else if ("currency".equals(str)) {
                numberFormatM27795const = NumberFormat.getCurrencyInstance(locale);
            } else if ("percent".equals(str)) {
                numberFormatM27795const = NumberFormat.getPercentInstance(locale);
            } else if ("computer".equals(str)) {
                numberFormatM27795const = d0Var.s1();
            } else {
                try {
                    numberFormatM27795const = ExtendedDecimalFormatParser.m27795const(str, locale);
                } catch (ParseException e) {
                    String message = e.getMessage();
                    if (message == null) {
                        message = "Invalid DecimalFormat pattern";
                    }
                    throw new vn0(message, e);
                }
            }
            numberFormat = numberFormatM27795const;
            if (concurrentHashMap.size() >= 1024) {
                boolean z = false;
                synchronized (h1.class) {
                    if (concurrentHashMap.size() >= 1024) {
                        z = true;
                        concurrentHashMap.clear();
                    }
                }
                if (z) {
                    f23814if.mo29187package("Global Java NumberFormat cache has exceeded 1024 entries => cache flushed. Typical cause: Some template generates high variety of format pattern strings.");
                }
            }
            NumberFormat numberFormatPutIfAbsent = concurrentHashMap.putIfAbsent(cdo, numberFormat);
            if (numberFormatPutIfAbsent != null) {
                numberFormat = numberFormatPutIfAbsent;
            }
        }
        return new g1((NumberFormat) numberFormat.clone(), str);
    }
}
