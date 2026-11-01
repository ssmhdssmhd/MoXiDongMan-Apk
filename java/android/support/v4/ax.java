package android.support.v4;

import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.lang3.time.Cfor;

/* loaded from: classes3.dex */
public class ax {

    /* renamed from: do, reason: not valid java name */
    private static final TimeZone f273do = TimeZone.getTimeZone("GMT");

    /* renamed from: if, reason: not valid java name */
    public static final Cfor f277if = Cfor.getInstance("yyyy-MM-dd'T'HH:mm:ss");

    /* renamed from: for, reason: not valid java name */
    public static final Cfor f275for = Cfor.getInstance("yyyy-MM-dd'T'HH:mm:ssZZ");

    /* renamed from: new, reason: not valid java name */
    public static final Cfor f278new = Cfor.getInstance("yyyy-MM-dd");

    /* renamed from: try, reason: not valid java name */
    public static final Cfor f280try = Cfor.getInstance("yyyy-MM-ddZZ");

    /* renamed from: case, reason: not valid java name */
    public static final Cfor f272case = Cfor.getInstance("'T'HH:mm:ss");

    /* renamed from: else, reason: not valid java name */
    public static final Cfor f274else = Cfor.getInstance("'T'HH:mm:ssZZ");

    /* renamed from: goto, reason: not valid java name */
    public static final Cfor f276goto = Cfor.getInstance("HH:mm:ss");

    /* renamed from: this, reason: not valid java name */
    public static final Cfor f279this = Cfor.getInstance("HH:mm:ssZZ");

    /* renamed from: break, reason: not valid java name */
    public static final Cfor f271break = Cfor.getInstance("EEE, dd MMM yyyy HH:mm:ss Z", Locale.US);

    /* renamed from: break, reason: not valid java name */
    public static String m379break(Date date, String str, Locale locale) {
        return m382class(date, str, null, locale);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m380case(Calendar calendar, String str, Locale locale) {
        return m388goto(calendar, str, null, locale);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m381catch(Date date, String str, TimeZone timeZone) {
        return m382class(date, str, timeZone, null);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m382class(Date date, String str, TimeZone timeZone, Locale locale) {
        return Cfor.getInstance(str, timeZone, locale).format(date);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m383const(long j, String str) {
        return m382class(new Date(j), str, f273do, null);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m384do(long j, String str) {
        return m382class(new Date(j), str, null, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m385else(Calendar calendar, String str, TimeZone timeZone) {
        return m388goto(calendar, str, timeZone, null);
    }

    /* renamed from: final, reason: not valid java name */
    public static String m386final(long j, String str, Locale locale) {
        return m382class(new Date(j), str, f273do, locale);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m387for(long j, String str, TimeZone timeZone) {
        return m382class(new Date(j), str, timeZone, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m388goto(Calendar calendar, String str, TimeZone timeZone, Locale locale) {
        return Cfor.getInstance(str, timeZone, locale).format(calendar);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m389if(long j, String str, Locale locale) {
        return m382class(new Date(j), str, null, locale);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m390new(long j, String str, TimeZone timeZone, Locale locale) {
        return m382class(new Date(j), str, timeZone, locale);
    }

    /* renamed from: super, reason: not valid java name */
    public static String m391super(Date date, String str) {
        return m382class(date, str, f273do, null);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m392this(Date date, String str) {
        return m382class(date, str, null, null);
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m393throw(Date date, String str, Locale locale) {
        return m382class(date, str, f273do, locale);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m394try(Calendar calendar, String str) {
        return m388goto(calendar, str, null, null);
    }
}
