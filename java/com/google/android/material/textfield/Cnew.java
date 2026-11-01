package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.support.v4.j62;
import android.support.v4.qx0;
import android.support.v4.w1;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: com.google.android.material.textfield.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew extends com.google.android.material.textfield.Ctry {

    /* renamed from: import, reason: not valid java name */
    private static final int f13016import = 50;

    /* renamed from: native, reason: not valid java name */
    private static final int f13017native = 67;

    /* renamed from: while, reason: not valid java name */
    private static final boolean f13018while;

    /* renamed from: break, reason: not valid java name */
    private boolean f13019break;

    /* renamed from: case, reason: not valid java name */
    private final TextInputLayout.AccessibilityDelegate f13020case;

    /* renamed from: catch, reason: not valid java name */
    private long f13021catch;

    /* renamed from: class, reason: not valid java name */
    private StateListDrawable f13022class;

    /* renamed from: const, reason: not valid java name */
    private MaterialShapeDrawable f13023const;

    /* renamed from: else, reason: not valid java name */
    private final TextInputLayout.OnEditTextAttachedListener f13024else;

    /* renamed from: final, reason: not valid java name */
    @Nullable
    private AccessibilityManager f13025final;

    /* renamed from: goto, reason: not valid java name */
    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.OnEndIconChangedListener f13026goto;

    /* renamed from: new, reason: not valid java name */
    private final TextWatcher f13027new;

    /* renamed from: super, reason: not valid java name */
    private ValueAnimator f13028super;

    /* renamed from: this, reason: not valid java name */
    private boolean f13029this;

    /* renamed from: throw, reason: not valid java name */
    private ValueAnimator f13030throw;

    /* renamed from: try, reason: not valid java name */
    private final View.OnFocusChangeListener f13031try;

    /* renamed from: com.google.android.material.textfield.new$break, reason: invalid class name */
    public class Cbreak extends AnimatorListenerAdapter {
        public Cbreak() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Cnew cnew = Cnew.this;
            cnew.f13048for.setChecked(cnew.f13019break);
            Cnew.this.f13030throw.start();
        }
    }

    /* renamed from: com.google.android.material.textfield.new$case, reason: invalid class name */
    public class Ccase implements TextInputLayout.OnEndIconChangedListener {

        /* renamed from: com.google.android.material.textfield.new$case$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ AutoCompleteTextView f13034do;

            public Cdo(AutoCompleteTextView autoCompleteTextView) {
                this.f13034do = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f13034do.removeTextChangedListener(Cnew.this.f13027new);
            }
        }

        public Ccase() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new Cdo(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == Cnew.this.f13031try) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (Cnew.f13018while) {
                autoCompleteTextView.setOnDismissListener(null);
            }
        }
    }

    /* renamed from: com.google.android.material.textfield.new$do, reason: invalid class name */
    public class Cdo extends j62 {

        /* renamed from: com.google.android.material.textfield.new$do$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0068do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ AutoCompleteTextView f13037do;

            public RunnableC0068do(AutoCompleteTextView autoCompleteTextView) {
                this.f13037do = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.f13037do.isPopupShowing();
                Cnew.this.m14470continue(zIsPopupShowing);
                Cnew.this.f13029this = zIsPopupShowing;
            }
        }

        public Cdo() {
        }

        @Override // android.support.v4.j62, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewM14471default = Cnew.m14471default(Cnew.this.f13047do.getEditText());
            if (Cnew.this.f13025final.isTouchExplorationEnabled() && Cnew.m14464abstract(autoCompleteTextViewM14471default) && !Cnew.this.f13048for.hasFocus()) {
                autoCompleteTextViewM14471default.dismissDropDown();
            }
            autoCompleteTextViewM14471default.post(new RunnableC0068do(autoCompleteTextViewM14471default));
        }
    }

    /* renamed from: com.google.android.material.textfield.new$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Cnew.this.m14478interface((AutoCompleteTextView) Cnew.this.f13047do.getEditText());
        }
    }

    /* renamed from: com.google.android.material.textfield.new$for, reason: invalid class name */
    public class Cfor implements View.OnFocusChangeListener {
        public Cfor() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            Cnew.this.f13047do.setEndIconActivated(z);
            if (z) {
                return;
            }
            Cnew.this.m14470continue(false);
            Cnew.this.f13029this = false;
        }
    }

    /* renamed from: com.google.android.material.textfield.new$goto, reason: invalid class name */
    public class Cgoto implements View.OnTouchListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AutoCompleteTextView f13041do;

        public Cgoto(AutoCompleteTextView autoCompleteTextView) {
            this.f13041do = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (Cnew.this.m14481private()) {
                    Cnew.this.f13029this = false;
                }
                Cnew.this.m14478interface(this.f13041do);
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.textfield.new$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            Cnew.this.f13048for.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.new$new, reason: invalid class name and collision with other inner class name */
    public class C0069new extends TextInputLayout.AccessibilityDelegate {
        public C0069new(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.AccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!Cnew.m14464abstract(Cnew.this.f13047do.getEditText())) {
                accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.isShowingHintText()) {
                accessibilityNodeInfoCompat.setHintText(null);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewM14471default = Cnew.m14471default(Cnew.this.f13047do.getEditText());
            if (accessibilityEvent.getEventType() == 1 && Cnew.this.f13025final.isTouchExplorationEnabled() && !Cnew.m14464abstract(Cnew.this.f13047do.getEditText())) {
                Cnew.this.m14478interface(autoCompleteTextViewM14471default);
            }
        }
    }

    /* renamed from: com.google.android.material.textfield.new$this, reason: invalid class name */
    public class Cthis implements AutoCompleteTextView.OnDismissListener {
        public Cthis() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            Cnew.this.f13029this = true;
            Cnew.this.f13021catch = System.currentTimeMillis();
            Cnew.this.m14470continue(false);
        }
    }

    /* renamed from: com.google.android.material.textfield.new$try, reason: invalid class name */
    public class Ctry implements TextInputLayout.OnEditTextAttachedListener {
        public Ctry() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewM14471default = Cnew.m14471default(textInputLayout.getEditText());
            Cnew.this.m14485strictfp(autoCompleteTextViewM14471default);
            Cnew.this.m14484static(autoCompleteTextViewM14471default);
            Cnew.this.m14492volatile(autoCompleteTextViewM14471default);
            autoCompleteTextViewM14471default.setThreshold(0);
            autoCompleteTextViewM14471default.removeTextChangedListener(Cnew.this.f13027new);
            autoCompleteTextViewM14471default.addTextChangedListener(Cnew.this.f13027new);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!Cnew.m14464abstract(autoCompleteTextViewM14471default)) {
                ViewCompat.setImportantForAccessibility(Cnew.this.f13048for, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(Cnew.this.f13020case);
            textInputLayout.setEndIconVisible(true);
        }
    }

    static {
        f13018while = Build.VERSION.SDK_INT >= 21;
    }

    public Cnew(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f13027new = new Cdo();
        this.f13031try = new Cfor();
        this.f13020case = new C0069new(this.f13047do);
        this.f13024else = new Ctry();
        this.f13026goto = new Ccase();
        this.f13029this = false;
        this.f13019break = false;
        this.f13021catch = Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public static boolean m14464abstract(@NonNull EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public void m14470continue(boolean z) {
        if (this.f13019break != z) {
            this.f13019break = z;
            this.f13030throw.cancel();
            this.f13028super.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: default, reason: not valid java name */
    public static AutoCompleteTextView m14471default(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* renamed from: extends, reason: not valid java name */
    private ValueAnimator m14473extends(int i, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(w1.f7369do);
        valueAnimatorOfFloat.setDuration(i);
        valueAnimatorOfFloat.addUpdateListener(new Cif());
        return valueAnimatorOfFloat;
    }

    /* renamed from: finally, reason: not valid java name */
    private MaterialShapeDrawable m14475finally(float f, float f2, float f3, int i) {
        ShapeAppearanceModel shapeAppearanceModelM14003const = ShapeAppearanceModel.m13966do().m14008implements(f).c(f).m14024throws(f2).m14014private(f2).m14003const();
        MaterialShapeDrawable materialShapeDrawableM13928const = MaterialShapeDrawable.m13928const(this.f13049if, f3);
        materialShapeDrawableM13928const.setShapeAppearanceModel(shapeAppearanceModelM14003const);
        materialShapeDrawableM13928const.B(0, i, 0, i);
        return materialShapeDrawableM13928const;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public void m14478interface(@Nullable AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (m14481private()) {
            this.f13029this = false;
        }
        if (this.f13029this) {
            this.f13029this = false;
            return;
        }
        if (f13018while) {
            m14470continue(!this.f13019break);
        } else {
            this.f13019break = !this.f13019break;
            this.f13048for.toggle();
        }
        if (!this.f13019break) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* renamed from: package, reason: not valid java name */
    private void m14480package() {
        this.f13030throw = m14473extends(67, 0.0f, 1.0f);
        ValueAnimator valueAnimatorM14473extends = m14473extends(50, 1.0f, 0.0f);
        this.f13028super = valueAnimatorM14473extends;
        valueAnimatorM14473extends.addListener(new Cbreak());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public boolean m14481private() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f13021catch;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public void m14484static(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (m14464abstract(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.f13047do.getBoxBackgroundMode();
        MaterialShapeDrawable boxBackground = this.f13047do.getBoxBackground();
        int iM6679new = qx0.m6679new(autoCompleteTextView, R.attr.colorControlHighlight);
        int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            m14490throws(autoCompleteTextView, iM6679new, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            m14487switch(autoCompleteTextView, iM6679new, iArr, boxBackground);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public void m14485strictfp(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (f13018while) {
            int boxBackgroundMode = this.f13047do.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f13023const);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f13022class);
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private void m14487switch(@NonNull AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        int boxBackgroundColor = this.f13047do.getBoxBackgroundColor();
        int[] iArr2 = {qx0.m6677goto(i, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f13018while) {
            ViewCompat.setBackground(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), materialShapeDrawable, materialShapeDrawable));
            return;
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable2.z(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable, materialShapeDrawable2});
        int paddingStart = ViewCompat.getPaddingStart(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
        ViewCompat.setPaddingRelative(autoCompleteTextView, paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m14490throws(@NonNull AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        LayerDrawable layerDrawable;
        int iM6679new = qx0.m6679new(autoCompleteTextView, R.attr.colorSurface);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int iM6677goto = qx0.m6677goto(i, iM6679new, 0.1f);
        materialShapeDrawable2.z(new ColorStateList(iArr, new int[]{iM6677goto, 0}));
        if (f13018while) {
            materialShapeDrawable2.setTint(iM6679new);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iM6677goto, iM6679new});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            materialShapeDrawable3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable});
        }
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: volatile, reason: not valid java name */
    public void m14492volatile(@NonNull AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new Cgoto(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f13031try);
        if (f13018while) {
            autoCompleteTextView.setOnDismissListener(new Cthis());
        }
    }

    @Override // com.google.android.material.textfield.Ctry
    /* renamed from: do */
    public void mo14458do() throws Resources.NotFoundException {
        float dimensionPixelOffset = this.f13049if.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f13049if.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f13049if.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable materialShapeDrawableM14475finally = m14475finally(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable materialShapeDrawableM14475finally2 = m14475finally(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f13023const = materialShapeDrawableM14475finally;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f13022class = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, materialShapeDrawableM14475finally);
        this.f13022class.addState(new int[0], materialShapeDrawableM14475finally2);
        this.f13047do.setEndIconDrawable(AppCompatResources.getDrawable(this.f13049if, f13018while ? R.drawable.mtrl_dropdown_arrow : R.drawable.mtrl_ic_arrow_drop_down));
        TextInputLayout textInputLayout = this.f13047do;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        this.f13047do.setEndIconOnClickListener(new Celse());
        this.f13047do.addOnEditTextAttachedListener(this.f13024else);
        this.f13047do.addOnEndIconChangedListener(this.f13026goto);
        m14480package();
        this.f13025final = (AccessibilityManager) this.f13049if.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.Ctry
    /* renamed from: if, reason: not valid java name */
    public boolean mo14494if(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.Ctry
    /* renamed from: new, reason: not valid java name */
    public boolean mo14495new() {
        return true;
    }
}
