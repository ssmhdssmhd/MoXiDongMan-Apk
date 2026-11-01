package android.support.v4;

import android.net.TrafficStats;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class m62 {

    /* renamed from: do, reason: not valid java name */
    private static final Method f3848do;

    /* renamed from: if, reason: not valid java name */
    private static final Method f3849if;

    static {
        try {
            f3848do = TrafficStats.class.getMethod("setThreadStatsUid", Integer.TYPE);
            f3849if = TrafficStats.class.getMethod("clearThreadStatsUid", new Class[0]);
        } catch (NoSuchMethodException | SecurityException e) {
            throw new RuntimeException("Unable to get TrafficStats methods", e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4856do() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            f3849if.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("TrafficStats.clearThreadStatsUid failed", e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException("TrafficStats.clearThreadStatsUid failed", e2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4857if(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            f3848do.invoke(null, Integer.valueOf(i));
        } catch (IllegalAccessException e) {
            throw new RuntimeException("TrafficStats.setThreadStatsUid failed", e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException("TrafficStats.setThreadStatsUid failed", e2);
        }
    }
}
