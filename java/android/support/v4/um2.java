package android.support.v4;

/* loaded from: classes3.dex */
public abstract class um2 {

    /* renamed from: case, reason: not valid java name */
    public static final int f6942case = 2;

    /* renamed from: do, reason: not valid java name */
    public static final byte f6943do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final int f6944else = 15;

    /* renamed from: for, reason: not valid java name */
    public static final byte f6945for = 2;

    /* renamed from: if, reason: not valid java name */
    public static final byte f6946if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f6947new = 3;

    /* renamed from: try, reason: not valid java name */
    public static final int f6948try = 7;

    /* renamed from: for, reason: not valid java name */
    public static byte m8521for(um2 um2Var, byte b, byte b2) {
        int i = (b & 255) >> 3;
        int i2 = (b & 7) << 2;
        return (byte) ((um2Var.mo587case()[(((um2Var.mo591try() * b2) + ((um2Var.mo588do()[i] >> i2) & 15)) & 255) >> 3] >> (((((b2 * um2Var.mo591try()) + ((um2Var.mo588do()[i] >> i2) & 15)) & 255) & 7) << 2)) & 15 & 255);
    }

    /* renamed from: case */
    public abstract int[] mo587case();

    /* renamed from: do */
    public abstract int[] mo588do();

    /* renamed from: if */
    public abstract String mo589if();

    /* renamed from: new */
    public abstract boolean mo590new();

    /* renamed from: try */
    public abstract int mo591try();
}
