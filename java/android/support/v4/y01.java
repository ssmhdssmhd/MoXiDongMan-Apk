package android.support.v4;

/* loaded from: classes3.dex */
public final class y01 {

    /* renamed from: do, reason: not valid java name */
    private static final int f8074do = 0;

    private y01() {
    }

    /* renamed from: case, reason: not valid java name */
    public static int m9663case(int i, Object obj) {
        return m9668try(i, obj != null ? obj.hashCode() : 0);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m9664do(int i, int i2) {
        int i3 = i ^ (i2 * 4);
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return i5 ^ (i5 >>> 16);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m9665for() {
        return m9667new(0);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> int m9666if(T[] tArr, int i) {
        int iM9667new = m9667new(i);
        for (T t : tArr) {
            iM9667new = m9663case(iM9667new, t);
        }
        return m9664do(iM9667new, tArr.length);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m9667new(int i) {
        return i;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m9668try(int i, int i2) {
        int i3 = i2 * (-862048943);
        int i4 = i ^ (((i3 >>> 17) | (i3 << 15)) * 461845907);
        return (((i4 >>> 19) | (i4 << 13)) * 5) - 430675100;
    }
}
