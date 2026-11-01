package android.support.v4;

@li0
/* loaded from: classes.dex */
public final class az {

    /* renamed from: do, reason: not valid java name */
    private static final Double f294do = Double.valueOf(0.0d);

    /* renamed from: if, reason: not valid java name */
    private static final Float f295if = Float.valueOf(0.0f);

    private az() {
    }

    @b51
    /* renamed from: do, reason: not valid java name */
    public static <T> T m409do(Class<T> cls) {
        af1.m205continue(cls);
        if (cls == Boolean.TYPE) {
            return (T) Boolean.FALSE;
        }
        if (cls == Character.TYPE) {
            return (T) (char) 0;
        }
        if (cls == Byte.TYPE) {
            return (T) (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (T) (short) 0;
        }
        if (cls == Integer.TYPE) {
            return (T) 0;
        }
        if (cls == Long.TYPE) {
            return (T) 0L;
        }
        if (cls == Float.TYPE) {
            return (T) f295if;
        }
        if (cls == Double.TYPE) {
            return (T) f294do;
        }
        return null;
    }
}
