package android.support.v4;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class v02 {

    /* renamed from: do, reason: not valid java name */
    private static final String f7028do = "comic";

    /* renamed from: for, reason: not valid java name */
    private static Context f7029for;

    /* renamed from: if, reason: not valid java name */
    private static v02 f7030if;

    /* renamed from: new, reason: not valid java name */
    private static SharedPreferences f7031new;

    public v02(Context context) {
        f7029for = context.getApplicationContext();
    }

    /* renamed from: if, reason: not valid java name */
    public static v02 m8711if(Context context) {
        if (f7030if == null) {
            synchronized (v02.class) {
                if (f7030if == null) {
                    f7030if = new v02(context);
                }
            }
        }
        return f7030if;
    }

    /* renamed from: case, reason: not valid java name */
    public void m8712case(String str, boolean z) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        f7031new.edit().putBoolean(str, z).apply();
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m8713do(String str, boolean z) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        return f7031new.getBoolean(str, z);
    }

    /* renamed from: else, reason: not valid java name */
    public void m8714else(String str, int i) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        f7031new.edit().putInt(str, i).apply();
    }

    /* renamed from: for, reason: not valid java name */
    public int m8715for(String str, int i) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        return f7031new.getInt(str, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m8716goto(String str, long j) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        f7031new.edit().putLong(str, j).apply();
    }

    /* renamed from: new, reason: not valid java name */
    public long m8717new(String str) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        return f7031new.getLong(str, 0L);
    }

    /* renamed from: this, reason: not valid java name */
    public void m8718this(String str, String str2) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        f7031new.edit().putString(str, str2).apply();
    }

    /* renamed from: try, reason: not valid java name */
    public String m8719try(String str, String str2) {
        if (f7031new == null) {
            f7031new = f7029for.getSharedPreferences(f7028do, 0);
        }
        return f7031new.getString(str, str2);
    }
}
