package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v4.b62;
import android.support.v4.c62;
import android.support.v4.sx0;
import android.text.TextPaint;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.resources.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: import, reason: not valid java name */
    private static final String f12440import = "TextAppearance";

    /* renamed from: native, reason: not valid java name */
    private static final int f12441native = 1;

    /* renamed from: public, reason: not valid java name */
    private static final int f12442public = 2;

    /* renamed from: return, reason: not valid java name */
    private static final int f12443return = 3;

    /* renamed from: break, reason: not valid java name */
    public final float f12444break;

    /* renamed from: case, reason: not valid java name */
    public final int f12445case;

    /* renamed from: catch, reason: not valid java name */
    public final float f12446catch;

    /* renamed from: class, reason: not valid java name */
    public final boolean f12447class;

    /* renamed from: const, reason: not valid java name */
    public final float f12448const;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    public final ColorStateList f12449do;

    /* renamed from: else, reason: not valid java name */
    public final int f12450else;

    /* renamed from: final, reason: not valid java name */
    public float f12451final;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    public final ColorStateList f12452for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f12453goto;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    public final ColorStateList f12454if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    public final ColorStateList f12455new;

    /* renamed from: super, reason: not valid java name */
    @FontRes
    private final int f12456super;

    /* renamed from: this, reason: not valid java name */
    public final float f12457this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f12458throw = false;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    public final String f12459try;

    /* renamed from: while, reason: not valid java name */
    private Typeface f12460while;

    /* renamed from: com.google.android.material.resources.do$do, reason: invalid class name and collision with other inner class name */
    public class C0063do extends ResourcesCompat.FontCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ c62 f12461do;

        public C0063do(c62 c62Var) {
            this.f12461do = c62Var;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
            Cdo.this.f12458throw = true;
            this.f12461do.mo757do(i);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            Cdo cdo = Cdo.this;
            cdo.f12460while = Typeface.create(typeface, cdo.f12445case);
            Cdo.this.f12458throw = true;
            this.f12461do.mo758if(Cdo.this.f12460while, false);
        }
    }

    /* renamed from: com.google.android.material.resources.do$if, reason: invalid class name */
    public class Cif extends c62 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ TextPaint f12463do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ c62 f12465if;

        public Cif(TextPaint textPaint, c62 c62Var) {
            this.f12463do = textPaint;
            this.f12465if = c62Var;
        }

        @Override // android.support.v4.c62
        /* renamed from: do */
        public void mo757do(int i) {
            this.f12465if.mo757do(i);
        }

        @Override // android.support.v4.c62
        /* renamed from: if */
        public void mo758if(@NonNull Typeface typeface, boolean z) {
            Cdo.this.m13902class(this.f12463do, typeface);
            this.f12465if.mo758if(typeface, z);
        }
    }

    public Cdo(@NonNull Context context, @StyleRes int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.TextAppearance);
        this.f12451final = typedArrayObtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f);
        this.f12449do = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColor);
        this.f12454if = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        this.f12452for = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.f12445case = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.f12450else = typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int iM7655try = sx0.m7655try(typedArrayObtainStyledAttributes, R.styleable.TextAppearance_fontFamily, R.styleable.TextAppearance_android_fontFamily);
        this.f12456super = typedArrayObtainStyledAttributes.getResourceId(iM7655try, 0);
        this.f12459try = typedArrayObtainStyledAttributes.getString(iM7655try);
        this.f12453goto = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.f12455new = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.f12457this = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f12444break = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f12446catch = typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.f12447class = false;
            this.f12448const = 0.0f;
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, R.styleable.MaterialTextAppearance);
        int i2 = R.styleable.MaterialTextAppearance_android_letterSpacing;
        this.f12447class = typedArrayObtainStyledAttributes2.hasValue(i2);
        this.f12448const = typedArrayObtainStyledAttributes2.getFloat(i2, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    /* renamed from: new, reason: not valid java name */
    private void m13897new() {
        String str;
        if (this.f12460while == null && (str = this.f12459try) != null) {
            this.f12460while = Typeface.create(str, this.f12445case);
        }
        if (this.f12460while == null) {
            int i = this.f12450else;
            if (i == 1) {
                this.f12460while = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f12460while = Typeface.SERIF;
            } else if (i != 3) {
                this.f12460while = Typeface.DEFAULT;
            } else {
                this.f12460while = Typeface.MONOSPACE;
            }
            this.f12460while = Typeface.create(this.f12460while, this.f12445case);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m13898this(Context context) {
        if (b62.m456if()) {
            return true;
        }
        int i = this.f12456super;
        return (i != 0 ? ResourcesCompat.getCachedFont(context, i) : null) != null;
    }

    /* renamed from: break, reason: not valid java name */
    public void m13899break(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull c62 c62Var) {
        m13901catch(context, textPaint, c62Var);
        ColorStateList colorStateList = this.f12449do;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.f12446catch;
        float f2 = this.f12457this;
        float f3 = this.f12444break;
        ColorStateList colorStateList2 = this.f12455new;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: case, reason: not valid java name */
    public Typeface m13900case(@NonNull Context context) {
        if (this.f12458throw) {
            return this.f12460while;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.f12456super);
                this.f12460while = font;
                if (font != null) {
                    this.f12460while = Typeface.create(font, this.f12445case);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                StringBuilder sb = new StringBuilder();
                sb.append("Error loading font ");
                sb.append(this.f12459try);
            }
        }
        m13897new();
        this.f12458throw = true;
        return this.f12460while;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m13901catch(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull c62 c62Var) {
        if (m13898this(context)) {
            m13902class(textPaint, m13900case(context));
        } else {
            m13904goto(context, textPaint, c62Var);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m13902class(@NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f12445case;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f12451final);
        if (Build.VERSION.SDK_INT < 21 || !this.f12447class) {
            return;
        }
        textPaint.setLetterSpacing(this.f12448const);
    }

    /* renamed from: else, reason: not valid java name */
    public void m13903else(@NonNull Context context, @NonNull c62 c62Var) {
        if (m13898this(context)) {
            m13900case(context);
        } else {
            m13897new();
        }
        int i = this.f12456super;
        if (i == 0) {
            this.f12458throw = true;
        }
        if (this.f12458throw) {
            c62Var.mo758if(this.f12460while, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i, new C0063do(c62Var), null);
        } catch (Resources.NotFoundException unused) {
            this.f12458throw = true;
            c62Var.mo757do(1);
        } catch (Exception unused2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error loading font ");
            sb.append(this.f12459try);
            this.f12458throw = true;
            c62Var.mo757do(-3);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m13904goto(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull c62 c62Var) {
        m13902class(textPaint, m13905try());
        m13903else(context, new Cif(textPaint, c62Var));
    }

    /* renamed from: try, reason: not valid java name */
    public Typeface m13905try() {
        m13897new();
        return this.f12460while;
    }
}
