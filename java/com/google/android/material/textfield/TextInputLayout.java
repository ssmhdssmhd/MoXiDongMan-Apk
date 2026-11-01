package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.iz;
import android.support.v4.k62;
import android.support.v4.qx0;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.support.v4.w1;
import android.support.v4.w21;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    private static final int W = R.style.Widget_Design_TextInputLayout;
    private static final int a0 = 167;
    private static final int b0 = -1;
    private static final int c0 = -1;
    private static final String d0 = "TextInputLayout";
    public static final int e0 = 0;
    public static final int f0 = 1;
    public static final int g0 = 2;
    public static final int h0 = -1;
    public static final int i0 = 0;
    public static final int j0 = 1;
    public static final int k0 = 2;
    public static final int l0 = 3;
    private View.OnLongClickListener A;
    private View.OnLongClickListener B;

    @NonNull
    private final CheckableImageButton C;
    private ColorStateList D;
    private ColorStateList E;
    private ColorStateList F;

    @ColorInt
    private int G;

    @ColorInt
    private int H;

    @ColorInt
    private int I;

    /* renamed from: J, reason: collision with root package name */
    private ColorStateList f36256J;

    @ColorInt
    private int K;

    @ColorInt
    private int L;

    @ColorInt
    private int M;

    @ColorInt
    private int N;

    @ColorInt
    private int O;
    private boolean P;
    public final com.google.android.material.internal.Cdo Q;
    private boolean R;
    private boolean S;
    private ValueAnimator T;
    private boolean U;
    private boolean V;

    @ColorInt
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    @Nullable
    private MaterialShapeDrawable f12901abstract;

    @ColorInt
    private int b;

    /* renamed from: break, reason: not valid java name */
    public boolean f12902break;
    private final Rect c;

    /* renamed from: case, reason: not valid java name */
    private CharSequence f12903case;

    /* renamed from: catch, reason: not valid java name */
    private int f12904catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f12905class;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private TextView f12906const;

    /* renamed from: continue, reason: not valid java name */
    @Nullable
    private MaterialShapeDrawable f12907continue;
    private final Rect d;

    /* renamed from: default, reason: not valid java name */
    @Nullable
    private CharSequence f12908default;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final FrameLayout f12909do;
    private final RectF e;

    /* renamed from: else, reason: not valid java name */
    private int f12910else;

    /* renamed from: extends, reason: not valid java name */
    @NonNull
    private final TextView f12911extends;
    private Typeface f;

    /* renamed from: final, reason: not valid java name */
    private int f12912final;

    /* renamed from: finally, reason: not valid java name */
    private boolean f12913finally;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final LinearLayout f12914for;

    @NonNull
    private final CheckableImageButton g;

    /* renamed from: goto, reason: not valid java name */
    private int f12915goto;
    private ColorStateList h;
    private boolean i;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final LinearLayout f12916if;

    /* renamed from: implements, reason: not valid java name */
    private int f12917implements;

    /* renamed from: import, reason: not valid java name */
    private TextView f12918import;

    /* renamed from: instanceof, reason: not valid java name */
    private int f12919instanceof;

    /* renamed from: interface, reason: not valid java name */
    private int f12920interface;
    private PorterDuff.Mode j;
    private boolean k;

    @Nullable
    private Drawable l;
    private int m;
    private View.OnLongClickListener n;

    /* renamed from: native, reason: not valid java name */
    @Nullable
    private ColorStateList f12921native;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final FrameLayout f12922new;
    private final LinkedHashSet<OnEditTextAttachedListener> o;
    private int p;

    /* renamed from: package, reason: not valid java name */
    private CharSequence f12923package;

    /* renamed from: private, reason: not valid java name */
    private boolean f12924private;

    /* renamed from: protected, reason: not valid java name */
    private int f12925protected;

    /* renamed from: public, reason: not valid java name */
    private int f12926public;
    private final SparseArray<com.google.android.material.textfield.Ctry> q;

    @NonNull
    private final CheckableImageButton r;

    /* renamed from: return, reason: not valid java name */
    @Nullable
    private ColorStateList f12927return;
    private final LinkedHashSet<OnEndIconChangedListener> s;

    /* renamed from: static, reason: not valid java name */
    @Nullable
    private ColorStateList f12928static;

    /* renamed from: strictfp, reason: not valid java name */
    @NonNull
    private ShapeAppearanceModel f12929strictfp;

    /* renamed from: super, reason: not valid java name */
    private int f12930super;

    /* renamed from: switch, reason: not valid java name */
    @Nullable
    private CharSequence f12931switch;

    /* renamed from: synchronized, reason: not valid java name */
    private int f12932synchronized;
    private ColorStateList t;

    /* renamed from: this, reason: not valid java name */
    private final com.google.android.material.textfield.Ccase f12933this;

    /* renamed from: throw, reason: not valid java name */
    private CharSequence f12934throw;

    /* renamed from: throws, reason: not valid java name */
    @NonNull
    private final TextView f12935throws;

    /* renamed from: transient, reason: not valid java name */
    private int f12936transient;

    /* renamed from: try, reason: not valid java name */
    public EditText f12937try;
    private boolean u;
    private PorterDuff.Mode v;

    /* renamed from: volatile, reason: not valid java name */
    private final int f12938volatile;
    private boolean w;

    /* renamed from: while, reason: not valid java name */
    private boolean f12939while;

    @Nullable
    private Drawable x;
    private int y;
    private Drawable z;

    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: do, reason: not valid java name */
        private final TextInputLayout f12940do;

        public AccessibilityDelegate(@NonNull TextInputLayout textInputLayout) {
            this.f12940do = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f12940do.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f12940do.getHint();
            CharSequence error = this.f12940do.getError();
            CharSequence placeholderText = this.f12940do.getPlaceholderText();
            int counterMaxLength = this.f12940do.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f12940do.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !this.f12940do.i();
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z2 ? hint.toString() : "";
            if (z) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.setText(string);
                if (z3 && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(string);
                } else {
                    if (z) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.setText(string);
                }
                accessibilityNodeInfoCompat.setShowingHintText(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z5) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            if (Build.VERSION.SDK_INT < 17 || editText == null) {
                return;
            }
            editText.setLabelFor(R.id.textinput_helper_text);
        }
    }

    public interface OnEditTextAttachedListener {
        void onEditTextAttached(@NonNull TextInputLayout textInputLayout);
    }

    public interface OnEndIconChangedListener {
        void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        @Nullable
        public CharSequence f12941do;

        /* renamed from: for, reason: not valid java name */
        @Nullable
        public CharSequence f12942for;

        /* renamed from: if, reason: not valid java name */
        public boolean f12943if;

        /* renamed from: new, reason: not valid java name */
        @Nullable
        public CharSequence f12944new;

        /* renamed from: try, reason: not valid java name */
        @Nullable
        public CharSequence f12945try;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f12941do) + " hint=" + ((Object) this.f12942for) + " helperText=" + ((Object) this.f12944new) + " placeholderText=" + ((Object) this.f12945try) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f12941do, parcel, i);
            parcel.writeInt(this.f12943if ? 1 : 0);
            TextUtils.writeToParcel(this.f12942for, parcel, i);
            TextUtils.writeToParcel(this.f12944new, parcel, i);
            TextUtils.writeToParcel(this.f12945try, parcel, i);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f12941do = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f12943if = parcel.readInt() == 1;
            this.f12942for = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f12944new = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f12945try = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.textfield.TextInputLayout$case, reason: invalid class name */
    public @interface Ccase {
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$do, reason: invalid class name */
    public class Cdo implements TextWatcher {
        public Cdo() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout.this.V(!r0.V);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.f12902break) {
                textInputLayout.N(editable.length());
            }
            if (TextInputLayout.this.f12939while) {
                TextInputLayout.this.Z(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f12937try.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.r.performClick();
            TextInputLayout.this.r.jumpDrawablesToCurrentState();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.Q.H(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.textfield.TextInputLayout$try, reason: invalid class name */
    public @interface Ctry {
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    private void A() {
        if (H()) {
            ViewCompat.setBackground(this.f12937try, this.f12901abstract);
        }
    }

    private static void B(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean zHasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = zHasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        ViewCompat.setImportantForAccessibility(checkableImageButton, z2 ? 1 : 2);
    }

    private static void C(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        B(checkableImageButton, onLongClickListener);
    }

    private static void D(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        B(checkableImageButton, onLongClickListener);
    }

    private boolean F() {
        return (this.C.getVisibility() == 0 || ((m14397transient() && a()) || this.f12908default != null)) && this.f12914for.getMeasuredWidth() > 0;
    }

    private boolean G() {
        return !(getStartIconDrawable() == null && this.f12931switch == null) && this.f12916if.getMeasuredWidth() > 0;
    }

    private boolean H() {
        EditText editText = this.f12937try;
        return (editText == null || this.f12901abstract == null || editText.getBackground() != null || this.f12925protected == 0) ? false : true;
    }

    private void I() {
        TextView textView = this.f12918import;
        if (textView == null || !this.f12939while) {
            return;
        }
        textView.setText(this.f12934throw);
        this.f12918import.setVisibility(0);
        this.f12918import.bringToFront();
    }

    private void J(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            m14371catch();
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(getEndIconDrawable()).mutate();
        DrawableCompat.setTint(drawableMutate, this.f12933this.m14443throw());
        this.r.setImageDrawable(drawableMutate);
    }

    private void K() {
        if (this.f12925protected == 1) {
            if (sx0.m7652goto(getContext())) {
                this.f12936transient = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (sx0.m7650else(getContext())) {
                this.f12936transient = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void L(@NonNull Rect rect) {
        MaterialShapeDrawable materialShapeDrawable = this.f12907continue;
        if (materialShapeDrawable != null) {
            int i = rect.bottom;
            materialShapeDrawable.setBounds(rect.left, i - this.f12932synchronized, rect.right, i);
        }
    }

    private void M() {
        if (this.f12906const != null) {
            EditText editText = this.f12937try;
            N(editText == null ? 0 : editText.getText().length());
        }
    }

    private static void O(@NonNull Context context, @NonNull TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private void P() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f12906const;
        if (textView != null) {
            E(textView, this.f12905class ? this.f12912final : this.f12930super);
            if (!this.f12905class && (colorStateList2 = this.f12927return) != null) {
                this.f12906const.setTextColor(colorStateList2);
            }
            if (!this.f12905class || (colorStateList = this.f12928static) == null) {
                return;
            }
            this.f12906const.setTextColor(colorStateList);
        }
    }

    private void Q() {
        if (!m14379finally() || this.P || this.f12920interface == this.f12917implements) {
            return;
        }
        m14375default();
        q();
    }

    private boolean R() {
        boolean z;
        if (this.f12937try == null) {
            return false;
        }
        boolean z2 = true;
        if (G()) {
            int measuredWidth = this.f12916if.getMeasuredWidth() - this.f12937try.getPaddingLeft();
            if (this.l == null || this.m != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.l = colorDrawable;
                this.m = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f12937try);
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.l;
            if (drawable != drawable2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f12937try, drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.l != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f12937try);
                TextViewCompat.setCompoundDrawablesRelative(this.f12937try, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.l = null;
                z = true;
            }
            z = false;
        }
        if (F()) {
            int measuredWidth2 = this.f12911extends.getMeasuredWidth() - this.f12937try.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f12937try);
            Drawable drawable3 = this.x;
            if (drawable3 == null || this.y == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.x = colorDrawable2;
                    this.y = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.x;
                if (drawable4 != drawable5) {
                    this.z = compoundDrawablesRelative3[2];
                    TextViewCompat.setCompoundDrawablesRelative(this.f12937try, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z2 = z;
                }
            } else {
                this.y = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f12937try, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.x, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.x == null) {
                return z;
            }
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f12937try);
            if (compoundDrawablesRelative4[2] == this.x) {
                TextViewCompat.setCompoundDrawablesRelative(this.f12937try, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.z, compoundDrawablesRelative4[3]);
            } else {
                z2 = z;
            }
            this.x = null;
        }
        return z2;
    }

    private boolean T() {
        int iMax;
        if (this.f12937try == null || this.f12937try.getMeasuredHeight() >= (iMax = Math.max(this.f12914for.getMeasuredHeight(), this.f12916if.getMeasuredHeight()))) {
            return false;
        }
        this.f12937try.setMinimumHeight(iMax);
        return true;
    }

    private void U() {
        if (this.f12925protected != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f12909do.getLayoutParams();
            int iM14390public = m14390public();
            if (iM14390public != layoutParams.topMargin) {
                layoutParams.topMargin = iM14390public;
                this.f12909do.requestLayout();
            }
        }
    }

    private void W(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f12937try;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f12937try;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean zM14424class = this.f12933this.m14424class();
        ColorStateList colorStateList2 = this.E;
        if (colorStateList2 != null) {
            this.Q.s(colorStateList2);
            this.Q.C(this.E);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.E;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.O) : this.O;
            this.Q.s(ColorStateList.valueOf(colorForState));
            this.Q.C(ColorStateList.valueOf(colorForState));
        } else if (zM14424class) {
            this.Q.s(this.f12933this.m14448while());
        } else if (this.f12905class && (textView = this.f12906const) != null) {
            this.Q.s(textView.getTextColors());
        } else if (z4 && (colorStateList = this.F) != null) {
            this.Q.s(colorStateList);
        }
        if (z3 || !this.R || (isEnabled() && z4)) {
            if (z2 || this.P) {
                m14377extends(z);
                return;
            }
            return;
        }
        if (z2 || !this.P) {
            m14399volatile(z);
        }
    }

    private void X() {
        EditText editText;
        if (this.f12918import == null || (editText = this.f12937try) == null) {
            return;
        }
        this.f12918import.setGravity(editText.getGravity());
        this.f12918import.setPadding(this.f12937try.getCompoundPaddingLeft(), this.f12937try.getCompoundPaddingTop(), this.f12937try.getCompoundPaddingRight(), this.f12937try.getCompoundPaddingBottom());
    }

    private void Y() {
        EditText editText = this.f12937try;
        Z(editText == null ? 0 : editText.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i) {
        if (i != 0 || this.P) {
            m14383implements();
        } else {
            I();
        }
    }

    private void a0() {
        if (this.f12937try == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f12935throws, n() ? 0 : ViewCompat.getPaddingStart(this.f12937try), this.f12937try.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), this.f12937try.getCompoundPaddingBottom());
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m14368abstract(int i) {
        Iterator<OnEndIconChangedListener> it = this.s.iterator();
        while (it.hasNext()) {
            it.next().onEndIconChanged(this, i);
        }
    }

    private void b0() {
        this.f12935throws.setVisibility((this.f12931switch == null || i()) ? 8 : 0);
        R();
    }

    /* renamed from: break, reason: not valid java name */
    private void m14369break(@NonNull RectF rectF) {
        float f = rectF.left;
        int i = this.f12938volatile;
        rectF.left = f - i;
        rectF.right += i;
    }

    private boolean c() {
        return this.C.getVisibility() == 0;
    }

    private void c0(boolean z, boolean z2) {
        int defaultColor = this.f36256J.getDefaultColor();
        int colorForState = this.f36256J.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f36256J.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z) {
            this.a = colorForState2;
        } else if (z2) {
            this.a = colorForState;
        } else {
            this.a = defaultColor;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m14370case() {
        if (this.f12937try == null || this.f12925protected != 1) {
            return;
        }
        if (sx0.m7652goto(getContext())) {
            EditText editText = this.f12937try;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f12937try), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (sx0.m7650else(getContext())) {
            EditText editText2 = this.f12937try;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f12937try), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m14371catch() {
        m14372class(this.r, this.u, this.t, this.w, this.v);
    }

    /* renamed from: class, reason: not valid java name */
    private void m14372class(@NonNull CheckableImageButton checkableImageButton, boolean z, ColorStateList colorStateList, boolean z2, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z || z2)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (z) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            if (z2) {
                DrawableCompat.setTintMode(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m14373const() {
        m14372class(this.g, this.i, this.h, this.k, this.j);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m14374continue(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable = this.f12907continue;
        if (materialShapeDrawable != null) {
            Rect bounds = materialShapeDrawable.getBounds();
            bounds.top = bounds.bottom - this.f12917implements;
            this.f12907continue.draw(canvas);
        }
    }

    private void d0() {
        if (this.f12937try == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f12911extends, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), this.f12937try.getPaddingTop(), (a() || c()) ? 0 : ViewCompat.getPaddingEnd(this.f12937try), this.f12937try.getPaddingBottom());
    }

    /* renamed from: default, reason: not valid java name */
    private void m14375default() {
        if (m14379finally()) {
            ((com.google.android.material.textfield.Cfor) this.f12901abstract).d0();
        }
    }

    private void e0() {
        int visibility = this.f12911extends.getVisibility();
        boolean z = (this.f12908default == null || i()) ? false : true;
        this.f12911extends.setVisibility(z ? 0 : 8);
        if (visibility != this.f12911extends.getVisibility()) {
            getEndIconDelegate().mo14459for(z);
        }
        R();
    }

    /* renamed from: extends, reason: not valid java name */
    private void m14377extends(boolean z) {
        ValueAnimator valueAnimator = this.T;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.T.cancel();
        }
        if (z && this.S) {
            m14401else(1.0f);
        } else {
            this.Q.H(1.0f);
        }
        this.P = false;
        if (m14379finally()) {
            q();
        }
        Y();
        b0();
        e0();
    }

    /* renamed from: final, reason: not valid java name */
    private void m14378final() {
        int i = this.f12925protected;
        if (i == 0) {
            this.f12901abstract = null;
            this.f12907continue = null;
            return;
        }
        if (i == 1) {
            this.f12901abstract = new MaterialShapeDrawable(this.f12929strictfp);
            this.f12907continue = new MaterialShapeDrawable();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(this.f12925protected + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.f12913finally || (this.f12901abstract instanceof com.google.android.material.textfield.Cfor)) {
                this.f12901abstract = new MaterialShapeDrawable(this.f12929strictfp);
            } else {
                this.f12901abstract = new com.google.android.material.textfield.Cfor(this.f12929strictfp);
            }
            this.f12907continue = null;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private boolean m14379finally() {
        return this.f12913finally && !TextUtils.isEmpty(this.f12923package) && (this.f12901abstract instanceof com.google.android.material.textfield.Cfor);
    }

    private com.google.android.material.textfield.Ctry getEndIconDelegate() {
        com.google.android.material.textfield.Ctry ctry = this.q.get(this.p);
        return ctry != null ? ctry : this.q.get(0);
    }

    @Nullable
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.C.getVisibility() == 0) {
            return this.C;
        }
        if (m14397transient() && a()) {
            return this.r;
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m14381goto() {
        MaterialShapeDrawable materialShapeDrawable = this.f12901abstract;
        if (materialShapeDrawable == null) {
            return;
        }
        materialShapeDrawable.setShapeAppearanceModel(this.f12929strictfp);
        if (m14391return()) {
            this.f12901abstract.O(this.f12917implements, this.a);
        }
        int iM14394super = m14394super();
        this.b = iM14394super;
        this.f12901abstract.z(ColorStateList.valueOf(iM14394super));
        if (this.p == 3) {
            this.f12937try.getBackground().invalidateSelf();
        }
        m14395this();
        invalidate();
    }

    /* renamed from: implements, reason: not valid java name */
    private void m14383implements() {
        TextView textView = this.f12918import;
        if (textView == null || !this.f12939while) {
            return;
        }
        textView.setText((CharSequence) null);
        this.f12918import.setVisibility(4);
    }

    /* renamed from: import, reason: not valid java name */
    private int m14384import(@NonNull Rect rect, float f) {
        return l() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f12937try.getCompoundPaddingTop();
    }

    /* renamed from: interface, reason: not valid java name */
    private int m14385interface(int i, boolean z) {
        int compoundPaddingLeft = i + this.f12937try.getCompoundPaddingLeft();
        return (this.f12931switch == null || z) ? compoundPaddingLeft : (compoundPaddingLeft - this.f12935throws.getMeasuredWidth()) + this.f12935throws.getPaddingLeft();
    }

    private boolean l() {
        return this.f12925protected == 1 && (Build.VERSION.SDK_INT < 16 || this.f12937try.getMinLines() <= 1);
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    private Rect m14386native(@NonNull Rect rect) {
        if (this.f12937try == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.d;
        float fM13644abstract = this.Q.m13644abstract();
        rect2.left = rect.left + this.f12937try.getCompoundPaddingLeft();
        rect2.top = m14384import(rect, fM13644abstract);
        rect2.right = rect.right - this.f12937try.getCompoundPaddingRight();
        rect2.bottom = m14400while(rect, rect2, fM13644abstract);
        return rect2;
    }

    private int[] o(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        return iArrCopyOf;
    }

    private void p() {
        m14378final();
        A();
        f0();
        K();
        m14370case();
        if (this.f12925protected != 0) {
            U();
        }
    }

    /* renamed from: private, reason: not valid java name */
    private void m14388private() {
        Iterator<OnEditTextAttachedListener> it = this.o.iterator();
        while (it.hasNext()) {
            it.next().onEditTextAttached(this);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private int m14389protected(int i, boolean z) {
        int compoundPaddingRight = i - this.f12937try.getCompoundPaddingRight();
        return (this.f12931switch == null || !z) ? compoundPaddingRight : compoundPaddingRight + (this.f12935throws.getMeasuredWidth() - this.f12935throws.getPaddingRight());
    }

    /* renamed from: public, reason: not valid java name */
    private int m14390public() {
        float fM13653native;
        if (!this.f12913finally) {
            return 0;
        }
        int i = this.f12925protected;
        if (i == 0 || i == 1) {
            fM13653native = this.Q.m13653native();
        } else {
            if (i != 2) {
                return 0;
            }
            fM13653native = this.Q.m13653native() / 2.0f;
        }
        return (int) fM13653native;
    }

    private void q() {
        if (m14379finally()) {
            RectF rectF = this.e;
            this.Q.m13661throw(rectF, this.f12937try.getWidth(), this.f12937try.getGravity());
            m14369break(rectF);
            int i = this.f12917implements;
            this.f12920interface = i;
            rectF.top = 0.0f;
            rectF.bottom = i;
            rectF.offset(-getPaddingLeft(), 0.0f);
            ((com.google.android.material.textfield.Cfor) this.f12901abstract).g0(rectF);
        }
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m14391return() {
        return this.f12925protected == 2 && m14392static();
    }

    private static void s(@NonNull ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                s((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.f12937try != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.p != 3) {
            boolean z = editText instanceof TextInputEditText;
        }
        this.f12937try = editText;
        setMinWidth(this.f12910else);
        setMaxWidth(this.f12915goto);
        p();
        setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
        this.Q.U(this.f12937try.getTypeface());
        this.Q.E(this.f12937try.getTextSize());
        int gravity = this.f12937try.getGravity();
        this.Q.t((gravity & w21.B1) | 48);
        this.Q.D(gravity);
        this.f12937try.addTextChangedListener(new Cdo());
        if (this.E == null) {
            this.E = this.f12937try.getHintTextColors();
        }
        if (this.f12913finally) {
            if (TextUtils.isEmpty(this.f12923package)) {
                CharSequence hint = this.f12937try.getHint();
                this.f12903case = hint;
                setHint(hint);
                this.f12937try.setHint((CharSequence) null);
            }
            this.f12924private = true;
        }
        if (this.f12906const != null) {
            N(this.f12937try.getText().length());
        }
        S();
        this.f12933this.m14446try();
        this.f12916if.bringToFront();
        this.f12914for.bringToFront();
        this.f12922new.bringToFront();
        this.C.bringToFront();
        m14388private();
        a0();
        d0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        W(false, true);
    }

    private void setErrorIconVisible(boolean z) {
        this.C.setVisibility(z ? 0 : 8);
        this.f12922new.setVisibility(z ? 8 : 0);
        d0();
        if (m14397transient()) {
            return;
        }
        R();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f12923package)) {
            return;
        }
        this.f12923package = charSequence;
        this.Q.S(charSequence);
        if (this.P) {
            return;
        }
        q();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f12939while == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f12918import = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            ViewCompat.setAccessibilityLiveRegion(this.f12918import, 1);
            setPlaceholderTextAppearance(this.f12926public);
            setPlaceholderTextColor(this.f12921native);
            m14398try();
        } else {
            x();
            this.f12918import = null;
        }
        this.f12939while = z;
    }

    /* renamed from: static, reason: not valid java name */
    private boolean m14392static() {
        return this.f12917implements > -1 && this.a != 0;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m14393strictfp(@NonNull Canvas canvas) {
        if (this.f12913finally) {
            this.Q.m13645const(canvas);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private int m14394super() {
        return this.f12925protected == 1 ? qx0.m6675else(qx0.m6681try(this, R.attr.colorSurface, 0), this.b) : this.b;
    }

    /* renamed from: this, reason: not valid java name */
    private void m14395this() {
        if (this.f12907continue == null) {
            return;
        }
        if (m14392static()) {
            this.f12907continue.z(ColorStateList.valueOf(this.a));
        }
        invalidate();
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    private Rect m14396throw(@NonNull Rect rect) {
        if (this.f12937try == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.d;
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        rect2.bottom = rect.bottom;
        int i = this.f12925protected;
        if (i == 1) {
            rect2.left = m14385interface(rect.left, z);
            rect2.top = rect.top + this.f12936transient;
            rect2.right = m14389protected(rect.right, z);
            return rect2;
        }
        if (i != 2) {
            rect2.left = m14385interface(rect.left, z);
            rect2.top = getPaddingTop();
            rect2.right = m14389protected(rect.right, z);
            return rect2;
        }
        rect2.left = rect.left + this.f12937try.getPaddingLeft();
        rect2.top = rect.top - m14390public();
        rect2.right = rect.right - this.f12937try.getPaddingRight();
        return rect2;
    }

    /* renamed from: transient, reason: not valid java name */
    private boolean m14397transient() {
        return this.p != 0;
    }

    /* renamed from: try, reason: not valid java name */
    private void m14398try() {
        TextView textView = this.f12918import;
        if (textView != null) {
            this.f12909do.addView(textView);
            this.f12918import.setVisibility(0);
        }
    }

    private void v(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(o(checkableImageButton), colorStateList.getDefaultColor());
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        DrawableCompat.setTintList(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m14399volatile(boolean z) {
        ValueAnimator valueAnimator = this.T;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.T.cancel();
        }
        if (z && this.S) {
            m14401else(0.0f);
        } else {
            this.Q.H(0.0f);
        }
        if (m14379finally() && ((com.google.android.material.textfield.Cfor) this.f12901abstract).a0()) {
            m14375default();
        }
        this.P = true;
        m14383implements();
        b0();
        e0();
    }

    /* renamed from: while, reason: not valid java name */
    private int m14400while(@NonNull Rect rect, @NonNull Rect rect2, float f) {
        return l() ? (int) (rect2.top + f) : rect.bottom - this.f12937try.getCompoundPaddingBottom();
    }

    private void x() {
        TextView textView = this.f12918import;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void E(@NonNull TextView textView, @StyleRes int i) {
        boolean z = true;
        try {
            TextViewCompat.setTextAppearance(textView, i);
            if (Build.VERSION.SDK_INT >= 23) {
                if (textView.getTextColors().getDefaultColor() != -65281) {
                    z = false;
                }
            }
        } catch (Exception unused) {
        }
        if (z) {
            TextViewCompat.setTextAppearance(textView, R.style.TextAppearance_AppCompat_Caption);
            textView.setTextColor(ContextCompat.getColor(getContext(), R.color.design_error));
        }
    }

    public void N(int i) {
        boolean z = this.f12905class;
        int i2 = this.f12904catch;
        if (i2 == -1) {
            this.f12906const.setText(String.valueOf(i));
            this.f12906const.setContentDescription(null);
            this.f12905class = false;
        } else {
            this.f12905class = i > i2;
            O(getContext(), this.f12906const, i, this.f12904catch, this.f12905class);
            if (z != this.f12905class) {
                P();
            }
            this.f12906const.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f12904catch))));
        }
        if (this.f12937try == null || z == this.f12905class) {
            return;
        }
        V(false);
        f0();
        S();
    }

    public void S() {
        Drawable background;
        TextView textView;
        EditText editText = this.f12937try;
        if (editText == null || this.f12925protected != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (this.f12933this.m14424class()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.f12933this.m14443throw(), PorterDuff.Mode.SRC_IN));
        } else if (this.f12905class && (textView = this.f12906const) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f12937try.refreshDrawableState();
        }
    }

    public void V(boolean z) {
        W(z, false);
    }

    public boolean a() {
        return this.f12922new.getVisibility() == 0 && this.r.getVisibility() == 0;
    }

    public void addOnEditTextAttachedListener(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.o.add(onEditTextAttachedListener);
        if (this.f12937try != null) {
            onEditTextAttachedListener.onEditTextAttached(this);
        }
    }

    public void addOnEndIconChangedListener(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.s.add(onEndIconChangedListener);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & w21.B1) | 16;
        this.f12909do.addView(view, layoutParams2);
        this.f12909do.setLayoutParams(layoutParams);
        U();
        setEditText((EditText) view);
    }

    public boolean b() {
        return this.f12933this.m14436private();
    }

    public boolean d() {
        return this.R;
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i) {
        EditText editText = this.f12937try;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f12903case != null) {
            boolean z = this.f12924private;
            this.f12924private = false;
            CharSequence hint = editText.getHint();
            this.f12937try.setHint(this.f12903case);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f12937try.setHint(hint);
                this.f12924private = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f12909do.getChildCount());
        for (int i2 = 0; i2 < this.f12909do.getChildCount(); i2++) {
            View childAt = this.f12909do.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.f12937try) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.V = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.V = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        m14393strictfp(canvas);
        m14374continue(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.U) {
            return;
        }
        this.U = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.Cdo cdo = this.Q;
        boolean zR = cdo != null ? cdo.R(drawableState) | false : false;
        if (this.f12937try != null) {
            V(ViewCompat.isLaidOut(this) && isEnabled());
        }
        S();
        f0();
        if (zR) {
            invalidate();
        }
        this.U = false;
    }

    @VisibleForTesting
    public final boolean e() {
        return this.f12933this.m14439static();
    }

    @VisibleForTesting
    /* renamed from: else, reason: not valid java name */
    public void m14401else(float f) {
        if (this.Q.m13664volatile() == f) {
            return;
        }
        if (this.T == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.T = valueAnimator;
            valueAnimator.setInterpolator(w1.f7371if);
            this.T.setDuration(167L);
            this.T.addUpdateListener(new Cnew());
        }
        this.T.setFloatValues(this.Q.m13664volatile(), f);
        this.T.start();
    }

    public boolean f() {
        return this.f12933this.m14422abstract();
    }

    public void f0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f12901abstract == null || this.f12925protected == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f12937try) != null && editText2.hasFocus());
        boolean z3 = isHovered() || ((editText = this.f12937try) != null && editText.isHovered());
        if (!isEnabled()) {
            this.a = this.O;
        } else if (this.f12933this.m14424class()) {
            if (this.f36256J != null) {
                c0(z2, z3);
            } else {
                this.a = this.f12933this.m14443throw();
            }
        } else if (!this.f12905class || (textView = this.f12906const) == null) {
            if (z2) {
                this.a = this.I;
            } else if (z3) {
                this.a = this.H;
            } else {
                this.a = this.G;
            }
        } else if (this.f36256J != null) {
            c0(z2, z3);
        } else {
            this.a = textView.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && this.f12933this.m14436private() && this.f12933this.m14424class()) {
            z = true;
        }
        setErrorIconVisible(z);
        u();
        w();
        t();
        if (getEndIconDelegate().mo14495new()) {
            J(this.f12933this.m14424class());
        }
        if (z2 && isEnabled()) {
            this.f12917implements = this.f12932synchronized;
        } else {
            this.f12917implements = this.f12919instanceof;
        }
        if (this.f12925protected == 2) {
            Q();
        }
        if (this.f12925protected == 1) {
            if (!isEnabled()) {
                this.b = this.L;
            } else if (z3 && !z2) {
                this.b = this.N;
            } else if (z2) {
                this.b = this.M;
            } else {
                this.b = this.K;
            }
        }
        m14381goto();
    }

    public boolean g() {
        return this.S;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f12937try;
        return editText != null ? editText.getBaseline() + getPaddingTop() + m14390public() : super.getBaseline();
    }

    @NonNull
    public MaterialShapeDrawable getBoxBackground() {
        int i = this.f12925protected;
        if (i == 1 || i == 2) {
            return this.f12901abstract;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.b;
    }

    public int getBoxBackgroundMode() {
        return this.f12925protected;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f12901abstract.m13952native();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f12901abstract.m13956public();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f12901abstract.e();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f12901abstract.d();
    }

    public int getBoxStrokeColor() {
        return this.I;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f36256J;
    }

    public int getBoxStrokeWidth() {
        return this.f12919instanceof;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f12932synchronized;
    }

    public int getCounterMaxLength() {
        return this.f12904catch;
    }

    @Nullable
    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f12902break && this.f12905class && (textView = this.f12906const) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f12927return;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f12927return;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.E;
    }

    @Nullable
    public EditText getEditText() {
        return this.f12937try;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.r.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.r.getDrawable();
    }

    public int getEndIconMode() {
        return this.p;
    }

    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.r;
    }

    @Nullable
    public CharSequence getError() {
        if (this.f12933this.m14436private()) {
            return this.f12933this.m14440super();
        }
        return null;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f12933this.m14428final();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f12933this.m14443throw();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.C.getDrawable();
    }

    @VisibleForTesting
    public final int getErrorTextCurrentColor() {
        return this.f12933this.m14443throw();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f12933this.m14422abstract()) {
            return this.f12933this.m14430import();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f12933this.m14438public();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.f12913finally) {
            return this.f12923package;
        }
        return null;
    }

    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.Q.m13653native();
    }

    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        return this.Q.m13662throws();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.F;
    }

    @Px
    public int getMaxWidth() {
        return this.f12915goto;
    }

    @Px
    public int getMinWidth() {
        return this.f12910else;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.r.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.r.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f12939while) {
            return this.f12934throw;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f12926public;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f12921native;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f12931switch;
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f12935throws.getTextColors();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f12935throws;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.g.getContentDescription();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.g.getDrawable();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f12908default;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f12911extends.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f12911extends;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f;
    }

    public boolean h() {
        return this.f12913finally;
    }

    @VisibleForTesting
    public final boolean i() {
        return this.P;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public boolean m14402instanceof() {
        return this.f12902break;
    }

    @Deprecated
    public boolean j() {
        return this.p == 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean k() {
        return this.f12924private;
    }

    public boolean m() {
        return this.g.m13534do();
    }

    public boolean n() {
        return this.g.getVisibility() == 0;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f12937try;
        if (editText != null) {
            Rect rect = this.c;
            iz.m3636do(this, editText, rect);
            L(rect);
            if (this.f12913finally) {
                this.Q.E(this.f12937try.getTextSize());
                int gravity = this.f12937try.getGravity();
                this.Q.t((gravity & w21.B1) | 48);
                this.Q.D(gravity);
                this.Q.p(m14396throw(rect));
                this.Q.z(m14386native(rect));
                this.Q.l();
                if (!m14379finally() || this.P) {
                    return;
                }
                q();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean zT = T();
        boolean zR = R();
        if (zT || zR) {
            this.f12937try.post(new Cfor());
        }
        X();
        a0();
        d0();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f12941do);
        if (savedState.f12943if) {
            this.r.post(new Cif());
        }
        setHint(savedState.f12942for);
        setHelperText(savedState.f12944new);
        setPlaceholderText(savedState.f12945try);
        requestLayout();
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f12933this.m14424class()) {
            savedState.f12941do = getError();
        }
        savedState.f12943if = m14397transient() && this.r.isChecked();
        savedState.f12942for = getHint();
        savedState.f12944new = getHelperText();
        savedState.f12945try = getPlaceholderText();
        return savedState;
    }

    @VisibleForTesting
    /* renamed from: package, reason: not valid java name */
    public boolean m14403package() {
        return m14379finally() && ((com.google.android.material.textfield.Cfor) this.f12901abstract).a0();
    }

    @Deprecated
    public void r(boolean z) {
        if (this.p == 1) {
            this.r.performClick();
            if (z) {
                this.r.jumpDrawablesToCurrentState();
            }
        }
    }

    public void removeOnEditTextAttachedListener(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.o.remove(onEditTextAttachedListener);
    }

    public void removeOnEndIconChangedListener(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.s.remove(onEndIconChangedListener);
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.b != i) {
            this.b = i;
            this.K = i;
            this.M = i;
            this.N = i;
            m14381goto();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.K = defaultColor;
        this.b = defaultColor;
        this.L = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.M = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.N = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        m14381goto();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f12925protected) {
            return;
        }
        this.f12925protected = i;
        if (this.f12937try != null) {
            p();
        }
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.I != i) {
            this.I = i;
            f0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.G = colorStateList.getDefaultColor();
            this.O = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.H = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.I = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.I != colorStateList.getDefaultColor()) {
            this.I = colorStateList.getDefaultColor();
        }
        f0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f36256J != colorStateList) {
            this.f36256J = colorStateList;
            f0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f12919instanceof = i;
        f0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f12932synchronized = i;
        f0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f12902break != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f12906const = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.f;
                if (typeface != null) {
                    this.f12906const.setTypeface(typeface);
                }
                this.f12906const.setMaxLines(1);
                this.f12933this.m14434new(this.f12906const, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f12906const.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                P();
                M();
            } else {
                this.f12933this.m14425continue(this.f12906const, 2);
                this.f12906const = null;
            }
            this.f12902break = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f12904catch != i) {
            if (i > 0) {
                this.f12904catch = i;
            } else {
                this.f12904catch = -1;
            }
            if (this.f12902break) {
                M();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f12912final != i) {
            this.f12912final = i;
            P();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f12928static != colorStateList) {
            this.f12928static = colorStateList;
            P();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f12930super != i) {
            this.f12930super = i;
            P();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f12927return != colorStateList) {
            this.f12927return = colorStateList;
            P();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.E = colorStateList;
        this.F = colorStateList;
        if (this.f12937try != null) {
            V(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        s(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.r.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.r.setCheckable(z);
    }

    public void setEndIconContentDescription(@StringRes int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconDrawable(@DrawableRes int i) {
        setEndIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setEndIconMode(int i) {
        int i2 = this.p;
        this.p = i;
        m14368abstract(i2);
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().mo14494if(this.f12925protected)) {
            getEndIconDelegate().mo14458do();
            m14371catch();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f12925protected + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        C(this.r, onClickListener, this.A);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.A = onLongClickListener;
        D(this.r, onLongClickListener);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.t != colorStateList) {
            this.t = colorStateList;
            this.u = true;
            m14371catch();
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.v != mode) {
            this.v = mode;
            this.w = true;
            m14371catch();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (a() != z) {
            this.r.setVisibility(z ? 0 : 8);
            d0();
            R();
        }
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f12933this.m14436private()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f12933this.m14444throws();
        } else {
            this.f12933this.e(charSequence);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f12933this.m14447volatile(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.f12933this.m14432interface(z);
    }

    public void setErrorIconDrawable(@DrawableRes int i) {
        setErrorIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
        u();
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        C(this.C, onClickListener, this.B);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.B = onLongClickListener;
        D(this.C, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.D = colorStateList;
        Drawable drawable = this.C.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable, colorStateList);
        }
        if (this.C.getDrawable() != drawable) {
            this.C.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        Drawable drawable = this.C.getDrawable();
        if (drawable != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintMode(drawable, mode);
        }
        if (this.C.getDrawable() != drawable) {
            this.C.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.f12933this.m14437protected(i);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f12933this.m14445transient(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.R != z) {
            this.R = z;
            V(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (f()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!f()) {
                setHelperTextEnabled(true);
            }
            this.f12933this.f(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f12933this.m14442synchronized(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f12933this.m14431instanceof(z);
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        this.f12933this.m14429implements(i);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.f12913finally) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.S = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f12913finally) {
            this.f12913finally = z;
            if (z) {
                CharSequence hint = this.f12937try.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f12923package)) {
                        setHint(hint);
                    }
                    this.f12937try.setHint((CharSequence) null);
                }
                this.f12924private = true;
            } else {
                this.f12924private = false;
                if (!TextUtils.isEmpty(this.f12923package) && TextUtils.isEmpty(this.f12937try.getHint())) {
                    this.f12937try.setHint(this.f12923package);
                }
                setHintInternal(null);
            }
            if (this.f12937try != null) {
                U();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.Q.q(i);
        this.F = this.Q.m13665while();
        if (this.f12937try != null) {
            V(false);
            U();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            if (this.E == null) {
                this.Q.s(colorStateList);
            }
            this.F = colorStateList;
            if (this.f12937try != null) {
                V(false);
            }
        }
    }

    public void setMaxWidth(@Px int i) {
        this.f12915goto = i;
        EditText editText = this.f12937try;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(@DimenRes int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinWidth(@Px int i) {
        this.f12910else = i;
        EditText editText = this.f12937try;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(@DimenRes int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.p != 1) {
            setEndIconMode(1);
        } else {
            if (z) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.t = colorStateList;
        this.u = true;
        m14371catch();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.v = mode;
        this.w = true;
        m14371catch();
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f12939while && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f12939while) {
                setPlaceholderTextEnabled(true);
            }
            this.f12934throw = charSequence;
        }
        Y();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i) {
        this.f12926public = i;
        TextView textView = this.f12918import;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f12921native != colorStateList) {
            this.f12921native = colorStateList;
            TextView textView = this.f12918import;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f12931switch = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f12935throws.setText(charSequence);
        b0();
    }

    public void setPrefixTextAppearance(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f12935throws, i);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f12935throws.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.g.setCheckable(z);
    }

    public void setStartIconContentDescription(@StringRes int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        C(this.g, onClickListener, this.n);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.n = onLongClickListener;
        D(this.g, onLongClickListener);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            this.i = true;
            m14373const();
        }
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.j != mode) {
            this.j = mode;
            this.k = true;
            m14373const();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (n() != z) {
            this.g.setVisibility(z ? 0 : 8);
            a0();
            R();
        }
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f12908default = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f12911extends.setText(charSequence);
        e0();
    }

    public void setSuffixTextAppearance(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f12911extends, i);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f12911extends.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.f12937try;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f) {
            this.f = typeface;
            this.Q.U(typeface);
            this.f12933this.b(typeface);
            TextView textView = this.f12906const;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m14404switch() {
        this.o.clear();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public boolean m14405synchronized() {
        return this.r.m13534do();
    }

    public void t() {
        v(this.r, this.t);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m14406throws() {
        this.s.clear();
    }

    public void u() {
        v(this.C, this.D);
    }

    public void w() {
        v(this.g, this.h);
    }

    public void y(float f, float f2, float f3, float f4) {
        MaterialShapeDrawable materialShapeDrawable = this.f12901abstract;
        if (materialShapeDrawable != null && materialShapeDrawable.d() == f && this.f12901abstract.e() == f2 && this.f12901abstract.m13956public() == f4 && this.f12901abstract.m13952native() == f3) {
            return;
        }
        this.f12929strictfp = this.f12929strictfp.m13982static().m14008implements(f).c(f2).m14014private(f4).m14024throws(f3).m14003const();
        m14381goto();
    }

    public void z(@DimenRes int i, @DimenRes int i2, @DimenRes int i3, @DimenRes int i4) {
        y(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.r.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.r.setImageDrawable(drawable);
        t();
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.g.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.g.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            w();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v150 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v47, types: [boolean, int] */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2;
        ?? r2;
        int i3 = W;
        super(vx0.m8993for(context, attributeSet, i, i3), attributeSet, i);
        this.f12910else = -1;
        this.f12915goto = -1;
        this.f12933this = new com.google.android.material.textfield.Ccase(this);
        this.c = new Rect();
        this.d = new Rect();
        this.e = new RectF();
        this.o = new LinkedHashSet<>();
        this.p = 0;
        SparseArray<com.google.android.material.textfield.Ctry> sparseArray = new SparseArray<>();
        this.q = sparseArray;
        this.s = new LinkedHashSet<>();
        com.google.android.material.internal.Cdo cdo = new com.google.android.material.internal.Cdo(this);
        this.Q = cdo;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f12909do = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f12916if = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f12914for = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f12922new = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = w1.f7369do;
        cdo.T(timeInterpolator);
        cdo.P(timeInterpolator);
        cdo.t(BadgeDrawable.f11272import);
        int[] iArr = R.styleable.TextInputLayout;
        int i4 = R.styleable.TextInputLayout_counterTextAppearance;
        int i5 = R.styleable.TextInputLayout_counterOverflowTextAppearance;
        int i6 = R.styleable.TextInputLayout_errorTextAppearance;
        int i7 = R.styleable.TextInputLayout_helperTextTextAppearance;
        int i8 = R.styleable.TextInputLayout_hintTextAppearance;
        TintTypedArray tintTypedArrayM4269catch = k62.m4269catch(context2, attributeSet, iArr, i, i3, i4, i5, i6, i7, i8);
        this.f12913finally = tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_android_hint));
        this.S = tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.R = tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_expandedHintEnabled, true);
        int i9 = R.styleable.TextInputLayout_android_minWidth;
        if (tintTypedArrayM4269catch.hasValue(i9)) {
            i2 = -1;
            setMinWidth(tintTypedArrayM4269catch.getDimensionPixelSize(i9, -1));
        } else {
            i2 = -1;
        }
        int i10 = R.styleable.TextInputLayout_android_maxWidth;
        if (tintTypedArrayM4269catch.hasValue(i10)) {
            setMaxWidth(tintTypedArrayM4269catch.getDimensionPixelSize(i10, i2));
        }
        this.f12929strictfp = ShapeAppearanceModel.m13971try(context2, attributeSet, i, i3).m14003const();
        this.f12938volatile = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f12936transient = tintTypedArrayM4269catch.getDimensionPixelOffset(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.f12919instanceof = tintTypedArrayM4269catch.getDimensionPixelSize(R.styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f12932synchronized = tintTypedArrayM4269catch.getDimensionPixelSize(R.styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f12917implements = this.f12919instanceof;
        float dimension = tintTypedArrayM4269catch.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float dimension2 = tintTypedArrayM4269catch.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float dimension3 = tintTypedArrayM4269catch.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float dimension4 = tintTypedArrayM4269catch.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        ShapeAppearanceModel.Cif cifM13982static = this.f12929strictfp.m13982static();
        if (dimension >= 0.0f) {
            cifM13982static.m14008implements(dimension);
        }
        if (dimension2 >= 0.0f) {
            cifM13982static.c(dimension2);
        }
        if (dimension3 >= 0.0f) {
            cifM13982static.m14014private(dimension3);
        }
        if (dimension4 >= 0.0f) {
            cifM13982static.m14024throws(dimension4);
        }
        this.f12929strictfp = cifM13982static.m14003const();
        ColorStateList colorStateListM7653if = sx0.m7653if(context2, tintTypedArrayM4269catch, R.styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListM7653if != null) {
            int defaultColor = colorStateListM7653if.getDefaultColor();
            this.K = defaultColor;
            this.b = defaultColor;
            if (colorStateListM7653if.isStateful()) {
                this.L = colorStateListM7653if.getColorForState(new int[]{-16842910}, -1);
                this.M = colorStateListM7653if.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.N = colorStateListM7653if.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.M = this.K;
                ColorStateList colorStateList = AppCompatResources.getColorStateList(context2, R.color.mtrl_filled_background_color);
                this.L = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.N = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
        } else {
            this.b = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
        }
        int i11 = R.styleable.TextInputLayout_android_textColorHint;
        if (tintTypedArrayM4269catch.hasValue(i11)) {
            ColorStateList colorStateList2 = tintTypedArrayM4269catch.getColorStateList(i11);
            this.F = colorStateList2;
            this.E = colorStateList2;
        }
        int i12 = R.styleable.TextInputLayout_boxStrokeColor;
        ColorStateList colorStateListM7653if2 = sx0.m7653if(context2, tintTypedArrayM4269catch, i12);
        this.I = tintTypedArrayM4269catch.getColor(i12, 0);
        this.G = ContextCompat.getColor(context2, R.color.mtrl_textinput_default_box_stroke_color);
        this.O = ContextCompat.getColor(context2, R.color.mtrl_textinput_disabled_color);
        this.H = ContextCompat.getColor(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListM7653if2 != null) {
            setBoxStrokeColorStateList(colorStateListM7653if2);
        }
        int i13 = R.styleable.TextInputLayout_boxStrokeErrorColor;
        if (tintTypedArrayM4269catch.hasValue(i13)) {
            setBoxStrokeErrorColor(sx0.m7653if(context2, tintTypedArrayM4269catch, i13));
        }
        if (tintTypedArrayM4269catch.getResourceId(i8, -1) != -1) {
            r2 = 0;
            setHintTextAppearance(tintTypedArrayM4269catch.getResourceId(i8, 0));
        } else {
            r2 = 0;
        }
        int resourceId = tintTypedArrayM4269catch.getResourceId(i6, r2);
        CharSequence text = tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_errorContentDescription);
        boolean z = tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_errorEnabled, r2);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int i14 = R.layout.design_text_input_end_icon;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i14, linearLayout2, (boolean) r2);
        this.C = checkableImageButton;
        checkableImageButton.setId(R.id.text_input_error_icon);
        checkableImageButton.setVisibility(8);
        if (sx0.m7650else(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), r2);
        }
        int i15 = R.styleable.TextInputLayout_errorIconDrawable;
        if (tintTypedArrayM4269catch.hasValue(i15)) {
            setErrorIconDrawable(tintTypedArrayM4269catch.getDrawable(i15));
        }
        int i16 = R.styleable.TextInputLayout_errorIconTint;
        if (tintTypedArrayM4269catch.hasValue(i16)) {
            setErrorIconTintList(sx0.m7653if(context2, tintTypedArrayM4269catch, i16));
        }
        int i17 = R.styleable.TextInputLayout_errorIconTintMode;
        if (tintTypedArrayM4269catch.hasValue(i17)) {
            setErrorIconTintMode(ViewUtils.m13612catch(tintTypedArrayM4269catch.getInt(i17, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = tintTypedArrayM4269catch.getResourceId(i7, 0);
        boolean z2 = tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence text2 = tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_helperText);
        int resourceId3 = tintTypedArrayM4269catch.getResourceId(R.styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence text3 = tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_placeholderText);
        int resourceId4 = tintTypedArrayM4269catch.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0);
        CharSequence text4 = tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_prefixText);
        int resourceId5 = tintTypedArrayM4269catch.getResourceId(R.styleable.TextInputLayout_suffixTextAppearance, 0);
        CharSequence text5 = tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_suffixText);
        boolean z3 = tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(tintTypedArrayM4269catch.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.f12930super = tintTypedArrayM4269catch.getResourceId(i4, 0);
        this.f12912final = tintTypedArrayM4269catch.getResourceId(i5, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) linearLayout, false);
        this.g = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (sx0.m7650else(context2)) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams(), 0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        int i18 = R.styleable.TextInputLayout_startIconDrawable;
        if (tintTypedArrayM4269catch.hasValue(i18)) {
            setStartIconDrawable(tintTypedArrayM4269catch.getDrawable(i18));
            int i19 = R.styleable.TextInputLayout_startIconContentDescription;
            if (tintTypedArrayM4269catch.hasValue(i19)) {
                setStartIconContentDescription(tintTypedArrayM4269catch.getText(i19));
            }
            setStartIconCheckable(tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        int i20 = R.styleable.TextInputLayout_startIconTint;
        if (tintTypedArrayM4269catch.hasValue(i20)) {
            setStartIconTintList(sx0.m7653if(context2, tintTypedArrayM4269catch, i20));
        }
        int i21 = R.styleable.TextInputLayout_startIconTintMode;
        if (tintTypedArrayM4269catch.hasValue(i21)) {
            setStartIconTintMode(ViewUtils.m13612catch(tintTypedArrayM4269catch.getInt(i21, -1), null));
        }
        setBoxBackgroundMode(tintTypedArrayM4269catch.getInt(R.styleable.TextInputLayout_boxBackgroundMode, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(i14, (ViewGroup) frameLayout2, false);
        this.r = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        if (sx0.m7650else(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton3.getLayoutParams(), 0);
        }
        sparseArray.append(-1, new com.google.android.material.textfield.Cif(this));
        sparseArray.append(0, new Celse(this));
        sparseArray.append(1, new Cgoto(this));
        sparseArray.append(2, new com.google.android.material.textfield.Cdo(this));
        sparseArray.append(3, new com.google.android.material.textfield.Cnew(this));
        int i22 = R.styleable.TextInputLayout_endIconMode;
        if (tintTypedArrayM4269catch.hasValue(i22)) {
            setEndIconMode(tintTypedArrayM4269catch.getInt(i22, 0));
            int i23 = R.styleable.TextInputLayout_endIconDrawable;
            if (tintTypedArrayM4269catch.hasValue(i23)) {
                setEndIconDrawable(tintTypedArrayM4269catch.getDrawable(i23));
            }
            int i24 = R.styleable.TextInputLayout_endIconContentDescription;
            if (tintTypedArrayM4269catch.hasValue(i24)) {
                setEndIconContentDescription(tintTypedArrayM4269catch.getText(i24));
            }
            setEndIconCheckable(tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_endIconCheckable, true));
        } else {
            int i25 = R.styleable.TextInputLayout_passwordToggleEnabled;
            if (tintTypedArrayM4269catch.hasValue(i25)) {
                setEndIconMode(tintTypedArrayM4269catch.getBoolean(i25, false) ? 1 : 0);
                setEndIconDrawable(tintTypedArrayM4269catch.getDrawable(R.styleable.TextInputLayout_passwordToggleDrawable));
                setEndIconContentDescription(tintTypedArrayM4269catch.getText(R.styleable.TextInputLayout_passwordToggleContentDescription));
                int i26 = R.styleable.TextInputLayout_passwordToggleTint;
                if (tintTypedArrayM4269catch.hasValue(i26)) {
                    setEndIconTintList(sx0.m7653if(context2, tintTypedArrayM4269catch, i26));
                }
                int i27 = R.styleable.TextInputLayout_passwordToggleTintMode;
                if (tintTypedArrayM4269catch.hasValue(i27)) {
                    setEndIconTintMode(ViewUtils.m13612catch(tintTypedArrayM4269catch.getInt(i27, -1), null));
                }
            }
        }
        if (!tintTypedArrayM4269catch.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            int i28 = R.styleable.TextInputLayout_endIconTint;
            if (tintTypedArrayM4269catch.hasValue(i28)) {
                setEndIconTintList(sx0.m7653if(context2, tintTypedArrayM4269catch, i28));
            }
            int i29 = R.styleable.TextInputLayout_endIconTintMode;
            if (tintTypedArrayM4269catch.hasValue(i29)) {
                setEndIconTintMode(ViewUtils.m13612catch(tintTypedArrayM4269catch.getInt(i29, -1), null));
            }
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.f12935throws = appCompatTextView;
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(appCompatTextView, 1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2);
        this.f12911extends = appCompatTextView2;
        appCompatTextView2.setId(R.id.textinput_suffix_text);
        appCompatTextView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        ViewCompat.setAccessibilityLiveRegion(appCompatTextView2, 1);
        linearLayout2.addView(appCompatTextView2);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(z2);
        setHelperText(text2);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z);
        setErrorTextAppearance(resourceId);
        setErrorContentDescription(text);
        setCounterTextAppearance(this.f12930super);
        setCounterOverflowTextAppearance(this.f12912final);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setPrefixText(text4);
        setPrefixTextAppearance(resourceId4);
        setSuffixText(text5);
        setSuffixTextAppearance(resourceId5);
        int i30 = R.styleable.TextInputLayout_errorTextColor;
        if (tintTypedArrayM4269catch.hasValue(i30)) {
            setErrorTextColor(tintTypedArrayM4269catch.getColorStateList(i30));
        }
        int i31 = R.styleable.TextInputLayout_helperTextTextColor;
        if (tintTypedArrayM4269catch.hasValue(i31)) {
            setHelperTextColor(tintTypedArrayM4269catch.getColorStateList(i31));
        }
        int i32 = R.styleable.TextInputLayout_hintTextColor;
        if (tintTypedArrayM4269catch.hasValue(i32)) {
            setHintTextColor(tintTypedArrayM4269catch.getColorStateList(i32));
        }
        int i33 = R.styleable.TextInputLayout_counterTextColor;
        if (tintTypedArrayM4269catch.hasValue(i33)) {
            setCounterTextColor(tintTypedArrayM4269catch.getColorStateList(i33));
        }
        int i34 = R.styleable.TextInputLayout_counterOverflowTextColor;
        if (tintTypedArrayM4269catch.hasValue(i34)) {
            setCounterOverflowTextColor(tintTypedArrayM4269catch.getColorStateList(i34));
        }
        int i35 = R.styleable.TextInputLayout_placeholderTextColor;
        if (tintTypedArrayM4269catch.hasValue(i35)) {
            setPlaceholderTextColor(tintTypedArrayM4269catch.getColorStateList(i35));
        }
        int i36 = R.styleable.TextInputLayout_prefixTextColor;
        if (tintTypedArrayM4269catch.hasValue(i36)) {
            setPrefixTextColor(tintTypedArrayM4269catch.getColorStateList(i36));
        }
        int i37 = R.styleable.TextInputLayout_suffixTextColor;
        if (tintTypedArrayM4269catch.hasValue(i37)) {
            setSuffixTextColor(tintTypedArrayM4269catch.getColorStateList(i37));
        }
        setCounterEnabled(z3);
        setEnabled(tintTypedArrayM4269catch.getBoolean(R.styleable.TextInputLayout_android_enabled, true));
        tintTypedArrayM4269catch.recycle();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.C.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f12933this.m14436private());
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.r.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.r.setImageDrawable(drawable);
    }

    public void setHint(@StringRes int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }
}
