package android.support.v4;

/* loaded from: classes3.dex */
public class qm0 {
    /* renamed from: do, reason: not valid java name */
    public static int m6626do(Class<?> cls, Class<?> cls2) {
        if (cls == null || cls2 == null) {
            return -1;
        }
        if (cls.equals(cls2)) {
            return 0;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        int iM1254throws = dc.m1254throws(cls2.equals(superclass));
        if (iM1254throws == 1) {
            return iM1254throws;
        }
        int iM6626do = iM1254throws + m6626do(superclass, cls2);
        if (iM6626do > 0) {
            return iM6626do + 1;
        }
        return -1;
    }
}
