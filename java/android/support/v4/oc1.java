package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public abstract class oc1 {

    /* renamed from: do, reason: not valid java name */
    private final Celse f4542do;

    public oc1(Celse celse) {
        this.f4542do = celse;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m5549for(String str, StringBuilder sb) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5550new(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                m5549for(str, sb);
            }
        }
    }

    /* renamed from: do */
    public abstract String mo804do();

    /* renamed from: if, reason: not valid java name */
    public final Celse m5551if() {
        return this.f4542do;
    }

    public final String toString() {
        return mo804do();
    }
}
