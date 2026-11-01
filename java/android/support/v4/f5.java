package android.support.v4;

import androidx.annotation.Nullable;
import io.reactivex.functions.BooleanSupplier;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class f5 {

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private static volatile BooleanSupplier f1686do;

    /* renamed from: if, reason: not valid java name */
    public static volatile boolean f1687if;

    private f5() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m2138do() {
        return f1687if;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m2139for(BooleanSupplier booleanSupplier) {
        Objects.requireNonNull(booleanSupplier, "defaultChecker == null");
        BooleanSupplier booleanSupplier2 = f1686do;
        try {
            return booleanSupplier2 == null ? booleanSupplier.getAsBoolean() : booleanSupplier2.getAsBoolean();
        } catch (Exception e) {
            throw t80.m7780do(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2140if() {
        f1687if = true;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m2141new() {
        m2142try(null);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2142try(@Nullable BooleanSupplier booleanSupplier) {
        if (f1687if) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f1686do = booleanSupplier;
    }
}
