package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.i30;
import android.support.v4.k62;
import android.support.v4.sx0;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {

    /* renamed from: extends, reason: not valid java name */
    public static final String f11271extends = "+";

    /* renamed from: import, reason: not valid java name */
    public static final int f11272import = 8388659;

    /* renamed from: native, reason: not valid java name */
    public static final int f11273native = 8388693;

    /* renamed from: public, reason: not valid java name */
    public static final int f11274public = 8388691;

    /* renamed from: return, reason: not valid java name */
    private static final int f11275return = 4;

    /* renamed from: static, reason: not valid java name */
    private static final int f11276static = -1;

    /* renamed from: switch, reason: not valid java name */
    private static final int f11277switch = 9;

    /* renamed from: while, reason: not valid java name */
    public static final int f11279while = 8388661;

    /* renamed from: break, reason: not valid java name */
    private float f11280break;

    /* renamed from: case, reason: not valid java name */
    private final float f11281case;

    /* renamed from: catch, reason: not valid java name */
    private int f11282catch;

    /* renamed from: class, reason: not valid java name */
    private float f11283class;

    /* renamed from: const, reason: not valid java name */
    private float f11284const;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final WeakReference<Context> f11285do;

    /* renamed from: else, reason: not valid java name */
    private final float f11286else;

    /* renamed from: final, reason: not valid java name */
    private float f11287final;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final TextDrawableHelper f11288for;

    /* renamed from: goto, reason: not valid java name */
    @NonNull
    private final SavedState f11289goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final MaterialShapeDrawable f11290if;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final Rect f11291new;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private WeakReference<View> f11292super;

    /* renamed from: this, reason: not valid java name */
    private float f11293this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private WeakReference<FrameLayout> f11294throw;

    /* renamed from: try, reason: not valid java name */
    private final float f11295try;

    /* renamed from: throws, reason: not valid java name */
    @StyleRes
    private static final int f11278throws = R.style.Widget_MaterialComponents_Badge;

    /* renamed from: default, reason: not valid java name */
    @AttrRes
    private static final int f11270default = R.attr.badgeStyle;

    /* renamed from: com.google.android.material.badge.BadgeDrawable$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f11310do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ FrameLayout f11312if;

        public Cdo(View view, FrameLayout frameLayout) {
            this.f11310do = view;
            this.f11312if = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            BadgeDrawable.this.e(this.f11310do, this.f11312if);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.badge.BadgeDrawable$if, reason: invalid class name */
    public @interface Cif {
    }

    private BadgeDrawable(@NonNull Context context) throws Resources.NotFoundException {
        this.f11285do = new WeakReference<>(context);
        k62.m4272for(context);
        Resources resources = context.getResources();
        this.f11291new = new Rect();
        this.f11290if = new MaterialShapeDrawable();
        this.f11295try = resources.getDimensionPixelSize(R.dimen.mtrl_badge_radius);
        this.f11286else = resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding);
        this.f11281case = resources.getDimensionPixelSize(R.dimen.mtrl_badge_with_text_radius);
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f11288for = textDrawableHelper;
        textDrawableHelper.m13609try().setTextAlign(Paint.Align.CENTER);
        this.f11289goto = new SavedState(context);
        m12701implements(R.style.TextAppearance_MaterialComponents_Badge);
    }

    private void a(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.f11294throw;
            if (weakReference == null || weakReference.get() != viewGroup) {
                b(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R.id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, iIndexOfChild);
                this.f11294throw = new WeakReference<>(frameLayout);
                frameLayout.post(new Cdo(view, frameLayout));
            }
        }
    }

    private static void b(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static BadgeDrawable m12696case(@NonNull Context context, @NonNull SavedState savedState) throws Resources.NotFoundException {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.m12705throws(savedState);
        return badgeDrawable;
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    private String m12697class() {
        if (m12719import() <= this.f11282catch) {
            return NumberFormat.getInstance().format(m12719import());
        }
        Context context = this.f11285do.get();
        return context == null ? "" : context.getString(R.string.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.f11282catch), "+");
    }

    /* renamed from: do, reason: not valid java name */
    private void m12698do(@NonNull Context context, @NonNull Rect rect, @NonNull View view) throws Resources.NotFoundException {
        int i = this.f11289goto.f11299class + this.f11289goto.f11303final;
        int i2 = this.f11289goto.f11308this;
        if (i2 == 8388691 || i2 == 8388693) {
            this.f11280break = rect.bottom - i;
        } else {
            this.f11280break = rect.top + i;
        }
        if (m12719import() <= 9) {
            float f = !m12727return() ? this.f11295try : this.f11281case;
            this.f11283class = f;
            this.f11287final = f;
            this.f11284const = f;
        } else {
            float f2 = this.f11281case;
            this.f11283class = f2;
            this.f11287final = f2;
            this.f11284const = (this.f11288for.m13603case(m12697class()) / 2.0f) + this.f11286else;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(m12727return() ? R.dimen.mtrl_badge_text_horizontal_edge_offset : R.dimen.mtrl_badge_horizontal_edge_offset);
        int i3 = this.f11289goto.f11298catch + this.f11289goto.f11300const;
        int i4 = this.f11289goto.f11308this;
        if (i4 == 8388659 || i4 == 8388691) {
            this.f11293this = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.f11284const) + dimensionPixelSize + i3 : ((rect.right + this.f11284const) - dimensionPixelSize) - i3;
        } else {
            this.f11293this = ViewCompat.getLayoutDirection(view) == 0 ? ((rect.right + this.f11284const) - dimensionPixelSize) - i3 : (rect.left - this.f11284const) + dimensionPixelSize + i3;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m12699else(Canvas canvas) {
        Rect rect = new Rect();
        String strM12697class = m12697class();
        this.f11288for.m13609try().getTextBounds(strM12697class, 0, strM12697class.length(), rect);
        canvas.drawText(strM12697class, this.f11293this, this.f11280break + (rect.height() / 2), this.f11288for.m13609try());
    }

    private void f() throws Resources.NotFoundException {
        Context context = this.f11285do.get();
        WeakReference<View> weakReference = this.f11292super;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f11291new);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f11294throw;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || com.google.android.material.badge.Cdo.f11313do) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        m12698do(context, rect2, view);
        com.google.android.material.badge.Cdo.m12768class(this.f11291new, this.f11293this, this.f11280break, this.f11284const, this.f11287final);
        this.f11290if.v(this.f11283class);
        if (rect.equals(this.f11291new)) {
            return;
        }
        this.f11290if.setBounds(this.f11291new);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static BadgeDrawable m12700for(@NonNull Context context) {
        return m12702new(context, null, f11270default, f11278throws);
    }

    private void g() {
        Double.isNaN(m12734while());
        this.f11282catch = ((int) Math.pow(10.0d, r0 - 1.0d)) - 1;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m12701implements(@StyleRes int i) throws Resources.NotFoundException {
        Context context = this.f11285do.get();
        if (context == null) {
            return;
        }
        m12706transient(new com.google.android.material.resources.Cdo(context, i));
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    private static BadgeDrawable m12702new(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Resources.NotFoundException {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.m12703static(context, attributeSet, i, i2);
        return badgeDrawable;
    }

    /* renamed from: static, reason: not valid java name */
    private void m12703static(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Resources.NotFoundException {
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.Badge, i, i2, new int[0]);
        m12721interface(typedArrayM4267break.getInt(R.styleable.Badge_maxCharacterCount, 4));
        int i3 = R.styleable.Badge_number;
        if (typedArrayM4267break.hasValue(i3)) {
            m12725protected(typedArrayM4267break.getInt(i3, 0));
        }
        m12716finally(m12704switch(context, typedArrayM4267break, R.styleable.Badge_backgroundColor));
        int i4 = R.styleable.Badge_badgeTextColor;
        if (typedArrayM4267break.hasValue(i4)) {
            m12724private(m12704switch(context, typedArrayM4267break, i4));
        }
        m12723package(typedArrayM4267break.getInt(R.styleable.Badge_badgeGravity, f11279while));
        m12733volatile(typedArrayM4267break.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0));
        m12720instanceof(typedArrayM4267break.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0));
        typedArrayM4267break.recycle();
    }

    /* renamed from: switch, reason: not valid java name */
    private static int m12704switch(Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        return sx0.m7649do(context, typedArray, i).getDefaultColor();
    }

    /* renamed from: throws, reason: not valid java name */
    private void m12705throws(@NonNull SavedState savedState) throws Resources.NotFoundException {
        m12721interface(savedState.f11309try);
        if (savedState.f11307new != -1) {
            m12725protected(savedState.f11307new);
        }
        m12716finally(savedState.f11301do);
        m12724private(savedState.f11306if);
        m12723package(savedState.f11308this);
        m12733volatile(savedState.f11298catch);
        m12720instanceof(savedState.f11299class);
        m12713default(savedState.f11300const);
        m12714extends(savedState.f11303final);
        m12730synchronized(savedState.f11296break);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m12706transient(@Nullable com.google.android.material.resources.Cdo cdo) throws Resources.NotFoundException {
        Context context;
        if (this.f11288for.m13607new() == cdo || (context = this.f11285do.get()) == null) {
            return;
        }
        this.f11288for.m13608this(cdo, context);
        f();
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static BadgeDrawable m12707try(@NonNull Context context, @XmlRes int i) throws XmlPullParserException, Resources.NotFoundException, IOException {
        AttributeSet attributeSetM3257do = i30.m3257do(context, i, "badge");
        int styleAttribute = attributeSetM3257do.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = f11278throws;
        }
        return m12702new(context, attributeSetM3257do, f11270default, styleAttribute);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m12708abstract(@StringRes int i) {
        this.f11289goto.f11305goto = i;
    }

    @ColorInt
    /* renamed from: break, reason: not valid java name */
    public int m12709break() {
        return this.f11290if.m13961throws().getDefaultColor();
    }

    public void c(@NonNull View view) throws Resources.NotFoundException {
        e(view, null);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m12710catch() {
        return this.f11289goto.f11308this;
    }

    @ColorInt
    /* renamed from: const, reason: not valid java name */
    public int m12711const() {
        return this.f11288for.m13609try().getColor();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m12712continue(CharSequence charSequence) {
        this.f11289goto.f11297case = charSequence;
    }

    @Deprecated
    public void d(@NonNull View view, @Nullable ViewGroup viewGroup) throws Resources.NotFoundException {
        if (!(viewGroup instanceof FrameLayout)) {
            throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
        }
        e(view, (FrameLayout) viewGroup);
    }

    /* renamed from: default, reason: not valid java name */
    public void m12713default(int i) throws Resources.NotFoundException {
        this.f11289goto.f11300const = i;
        f();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f11290if.draw(canvas);
        if (m12727return()) {
            m12699else(canvas);
        }
    }

    public void e(@NonNull View view, @Nullable FrameLayout frameLayout) throws Resources.NotFoundException {
        this.f11292super = new WeakReference<>(view);
        boolean z = com.google.android.material.badge.Cdo.f11313do;
        if (z && frameLayout == null) {
            a(view);
        } else {
            this.f11294throw = new WeakReference<>(frameLayout);
        }
        if (!z) {
            b(view);
        }
        f();
        invalidateSelf();
    }

    /* renamed from: extends, reason: not valid java name */
    public void m12714extends(int i) throws Resources.NotFoundException {
        this.f11289goto.f11303final = i;
        f();
    }

    @Nullable
    /* renamed from: final, reason: not valid java name */
    public CharSequence m12715final() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!m12727return()) {
            return this.f11289goto.f11297case;
        }
        if (this.f11289goto.f11302else <= 0 || (context = this.f11285do.get()) == null) {
            return null;
        }
        return m12719import() <= this.f11282catch ? context.getResources().getQuantityString(this.f11289goto.f11302else, m12719import(), Integer.valueOf(m12719import())) : context.getString(this.f11289goto.f11305goto, Integer.valueOf(this.f11282catch));
    }

    /* renamed from: finally, reason: not valid java name */
    public void m12716finally(@ColorInt int i) {
        this.f11289goto.f11301do = i;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i);
        if (this.f11290if.m13961throws() != colorStateListValueOf) {
            this.f11290if.z(colorStateListValueOf);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f11289goto.f11304for;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f11291new.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f11291new.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m12717goto() {
        return this.f11289goto.f11300const;
    }

    /* renamed from: if, reason: not valid java name */
    public void m12718if() {
        this.f11289goto.f11307new = -1;
        invalidateSelf();
    }

    /* renamed from: import, reason: not valid java name */
    public int m12719import() {
        if (m12727return()) {
            return this.f11289goto.f11307new;
        }
        return 0;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m12720instanceof(int i) throws Resources.NotFoundException {
        this.f11289goto.f11299class = i;
        f();
    }

    /* renamed from: interface, reason: not valid java name */
    public void m12721interface(int i) throws Resources.NotFoundException {
        if (this.f11289goto.f11309try != i) {
            this.f11289goto.f11309try = i;
            g();
            this.f11288for.m13602break(true);
            f();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public SavedState m12722native() {
        return this.f11289goto;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onTextSizeChange() {
        invalidateSelf();
    }

    /* renamed from: package, reason: not valid java name */
    public void m12723package(int i) throws Resources.NotFoundException {
        if (this.f11289goto.f11308this != i) {
            this.f11289goto.f11308this = i;
            WeakReference<View> weakReference = this.f11292super;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            View view = this.f11292super.get();
            WeakReference<FrameLayout> weakReference2 = this.f11294throw;
            e(view, weakReference2 != null ? weakReference2.get() : null);
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m12724private(@ColorInt int i) {
        this.f11289goto.f11306if = i;
        if (this.f11288for.m13609try().getColor() != i) {
            this.f11288for.m13609try().setColor(i);
            invalidateSelf();
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public void m12725protected(int i) throws Resources.NotFoundException {
        int iMax = Math.max(0, i);
        if (this.f11289goto.f11307new != iMax) {
            this.f11289goto.f11307new = iMax;
            this.f11288for.m13602break(true);
            f();
            invalidateSelf();
        }
    }

    /* renamed from: public, reason: not valid java name */
    public int m12726public() {
        return this.f11289goto.f11299class;
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m12727return() {
        return this.f11289goto.f11307new != -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f11289goto.f11304for = i;
        this.f11288for.m13609try().setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m12728strictfp(@PluralsRes int i) {
        this.f11289goto.f11302else = i;
    }

    @Nullable
    /* renamed from: super, reason: not valid java name */
    public FrameLayout m12729super() {
        WeakReference<FrameLayout> weakReference = this.f11294throw;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m12730synchronized(boolean z) {
        setVisible(z, false);
        this.f11289goto.f11296break = z;
        if (!com.google.android.material.badge.Cdo.f11313do || m12729super() == null || z) {
            return;
        }
        ((ViewGroup) m12729super().getParent()).invalidate();
    }

    /* renamed from: this, reason: not valid java name */
    public int m12731this() {
        return this.f11289goto.f11303final;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m12732throw() {
        return this.f11289goto.f11298catch;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m12733volatile(int i) throws Resources.NotFoundException {
        this.f11289goto.f11298catch = i;
        f();
    }

    /* renamed from: while, reason: not valid java name */
    public int m12734while() {
        return this.f11289goto.f11309try;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        private boolean f11296break;

        /* renamed from: case, reason: not valid java name */
        @Nullable
        private CharSequence f11297case;

        /* renamed from: catch, reason: not valid java name */
        @Dimension(unit = 1)
        private int f11298catch;

        /* renamed from: class, reason: not valid java name */
        @Dimension(unit = 1)
        private int f11299class;

        /* renamed from: const, reason: not valid java name */
        @Dimension(unit = 1)
        private int f11300const;

        /* renamed from: do, reason: not valid java name */
        @ColorInt
        private int f11301do;

        /* renamed from: else, reason: not valid java name */
        @PluralsRes
        private int f11302else;

        /* renamed from: final, reason: not valid java name */
        @Dimension(unit = 1)
        private int f11303final;

        /* renamed from: for, reason: not valid java name */
        private int f11304for;

        /* renamed from: goto, reason: not valid java name */
        @StringRes
        private int f11305goto;

        /* renamed from: if, reason: not valid java name */
        @ColorInt
        private int f11306if;

        /* renamed from: new, reason: not valid java name */
        private int f11307new;

        /* renamed from: this, reason: not valid java name */
        private int f11308this;

        /* renamed from: try, reason: not valid java name */
        private int f11309try;

        /* renamed from: com.google.android.material.badge.BadgeDrawable$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(@NonNull Context context) {
            this.f11304for = 255;
            this.f11307new = -1;
            this.f11306if = new com.google.android.material.resources.Cdo(context, R.style.TextAppearance_MaterialComponents_Badge).f12449do.getDefaultColor();
            this.f11297case = context.getString(R.string.mtrl_badge_numberless_content_description);
            this.f11302else = R.plurals.mtrl_badge_content_description;
            this.f11305goto = R.string.mtrl_exceed_max_badge_number_content_description;
            this.f11296break = true;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f11301do);
            parcel.writeInt(this.f11306if);
            parcel.writeInt(this.f11304for);
            parcel.writeInt(this.f11307new);
            parcel.writeInt(this.f11309try);
            parcel.writeString(this.f11297case.toString());
            parcel.writeInt(this.f11302else);
            parcel.writeInt(this.f11308this);
            parcel.writeInt(this.f11298catch);
            parcel.writeInt(this.f11299class);
            parcel.writeInt(this.f11300const);
            parcel.writeInt(this.f11303final);
            parcel.writeInt(this.f11296break ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel) {
            this.f11304for = 255;
            this.f11307new = -1;
            this.f11301do = parcel.readInt();
            this.f11306if = parcel.readInt();
            this.f11304for = parcel.readInt();
            this.f11307new = parcel.readInt();
            this.f11309try = parcel.readInt();
            this.f11297case = parcel.readString();
            this.f11302else = parcel.readInt();
            this.f11308this = parcel.readInt();
            this.f11298catch = parcel.readInt();
            this.f11299class = parcel.readInt();
            this.f11300const = parcel.readInt();
            this.f11303final = parcel.readInt();
            this.f11296break = parcel.readInt() != 0;
        }
    }
}
