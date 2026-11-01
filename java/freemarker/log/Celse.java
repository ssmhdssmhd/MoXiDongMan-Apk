package freemarker.log;

import org.apache.log4j.MDC;

/* renamed from: freemarker.log.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: do, reason: not valid java name */
    private static final String f25047do = "freemarker.log.else";

    /* renamed from: do, reason: not valid java name */
    public static final boolean m29192do() {
        String str = f25047do;
        MDC.put(str, "");
        try {
            boolean z = org.slf4j.MDC.get(str) != null;
            MDC.remove(str);
            return z;
        } catch (Throwable th) {
            MDC.remove(f25047do);
            throw th;
        }
    }
}
