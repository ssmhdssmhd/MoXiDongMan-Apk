package android.support.v4;

import android.content.Context;
import android.support.v4.zl2;

/* loaded from: classes3.dex */
public class s71 {
    /* renamed from: case, reason: not valid java name */
    public static String m7284case(Context context) {
        if (yl2.f8265do) {
            return zl2.Cif.f8603do.m10245do(context.getApplicationContext(), "AUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7285do(Context context) {
        yl2.f8266if = zl2.Cif.f8603do.m10247if(context.getApplicationContext());
        yl2.f8265do = true;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m7286for(Context context) {
        if (yl2.f8265do) {
            return zl2.Cif.f8603do.m10245do(context.getApplicationContext(), "GUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m7287if() {
        if (yl2.f8265do) {
            return yl2.f8266if;
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: new, reason: not valid java name */
    public static String m7288new(Context context) {
        if (yl2.f8265do) {
            return zl2.Cif.f8603do.m10245do(context.getApplicationContext(), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: try, reason: not valid java name */
    public static String m7289try(Context context) {
        if (yl2.f8265do) {
            return zl2.Cif.f8603do.m10245do(context.getApplicationContext(), "DUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }
}
