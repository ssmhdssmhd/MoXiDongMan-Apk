package android.support.v4;

import android.content.Context;
import com.wsw.cospa.CartoonApplication;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class d72 {

    /* renamed from: do, reason: not valid java name */
    private static final String f947do = "TimeUtil";

    /* renamed from: break, reason: not valid java name */
    public static String m1150break(long j, String str) {
        return new SimpleDateFormat(str).format(new Date(Long.valueOf(j).longValue() * 1000));
    }

    /* renamed from: case, reason: not valid java name */
    public static ArrayList<String> m1151case() {
        ArrayList<String> arrayList = new ArrayList<>();
        Calendar calendar = Calendar.getInstance();
        for (int i = 0; i < 7; i++) {
            try {
                String str = new SimpleDateFormat("yyyyMMdd").format(calendar.getTime());
                arrayList.add((new SimpleDateFormat("yyyyMMdd").parse(str).getTime() / 1000) + "");
                calendar.add(5, -1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m1152catch(Date date) {
        return m1162this(date.getTime() / 1000);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m1153class(Date date, String str) {
        return m1150break(date.getTime() / 1000, str);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m1154const(long j) {
        return new SimpleDateFormat("HH:mm").format(new Date(Long.valueOf(j).longValue() * 1000));
    }

    /* renamed from: do, reason: not valid java name */
    public static Date m1155do(String str) {
        Date date;
        try {
            date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(str);
            try {
                return m1158for(date, TimeZone.getTimeZone("GMT"), TimeZone.getDefault());
            } catch (ParseException e) {
                e = e;
                e.printStackTrace();
                return date;
            }
        } catch (ParseException e2) {
            e = e2;
            date = null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m1156else(Context context) {
        if (v02.m8711if(context).m8719try(wq.c0, "").equals(new SimpleDateFormat("yyyy-MM-dd").format(new Date()))) {
            return false;
        }
        v02.m8711if(CartoonApplication.m24690do()).m8712case(wq.d0, false);
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public static String m1157final(Date date) {
        return m1154const(date.getTime() / 1000);
    }

    /* renamed from: for, reason: not valid java name */
    public static Date m1158for(Date date, TimeZone timeZone, TimeZone timeZone2) {
        if (date == null) {
            return null;
        }
        return new Date(date.getTime() - (timeZone.getRawOffset() - timeZone2.getRawOffset()));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1159goto(Context context) {
        String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        v02.m8711if(context).m8718this(wq.c0, str);
        vv0.m8965if(f947do, "保存时间：" + str);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1160if(Date date, Date date2) {
        if (date == null || date2 == null) {
            return null;
        }
        long time = (date2.getTime() - date.getTime()) / 1000;
        if (time < 60) {
            return time + "秒前";
        }
        if (time < 3600) {
            return (time / 60) + "分钟前";
        }
        if (time < 86400) {
            return ((time / 60) / 60) + "小时前";
        }
        double d = time;
        if (d < 604800.0d) {
            return (((time / 60) / 60) / 24) + "天前";
        }
        if (d < 2592000.0d) {
            return ((((time / 60) / 60) / 24) / 7) + "周前";
        }
        if (d >= 3.1104E7d) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+08:00"));
            return simpleDateFormat.format(date);
        }
        return ((((time / 60) / 60) / 24) / 30) + "个月前";
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1161new(long j) {
        int i = (int) (j / 1000);
        int i2 = i % 60;
        int i3 = (i / 60) % 60;
        int i4 = i / 3600;
        return i4 > 0 ? String.format("%02d:%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(i2)) : String.format("%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    /* renamed from: this, reason: not valid java name */
    public static String m1162this(long j) {
        return m1150break(j, "yyyy-MM-dd");
    }

    /* renamed from: try, reason: not valid java name */
    public static String m1163try(long j) {
        long j2 = j % 60;
        long j3 = (j / 60) % 60;
        long j4 = j / 3600;
        return j4 > 0 ? String.format("%02d:%02d:%02d", Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)) : String.format("%02d:%02d", Long.valueOf(j3), Long.valueOf(j2));
    }
}
