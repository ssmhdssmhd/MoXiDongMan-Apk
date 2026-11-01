package android.support.v4;

/* loaded from: classes3.dex */
public class ip0 extends pb2 {
    public ip0(int i, int i2, boolean z) {
        super(i, i2, z);
    }

    /* renamed from: class, reason: not valid java name */
    public static ip0 m3531class(int i) {
        return m3534super(0, i);
    }

    /* renamed from: const, reason: not valid java name */
    public static ip0 m3532const(int i) {
        return m3534super(i, Integer.MAX_VALUE);
    }

    /* renamed from: final, reason: not valid java name */
    public static ip0 m3533final(int i, int i2) {
        return new ip0(i, i2, true);
    }

    /* renamed from: super, reason: not valid java name */
    public static ip0 m3534super(int i, int i2) {
        return new ip0(i, i2, false);
    }

    @Override // android.support.v4.pb2
    /* renamed from: catch, reason: not valid java name */
    public String mo3535catch(int i) {
        char[] chars = Character.toChars(i);
        return "\\u" + rk.m7018do(chars[0]) + "\\u" + rk.m7018do(chars[1]);
    }
}
