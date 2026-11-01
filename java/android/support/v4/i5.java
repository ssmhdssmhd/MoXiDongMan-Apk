package android.support.v4;

import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public final class i5 {

    /* renamed from: do, reason: not valid java name */
    @a51
    private static volatile Consumer<? super g91> f2623do = null;

    /* renamed from: for, reason: not valid java name */
    public static volatile boolean f2624for = true;

    /* renamed from: if, reason: not valid java name */
    public static volatile boolean f2625if;

    /* renamed from: new, reason: not valid java name */
    public static volatile boolean f2626new;

    private i5() {
    }

    /* renamed from: case, reason: not valid java name */
    public static void m3266case() {
        m3273this(null);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m3267do() {
        return f2625if;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m3268else(boolean z) {
        if (f2626new) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f2625if = z;
    }

    @a51
    /* renamed from: for, reason: not valid java name */
    public static Consumer<? super g91> m3269for() {
        return f2623do;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m3270goto(boolean z) {
        if (f2626new) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f2624for = z;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m3271if() {
        return f2624for;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m3272new() {
        return f2626new;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m3273this(@a51 Consumer<? super g91> consumer) {
        if (f2626new) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f2623do = consumer;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3274try() {
        f2626new = true;
    }
}
