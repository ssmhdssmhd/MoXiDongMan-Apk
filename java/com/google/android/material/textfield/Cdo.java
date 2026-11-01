package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.support.v4.w1;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: com.google.android.material.textfield.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo extends com.google.android.material.textfield.Ctry {

    /* renamed from: break, reason: not valid java name */
    private static final int f12984break = 100;

    /* renamed from: catch, reason: not valid java name */
    private static final int f12985catch = 150;

    /* renamed from: class, reason: not valid java name */
    private static final float f12986class = 0.8f;

    /* renamed from: case, reason: not valid java name */
    private final TextInputLayout.OnEditTextAttachedListener f12987case;

    /* renamed from: else, reason: not valid java name */
    private final TextInputLayout.OnEndIconChangedListener f12988else;

    /* renamed from: goto, reason: not valid java name */
    private AnimatorSet f12989goto;

    /* renamed from: new, reason: not valid java name */
    private final TextWatcher f12990new;

    /* renamed from: this, reason: not valid java name */
    private ValueAnimator f12991this;

    /* renamed from: try, reason: not valid java name */
    private final View.OnFocusChangeListener f12992try;

    /* renamed from: com.google.android.material.textfield.do$case, reason: invalid class name */
    public class Ccase extends AnimatorListenerAdapter {
        public Ccase() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Cdo.this.f13047do.setEndIconVisible(true);
        }
    }

    /* renamed from: com.google.android.material.textfield.do$do, reason: invalid class name and collision with other inner class name */
    public class C0066do implements TextWatcher {
        public C0066do() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            if (Cdo.this.f13047do.getSuffixText() != null) {
                return;
            }
            Cdo cdo = Cdo.this;
            cdo.m14456this(cdo.f13047do.hasFocus() && Cdo.m14452class(editable));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.google.android.material.textfield.do$else, reason: invalid class name */
    public class Celse extends AnimatorListenerAdapter {
        public Celse() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Cdo.this.f13047do.setEndIconVisible(false);
        }
    }

    /* renamed from: com.google.android.material.textfield.do$for, reason: invalid class name */
    public class Cfor implements TextInputLayout.OnEditTextAttachedListener {
        public Cfor() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(editText.hasFocus() && Cdo.m14452class(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(Cdo.this.f12992try);
            editText.removeTextChangedListener(Cdo.this.f12990new);
            editText.addTextChangedListener(Cdo.this.f12990new);
        }
    }

    /* renamed from: com.google.android.material.textfield.do$goto, reason: invalid class name */
    public class Cgoto implements ValueAnimator.AnimatorUpdateListener {
        public Cgoto() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            Cdo.this.f13048for.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.do$if, reason: invalid class name */
    public class Cif implements View.OnFocusChangeListener {
        public Cif() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            Cdo.this.m14456this((TextUtils.isEmpty(((EditText) view).getText()) ^ true) && z);
        }
    }

    /* renamed from: com.google.android.material.textfield.do$new, reason: invalid class name */
    public class Cnew implements TextInputLayout.OnEndIconChangedListener {

        /* renamed from: com.google.android.material.textfield.do$new$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0067do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ EditText f13000do;

            public RunnableC0067do(EditText editText) {
                this.f13000do = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f13000do.removeTextChangedListener(Cdo.this.f12990new);
            }
        }

        public Cnew() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new RunnableC0067do(editText));
            if (editText.getOnFocusChangeListener() == Cdo.this.f12992try) {
                editText.setOnFocusChangeListener(null);
            }
        }
    }

    /* renamed from: com.google.android.material.textfield.do$this, reason: invalid class name */
    public class Cthis implements ValueAnimator.AnimatorUpdateListener {
        public Cthis() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cdo.this.f13048for.setScaleX(fFloatValue);
            Cdo.this.f13048for.setScaleY(fFloatValue);
        }
    }

    /* renamed from: com.google.android.material.textfield.do$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = Cdo.this.f13047do.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            Cdo.this.f13047do.t();
        }
    }

    public Cdo(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f12990new = new C0066do();
        this.f12992try = new Cif();
        this.f12987case = new Cfor();
        this.f12988else = new Cnew();
    }

    /* renamed from: break, reason: not valid java name */
    private ValueAnimator m14449break(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(w1.f7369do);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.addUpdateListener(new Cgoto());
        return valueAnimatorOfFloat;
    }

    /* renamed from: catch, reason: not valid java name */
    private ValueAnimator m14451catch() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(w1.f7372new);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new Cthis());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static boolean m14452class(@NonNull Editable editable) {
        return editable.length() > 0;
    }

    /* renamed from: const, reason: not valid java name */
    private void m14453const() {
        ValueAnimator valueAnimatorM14451catch = m14451catch();
        ValueAnimator valueAnimatorM14449break = m14449break(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f12989goto = animatorSet;
        animatorSet.playTogether(valueAnimatorM14451catch, valueAnimatorM14449break);
        this.f12989goto.addListener(new Ccase());
        ValueAnimator valueAnimatorM14449break2 = m14449break(1.0f, 0.0f);
        this.f12991this = valueAnimatorM14449break2;
        valueAnimatorM14449break2.addListener(new Celse());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public void m14456this(boolean z) {
        boolean z2 = this.f13047do.a() == z;
        if (z && !this.f12989goto.isRunning()) {
            this.f12991this.cancel();
            this.f12989goto.start();
            if (z2) {
                this.f12989goto.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.f12989goto.cancel();
        this.f12991this.start();
        if (z2) {
            this.f12991this.end();
        }
    }

    @Override // com.google.android.material.textfield.Ctry
    /* renamed from: do, reason: not valid java name */
    public void mo14458do() {
        this.f13047do.setEndIconDrawable(AppCompatResources.getDrawable(this.f13049if, R.drawable.mtrl_ic_cancel));
        TextInputLayout textInputLayout = this.f13047do;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        this.f13047do.setEndIconOnClickListener(new Ctry());
        this.f13047do.addOnEditTextAttachedListener(this.f12987case);
        this.f13047do.addOnEndIconChangedListener(this.f12988else);
        m14453const();
    }

    @Override // com.google.android.material.textfield.Ctry
    /* renamed from: for, reason: not valid java name */
    public void mo14459for(boolean z) {
        if (this.f13047do.getSuffixText() == null) {
            return;
        }
        m14456this(z);
    }
}
