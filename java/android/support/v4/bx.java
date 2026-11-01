package android.support.v4;

import android.text.format.DateUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class bx extends DateUtils {

    /* renamed from: do, reason: not valid java name */
    public static final int f549do = 0;

    /* renamed from: for, reason: not valid java name */
    public static final int f550for = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f551if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f552new = 3;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.bx$do, reason: invalid class name */
    public @interface Cdo {
    }

    /* renamed from: break, reason: not valid java name */
    public static long m664break(Date date, Date date2) {
        return m677new(date, date2, 2);
    }

    /* renamed from: case, reason: not valid java name */
    private static long[] m665case(Date date, Date date2) {
        return m683try(date2.getTime() - date.getTime());
    }

    /* renamed from: catch, reason: not valid java name */
    public static long m666catch(long j, long j2) {
        return m672for(j, j2, 1);
    }

    /* renamed from: class, reason: not valid java name */
    public static long m667class(Date date, Date date2) {
        return m677new(date, date2, 1);
    }

    /* renamed from: const, reason: not valid java name */
    public static long m668const(long j, long j2) {
        return m672for(j, j2, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m669do(int i) {
        return m674if(0, i);
    }

    /* renamed from: else, reason: not valid java name */
    public static long m670else(long j, long j2) {
        return m672for(j, j2, 3);
    }

    /* renamed from: final, reason: not valid java name */
    public static long m671final(Date date, Date date2) {
        return m677new(date, date2, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static long m672for(long j, long j2, int i) {
        return m677new(new Date(j), new Date(j2), i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static long m673goto(Date date, Date date2) {
        return m677new(date, date2, 3);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m674if(int i, int i2) {
        List listAsList = Arrays.asList("1", ExifInterface.GPS_MEASUREMENT_3D, "5", "7", "8", "10", "12");
        List listAsList2 = Arrays.asList("4", "6", "9", "11");
        if (listAsList.contains(String.valueOf(i2))) {
            return 31;
        }
        if (listAsList2.contains(String.valueOf(i2))) {
            return 30;
        }
        if (i <= 0) {
            return 29;
        }
        return ((i % 4 != 0 || i % 100 == 0) && i % 400 != 0) ? 28 : 29;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m675import(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("date is null");
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date);
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    /* renamed from: native, reason: not valid java name */
    public static Date m676native(String str) {
        return m678public(str, "yyyy-MM-dd HH:mm:ss");
    }

    /* renamed from: new, reason: not valid java name */
    public static long m677new(Date date, Date date2, int i) {
        long[] jArrM665case = m665case(date, date2);
        return i == 1 ? jArrM665case[2] : i == 2 ? jArrM665case[1] : i == 3 ? jArrM665case[0] : jArrM665case[3];
    }

    /* renamed from: public, reason: not valid java name */
    public static Date m678public(String str, String str2) {
        try {
            return new Date(new SimpleDateFormat(str2, Locale.PRC).parse(str).getTime());
        } catch (ParseException e) {
            uv0.m8672extends(e);
            return null;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static int m679return(@NonNull String str) {
        try {
            if (str.startsWith("0")) {
                str = str.substring(1);
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            uv0.m8672extends(e);
            return 0;
        }
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    public static String m680super(int i) {
        StringBuilder sb;
        String str;
        if (i < 10) {
            sb = new StringBuilder();
            str = "0";
        } else {
            sb = new StringBuilder();
            str = "";
        }
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static long m681this(long j, long j2) {
        return m672for(j, j2, 2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m682throw(String str) {
        return m684while(Calendar.getInstance(Locale.CHINA).getTime(), str);
    }

    /* renamed from: try, reason: not valid java name */
    private static long[] m683try(long j) {
        long j2 = j / 86400000;
        long j3 = j % 86400000;
        long j4 = j3 / org.apache.commons.lang3.time.Cdo.f28825for;
        long j5 = j3 % org.apache.commons.lang3.time.Cdo.f28825for;
        long j6 = j5 / org.apache.commons.lang3.time.Cdo.f28827if;
        long j7 = j5 % org.apache.commons.lang3.time.Cdo.f28827if;
        long j8 = j7 / 1000;
        uv0.m8680public(String.format(Locale.CHINA, "different: %d ms, %d days, %d hours, %d minutes, %d seconds", Long.valueOf(j7), Long.valueOf(j2), Long.valueOf(j4), Long.valueOf(j6), Long.valueOf(j8)));
        return new long[]{j2, j4, j6, j8};
    }

    /* renamed from: while, reason: not valid java name */
    public static String m684while(Date date, String str) {
        return new SimpleDateFormat(str, Locale.PRC).format(date);
    }
}
