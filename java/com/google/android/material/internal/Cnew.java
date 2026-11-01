package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Constructor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.internal.new, reason: invalid class name */
/* loaded from: classes.dex */
final class Cnew {

    /* renamed from: final, reason: not valid java name */
    public static final int f12198final;

    /* renamed from: import, reason: not valid java name */
    private static final String f12199import = "android.text.TextDirectionHeuristics";

    /* renamed from: native, reason: not valid java name */
    private static final String f12200native = "LTR";

    /* renamed from: public, reason: not valid java name */
    private static final String f12201public = "RTL";

    /* renamed from: return, reason: not valid java name */
    private static boolean f12202return = false;

    /* renamed from: static, reason: not valid java name */
    @Nullable
    private static Constructor<StaticLayout> f12203static = null;

    /* renamed from: super, reason: not valid java name */
    public static final float f12204super = 0.0f;

    /* renamed from: switch, reason: not valid java name */
    @Nullable
    private static Object f12205switch = null;

    /* renamed from: throw, reason: not valid java name */
    public static final float f12206throw = 1.0f;

    /* renamed from: while, reason: not valid java name */
    private static final String f12207while = "android.text.TextDirectionHeuristic";

    /* renamed from: class, reason: not valid java name */
    private boolean f12211class;

    /* renamed from: do, reason: not valid java name */
    private CharSequence f12213do;

    /* renamed from: for, reason: not valid java name */
    private final int f12215for;

    /* renamed from: if, reason: not valid java name */
    private final TextPaint f12217if;

    /* renamed from: try, reason: not valid java name */
    private int f12220try;

    /* renamed from: new, reason: not valid java name */
    private int f12218new = 0;

    /* renamed from: case, reason: not valid java name */
    private Layout.Alignment f12209case = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: else, reason: not valid java name */
    private int f12214else = Integer.MAX_VALUE;

    /* renamed from: goto, reason: not valid java name */
    private float f12216goto = 0.0f;

    /* renamed from: this, reason: not valid java name */
    private float f12219this = 1.0f;

    /* renamed from: break, reason: not valid java name */
    private int f12208break = f12198final;

    /* renamed from: catch, reason: not valid java name */
    private boolean f12210catch = true;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private TextUtils.TruncateAt f12212const = null;

    /* renamed from: com.google.android.material.internal.new$do, reason: invalid class name */
    public static class Cdo extends Exception {
        public Cdo(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    static {
        f12198final = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    private Cnew(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f12213do = charSequence;
        this.f12217if = textPaint;
        this.f12215for = i;
        this.f12220try = charSequence.length();
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static Cnew m13680for(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i) {
        return new Cnew(charSequence, textPaint, i);
    }

    /* renamed from: if, reason: not valid java name */
    private void m13681if() throws Cdo, NoSuchMethodException, SecurityException, ClassNotFoundException {
        Class<?> cls;
        if (f12202return) {
            return;
        }
        try {
            boolean z = this.f12211class && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                cls = TextDirectionHeuristic.class;
                f12205switch = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = Cnew.class.getClassLoader();
                String str = this.f12211class ? f12201public : f12200native;
                Class<?> clsLoadClass = classLoader.loadClass(f12207while);
                Class<?> clsLoadClass2 = classLoader.loadClass(f12199import);
                f12205switch = clsLoadClass2.getField(str).get(clsLoadClass2);
                cls = clsLoadClass;
            }
            Class cls2 = Integer.TYPE;
            Class cls3 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls2, cls2, TextPaint.class, cls2, Layout.Alignment.class, cls, cls3, cls3, Boolean.TYPE, TextUtils.TruncateAt.class, cls2, cls2);
            f12203static = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f12202return = true;
        } catch (Exception e) {
            throw new Cdo(e);
        }
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public Cnew m13682break(float f, float f2) {
        this.f12216goto = f;
        this.f12219this = f2;
        return this;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public Cnew m13683case(@IntRange(from = 0) int i) {
        this.f12220try = i;
        return this;
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public Cnew m13684catch(@IntRange(from = 0) int i) {
        this.f12214else = i;
        return this;
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public Cnew m13685class(@IntRange(from = 0) int i) {
        this.f12218new = i;
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public StaticLayout m13686do() throws Cdo, NoSuchMethodException, SecurityException, ClassNotFoundException {
        if (this.f12213do == null) {
            this.f12213do = "";
        }
        int iMax = Math.max(0, this.f12215for);
        CharSequence charSequenceEllipsize = this.f12213do;
        if (this.f12214else == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f12217if, iMax, this.f12212const);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f12220try);
        this.f12220try = iMin;
        if (Build.VERSION.SDK_INT < 23) {
            m13681if();
            try {
                return (StaticLayout) ((Constructor) Preconditions.checkNotNull(f12203static)).newInstance(charSequenceEllipsize, Integer.valueOf(this.f12218new), Integer.valueOf(this.f12220try), this.f12217if, Integer.valueOf(iMax), this.f12209case, Preconditions.checkNotNull(f12205switch), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f12210catch), null, Integer.valueOf(iMax), Integer.valueOf(this.f12214else));
            } catch (Exception e) {
                throw new Cdo(e);
            }
        }
        if (this.f12211class && this.f12214else == 1) {
            this.f12209case = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f12218new, iMin, this.f12217if, iMax);
        builderObtain.setAlignment(this.f12209case);
        builderObtain.setIncludePad(this.f12210catch);
        builderObtain.setTextDirection(this.f12211class ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f12212const;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f12214else);
        float f = this.f12216goto;
        if (f != 0.0f || this.f12219this != 1.0f) {
            builderObtain.setLineSpacing(f, this.f12219this);
        }
        if (this.f12214else > 1) {
            builderObtain.setHyphenationFrequency(this.f12208break);
        }
        return builderObtain.build();
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public Cnew m13687else(int i) {
        this.f12208break = i;
        return this;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public Cnew m13688goto(boolean z) {
        this.f12210catch = z;
        return this;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public Cnew m13689new(@NonNull Layout.Alignment alignment) {
        this.f12209case = alignment;
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public Cnew m13690this(boolean z) {
        this.f12211class = z;
        return this;
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public Cnew m13691try(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f12212const = truncateAt;
        return this;
    }
}
