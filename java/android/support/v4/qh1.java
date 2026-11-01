package android.support.v4;

import android.content.Context;

/* loaded from: classes2.dex */
public class qh1 {

    /* renamed from: do, reason: not valid java name */
    private static String f5418do = null;

    /* renamed from: for, reason: not valid java name */
    private static int f5419for = -1;

    /* renamed from: if, reason: not valid java name */
    private static String f5420if = null;

    /* renamed from: new, reason: not valid java name */
    private static int f5421new = -1;

    /* renamed from: try, reason: not valid java name */
    private static int f5422try = -1;

    /* renamed from: do, reason: not valid java name */
    public static String m6595do(Context context) {
        if (f5418do == null) {
            try {
                f5418do = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        String str = f5418do;
        return str == null ? "" : str;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m6596for(Context context) {
        String str = f5420if;
        if (str == null || str.equals("")) {
            f5420if = m6598new(context) + "." + m6599try(context);
        }
        return f5420if;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6597if(Context context) {
        if (f5422try == -1) {
            String[] strArrSplit = m6595do(context).split("\\.");
            if (strArrSplit.length >= 3) {
                f5422try = Integer.parseInt(strArrSplit[2]);
            }
        }
        return f5422try;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m6598new(Context context) {
        if (f5419for == -1) {
            String[] strArrSplit = m6595do(context).split("\\.");
            if (strArrSplit.length != 0) {
                f5419for = Integer.parseInt(strArrSplit[0]);
            }
        }
        return f5419for;
    }

    /* renamed from: try, reason: not valid java name */
    private static int m6599try(Context context) {
        if (f5421new == -1) {
            String[] strArrSplit = m6595do(context).split("\\.");
            if (strArrSplit.length >= 2) {
                f5421new = Integer.parseInt(strArrSplit[1]);
            }
        }
        return f5421new;
    }
}
