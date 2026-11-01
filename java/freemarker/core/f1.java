package freemarker.core;

import android.support.v4.vn0;
import android.support.v4.xb2;
import freemarker.log.Cif;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
class f1 extends a4 {

    /* renamed from: new, reason: not valid java name */
    private static final int f23743new = 1024;

    /* renamed from: do, reason: not valid java name */
    public static final f1 f23740do = new f1();

    /* renamed from: if, reason: not valid java name */
    private static final Cif f23742if = Cif.m29193break("freemarker.runtime");

    /* renamed from: for, reason: not valid java name */
    private static final ConcurrentHashMap<Cdo, DateFormat> f23741for = new ConcurrentHashMap<>();

    /* renamed from: freemarker.core.f1$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final int f23744do;

        /* renamed from: for, reason: not valid java name */
        private final Locale f23745for;

        /* renamed from: if, reason: not valid java name */
        private final String f23746if;

        /* renamed from: new, reason: not valid java name */
        private final TimeZone f23747new;

        public Cdo(int i, String str, Locale locale, TimeZone timeZone) {
            this.f23744do = i;
            this.f23746if = str;
            this.f23745for = locale;
            this.f23747new = timeZone;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return this.f23744do == cdo.f23744do && cdo.f23746if.equals(this.f23746if) && cdo.f23745for.equals(this.f23745for) && cdo.f23747new.equals(this.f23747new);
        }

        public int hashCode() {
            return ((this.f23744do ^ this.f23746if.hashCode()) ^ this.f23745for.hashCode()) ^ this.f23747new.hashCode();
        }
    }

    private f1() {
    }

    /* renamed from: for, reason: not valid java name */
    private int m28027for(String str) {
        if ("short".equals(str)) {
            return 3;
        }
        if ("medium".equals(str)) {
            return 2;
        }
        if ("long".equals(str)) {
            return 1;
        }
        return "full".equals(str) ? 0 : -1;
    }

    /* renamed from: if, reason: not valid java name */
    private DateFormat m28028if(int i, String str, Locale locale, TimeZone timeZone) throws xb2, vn0 {
        Cdo cdo = new Cdo(i, str, locale, timeZone);
        ConcurrentHashMap<Cdo, DateFormat> concurrentHashMap = f23741for;
        DateFormat simpleDateFormat = concurrentHashMap.get(cdo);
        if (simpleDateFormat == null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "_");
            int iM28027for = stringTokenizer.hasMoreTokens() ? m28027for(stringTokenizer.nextToken()) : 2;
            boolean z = true;
            if (iM28027for != -1) {
                if (i == 0) {
                    throw new xb2();
                }
                if (i == 1) {
                    simpleDateFormat = DateFormat.getTimeInstance(iM28027for, cdo.f23745for);
                } else if (i == 2) {
                    simpleDateFormat = DateFormat.getDateInstance(iM28027for, cdo.f23745for);
                } else if (i == 3) {
                    int iM28027for2 = stringTokenizer.hasMoreTokens() ? m28027for(stringTokenizer.nextToken()) : iM28027for;
                    if (iM28027for2 != -1) {
                        simpleDateFormat = DateFormat.getDateTimeInstance(iM28027for, iM28027for2, cdo.f23745for);
                    }
                }
            }
            if (simpleDateFormat == null) {
                try {
                    simpleDateFormat = new SimpleDateFormat(str, cdo.f23745for);
                } catch (IllegalArgumentException e) {
                    String message = e.getMessage();
                    if (message == null) {
                        message = "Invalid SimpleDateFormat pattern";
                    }
                    throw new vn0(message, e);
                }
            }
            simpleDateFormat.setTimeZone(cdo.f23747new);
            if (concurrentHashMap.size() >= 1024) {
                synchronized (f1.class) {
                    if (concurrentHashMap.size() >= 1024) {
                        concurrentHashMap.clear();
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    f23742if.mo29187package("Global Java DateFormat cache has exceeded 1024 entries => cache flushed. Typical cause: Some template generates high variety of format pattern strings.");
                }
            }
            DateFormat dateFormatPutIfAbsent = concurrentHashMap.putIfAbsent(cdo, simpleDateFormat);
            if (dateFormatPutIfAbsent != null) {
                simpleDateFormat = dateFormatPutIfAbsent;
            }
        }
        return (DateFormat) simpleDateFormat.clone();
    }

    @Override // freemarker.core.a4
    /* renamed from: do */
    public z3 mo27821do(String str, int i, Locale locale, TimeZone timeZone, boolean z, d0 d0Var) throws xb2, vn0 {
        return new e1(m28028if(i, str, locale, timeZone));
    }
}
