package com.google.zxing.client.result;

import android.support.v4.oc1;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.Cdo;

/* renamed from: com.google.zxing.client.result.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry extends oc1 {

    /* renamed from: const, reason: not valid java name */
    private static final Pattern f17436const = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");

    /* renamed from: final, reason: not valid java name */
    private static final long[] f17437final = {604800000, 86400000, Cdo.f28825for, Cdo.f28827if, 1000};

    /* renamed from: super, reason: not valid java name */
    private static final Pattern f17438super = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    /* renamed from: break, reason: not valid java name */
    private final String f17439break;

    /* renamed from: case, reason: not valid java name */
    private final boolean f17440case;

    /* renamed from: catch, reason: not valid java name */
    private final double f17441catch;

    /* renamed from: class, reason: not valid java name */
    private final double f17442class;

    /* renamed from: else, reason: not valid java name */
    private final String f17443else;

    /* renamed from: for, reason: not valid java name */
    private final long f17444for;

    /* renamed from: goto, reason: not valid java name */
    private final String f17445goto;

    /* renamed from: if, reason: not valid java name */
    private final String f17446if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f17447new;

    /* renamed from: this, reason: not valid java name */
    private final String[] f17448this;

    /* renamed from: try, reason: not valid java name */
    private final long f17449try;

    public Ctry(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d, double d2) {
        super(Celse.CALENDAR);
        this.f17446if = str;
        try {
            long jM21793native = m21793native(str2);
            this.f17444for = jM21793native;
            if (str3 == null) {
                long jM21795return = m21795return(str4);
                this.f17449try = jM21795return < 0 ? -1L : jM21793native + jM21795return;
            } else {
                try {
                    this.f17449try = m21793native(str3);
                } catch (ParseException e) {
                    throw new IllegalArgumentException(e.toString());
                }
            }
            this.f17447new = str2.length() == 8;
            this.f17440case = str3 != null && str3.length() == 8;
            this.f17443else = str5;
            this.f17445goto = str6;
            this.f17448this = strArr;
            this.f17439break = str7;
            this.f17441catch = d;
            this.f17442class = d2;
        } catch (ParseException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static long m21793native(String str) throws ParseException {
        if (!f17438super.matcher(str).matches()) {
            throw new ParseException(str, 0);
        }
        if (str.length() == 8) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        }
        if (str.length() != 16 || str.charAt(15) != 'Z') {
            return m21794public(str);
        }
        long jM21794public = m21794public(str.substring(0, 15));
        long j = jM21794public + r5.get(15);
        new GregorianCalendar().setTime(new Date(j));
        return j + r5.get(16);
    }

    /* renamed from: public, reason: not valid java name */
    private static long m21794public(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH).parse(str).getTime();
    }

    /* renamed from: return, reason: not valid java name */
    private static long m21795return(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = f17436const.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j = 0;
        int i = 0;
        while (true) {
            long[] jArr = f17437final;
            if (i >= jArr.length) {
                return j;
            }
            int i2 = i + 1;
            if (matcher.group(i2) != null) {
                j += jArr[i] * Integer.parseInt(r5);
            }
            i = i2;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static String m21796try(boolean z, long j) {
        if (j < 0) {
            return null;
        }
        return (z ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(Long.valueOf(j));
    }

    /* renamed from: break, reason: not valid java name */
    public double m21797break() {
        return this.f17441catch;
    }

    /* renamed from: case, reason: not valid java name */
    public String[] m21798case() {
        return this.f17448this;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m21799catch() {
        return this.f17443else;
    }

    /* renamed from: class, reason: not valid java name */
    public double m21800class() {
        return this.f17442class;
    }

    /* renamed from: const, reason: not valid java name */
    public String m21801const() {
        return this.f17445goto;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(100);
        oc1.m5549for(this.f17446if, sb);
        oc1.m5549for(m21796try(this.f17447new, this.f17444for), sb);
        oc1.m5549for(m21796try(this.f17440case, this.f17449try), sb);
        oc1.m5549for(this.f17443else, sb);
        oc1.m5549for(this.f17445goto, sb);
        oc1.m5550new(this.f17448this, sb);
        oc1.m5549for(this.f17439break, sb);
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public String m21802else() {
        return this.f17439break;
    }

    @Deprecated
    /* renamed from: final, reason: not valid java name */
    public Date m21803final() {
        return new Date(this.f17444for);
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public Date m21804goto() {
        if (this.f17449try < 0) {
            return null;
        }
        return new Date(this.f17449try);
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m21805import() {
        return this.f17447new;
    }

    /* renamed from: super, reason: not valid java name */
    public long m21806super() {
        return this.f17444for;
    }

    /* renamed from: this, reason: not valid java name */
    public long m21807this() {
        return this.f17449try;
    }

    /* renamed from: throw, reason: not valid java name */
    public String m21808throw() {
        return this.f17446if;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m21809while() {
        return this.f17440case;
    }
}
