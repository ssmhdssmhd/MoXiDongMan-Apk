package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v4.sx0;
import android.support.v4.w1;
import android.support.v4.z1;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.material.textfield.case, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccase {

    /* renamed from: default, reason: not valid java name */
    public static final int f12950default = 1;

    /* renamed from: extends, reason: not valid java name */
    public static final int f12951extends = 2;

    /* renamed from: finally, reason: not valid java name */
    private static final int f12952finally = 0;

    /* renamed from: package, reason: not valid java name */
    private static final int f12953package = 1;

    /* renamed from: private, reason: not valid java name */
    private static final int f12954private = 2;

    /* renamed from: static, reason: not valid java name */
    private static final int f12955static = 217;

    /* renamed from: switch, reason: not valid java name */
    private static final int f12956switch = 167;

    /* renamed from: throws, reason: not valid java name */
    public static final int f12957throws = 0;

    /* renamed from: break, reason: not valid java name */
    @Nullable
    private CharSequence f12958break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private Animator f12959case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f12960catch;

    /* renamed from: class, reason: not valid java name */
    @Nullable
    private TextView f12961class;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private CharSequence f12962const;

    /* renamed from: do, reason: not valid java name */
    private final Context f12963do;

    /* renamed from: else, reason: not valid java name */
    private final float f12964else;

    /* renamed from: final, reason: not valid java name */
    private int f12965final;

    /* renamed from: for, reason: not valid java name */
    private LinearLayout f12966for;

    /* renamed from: goto, reason: not valid java name */
    private int f12967goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final TextInputLayout f12968if;

    /* renamed from: import, reason: not valid java name */
    @Nullable
    private TextView f12969import;

    /* renamed from: native, reason: not valid java name */
    private int f12970native;

    /* renamed from: new, reason: not valid java name */
    private int f12971new;

    /* renamed from: public, reason: not valid java name */
    @Nullable
    private ColorStateList f12972public;

    /* renamed from: return, reason: not valid java name */
    private Typeface f12973return;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private ColorStateList f12974super;

    /* renamed from: this, reason: not valid java name */
    private int f12975this;

    /* renamed from: throw, reason: not valid java name */
    private CharSequence f12976throw;

    /* renamed from: try, reason: not valid java name */
    private FrameLayout f12977try;

    /* renamed from: while, reason: not valid java name */
    private boolean f12978while;

    /* renamed from: com.google.android.material.textfield.case$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f12979do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f12980for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ TextView f12981if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ TextView f12982new;

        public Cdo(int i, TextView textView, int i2, TextView textView2) {
            this.f12979do = i;
            this.f12981if = textView;
            this.f12980for = i2;
            this.f12982new = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Ccase.this.f12967goto = this.f12979do;
            Ccase.this.f12959case = null;
            TextView textView = this.f12981if;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f12980for == 1 && Ccase.this.f12961class != null) {
                    Ccase.this.f12961class.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f12982new;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f12982new.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f12982new;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public Ccase(@NonNull TextInputLayout textInputLayout) {
        this.f12963do = textInputLayout.getContext();
        this.f12968if = textInputLayout;
        this.f12964else = r0.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    private void a(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private ObjectAnimator m14410break(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f12964else, 0.0f);
        objectAnimatorOfFloat.setDuration(217L);
        objectAnimatorOfFloat.setInterpolator(w1.f7372new);
        return objectAnimatorOfFloat;
    }

    private void c(@NonNull ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m14411case() {
        return (this.f12966for == null || this.f12968if.getEditText() == null) ? false : true;
    }

    @Nullable
    /* renamed from: const, reason: not valid java name */
    private TextView m14412const(int i) {
        if (i == 1) {
            return this.f12961class;
        }
        if (i != 2) {
            return null;
        }
        return this.f12969import;
    }

    private boolean d(@Nullable TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f12968if) && this.f12968if.isEnabled() && !(this.f12975this == this.f12967goto && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: extends, reason: not valid java name */
    private boolean m14414extends(int i) {
        return (i != 1 || this.f12961class == null || TextUtils.isEmpty(this.f12958break)) ? false : true;
    }

    /* renamed from: finally, reason: not valid java name */
    private boolean m14415finally(int i) {
        return (i != 2 || this.f12969import == null || TextUtils.isEmpty(this.f12976throw)) ? false : true;
    }

    private void g(int i, int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f12959case = animatorSet;
            ArrayList arrayList = new ArrayList();
            m14417goto(arrayList, this.f12978while, this.f12969import, 2, i, i2);
            m14417goto(arrayList, this.f12960catch, this.f12961class, 1, i, i2);
            z1.m10010do(animatorSet, arrayList);
            animatorSet.addListener(new Cdo(i2, m14412const(i), i, m14412const(i2)));
            animatorSet.start();
        } else {
            m14420strictfp(i, i2);
        }
        this.f12968if.S();
        this.f12968if.V(z);
        this.f12968if.f0();
    }

    /* renamed from: goto, reason: not valid java name */
    private void m14417goto(@NonNull List<Animator> list, boolean z, @Nullable TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            list.add(m14421this(textView, i3 == i));
            if (i3 == i) {
                list.add(m14410break(textView));
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    private int m14419return(boolean z, @DimenRes int i, int i2) {
        return z ? this.f12963do.getResources().getDimensionPixelSize(i) : i2;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m14420strictfp(int i, int i2) {
        TextView textViewM14412const;
        TextView textViewM14412const2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (textViewM14412const2 = m14412const(i2)) != null) {
            textViewM14412const2.setVisibility(0);
            textViewM14412const2.setAlpha(1.0f);
        }
        if (i != 0 && (textViewM14412const = m14412const(i)) != null) {
            textViewM14412const.setVisibility(4);
            if (i == 1) {
                textViewM14412const.setText((CharSequence) null);
            }
        }
        this.f12967goto = i2;
    }

    /* renamed from: this, reason: not valid java name */
    private ObjectAnimator m14421this(TextView textView, boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(167L);
        objectAnimatorOfFloat.setInterpolator(w1.f7369do);
        return objectAnimatorOfFloat;
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m14422abstract() {
        return this.f12978while;
    }

    public void b(Typeface typeface) {
        if (typeface != this.f12973return) {
            this.f12973return = typeface;
            a(this.f12961class, typeface);
            a(this.f12969import, typeface);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m14423catch() {
        return m14414extends(this.f12967goto);
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m14424class() {
        return m14414extends(this.f12975this);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m14425continue(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f12966for == null) {
            return;
        }
        if (!m14435package(i) || (frameLayout = this.f12977try) == null) {
            this.f12966for.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f12971new - 1;
        this.f12971new = i2;
        c(this.f12966for, i2);
    }

    /* renamed from: default, reason: not valid java name */
    public void m14426default() {
        m14427else();
        int i = this.f12967goto;
        if (i == 2) {
            this.f12975this = 0;
        }
        g(i, this.f12975this, d(this.f12969import, null));
    }

    public void e(CharSequence charSequence) {
        m14427else();
        this.f12958break = charSequence;
        this.f12961class.setText(charSequence);
        int i = this.f12967goto;
        if (i != 1) {
            this.f12975this = 1;
        }
        g(i, this.f12975this, d(this.f12961class, charSequence));
    }

    /* renamed from: else, reason: not valid java name */
    public void m14427else() {
        Animator animator = this.f12959case;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void f(CharSequence charSequence) {
        m14427else();
        this.f12976throw = charSequence;
        this.f12969import.setText(charSequence);
        int i = this.f12967goto;
        if (i != 2) {
            this.f12975this = 2;
        }
        g(i, this.f12975this, d(this.f12969import, charSequence));
    }

    @Nullable
    /* renamed from: final, reason: not valid java name */
    public CharSequence m14428final() {
        return this.f12962const;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m14429implements(@StyleRes int i) {
        this.f12970native = i;
        TextView textView = this.f12969import;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public CharSequence m14430import() {
        return this.f12976throw;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m14431instanceof(boolean z) {
        if (this.f12978while == z) {
            return;
        }
        m14427else();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f12963do);
            this.f12969import = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f12969import.setTextAlignment(5);
            }
            Typeface typeface = this.f12973return;
            if (typeface != null) {
                this.f12969import.setTypeface(typeface);
            }
            this.f12969import.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f12969import, 1);
            m14429implements(this.f12970native);
            m14442synchronized(this.f12972public);
            m14434new(this.f12969import, 1);
        } else {
            m14426default();
            m14425continue(this.f12969import, 1);
            this.f12969import = null;
            this.f12968if.S();
            this.f12968if.f0();
        }
        this.f12978while = z;
    }

    /* renamed from: interface, reason: not valid java name */
    public void m14432interface(boolean z) {
        if (this.f12960catch == z) {
            return;
        }
        m14427else();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f12963do);
            this.f12961class = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f12961class.setTextAlignment(5);
            }
            Typeface typeface = this.f12973return;
            if (typeface != null) {
                this.f12961class.setTypeface(typeface);
            }
            m14437protected(this.f12965final);
            m14445transient(this.f12974super);
            m14447volatile(this.f12962const);
            this.f12961class.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f12961class, 1);
            m14434new(this.f12961class, 0);
        } else {
            m14444throws();
            m14425continue(this.f12961class, 0);
            this.f12961class = null;
            this.f12968if.S();
            this.f12968if.f0();
        }
        this.f12960catch = z;
    }

    @Nullable
    /* renamed from: native, reason: not valid java name */
    public ColorStateList m14433native() {
        TextView textView = this.f12969import;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public void m14434new(TextView textView, int i) {
        if (this.f12966for == null && this.f12977try == null) {
            LinearLayout linearLayout = new LinearLayout(this.f12963do);
            this.f12966for = linearLayout;
            linearLayout.setOrientation(0);
            this.f12968if.addView(this.f12966for, -1, -2);
            this.f12977try = new FrameLayout(this.f12963do);
            this.f12966for.addView(this.f12977try, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f12968if.getEditText() != null) {
                m14446try();
            }
        }
        if (m14435package(i)) {
            this.f12977try.setVisibility(0);
            this.f12977try.addView(textView);
        } else {
            this.f12966for.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f12966for.setVisibility(0);
        this.f12971new++;
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m14435package(int i) {
        return i == 0 || i == 1;
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m14436private() {
        return this.f12960catch;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m14437protected(@StyleRes int i) {
        this.f12965final = i;
        TextView textView = this.f12961class;
        if (textView != null) {
            this.f12968if.E(textView, i);
        }
    }

    @ColorInt
    /* renamed from: public, reason: not valid java name */
    public int m14438public() {
        TextView textView = this.f12969import;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m14439static() {
        return m14415finally(this.f12967goto);
    }

    @Nullable
    /* renamed from: super, reason: not valid java name */
    public CharSequence m14440super() {
        return this.f12958break;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m14441switch() {
        return m14415finally(this.f12975this);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m14442synchronized(@Nullable ColorStateList colorStateList) {
        this.f12972public = colorStateList;
        TextView textView = this.f12969import;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    @ColorInt
    /* renamed from: throw, reason: not valid java name */
    public int m14443throw() {
        TextView textView = this.f12961class;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m14444throws() {
        this.f12958break = null;
        m14427else();
        if (this.f12967goto == 1) {
            if (!this.f12978while || TextUtils.isEmpty(this.f12976throw)) {
                this.f12975this = 0;
            } else {
                this.f12975this = 2;
            }
        }
        g(this.f12967goto, this.f12975this, d(this.f12961class, null));
    }

    /* renamed from: transient, reason: not valid java name */
    public void m14445transient(@Nullable ColorStateList colorStateList) {
        this.f12974super = colorStateList;
        TextView textView = this.f12961class;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: try, reason: not valid java name */
    public void m14446try() {
        if (m14411case()) {
            EditText editText = this.f12968if.getEditText();
            boolean zM7650else = sx0.m7650else(this.f12963do);
            LinearLayout linearLayout = this.f12966for;
            int i = R.dimen.material_helper_text_font_1_3_padding_horizontal;
            ViewCompat.setPaddingRelative(linearLayout, m14419return(zM7650else, i, ViewCompat.getPaddingStart(editText)), m14419return(zM7650else, R.dimen.material_helper_text_font_1_3_padding_top, this.f12963do.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top)), m14419return(zM7650else, i, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m14447volatile(@Nullable CharSequence charSequence) {
        this.f12962const = charSequence;
        TextView textView = this.f12961class;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    @Nullable
    /* renamed from: while, reason: not valid java name */
    public ColorStateList m14448while() {
        TextView textView = this.f12961class;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }
}
