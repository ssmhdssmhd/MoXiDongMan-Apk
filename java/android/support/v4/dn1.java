package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Cif;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.resource.bitmap.Ctry;
import com.bumptech.glide.request.Cdo;
import com.google.common.collect.LinkedHashMultimap;

/* loaded from: classes.dex */
public class dn1 extends Cdo<dn1> {

    @Nullable
    private static dn1 i;

    @Nullable
    private static dn1 j;

    @Nullable
    private static dn1 k;

    @Nullable
    private static dn1 l;

    @Nullable
    private static dn1 m;

    @Nullable
    private static dn1 n;

    @Nullable
    private static dn1 o;

    @Nullable
    private static dn1 p;

    @NonNull
    @CheckResult
    public static dn1 W(@NonNull Transformation<Bitmap> transformation) {
        return new dn1().N(transformation);
    }

    @NonNull
    @CheckResult
    public static dn1 X() {
        if (m == null) {
            m = new dn1().mo11927for().mo11929if();
        }
        return m;
    }

    @NonNull
    @CheckResult
    public static dn1 Y() {
        if (l == null) {
            l = new dn1().mo11935new().mo11929if();
        }
        return l;
    }

    @NonNull
    @CheckResult
    public static dn1 Z() {
        if (n == null) {
            n = new dn1().mo11950try().mo11929if();
        }
        return n;
    }

    @NonNull
    @CheckResult
    public static dn1 a0(@NonNull Class<?> cls) {
        return new dn1().mo11923else(cls);
    }

    @NonNull
    @CheckResult
    public static dn1 b0(@NonNull Ccase ccase) {
        return new dn1().mo11946this(ccase);
    }

    @NonNull
    @CheckResult
    public static dn1 c0(@NonNull Ctry ctry) {
        return new dn1().mo11919class(ctry);
    }

    @NonNull
    @CheckResult
    public static dn1 d0(@NonNull Bitmap.CompressFormat compressFormat) {
        return new dn1().mo11920const(compressFormat);
    }

    @NonNull
    @CheckResult
    public static dn1 e0(@IntRange(from = 0, to = 100) int i2) {
        return new dn1().mo11925final(i2);
    }

    @NonNull
    @CheckResult
    public static dn1 f0(@DrawableRes int i2) {
        return new dn1().mo11943super(i2);
    }

    @NonNull
    @CheckResult
    public static dn1 g0(@Nullable Drawable drawable) {
        return new dn1().mo11947throw(drawable);
    }

    @NonNull
    @CheckResult
    public static dn1 h0() {
        if (k == null) {
            k = new dn1().mo11934native().mo11929if();
        }
        return k;
    }

    @NonNull
    @CheckResult
    public static dn1 i0(@NonNull Cif cif) {
        return new dn1().mo11939public(cif);
    }

    @NonNull
    @CheckResult
    public static dn1 j0(@IntRange(from = 0) long j2) {
        return new dn1().mo11940return(j2);
    }

    @NonNull
    @CheckResult
    public static dn1 k0() {
        if (p == null) {
            p = new dn1().mo11917break().mo11929if();
        }
        return p;
    }

    @NonNull
    @CheckResult
    public static dn1 l0() {
        if (o == null) {
            o = new dn1().mo11918catch().mo11929if();
        }
        return o;
    }

    @NonNull
    @CheckResult
    public static <T> dn1 m0(@NonNull Option<T> option, @NonNull T t) {
        return new dn1().H(option, t);
    }

    @NonNull
    @CheckResult
    public static dn1 n0(int i2) {
        return o0(i2, i2);
    }

    @NonNull
    @CheckResult
    public static dn1 o0(int i2, int i3) {
        return new dn1().z(i2, i3);
    }

    @NonNull
    @CheckResult
    public static dn1 p0(@DrawableRes int i2) {
        return new dn1().A(i2);
    }

    @NonNull
    @CheckResult
    public static dn1 q0(@Nullable Drawable drawable) {
        return new dn1().B(drawable);
    }

    @NonNull
    @CheckResult
    public static dn1 r0(@NonNull com.bumptech.glide.Ctry ctry) {
        return new dn1().C(ctry);
    }

    @NonNull
    @CheckResult
    public static dn1 s0(@NonNull Key key) {
        return new dn1().I(key);
    }

    @NonNull
    @CheckResult
    public static dn1 t0(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return new dn1().J(f);
    }

    @NonNull
    @CheckResult
    public static dn1 u0(boolean z) {
        if (z) {
            if (i == null) {
                i = new dn1().K(true).mo11929if();
            }
            return i;
        }
        if (j == null) {
            j = new dn1().K(false).mo11929if();
        }
        return j;
    }

    @NonNull
    @CheckResult
    public static dn1 v0(@IntRange(from = 0) int i2) {
        return new dn1().M(i2);
    }
}
