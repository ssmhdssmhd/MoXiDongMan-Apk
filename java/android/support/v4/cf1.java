package android.support.v4;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cf1 {
    private cf1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m897do(boolean z, @NonNull String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static <T extends Collection<Y>, Y> T m898for(@NonNull T t) {
        if (t.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static String m899if(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static <T> T m900new(@Nullable T t) {
        return (T) m901try(t, "Argument must not be null");
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static <T> T m901try(@Nullable T t, @NonNull String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
