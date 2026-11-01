package com.google.android.material.card;

import android.R;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.support.v4.it;
import android.support.v4.no1;
import android.support.v4.qx0;
import android.support.v4.ro1;
import android.support.v4.sx0;
import android.support.v4.yr;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.common.collect.LinkedHashMultimap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.card.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: return, reason: not valid java name */
    private static final int f11563return = -1;

    /* renamed from: switch, reason: not valid java name */
    private static final float f11565switch = 1.5f;

    /* renamed from: throws, reason: not valid java name */
    private static final int f11566throws = 2;

    /* renamed from: break, reason: not valid java name */
    @Nullable
    private ColorStateList f11567break;

    /* renamed from: case, reason: not valid java name */
    @Dimension
    private int f11568case;

    /* renamed from: catch, reason: not valid java name */
    @Nullable
    private ColorStateList f11569catch;

    /* renamed from: class, reason: not valid java name */
    @Nullable
    private ShapeAppearanceModel f11570class;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private ColorStateList f11571const;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final MaterialCardView f11572do;

    /* renamed from: else, reason: not valid java name */
    @Dimension
    private int f11573else;

    /* renamed from: final, reason: not valid java name */
    @Nullable
    private Drawable f11574final;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final MaterialShapeDrawable f11575for;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private Drawable f11576goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Rect f11577if = new Rect();

    /* renamed from: import, reason: not valid java name */
    private boolean f11578import = false;

    /* renamed from: native, reason: not valid java name */
    private boolean f11579native;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final MaterialShapeDrawable f11580new;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private LayerDrawable f11581super;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private Drawable f11582this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private MaterialShapeDrawable f11583throw;

    /* renamed from: try, reason: not valid java name */
    @Dimension
    private int f11584try;

    /* renamed from: while, reason: not valid java name */
    @Nullable
    private MaterialShapeDrawable f11585while;

    /* renamed from: public, reason: not valid java name */
    private static final int[] f11562public = {R.attr.state_checked};

    /* renamed from: static, reason: not valid java name */
    private static final double f11564static = Math.cos(Math.toRadians(45.0d));

    /* renamed from: com.google.android.material.card.do$do, reason: invalid class name and collision with other inner class name */
    public class C0058do extends InsetDrawable {
        public C0058do(Drawable drawable, int i, int i2, int i3, int i4) {
            super(drawable, i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public Cdo(@NonNull MaterialCardView materialCardView, AttributeSet attributeSet, int i, @StyleRes int i2) {
        this.f11572do = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, i2);
        this.f11575for = materialShapeDrawable;
        materialShapeDrawable.k(materialCardView.getContext());
        materialShapeDrawable.G(-12303292);
        ShapeAppearanceModel.Cif cifM13982static = materialShapeDrawable.getShapeAppearanceModel().m13982static();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, com.google.android.material.R.styleable.CardView, i, com.google.android.material.R.style.CardView);
        int i3 = com.google.android.material.R.styleable.CardView_cardCornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            cifM13982static.m14020super(typedArrayObtainStyledAttributes.getDimension(i3, 0.0f));
        }
        this.f11580new = new MaterialShapeDrawable();
        e(cifM13982static.m14003const());
        typedArrayObtainStyledAttributes.recycle();
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    private Drawable m12993case() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        Drawable drawable = this.f11582this;
        if (drawable != null) {
            stateListDrawable.addState(f11562public, drawable);
        }
        return stateListDrawable;
    }

    /* renamed from: do, reason: not valid java name */
    private float m12994do() {
        return Math.max(Math.max(m12998if(this.f11570class.m13988while(), this.f11575for.d()), m12998if(this.f11570class.m13979native(), this.f11575for.e())), Math.max(m12998if(this.f11570class.m13973catch(), this.f11575for.m13956public()), m12998if(this.f11570class.m13985this(), this.f11575for.m13952native())));
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    private Drawable m12995else() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        MaterialShapeDrawable materialShapeDrawableM13003this = m13003this();
        this.f11583throw = materialShapeDrawableM13003this;
        materialShapeDrawableM13003this.z(this.f11567break);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.f11583throw);
        return stateListDrawable;
    }

    /* renamed from: for, reason: not valid java name */
    private float m12996for() {
        return this.f11572do.getMaxCardElevation() + (j() ? m12994do() : 0.0f);
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private Drawable m12997goto() {
        if (!no1.f4305do) {
            return m12995else();
        }
        this.f11585while = m13003this();
        return new RippleDrawable(this.f11567break, null, this.f11585while);
    }

    private boolean i() {
        return this.f11572do.getPreventCornerOverlap() && !m13004try();
    }

    /* renamed from: if, reason: not valid java name */
    private float m12998if(yr yrVar, float f) {
        if (!(yrVar instanceof ro1)) {
            if (yrVar instanceof it) {
                return f / 2.0f;
            }
            return 0.0f;
        }
        double d = 1.0d - f11564static;
        double d2 = f;
        Double.isNaN(d2);
        return (float) (d * d2);
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    private Drawable m12999import() {
        if (this.f11574final == null) {
            this.f11574final = m12997goto();
        }
        if (this.f11581super == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f11574final, this.f11580new, m12993case()});
            this.f11581super = layerDrawable;
            layerDrawable.setId(2, com.google.android.material.R.id.mtrl_card_checked_layer_id);
        }
        return this.f11581super;
    }

    private boolean j() {
        return this.f11572do.getPreventCornerOverlap() && m13004try() && this.f11572do.getUseCompatPadding();
    }

    private void n(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 || !(this.f11572do.getForeground() instanceof InsetDrawable)) {
            this.f11572do.setForeground(m13001package(drawable));
        } else {
            ((InsetDrawable) this.f11572do.getForeground()).setDrawable(drawable);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private float m13000new() {
        return (this.f11572do.getMaxCardElevation() * 1.5f) + (j() ? m12994do() : 0.0f);
    }

    private void p() {
        Drawable drawable;
        if (no1.f4305do && (drawable = this.f11574final) != null) {
            ((RippleDrawable) drawable).setColor(this.f11567break);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = this.f11583throw;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.z(this.f11567break);
        }
    }

    @NonNull
    /* renamed from: package, reason: not valid java name */
    private Drawable m13001package(Drawable drawable) {
        int iCeil;
        int i;
        if ((Build.VERSION.SDK_INT < 21) || this.f11572do.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil(m13000new());
            iCeil = (int) Math.ceil(m12996for());
            i = iCeil2;
        } else {
            iCeil = 0;
            i = 0;
        }
        return new C0058do(drawable, iCeil, i, iCeil, i);
    }

    /* renamed from: public, reason: not valid java name */
    private float m13002public() {
        if (!this.f11572do.getPreventCornerOverlap()) {
            return 0.0f;
        }
        if (Build.VERSION.SDK_INT >= 21 && !this.f11572do.getUseCompatPadding()) {
            return 0.0f;
        }
        double d = 1.0d - f11564static;
        double cardViewRadius = this.f11572do.getCardViewRadius();
        Double.isNaN(cardViewRadius);
        return (float) (d * cardViewRadius);
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    private MaterialShapeDrawable m13003this() {
        return new MaterialShapeDrawable(this.f11570class);
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m13004try() {
        return Build.VERSION.SDK_INT >= 21 && this.f11575for.p();
    }

    public void a(@Nullable ColorStateList colorStateList) {
        this.f11569catch = colorStateList;
        Drawable drawable = this.f11582this;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m13005abstract() {
        return this.f11579native;
    }

    public void b(float f) {
        e(this.f11570class.m13984switch(f));
        this.f11576goto.invalidateSelf();
        if (j() || i()) {
            l();
        }
        if (j()) {
            o();
        }
    }

    @RequiresApi(api = 23)
    /* renamed from: break, reason: not valid java name */
    public void m13006break() {
        Drawable drawable = this.f11574final;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.f11574final.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.f11574final.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    public void c(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f11575for.A(f);
        MaterialShapeDrawable materialShapeDrawable = this.f11580new;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.A(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f11585while;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.A(f);
        }
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public MaterialShapeDrawable m13007catch() {
        return this.f11575for;
    }

    /* renamed from: class, reason: not valid java name */
    public ColorStateList m13008class() {
        return this.f11575for.m13961throws();
    }

    /* renamed from: const, reason: not valid java name */
    public ColorStateList m13009const() {
        return this.f11580new.m13961throws();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m13010continue(@NonNull TypedArray typedArray) {
        ColorStateList colorStateListM7649do = sx0.m7649do(this.f11572do.getContext(), typedArray, com.google.android.material.R.styleable.MaterialCardView_strokeColor);
        this.f11571const = colorStateListM7649do;
        if (colorStateListM7649do == null) {
            this.f11571const = ColorStateList.valueOf(-1);
        }
        this.f11573else = typedArray.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArray.getBoolean(com.google.android.material.R.styleable.MaterialCardView_android_checkable, false);
        this.f11579native = z;
        this.f11572do.setLongClickable(z);
        this.f11569catch = sx0.m7649do(this.f11572do.getContext(), typedArray, com.google.android.material.R.styleable.MaterialCardView_checkedIconTint);
        m13015implements(sx0.m7654new(this.f11572do.getContext(), typedArray, com.google.android.material.R.styleable.MaterialCardView_checkedIcon));
        m13026synchronized(typedArray.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialCardView_checkedIconSize, 0));
        m13016instanceof(typedArray.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialCardView_checkedIconMargin, 0));
        ColorStateList colorStateListM7649do2 = sx0.m7649do(this.f11572do.getContext(), typedArray, com.google.android.material.R.styleable.MaterialCardView_rippleColor);
        this.f11567break = colorStateListM7649do2;
        if (colorStateListM7649do2 == null) {
            this.f11567break = ColorStateList.valueOf(qx0.m6679new(this.f11572do, com.google.android.material.R.attr.colorControlHighlight));
        }
        m13020protected(sx0.m7649do(this.f11572do.getContext(), typedArray, com.google.android.material.R.styleable.MaterialCardView_cardForegroundColor));
        p();
        m();
        q();
        this.f11572do.setBackgroundInternal(m13001package(this.f11575for));
        Drawable drawableM12999import = this.f11572do.isClickable() ? m12999import() : this.f11580new;
        this.f11576goto = drawableM12999import;
        this.f11572do.setForeground(m13001package(drawableM12999import));
    }

    public void d(@Nullable ColorStateList colorStateList) {
        this.f11567break = colorStateList;
        p();
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    public ColorStateList m13011default() {
        return this.f11571const;
    }

    public void e(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11570class = shapeAppearanceModel;
        this.f11575for.setShapeAppearanceModel(shapeAppearanceModel);
        this.f11575for.F(!r0.p());
        MaterialShapeDrawable materialShapeDrawable = this.f11580new;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f11585while;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.f11583throw;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    @Dimension
    /* renamed from: extends, reason: not valid java name */
    public int m13012extends() {
        return this.f11573else;
    }

    public void f(ColorStateList colorStateList) {
        if (this.f11571const == colorStateList) {
            return;
        }
        this.f11571const = colorStateList;
        q();
    }

    @Nullable
    /* renamed from: final, reason: not valid java name */
    public Drawable m13013final() {
        return this.f11582this;
    }

    @NonNull
    /* renamed from: finally, reason: not valid java name */
    public Rect m13014finally() {
        return this.f11577if;
    }

    public void g(@Dimension int i) {
        if (i == this.f11573else) {
            return;
        }
        this.f11573else = i;
        q();
    }

    public void h(int i, int i2, int i3, int i4) {
        this.f11577if.set(i, i2, i3, i4);
        l();
    }

    /* renamed from: implements, reason: not valid java name */
    public void m13015implements(@Nullable Drawable drawable) {
        this.f11582this = drawable;
        if (drawable != null) {
            Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
            this.f11582this = drawableWrap;
            DrawableCompat.setTintList(drawableWrap, this.f11569catch);
        }
        if (this.f11581super != null) {
            this.f11581super.setDrawableByLayerId(com.google.android.material.R.id.mtrl_card_checked_layer_id, m12993case());
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m13016instanceof(@Dimension int i) {
        this.f11584try = i;
    }

    /* renamed from: interface, reason: not valid java name */
    public void m13017interface(ColorStateList colorStateList) {
        this.f11575for.z(colorStateList);
    }

    public void k() {
        Drawable drawable = this.f11576goto;
        Drawable drawableM12999import = this.f11572do.isClickable() ? m12999import() : this.f11580new;
        this.f11576goto = drawableM12999import;
        if (drawable != drawableM12999import) {
            n(drawableM12999import);
        }
    }

    public void l() {
        int iM12994do = (int) ((i() || j() ? m12994do() : 0.0f) - m13002public());
        MaterialCardView materialCardView = this.f11572do;
        Rect rect = this.f11577if;
        materialCardView.m12992try(rect.left + iM12994do, rect.top + iM12994do, rect.right + iM12994do, rect.bottom + iM12994do);
    }

    public void m() {
        this.f11575for.y(this.f11572do.getCardElevation());
    }

    /* renamed from: native, reason: not valid java name */
    public float m13018native() {
        return this.f11575for.d();
    }

    public void o() {
        if (!m13019private()) {
            this.f11572do.setBackgroundInternal(m13001package(this.f11575for));
        }
        this.f11572do.setForeground(m13001package(this.f11576goto));
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m13019private() {
        return this.f11578import;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m13020protected(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f11580new;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.z(colorStateList);
    }

    public void q() {
        this.f11580new.P(this.f11573else, this.f11571const);
    }

    @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
    /* renamed from: return, reason: not valid java name */
    public float m13021return() {
        return this.f11575for.m13945default();
    }

    @Nullable
    /* renamed from: static, reason: not valid java name */
    public ColorStateList m13022static() {
        return this.f11567break;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m13023strictfp(int i, int i2) {
        int i3;
        int i4;
        if (this.f11581super != null) {
            int i5 = this.f11584try;
            int i6 = this.f11568case;
            int iCeil = (i - i5) - i6;
            int iCeil2 = (i2 - i5) - i6;
            if ((Build.VERSION.SDK_INT < 21) || this.f11572do.getUseCompatPadding()) {
                iCeil2 -= (int) Math.ceil(m13000new() * 2.0f);
                iCeil -= (int) Math.ceil(m12996for() * 2.0f);
            }
            int i7 = iCeil2;
            int i8 = this.f11584try;
            if (ViewCompat.getLayoutDirection(this.f11572do) == 1) {
                i4 = iCeil;
                i3 = i8;
            } else {
                i3 = iCeil;
                i4 = i8;
            }
            this.f11581super.setLayerInset(2, i3, this.f11584try, i4, i7);
        }
    }

    @Dimension
    /* renamed from: super, reason: not valid java name */
    public int m13024super() {
        return this.f11584try;
    }

    /* renamed from: switch, reason: not valid java name */
    public ShapeAppearanceModel m13025switch() {
        return this.f11570class;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m13026synchronized(@Dimension int i) {
        this.f11568case = i;
    }

    @Dimension
    /* renamed from: throw, reason: not valid java name */
    public int m13027throw() {
        return this.f11568case;
    }

    @ColorInt
    /* renamed from: throws, reason: not valid java name */
    public int m13028throws() {
        ColorStateList colorStateList = this.f11571const;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    /* renamed from: transient, reason: not valid java name */
    public void m13029transient(boolean z) {
        this.f11579native = z;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m13030volatile(boolean z) {
        this.f11578import = z;
    }

    @Nullable
    /* renamed from: while, reason: not valid java name */
    public ColorStateList m13031while() {
        return this.f11569catch;
    }
}
