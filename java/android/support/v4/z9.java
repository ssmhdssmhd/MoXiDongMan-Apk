package android.support.v4;

import android.content.Context;

/* loaded from: classes.dex */
public final class z9 {

    /* renamed from: do, reason: not valid java name */
    private static final String f8468do = "BlockCanary-no-op";

    /* renamed from: if, reason: not valid java name */
    private static z9 f8469if;

    private z9() {
    }

    /* renamed from: do, reason: not valid java name */
    public static z9 m10110do() {
        if (f8469if == null) {
            synchronized (z9.class) {
                if (f8469if == null) {
                    f8469if = new z9();
                }
            }
        }
        return f8469if;
    }

    /* renamed from: if, reason: not valid java name */
    public static z9 m10111if(Context context, aa aaVar) {
        aa.m90case(context, aaVar);
        return m10110do();
    }

    /* renamed from: case, reason: not valid java name */
    public void m10112case() {
    }

    /* renamed from: else, reason: not valid java name */
    public void m10113else() {
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m10114for() {
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public void m10115new() {
    }

    /* renamed from: try, reason: not valid java name */
    public void m10116try() {
    }
}
