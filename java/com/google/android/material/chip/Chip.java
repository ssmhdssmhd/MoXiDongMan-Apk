package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.c62;
import android.support.v4.k62;
import android.support.v4.no1;
import android.support.v4.q01;
import android.support.v4.sx0;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable {

    /* renamed from: default, reason: not valid java name */
    private static final int f11591default = 48;

    /* renamed from: extends, reason: not valid java name */
    private static final String f11592extends = "android.widget.Button";

    /* renamed from: finally, reason: not valid java name */
    private static final String f11593finally = "android.widget.CompoundButton";

    /* renamed from: native, reason: not valid java name */
    private static final int f11595native = 0;

    /* renamed from: package, reason: not valid java name */
    private static final String f11596package = "android.view.View";

    /* renamed from: public, reason: not valid java name */
    private static final int f11597public = 1;

    /* renamed from: throws, reason: not valid java name */
    private static final String f11601throws = "http://schemas.android.com/apk/res/android";

    /* renamed from: while, reason: not valid java name */
    private static final String f11602while = "Chip";

    /* renamed from: break, reason: not valid java name */
    private boolean f11603break;

    /* renamed from: case, reason: not valid java name */
    private boolean f11604case;

    /* renamed from: catch, reason: not valid java name */
    private int f11605catch;

    /* renamed from: class, reason: not valid java name */
    @Dimension(unit = 1)
    private int f11606class;

    /* renamed from: const, reason: not valid java name */
    @NonNull
    private final Cfor f11607const;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private ChipDrawable f11608do;

    /* renamed from: else, reason: not valid java name */
    private boolean f11609else;

    /* renamed from: final, reason: not valid java name */
    private final Rect f11610final;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private RippleDrawable f11611for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f11612goto;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private InsetDrawable f11613if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private View.OnClickListener f11614new;

    /* renamed from: super, reason: not valid java name */
    private final RectF f11615super;

    /* renamed from: this, reason: not valid java name */
    private boolean f11616this;

    /* renamed from: throw, reason: not valid java name */
    private final c62 f11617throw;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private CompoundButton.OnCheckedChangeListener f11618try;

    /* renamed from: import, reason: not valid java name */
    private static final int f11594import = R.style.Widget_MaterialComponents_Chip_Action;

    /* renamed from: return, reason: not valid java name */
    private static final Rect f11598return = new Rect();

    /* renamed from: static, reason: not valid java name */
    private static final int[] f11599static = {android.R.attr.state_selected};

    /* renamed from: switch, reason: not valid java name */
    private static final int[] f11600switch = {android.R.attr.state_checkable};

    /* renamed from: com.google.android.material.chip.Chip$do, reason: invalid class name */
    public class Cdo extends c62 {
        public Cdo() {
        }

        @Override // android.support.v4.c62
        /* renamed from: do */
        public void mo757do(int i) {
        }

        @Override // android.support.v4.c62
        /* renamed from: if */
        public void mo758if(@NonNull Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            chip.setText(chip.f11608do.T2() ? Chip.this.f11608do.a1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$for, reason: invalid class name */
    public class Cfor extends ExploreByTouchHelper {
        public Cfor(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            return (Chip.this.m13037const() && Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.m13037const() && Chip.this.m13063switch() && Chip.this.f11614new != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            if (i == 0) {
                return Chip.this.performClick();
            }
            if (i == 1) {
                return Chip.this.m13064throws();
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.m13065while());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            if (Chip.this.m13065while() || Chip.this.isClickable()) {
                accessibilityNodeInfoCompat.setClassName(Chip.this.m13065while() ? Chip.f11593finally : Chip.f11592extends);
            } else {
                accessibilityNodeInfoCompat.setClassName(Chip.f11596package);
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.f11598return);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = R.string.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, objArr).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
            if (i == 1) {
                Chip.this.f11616this = z;
                Chip.this.refreshDrawableState();
            }
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$if, reason: invalid class name */
    public class Cif extends ViewOutlineProvider {
        public Cif() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.f11608do != null) {
                Chip.this.f11608do.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m13033abstract() {
        this.f11611for = new RippleDrawable(no1.m5294new(this.f11608do.Y0()), getBackgroundDrawable(), null);
        this.f11608do.S2(false);
        ViewCompat.setBackground(this, this.f11611for);
        m13038continue();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m13035catch() {
        if (getBackgroundDrawable() == this.f11613if && this.f11608do.getCallback() == null) {
            this.f11608do.setCallback(this.f11613if);
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: class, reason: not valid java name */
    private boolean m13036class(@NonNull MotionEvent motionEvent) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.f11607const)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.f11607const, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public boolean m13037const() {
        ChipDrawable chipDrawable = this.f11608do;
        return (chipDrawable == null || chipDrawable.J0() == null) ? false : true;
    }

    /* renamed from: continue, reason: not valid java name */
    private void m13038continue() {
        ChipDrawable chipDrawable;
        if (TextUtils.isEmpty(getText()) || (chipDrawable = this.f11608do) == null) {
            return;
        }
        int iA0 = (int) (chipDrawable.A0() + this.f11608do.c1() + this.f11608do.g0());
        int iF0 = (int) (this.f11608do.F0() + this.f11608do.d1() + this.f11608do.c0());
        if (this.f11613if != null) {
            Rect rect = new Rect();
            this.f11613if.getPadding(rect);
            iF0 += rect.left;
            iA0 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, iF0, getPaddingTop(), iA0, getPaddingBottom());
    }

    /* renamed from: default, reason: not valid java name */
    private void m13039default() {
        if (this.f11613if != null) {
            this.f11613if = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            m13049private();
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m13042final(Context context, @Nullable AttributeSet attributeSet, int i) {
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.Chip, i, f11594import, new int[0]);
        this.f11603break = typedArrayM4267break.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.f11606class = (int) Math.ceil(typedArrayM4267break.getDimension(R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(ViewUtils.m13624try(getContext(), 48))));
        typedArrayM4267break.recycle();
    }

    /* renamed from: finally, reason: not valid java name */
    private void m13043finally(@Nullable ChipDrawable chipDrawable) {
        if (chipDrawable != null) {
            chipDrawable.v2(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f11615super.setEmpty();
        if (m13037const() && this.f11614new != null) {
            this.f11608do.Q0(this.f11615super);
        }
        return this.f11615super;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f11610final.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f11610final;
    }

    @Nullable
    private com.google.android.material.resources.Cdo getTextAppearance() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.b1();
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m13045goto(@NonNull ChipDrawable chipDrawable) {
        chipDrawable.v2(this);
    }

    /* renamed from: package, reason: not valid java name */
    private void m13048package() {
        if (m13037const() && m13063switch() && this.f11614new != null) {
            ViewCompat.setAccessibilityDelegate(this, this.f11607const);
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
        }
    }

    /* renamed from: private, reason: not valid java name */
    private void m13049private() {
        if (no1.f4305do) {
            m13033abstract();
            return;
        }
        this.f11608do.S2(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        m13038continue();
        m13035catch();
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f11612goto != z) {
            this.f11612goto = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f11609else != z) {
            this.f11609else = z;
            refreshDrawableState();
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m13050strictfp() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        com.google.android.material.resources.Cdo textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m13899break(getContext(), paint, this.f11617throw);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m13051super() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new Cif());
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    @NonNull
    /* renamed from: this, reason: not valid java name */
    private int[] m13052this() {
        ?? IsEnabled = isEnabled();
        int i = IsEnabled;
        if (this.f11616this) {
            i = IsEnabled + 1;
        }
        int i2 = i;
        if (this.f11612goto) {
            i2 = i + 1;
        }
        int i3 = i2;
        if (this.f11609else) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (isChecked()) {
            i4 = i3 + 1;
        }
        int[] iArr = new int[i4];
        int i5 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i5 = 1;
        }
        if (this.f11616this) {
            iArr[i5] = 16842908;
            i5++;
        }
        if (this.f11612goto) {
            iArr[i5] = 16843623;
            i5++;
        }
        if (this.f11609else) {
            iArr[i5] = 16842919;
            i5++;
        }
        if (isChecked()) {
            iArr[i5] = 16842913;
        }
        return iArr;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m13053throw(int i, int i2, int i3, int i4) {
        this.f11613if = new InsetDrawable((Drawable) this.f11608do, i, i2, i3, i4);
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m13055volatile(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        attributeSet.getAttributeValue(f11601throws, "background");
        if (attributeSet.getAttributeValue(f11601throws, "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(f11601throws, "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(f11601throws, "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue(f11601throws, "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue(f11601throws, "singleLine", true) || attributeSet.getAttributeIntValue(f11601throws, "lines", 1) != 1 || attributeSet.getAttributeIntValue(f11601throws, "minLines", 1) != 1 || attributeSet.getAttributeIntValue(f11601throws, "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        attributeSet.getAttributeIntValue(f11601throws, "gravity", 8388627);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m13056break(@Dimension int i) {
        this.f11606class = i;
        if (!m13057extends()) {
            if (this.f11613if != null) {
                m13039default();
            } else {
                m13049private();
            }
            return false;
        }
        int iMax = Math.max(0, i - this.f11608do.getIntrinsicHeight());
        int iMax2 = Math.max(0, i - this.f11608do.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f11613if != null) {
                m13039default();
            } else {
                m13049private();
            }
            return false;
        }
        int i2 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i3 = iMax > 0 ? iMax / 2 : 0;
        if (this.f11613if != null) {
            Rect rect = new Rect();
            this.f11613if.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                m13049private();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i) {
                setMinHeight(i);
            }
            if (getMinWidth() != i) {
                setMinWidth(i);
            }
        } else {
            setMinHeight(i);
            setMinWidth(i);
        }
        m13053throw(i2, i3, i2, i3);
        m13049private();
        return true;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return m13036class(motionEvent) || this.f11607const.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f11607const.dispatchKeyEvent(keyEvent) || this.f11607const.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.f11608do;
        if ((chipDrawable == null || !chipDrawable.n1()) ? false : this.f11608do.q2(m13052this())) {
            invalidate();
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m13057extends() {
        return this.f11603break;
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f11613if;
        return insetDrawable == null ? this.f11608do : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.w0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.x0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.y0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return Math.max(0.0f, chipDrawable.z0());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f11608do;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.A0();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.B0();
        }
        return null;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.C0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.D0();
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.E0();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.F0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.G0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.H0();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.J0();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.K0();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.L0();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.M0();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.N0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.P0();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.T0();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f11607const.getKeyboardFocusedVirtualViewId() == 1 || this.f11607const.getAccessibilityFocusedVirtualViewId() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public q01 getHideMotionSpec() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.U0();
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.V0();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.W0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.Y0();
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f11608do.getShapeAppearanceModel();
    }

    @Nullable
    public q01 getShowMotionSpec() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.Z0();
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.c1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            return chipDrawable.d1();
        }
        return 0.0f;
    }

    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public boolean m13058import() {
        return m13059native();
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m13059native() {
        ChipDrawable chipDrawable = this.f11608do;
        return chipDrawable != null && chipDrawable.j1();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8140case(this, this.f11608do);
    }

    @Override // com.google.android.material.chip.ChipDrawable.Delegate
    public void onChipDrawableSizeChange() {
        m13056break(this.f11606class);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, f11599static);
        }
        if (m13065while()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, f11600switch);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.f11607const.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (m13065while() || isClickable()) {
            accessibilityNodeInfo.setClassName(m13065while() ? f11593finally : f11592extends);
        } else {
            accessibilityNodeInfo.setClassName(f11596package);
        }
        accessibilityNodeInfo.setCheckable(m13065while());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.m13542if(this), 1, chipGroup.mo13078for() ? chipGroup.m13079super(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f11605catch != i) {
            this.f11605catch = i;
            m13038continue();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f11609else) {
                        if (!zContains) {
                            setCloseIconPressed(false);
                        }
                        z = true;
                    }
                }
                z = false;
            } else {
                if (this.f11609else) {
                    m13064throws();
                    z = true;
                }
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else {
            if (zContains) {
                setCloseIconPressed(true);
                z = true;
            }
            z = false;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    @Deprecated
    /* renamed from: public, reason: not valid java name */
    public boolean m13060public() {
        return m13061return();
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m13061return() {
        ChipDrawable chipDrawable = this.f11608do;
        return chipDrawable != null && chipDrawable.l1();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f11611for) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f11611for) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.w1(z);
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.x1(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable == null) {
            this.f11604case = z;
            return;
        }
        if (chipDrawable.h1()) {
            boolean zIsChecked = isChecked();
            super.setChecked(z);
            if (zIsChecked == z || (onCheckedChangeListener = this.f11618try) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.y1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.B1(i);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.C1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.D1(i);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.E1(i);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.G1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.H1(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.I1(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.J1(i);
        }
    }

    public void setChipDrawable(@NonNull ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.f11608do;
        if (chipDrawable2 != chipDrawable) {
            m13043finally(chipDrawable2);
            this.f11608do = chipDrawable;
            chipDrawable.G2(false);
            m13045goto(this.f11608do);
            m13056break(this.f11606class);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.K1(f);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.L1(i);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.M1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.P1(i);
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.Q1(f);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.R1(i);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.S1(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.T1(i);
        }
    }

    public void setChipIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.U1(i);
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.W1(f);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.X1(i);
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.Y1(f);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.Z1(i);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.a2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.b2(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.c2(f);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.d2(i);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.f2(drawable);
        }
        m13048package();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.g2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.j2(f);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.k2(i);
        }
    }

    public void setCloseIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.l2(i);
        }
        m13048package();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.m2(f);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.n2(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.o2(f);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.p2(i);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.r2(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.s2(i);
        }
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.y(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f11608do == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.w2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f11603break = z;
        m13056break(this.f11606class);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            return;
        }
        super.setGravity(i);
    }

    public void setHideMotionSpec(@Nullable q01 q01Var) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.x2(q01Var);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.y2(i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.z2(f);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.A2(i);
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.B2(f);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.C2(i);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f11608do != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.D2(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f11618try = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f11614new = onClickListener;
        m13048package();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.E2(colorStateList);
        }
        if (this.f11608do.f1()) {
            return;
        }
        m13033abstract();
    }

    public void setRippleColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.F2(i);
            if (this.f11608do.f1()) {
                return;
            }
            m13033abstract();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11608do.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable q01 q01Var) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.H2(q01Var);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.I2(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(chipDrawable.T2() ? null : charSequence, bufferType);
        ChipDrawable chipDrawable2 = this.f11608do;
        if (chipDrawable2 != null) {
            chipDrawable2.J2(charSequence);
        }
    }

    public void setTextAppearance(@Nullable com.google.android.material.resources.Cdo cdo) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.K2(cdo);
        }
        m13050strictfp();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.M2(f);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.N2(i);
        }
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.Q2(f);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.R2(i);
        }
    }

    @Deprecated
    /* renamed from: static, reason: not valid java name */
    public boolean m13062static() {
        return m13063switch();
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m13063switch() {
        ChipDrawable chipDrawable = this.f11608do;
        return chipDrawable != null && chipDrawable.o1();
    }

    @CallSuper
    /* renamed from: throws, reason: not valid java name */
    public boolean m13064throws() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f11614new;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        this.f11607const.sendEventForVirtualView(1, 1);
        return z;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m13065while() {
        ChipDrawable chipDrawable = this.f11608do;
        return chipDrawable != null && chipDrawable.h1();
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.u2(z);
        }
        m13048package();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i) {
        int i2 = f11594import;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11610final = new Rect();
        this.f11615super = new RectF();
        this.f11617throw = new Cdo();
        Context context2 = getContext();
        m13055volatile(attributeSet);
        ChipDrawable chipDrawableL0 = ChipDrawable.l0(context2, attributeSet, i, i2);
        m13042final(context2, attributeSet, i);
        setChipDrawable(chipDrawableL0);
        chipDrawableL0.y(ViewCompat.getElevation(this));
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.Chip, i, i2, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(sx0.m7649do(context2, typedArrayM4267break, R.styleable.Chip_android_textColor));
        }
        boolean zHasValue = typedArrayM4267break.hasValue(R.styleable.Chip_shapeAppearance);
        typedArrayM4267break.recycle();
        this.f11607const = new Cfor(this);
        m13048package();
        if (!zHasValue) {
            m13051super();
        }
        setChecked(this.f11604case);
        setText(chipDrawableL0.a1());
        setEllipsize(chipDrawableL0.T0());
        m13050strictfp();
        if (!this.f11608do.T2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m13038continue();
        if (m13057extends()) {
            setMinHeight(this.f11606class);
        }
        this.f11605catch = ViewCompat.getLayoutDirection(this);
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.F1(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.V1(z);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.L2(i);
        }
        m13050strictfp();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.f11608do;
        if (chipDrawable != null) {
            chipDrawable.L2(i);
        }
        m13050strictfp();
    }
}
