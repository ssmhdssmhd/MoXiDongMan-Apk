package android.support.v4;

import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* loaded from: classes3.dex */
public class am {
    /* renamed from: do, reason: not valid java name */
    public static String m274do(Class<?> cls, String str) {
        ee2.m1832instanceof(cls, "Parameter '%s' must not be null!", com.umeng.analytics.pro.d.R);
        ee2.m1832instanceof(str, "Parameter '%s' must not be null!", "resourceName");
        return m276if(cls.getPackage(), str);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m275for(Class<?> cls, String str) {
        ee2.m1832instanceof(cls, "Parameter '%s' must not be null!", com.umeng.analytics.pro.d.R);
        ee2.m1832instanceof(str, "Parameter '%s' must not be null!", "resourceName");
        return m277new(cls.getPackage(), str);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m276if(Package r4, String str) {
        ee2.m1832instanceof(r4, "Parameter '%s' must not be null!", com.umeng.analytics.pro.d.R);
        ee2.m1832instanceof(str, "Parameter '%s' must not be null!", "resourceName");
        return r4.getName() + "." + str;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m277new(Package r4, String str) {
        ee2.m1832instanceof(r4, "Parameter '%s' must not be null!", com.umeng.analytics.pro.d.R);
        ee2.m1832instanceof(str, "Parameter '%s' must not be null!", "resourceName");
        return r4.getName().replace(Ctry.f28883do, Attributes.InternalPrefix) + on0.f4694final + str;
    }
}
