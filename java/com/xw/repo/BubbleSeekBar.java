package com.xw.repo;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.material.badge.BadgeDrawable;
import com.xw.repo.bubbleseekbar.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;

/* loaded from: classes2.dex */
public class BubbleSeekBar extends View {
    public static final int x = -1;
    private boolean a;

    /* renamed from: abstract, reason: not valid java name */
    private boolean f22771abstract;
    private int b;

    /* renamed from: break, reason: not valid java name */
    private int f22772break;
    private boolean c;

    /* renamed from: case, reason: not valid java name */
    private int f22773case;

    /* renamed from: catch, reason: not valid java name */
    private int f22774catch;

    /* renamed from: class, reason: not valid java name */
    private int f22775class;

    /* renamed from: const, reason: not valid java name */
    private boolean f22776const;

    /* renamed from: continue, reason: not valid java name */
    private boolean f22777continue;
    private SparseArray<String> d;

    /* renamed from: default, reason: not valid java name */
    private boolean f22778default;

    /* renamed from: do, reason: not valid java name */
    private float f22779do;
    private float e;

    /* renamed from: else, reason: not valid java name */
    private int f22780else;

    /* renamed from: extends, reason: not valid java name */
    private boolean f22781extends;
    private boolean f;

    /* renamed from: final, reason: not valid java name */
    private boolean f22782final;

    /* renamed from: finally, reason: not valid java name */
    private long f22783finally;

    /* renamed from: for, reason: not valid java name */
    private float f22784for;
    private OnProgressChangedListener g;

    /* renamed from: goto, reason: not valid java name */
    private int f22785goto;
    private float h;
    private float i;

    /* renamed from: if, reason: not valid java name */
    private float f22786if;

    /* renamed from: implements, reason: not valid java name */
    private float f22787implements;

    /* renamed from: import, reason: not valid java name */
    private int f22788import;

    /* renamed from: instanceof, reason: not valid java name */
    private float f22789instanceof;

    /* renamed from: interface, reason: not valid java name */
    private int f22790interface;
    private Paint j;
    private Rect k;
    private WindowManager l;
    private Cthis m;
    private int n;

    /* renamed from: native, reason: not valid java name */
    private int f22791native;

    /* renamed from: new, reason: not valid java name */
    private boolean f22792new;
    private float o;
    private float p;

    /* renamed from: package, reason: not valid java name */
    private boolean f22793package;

    /* renamed from: private, reason: not valid java name */
    private long f22794private;

    /* renamed from: protected, reason: not valid java name */
    private float f22795protected;

    /* renamed from: public, reason: not valid java name */
    private boolean f22796public;
    private float q;
    private WindowManager.LayoutParams r;

    /* renamed from: return, reason: not valid java name */
    private int f22797return;
    private int[] s;

    /* renamed from: static, reason: not valid java name */
    private int f22798static;

    /* renamed from: strictfp, reason: not valid java name */
    private int f22799strictfp;

    /* renamed from: super, reason: not valid java name */
    private boolean f22800super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f22801switch;

    /* renamed from: synchronized, reason: not valid java name */
    private float f22802synchronized;
    private boolean t;

    /* renamed from: this, reason: not valid java name */
    private int f22803this;

    /* renamed from: throw, reason: not valid java name */
    private int f22804throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f22805throws;

    /* renamed from: transient, reason: not valid java name */
    private float f22806transient;

    /* renamed from: try, reason: not valid java name */
    private int f22807try;
    private float u;
    private com.xw.repo.Cdo v;

    /* renamed from: volatile, reason: not valid java name */
    private int f22808volatile;
    public float w;

    /* renamed from: while, reason: not valid java name */
    private int f22809while;

    public interface CustomSectionTextArray {
        @NonNull
        SparseArray<String> onCustomize(int i, @NonNull SparseArray<String> sparseArray);
    }

    public interface OnProgressChangedListener {
        void getProgressOnActionUp(BubbleSeekBar bubbleSeekBar, int i, float f);

        void getProgressOnFinally(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z);

        void onProgressChanged(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z);
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$break, reason: invalid class name */
    public static abstract class Cbreak implements OnProgressChangedListener {
        @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
        public void getProgressOnActionUp(BubbleSeekBar bubbleSeekBar, int i, float f) {
        }

        @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
        public void getProgressOnFinally(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z) {
        }

        @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
        public void onProgressChanged(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z) {
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$case, reason: invalid class name */
    public class Ccase extends AnimatorListenerAdapter {
        public Ccase() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (!BubbleSeekBar.this.f22771abstract && !BubbleSeekBar.this.f22793package) {
                BubbleSeekBar.this.m27233protected();
            }
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f22784for = bubbleSeekBar.m27232private();
            BubbleSeekBar.this.a = false;
            BubbleSeekBar.this.t = true;
            BubbleSeekBar.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!BubbleSeekBar.this.f22771abstract && !BubbleSeekBar.this.f22793package) {
                BubbleSeekBar.this.m27233protected();
            }
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f22784for = bubbleSeekBar.m27232private();
            BubbleSeekBar.this.a = false;
            BubbleSeekBar.this.t = true;
            BubbleSeekBar.this.invalidate();
            if (BubbleSeekBar.this.g != null) {
                OnProgressChangedListener onProgressChangedListener = BubbleSeekBar.this.g;
                BubbleSeekBar bubbleSeekBar2 = BubbleSeekBar.this;
                onProgressChangedListener.getProgressOnFinally(bubbleSeekBar2, bubbleSeekBar2.getProgress(), BubbleSeekBar.this.getProgressFloat(), true);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.xw.repo.BubbleSeekBar$catch, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Ccatch {
        public static final int n6 = 0;
        public static final int o6 = 1;
        public static final int p6 = 2;
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.requestLayout();
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$else, reason: invalid class name */
    public class Celse extends AnimatorListenerAdapter {
        public Celse() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BubbleSeekBar.this.l.addView(BubbleSeekBar.this.m, BubbleSeekBar.this.r);
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {
        public Cfor() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            BubbleSeekBar.this.a = false;
            BubbleSeekBar.this.invalidate();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BubbleSeekBar.this.a = false;
            BubbleSeekBar.this.invalidate();
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$goto, reason: invalid class name */
    public class Cgoto implements Runnable {
        public Cgoto() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.c();
            BubbleSeekBar.this.c = true;
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.t = false;
            BubbleSeekBar.this.m27219extends();
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: com.xw.repo.BubbleSeekBar$new$do, reason: invalid class name */
        public class Cdo extends AnimatorListenerAdapter {
            public Cdo() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (!BubbleSeekBar.this.f22793package) {
                    BubbleSeekBar.this.m27233protected();
                }
                BubbleSeekBar.this.a = false;
                BubbleSeekBar.this.invalidate();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!BubbleSeekBar.this.f22793package) {
                    BubbleSeekBar.this.m27233protected();
                }
                BubbleSeekBar.this.a = false;
                BubbleSeekBar.this.invalidate();
            }
        }

        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BubbleSeekBar.this.m.animate().alpha(BubbleSeekBar.this.f22793package ? 1.0f : 0.0f).setDuration(BubbleSeekBar.this.f22783finally).setListener(new Cdo()).start();
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$this, reason: invalid class name */
    public class Cthis extends View {

        /* renamed from: do, reason: not valid java name */
        private Paint f22819do;

        /* renamed from: for, reason: not valid java name */
        private RectF f22820for;

        /* renamed from: if, reason: not valid java name */
        private Path f22821if;

        /* renamed from: new, reason: not valid java name */
        private Rect f22822new;

        /* renamed from: try, reason: not valid java name */
        private String f22823try;

        public Cthis(BubbleSeekBar bubbleSeekBar, Context context) {
            this(bubbleSeekBar, context, null);
        }

        /* renamed from: do, reason: not valid java name */
        public void m27249do(String str) {
            if (str == null || this.f22823try.equals(str)) {
                return;
            }
            this.f22823try = str;
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.f22821if.reset();
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() - (BubbleSeekBar.this.n / 3.0f);
            this.f22821if.moveTo(measuredWidth, measuredHeight);
            double measuredWidth2 = getMeasuredWidth() / 2.0f;
            double dSqrt = Math.sqrt(3.0d) / 2.0d;
            double d = BubbleSeekBar.this.n;
            Double.isNaN(d);
            Double.isNaN(measuredWidth2);
            float f = (float) (measuredWidth2 - (dSqrt * d));
            float f2 = BubbleSeekBar.this.n * 1.5f;
            this.f22821if.quadTo(f - com.xw.repo.Cif.m27289do(2), f2 - com.xw.repo.Cif.m27289do(2), f, f2);
            this.f22821if.arcTo(this.f22820for, 150.0f, 240.0f);
            double measuredWidth3 = getMeasuredWidth() / 2.0f;
            double dSqrt2 = Math.sqrt(3.0d) / 2.0d;
            double d2 = BubbleSeekBar.this.n;
            Double.isNaN(d2);
            Double.isNaN(measuredWidth3);
            this.f22821if.quadTo(((float) (measuredWidth3 + (dSqrt2 * d2))) + com.xw.repo.Cif.m27289do(2), f2 - com.xw.repo.Cif.m27289do(2), measuredWidth, measuredHeight);
            this.f22821if.close();
            this.f22819do.setColor(BubbleSeekBar.this.f22799strictfp);
            canvas.drawPath(this.f22821if, this.f22819do);
            this.f22819do.setTextSize(BubbleSeekBar.this.f22808volatile);
            this.f22819do.setColor(BubbleSeekBar.this.f22790interface);
            Paint paint = this.f22819do;
            String str = this.f22823try;
            paint.getTextBounds(str, 0, str.length(), this.f22822new);
            Paint.FontMetrics fontMetrics = this.f22819do.getFontMetrics();
            float f3 = BubbleSeekBar.this.n;
            float f4 = fontMetrics.descent;
            canvas.drawText(this.f22823try, getMeasuredWidth() / 2.0f, (f3 + ((f4 - fontMetrics.ascent) / 2.0f)) - f4, this.f22819do);
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            setMeasuredDimension(BubbleSeekBar.this.n * 3, BubbleSeekBar.this.n * 3);
            this.f22820for.set((getMeasuredWidth() / 2.0f) - BubbleSeekBar.this.n, 0.0f, (getMeasuredWidth() / 2.0f) + BubbleSeekBar.this.n, BubbleSeekBar.this.n * 2);
        }

        public Cthis(BubbleSeekBar bubbleSeekBar, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public Cthis(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f22823try = "";
            Paint paint = new Paint();
            this.f22819do = paint;
            paint.setAntiAlias(true);
            this.f22819do.setTextAlign(Paint.Align.CENTER);
            this.f22821if = new Path();
            this.f22820for = new RectF();
            this.f22822new = new Rect();
        }
    }

    /* renamed from: com.xw.repo.BubbleSeekBar$try, reason: invalid class name */
    public class Ctry implements ValueAnimator.AnimatorUpdateListener {
        public Ctry() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BubbleSeekBar.this.f22787implements = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BubbleSeekBar bubbleSeekBar = BubbleSeekBar.this;
            bubbleSeekBar.f22784for = bubbleSeekBar.m27232private();
            if (BubbleSeekBar.this.f22771abstract || BubbleSeekBar.this.m.getParent() == null) {
                BubbleSeekBar.this.b();
            } else {
                BubbleSeekBar bubbleSeekBar2 = BubbleSeekBar.this;
                bubbleSeekBar2.q = bubbleSeekBar2.m27231package();
                BubbleSeekBar.this.r.x = (int) (BubbleSeekBar.this.q + 0.5f);
                BubbleSeekBar.this.l.updateViewLayout(BubbleSeekBar.this.m, BubbleSeekBar.this.r);
                BubbleSeekBar.this.m.m27249do(BubbleSeekBar.this.f22801switch ? String.valueOf(BubbleSeekBar.this.getProgressFloat()) : String.valueOf(BubbleSeekBar.this.getProgress()));
            }
            BubbleSeekBar.this.invalidate();
            if (BubbleSeekBar.this.g != null) {
                OnProgressChangedListener onProgressChangedListener = BubbleSeekBar.this.g;
                BubbleSeekBar bubbleSeekBar3 = BubbleSeekBar.this;
                onProgressChangedListener.onProgressChanged(bubbleSeekBar3, bubbleSeekBar3.getProgress(), BubbleSeekBar.this.getProgressFloat(), true);
            }
        }
    }

    public BubbleSeekBar(Context context) {
        this(context, null);
    }

    private void a() {
        Window window;
        getLocationInWindow(this.s);
        Object parent = getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            if (view.getMeasuredWidth() > 0) {
                int[] iArr = this.s;
                iArr[0] = iArr[0] % view.getMeasuredWidth();
            }
        }
        if (this.f22777continue) {
            this.o = (this.s[0] + this.i) - (this.m.getMeasuredWidth() / 2.0f);
        } else {
            this.o = (this.s[0] + this.h) - (this.m.getMeasuredWidth() / 2.0f);
        }
        this.q = m27231package();
        float measuredHeight = this.s[1] - this.m.getMeasuredHeight();
        this.p = measuredHeight;
        this.p = measuredHeight - com.xw.repo.Cif.m27289do(24);
        if (com.xw.repo.Cif.m27291if()) {
            this.p -= com.xw.repo.Cif.m27289do(4);
        }
        Context context = getContext();
        if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (window.getAttributes().flags & 1024) == 0) {
            return;
        }
        Resources system = Resources.getSystem();
        this.p += system.getDimensionPixelSize(system.getIdentifier(com.gyf.immersionbar.Cnew.f18143for, "dimen", "android"));
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m27210abstract() {
        String strM27245volatile;
        String strM27245volatile2;
        this.j.setTextSize(this.f22808volatile);
        if (this.f22801switch) {
            strM27245volatile = m27245volatile(this.f22777continue ? this.f22786if : this.f22779do);
        } else {
            strM27245volatile = this.f22777continue ? this.f22792new ? m27245volatile(this.f22786if) : String.valueOf((int) this.f22786if) : this.f22792new ? m27245volatile(this.f22779do) : String.valueOf((int) this.f22779do);
        }
        this.j.getTextBounds(strM27245volatile, 0, strM27245volatile.length(), this.k);
        int iWidth = (this.k.width() + (this.b * 2)) >> 1;
        if (this.f22801switch) {
            strM27245volatile2 = m27245volatile(this.f22777continue ? this.f22779do : this.f22786if);
        } else {
            strM27245volatile2 = this.f22777continue ? this.f22792new ? m27245volatile(this.f22779do) : String.valueOf((int) this.f22779do) : this.f22792new ? m27245volatile(this.f22786if) : String.valueOf((int) this.f22786if);
        }
        this.j.getTextBounds(strM27245volatile2, 0, strM27245volatile2.length(), this.k);
        int iWidth2 = (this.k.width() + (this.b * 2)) >> 1;
        int iM27289do = com.xw.repo.Cif.m27289do(14);
        this.n = iM27289do;
        this.n = Math.max(iM27289do, Math.max(iWidth, iWidth2)) + this.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float b() {
        float f = this.f22784for;
        if (!this.f22781extends || !this.f) {
            return f;
        }
        float f2 = this.f22806transient / 2.0f;
        if (this.f22805throws) {
            if (f == this.f22779do || f == this.f22786if) {
                return f;
            }
            for (int i = 0; i <= this.f22775class; i++) {
                float f3 = this.f22806transient;
                float f4 = i * f3;
                if (f4 < f && f4 + f3 >= f) {
                    return f2 + f4 > f ? f4 : f4 + f3;
                }
            }
        }
        float f5 = this.u;
        if (f >= f5) {
            if (f < f2 + f5) {
                return f5;
            }
            float f6 = f5 + this.f22806transient;
            this.u = f6;
            return f6;
        }
        if (f >= f5 - f2) {
            return f5;
        }
        float f7 = f5 - this.f22806transient;
        this.u = f7;
        return f7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Cthis cthis = this.m;
        if (cthis == null || cthis.getParent() != null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.r;
        layoutParams.x = (int) (this.q + 0.5f);
        layoutParams.y = (int) (this.p + 0.5f);
        this.m.setAlpha(0.0f);
        this.m.setVisibility(0);
        this.m.animate().alpha(1.0f).setDuration(this.f22805throws ? 0L : this.f22783finally).setListener(new Celse()).start();
        this.m.m27249do(this.f22801switch ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public void m27219extends() {
        int i = 0;
        float f = 0.0f;
        while (i <= this.f22775class) {
            float f2 = this.f22802synchronized;
            f = (i * f2) + this.h;
            float f3 = this.f22787implements;
            if (f <= f3 && f3 - f <= f2) {
                break;
            } else {
                i++;
            }
        }
        boolean z = BigDecimal.valueOf((double) this.f22787implements).setScale(1, 4).floatValue() == f;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = null;
        if (!z) {
            float f4 = this.f22787implements;
            float f5 = f4 - f;
            float f6 = this.f22802synchronized;
            valueAnimatorOfFloat = f5 <= f6 / 2.0f ? ValueAnimator.ofFloat(f4, f) : ValueAnimator.ofFloat(f4, ((i + 1) * f6) + this.h);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new Ctry());
        }
        if (!this.f22771abstract) {
            Cthis cthis = this.m;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = this.f22793package ? 1.0f : 0.0f;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(cthis, (Property<Cthis, Float>) property, fArr);
            if (z) {
                animatorSet.setDuration(this.f22783finally).play(objectAnimatorOfFloat);
            } else {
                animatorSet.setDuration(this.f22783finally).playTogether(valueAnimatorOfFloat, objectAnimatorOfFloat);
            }
        } else if (!z) {
            animatorSet.setDuration(this.f22783finally).playTogether(valueAnimatorOfFloat);
        }
        animatorSet.addListener(new Ccase());
        animatorSet.start();
    }

    /* renamed from: finally, reason: not valid java name */
    private float m27221finally(float f) {
        float f2 = this.h;
        if (f <= f2) {
            return f2;
        }
        float f3 = this.i;
        if (f >= f3) {
            return f3;
        }
        float f4 = 0.0f;
        int i = 0;
        while (i <= this.f22775class) {
            float f5 = this.f22802synchronized;
            f4 = (i * f5) + this.h;
            if (f4 <= f && f - f4 <= f5) {
                break;
            }
            i++;
        }
        float f6 = f - f4;
        float f7 = this.f22802synchronized;
        return f6 <= f7 / 2.0f ? f4 : ((i + 1) * f7) + this.h;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0052 A[PHI: r5
      0x0052: PHI (r5v3 float) = (r5v2 float), (r5v2 float), (r5v2 float), (r5v7 float) binds: [B:26:0x004d, B:27:0x004f, B:19:0x0030, B:25:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005d  */
    /* renamed from: implements, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m27225implements() {
        String strM27245volatile;
        int i = 0;
        boolean z = this.f22788import == 2;
        boolean z2 = this.f22791native > 1 && this.f22775class % 2 == 0;
        while (true) {
            int i2 = this.f22775class;
            if (i > i2) {
                return;
            }
            boolean z3 = this.f22777continue;
            float f = z3 ? this.f22786if - (this.f22806transient * i) : this.f22779do + (this.f22806transient * i);
            if (z) {
                if (!z2) {
                    SparseArray<String> sparseArray = this.d;
                    if (this.f22792new) {
                        strM27245volatile = ((int) f) + "";
                    } else {
                        strM27245volatile = m27245volatile(f);
                    }
                    sparseArray.put(i, strM27245volatile);
                } else if (i % this.f22791native == 0) {
                    f = z3 ? this.f22786if - (this.f22806transient * i) : this.f22779do + (this.f22806transient * i);
                    SparseArray<String> sparseArray2 = this.d;
                    if (this.f22792new) {
                    }
                    sparseArray2.put(i, strM27245volatile);
                }
            } else if (i == 0 || i == i2) {
            }
            i++;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private boolean m27227instanceof(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float f = (this.f22789instanceof / this.f22795protected) * (this.f22784for - this.f22779do);
        float f2 = this.f22777continue ? this.i - f : this.h + f;
        float measuredHeight = getMeasuredHeight() / 2.0f;
        return ((motionEvent.getX() - f2) * (motionEvent.getX() - f2)) + ((motionEvent.getY() - measuredHeight) * (motionEvent.getY() - measuredHeight)) <= (this.h + ((float) com.xw.repo.Cif.m27289do(8))) * (this.h + ((float) com.xw.repo.Cif.m27289do(8)));
    }

    /* renamed from: interface, reason: not valid java name */
    private float m27228interface(float f) {
        return BigDecimal.valueOf(f).setScale(1, 4).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public float m27231package() {
        return this.f22777continue ? this.o - ((this.f22789instanceof * (this.f22784for - this.f22779do)) / this.f22795protected) : this.o + ((this.f22789instanceof * (this.f22784for - this.f22779do)) / this.f22795protected);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public float m27232private() {
        float f;
        float f2;
        if (this.f22777continue) {
            f = ((this.i - this.f22787implements) * this.f22795protected) / this.f22789instanceof;
            f2 = this.f22779do;
        } else {
            f = ((this.f22787implements - this.h) * this.f22795protected) / this.f22789instanceof;
            f2 = this.f22779do;
        }
        return f + f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public void m27233protected() {
        Cthis cthis = this.m;
        if (cthis == null) {
            return;
        }
        cthis.setVisibility(8);
        if (this.m.getParent() != null) {
            this.l.removeViewImmediate(this.m);
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    private boolean m27239synchronized(MotionEvent motionEvent) {
        return isEnabled() && motionEvent.getX() >= ((float) getPaddingLeft()) && motionEvent.getX() <= ((float) (getMeasuredWidth() - getPaddingRight())) && motionEvent.getY() >= ((float) getPaddingTop()) && motionEvent.getY() <= ((float) (getMeasuredHeight() - getPaddingBottom()));
    }

    /* renamed from: transient, reason: not valid java name */
    private void m27243transient() {
        if (this.f22779do == this.f22786if) {
            this.f22779do = 0.0f;
            this.f22786if = 100.0f;
        }
        float f = this.f22779do;
        float f2 = this.f22786if;
        if (f > f2) {
            this.f22786if = f;
            this.f22779do = f2;
        }
        float f3 = this.f22784for;
        float f4 = this.f22779do;
        if (f3 < f4) {
            this.f22784for = f4;
        }
        float f5 = this.f22784for;
        float f6 = this.f22786if;
        if (f5 > f6) {
            this.f22784for = f6;
        }
        int i = this.f22773case;
        int i2 = this.f22807try;
        if (i < i2) {
            this.f22773case = i2 + com.xw.repo.Cif.m27289do(2);
        }
        int i3 = this.f22780else;
        int i4 = this.f22773case;
        if (i3 <= i4) {
            this.f22780else = i4 + com.xw.repo.Cif.m27289do(2);
        }
        int i5 = this.f22785goto;
        int i6 = this.f22773case;
        if (i5 <= i6) {
            this.f22785goto = i6 * 2;
        }
        if (this.f22775class <= 0) {
            this.f22775class = 10;
        }
        float f7 = this.f22786if - this.f22779do;
        this.f22795protected = f7;
        float f8 = f7 / this.f22775class;
        this.f22806transient = f8;
        if (f8 < 1.0f) {
            this.f22792new = true;
        }
        if (this.f22792new) {
            this.f22801switch = true;
        }
        int i7 = this.f22788import;
        if (i7 != -1) {
            this.f22800super = true;
        }
        if (this.f22800super) {
            if (i7 == -1) {
                this.f22788import = 0;
            }
            if (this.f22788import == 2) {
                this.f22776const = true;
            }
        }
        if (this.f22791native < 1) {
            this.f22791native = 1;
        }
        m27225implements();
        if (this.f22778default) {
            this.f22781extends = false;
            this.f22782final = false;
        }
        if (this.f22782final && !this.f22776const) {
            this.f22782final = false;
        }
        if (this.f22781extends) {
            float f9 = this.f22779do;
            this.u = f9;
            if (this.f22784for != f9) {
                this.u = this.f22806transient;
            }
            this.f22776const = true;
            this.f22782final = true;
        }
        if (this.f22771abstract) {
            this.f22793package = false;
        }
        if (this.f22793package) {
            setProgress(this.f22784for);
        }
        this.f22797return = (this.f22792new || this.f22781extends || (this.f22800super && this.f22788import == 2)) ? this.f22804throw : this.f22797return;
    }

    /* renamed from: volatile, reason: not valid java name */
    private String m27245volatile(float f) {
        return String.valueOf(m27228interface(f));
    }

    /* renamed from: continue, reason: not valid java name */
    public void m27247continue(com.xw.repo.Cdo cdo) {
        this.f22779do = cdo.f22833do;
        this.f22786if = cdo.f22840if;
        this.f22784for = cdo.f22838for;
        this.f22792new = cdo.f22844new;
        this.f22807try = cdo.f22857try;
        this.f22773case = cdo.f22827case;
        this.f22780else = cdo.f22834else;
        this.f22785goto = cdo.f22839goto;
        this.f22803this = cdo.f22854this;
        this.f22772break = cdo.f22826break;
        this.f22774catch = cdo.f22828catch;
        this.f22775class = cdo.f22829class;
        this.f22776const = cdo.f22830const;
        this.f22782final = cdo.f22836final;
        this.f22800super = cdo.f22852super;
        this.f22804throw = cdo.f22855throw;
        this.f22809while = cdo.f22859while;
        this.f22788import = cdo.f22841import;
        this.f22791native = cdo.f22843native;
        this.f22796public = cdo.f22848public;
        this.f22797return = cdo.f22849return;
        this.f22798static = cdo.f22850static;
        this.f22801switch = cdo.f22853switch;
        this.f22783finally = cdo.f22856throws;
        this.f22805throws = cdo.f22832default;
        this.f22778default = cdo.f22835extends;
        this.f22781extends = cdo.f22837finally;
        this.f22799strictfp = cdo.f22845package;
        this.f22808volatile = cdo.f22846private;
        this.f22790interface = cdo.f22825abstract;
        this.f22793package = cdo.f22831continue;
        this.f22794private = cdo.f22851strictfp;
        this.f22771abstract = cdo.f22858volatile;
        this.f22777continue = cdo.f22842interface;
        m27243transient();
        m27210abstract();
        OnProgressChangedListener onProgressChangedListener = this.g;
        if (onProgressChangedListener != null) {
            onProgressChangedListener.onProgressChanged(this, getProgress(), getProgressFloat(), false);
            this.g.getProgressOnFinally(this, getProgress(), getProgressFloat(), false);
        }
        this.v = null;
        requestLayout();
    }

    public com.xw.repo.Cdo getConfigBuilder() {
        if (this.v == null) {
            this.v = new com.xw.repo.Cdo(this);
        }
        com.xw.repo.Cdo cdo = this.v;
        cdo.f22833do = this.f22779do;
        cdo.f22840if = this.f22786if;
        cdo.f22838for = this.f22784for;
        cdo.f22844new = this.f22792new;
        cdo.f22857try = this.f22807try;
        cdo.f22827case = this.f22773case;
        cdo.f22834else = this.f22780else;
        cdo.f22839goto = this.f22785goto;
        cdo.f22854this = this.f22803this;
        cdo.f22826break = this.f22772break;
        cdo.f22828catch = this.f22774catch;
        cdo.f22829class = this.f22775class;
        cdo.f22830const = this.f22776const;
        cdo.f22836final = this.f22782final;
        cdo.f22852super = this.f22800super;
        cdo.f22855throw = this.f22804throw;
        cdo.f22859while = this.f22809while;
        cdo.f22841import = this.f22788import;
        cdo.f22843native = this.f22791native;
        cdo.f22848public = this.f22796public;
        cdo.f22849return = this.f22797return;
        cdo.f22850static = this.f22798static;
        cdo.f22853switch = this.f22801switch;
        cdo.f22856throws = this.f22783finally;
        cdo.f22832default = this.f22805throws;
        cdo.f22835extends = this.f22778default;
        cdo.f22837finally = this.f22781extends;
        cdo.f22845package = this.f22799strictfp;
        cdo.f22846private = this.f22808volatile;
        cdo.f22825abstract = this.f22790interface;
        cdo.f22831continue = this.f22793package;
        cdo.f22851strictfp = this.f22794private;
        cdo.f22858volatile = this.f22771abstract;
        cdo.f22842interface = this.f22777continue;
        return cdo;
    }

    public float getMax() {
        return this.f22786if;
    }

    public float getMin() {
        return this.f22779do;
    }

    public OnProgressChangedListener getOnProgressChangedListener() {
        return this.g;
    }

    public int getProgress() {
        return Math.round(b());
    }

    public float getProgressFloat() {
        return m27228interface(b());
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        m27233protected();
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x025d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float paddingLeft = getPaddingLeft();
        float measuredWidth = getMeasuredWidth() - getPaddingRight();
        float paddingTop = getPaddingTop() + this.f22785goto;
        if (this.f22800super) {
            this.j.setColor(this.f22809while);
            this.j.setTextSize(this.f22804throw);
            this.j.getTextBounds("0123456789", 0, 10, this.k);
            int i = this.f22788import;
            if (i == 0) {
                float fHeight = (this.k.height() / 2.0f) + paddingTop;
                String str = this.d.get(0);
                this.j.getTextBounds(str, 0, str.length(), this.k);
                canvas.drawText(str, (this.k.width() / 2.0f) + paddingLeft, fHeight, this.j);
                paddingLeft += this.k.width() + this.b;
                String str2 = this.d.get(this.f22775class);
                this.j.getTextBounds(str2, 0, str2.length(), this.k);
                canvas.drawText(str2, measuredWidth - ((this.k.width() + 0.5f) / 2.0f), fHeight, this.j);
                measuredWidth -= this.k.width() + this.b;
            } else if (i >= 1) {
                String str3 = this.d.get(0);
                this.j.getTextBounds(str3, 0, str3.length(), this.k);
                float fHeight2 = this.f22785goto + paddingTop + this.b + this.k.height();
                float f = this.h;
                if (this.f22788import == 1) {
                    canvas.drawText(str3, f, fHeight2, this.j);
                }
                String str4 = this.d.get(this.f22775class);
                this.j.getTextBounds(str4, 0, str4.length(), this.k);
                float f2 = this.i;
                if (this.f22788import == 1) {
                    canvas.drawText(str4, f2, fHeight2, this.j);
                }
                paddingLeft = f;
                measuredWidth = f2;
            }
        } else if (this.f22796public && this.f22788import == -1) {
            paddingLeft = this.h;
            measuredWidth = this.i;
        }
        boolean z = this.f22800super;
        if ((!z && !this.f22796public) || this.f22788import == 0) {
            int i2 = this.f22785goto;
            paddingLeft += i2;
            measuredWidth -= i2;
        }
        float f3 = paddingLeft;
        float f4 = measuredWidth;
        boolean z2 = z && this.f22788import == 2;
        if (z2 || this.f22776const) {
            this.j.setTextSize(this.f22804throw);
            this.j.getTextBounds("0123456789", 0, 10, this.k);
            float fHeight3 = this.k.height() + paddingTop + this.f22785goto + this.b;
            float fM27289do = (r13 - com.xw.repo.Cif.m27289do(2)) / 2.0f;
            float fAbs = this.f22777continue ? this.i - ((this.f22789instanceof / this.f22795protected) * Math.abs(this.f22784for - this.f22779do)) : this.h + ((this.f22789instanceof / this.f22795protected) * Math.abs(this.f22784for - this.f22779do));
            for (int i3 = 0; i3 <= this.f22775class; i3++) {
                float f5 = (i3 * this.f22802synchronized) + f3;
                if (this.f22777continue) {
                    this.j.setColor(f5 <= fAbs ? this.f22803this : this.f22772break);
                } else {
                    this.j.setColor(f5 <= fAbs ? this.f22772break : this.f22803this);
                }
                canvas.drawCircle(f5, paddingTop, fM27289do, this.j);
                if (z2) {
                    this.j.setColor(this.f22809while);
                    if (this.d.get(i3, null) != null) {
                        canvas.drawText(this.d.get(i3), f5, fHeight3, this.j);
                    }
                }
            }
        }
        boolean z3 = this.a;
        if (!z3 || this.f22793package) {
            if (this.f22777continue) {
                this.f22787implements = f4 - ((this.f22789instanceof / this.f22795protected) * (this.f22784for - this.f22779do));
            } else {
                this.f22787implements = ((this.f22789instanceof / this.f22795protected) * (this.f22784for - this.f22779do)) + f3;
            }
        }
        if (this.f22796public && !z3 && this.t) {
            this.j.setColor(this.f22798static);
            this.j.setTextSize(this.f22797return);
            this.j.getTextBounds("0123456789", 0, 10, this.k);
            float fHeight4 = this.k.height() + paddingTop + this.f22785goto + this.b;
            if (this.f22792new) {
                canvas.drawText(String.valueOf(getProgressFloat()), this.f22787implements, fHeight4, this.j);
            } else {
                if (this.f22801switch && this.f22788import == 1) {
                    float f6 = this.f22784for;
                    if (f6 == this.f22779do || f6 == this.f22786if) {
                    }
                }
                canvas.drawText(String.valueOf(getProgress()), this.f22787implements, fHeight4, this.j);
            }
        }
        this.j.setColor(this.f22772break);
        this.j.setStrokeWidth(this.f22773case);
        if (this.f22777continue) {
            canvas.drawLine(f4, paddingTop, this.f22787implements, paddingTop, this.j);
        } else {
            canvas.drawLine(f3, paddingTop, this.f22787implements, paddingTop, this.j);
        }
        this.j.setColor(this.f22803this);
        this.j.setStrokeWidth(this.f22807try);
        if (this.f22777continue) {
            canvas.drawLine(this.f22787implements, paddingTop, f3, paddingTop, this.j);
        } else {
            canvas.drawLine(this.f22787implements, paddingTop, f4, paddingTop, this.j);
        }
        this.j.setColor(this.f22774catch);
        canvas.drawCircle(this.f22787implements, paddingTop, this.a ? this.f22785goto : this.f22780else, this.j);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f22771abstract) {
            return;
        }
        a();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int iMax = this.f22785goto * 2;
        if (this.f22796public) {
            this.j.setTextSize(this.f22797return);
            this.j.getTextBounds("j", 0, 1, this.k);
            iMax += this.k.height();
        }
        if (this.f22800super && this.f22788import >= 1) {
            this.j.setTextSize(this.f22804throw);
            this.j.getTextBounds("j", 0, 1, this.k);
            iMax = Math.max(iMax, (this.f22785goto * 2) + this.k.height());
        }
        setMeasuredDimension(View.resolveSize(com.xw.repo.Cif.m27289do(180), i), iMax + (this.b * 2));
        this.h = getPaddingLeft() + this.f22785goto;
        this.i = (getMeasuredWidth() - getPaddingRight()) - this.f22785goto;
        if (this.f22800super) {
            this.j.setTextSize(this.f22804throw);
            int i3 = this.f22788import;
            if (i3 == 0) {
                String str = this.d.get(0);
                this.j.getTextBounds(str, 0, str.length(), this.k);
                this.h += this.k.width() + this.b;
                String str2 = this.d.get(this.f22775class);
                this.j.getTextBounds(str2, 0, str2.length(), this.k);
                this.i -= this.k.width() + this.b;
            } else if (i3 >= 1) {
                String str3 = this.d.get(0);
                this.j.getTextBounds(str3, 0, str3.length(), this.k);
                this.h = getPaddingLeft() + Math.max(this.f22785goto, this.k.width() / 2.0f) + this.b;
                String str4 = this.d.get(this.f22775class);
                this.j.getTextBounds(str4, 0, str4.length(), this.k);
                this.i = ((getMeasuredWidth() - getPaddingRight()) - Math.max(this.f22785goto, this.k.width() / 2.0f)) - this.b;
            }
        } else if (this.f22796public && this.f22788import == -1) {
            this.j.setTextSize(this.f22797return);
            String str5 = this.d.get(0);
            this.j.getTextBounds(str5, 0, str5.length(), this.k);
            this.h = getPaddingLeft() + Math.max(this.f22785goto, this.k.width() / 2.0f) + this.b;
            String str6 = this.d.get(this.f22775class);
            this.j.getTextBounds(str6, 0, str6.length(), this.k);
            this.i = ((getMeasuredWidth() - getPaddingRight()) - Math.max(this.f22785goto, this.k.width() / 2.0f)) - this.b;
        }
        float f = this.i - this.h;
        this.f22789instanceof = f;
        this.f22802synchronized = (f * 1.0f) / this.f22775class;
        if (this.f22771abstract) {
            return;
        }
        this.m.measure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.f22784for = bundle.getFloat("progress");
        super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
        Cthis cthis = this.m;
        if (cthis != null) {
            cthis.m27249do(this.f22801switch ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
        }
        setProgress(this.f22784for);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.f22784for);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Cdo());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zM27227instanceof = m27227instanceof(motionEvent);
            this.a = zM27227instanceof;
            if (zM27227instanceof) {
                if (this.f22781extends && !this.f) {
                    this.f = true;
                }
                if (this.f22793package && !this.c) {
                    this.c = true;
                }
                if (!this.f22771abstract) {
                    c();
                }
                invalidate();
            } else if (this.f22805throws && m27239synchronized(motionEvent)) {
                this.a = true;
                if (this.f22781extends && !this.f) {
                    this.f = true;
                }
                if (this.f22793package) {
                    m27233protected();
                    this.c = true;
                }
                if (this.f22778default) {
                    float fM27221finally = m27221finally(motionEvent.getX());
                    this.e = fM27221finally;
                    this.f22787implements = fM27221finally;
                } else {
                    float x2 = motionEvent.getX();
                    this.f22787implements = x2;
                    float f = this.h;
                    if (x2 < f) {
                        this.f22787implements = f;
                    }
                    float f2 = this.f22787implements;
                    float f3 = this.i;
                    if (f2 > f3) {
                        this.f22787implements = f3;
                    }
                }
                this.f22784for = m27232private();
                if (!this.f22771abstract) {
                    this.q = m27231package();
                    c();
                }
                invalidate();
            }
            this.w = this.f22787implements - motionEvent.getX();
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.f22782final) {
                if (this.f22805throws) {
                    postDelayed(new Cif(), this.f22783finally);
                } else {
                    m27219extends();
                }
            } else if (this.a || this.f22805throws) {
                if (this.f22771abstract) {
                    animate().setDuration(this.f22783finally).setStartDelay((this.a || !this.f22805throws) ? 0L : 300L).setListener(new Cfor()).start();
                } else {
                    postDelayed(new Cnew(), this.f22783finally);
                }
            }
            OnProgressChangedListener onProgressChangedListener = this.g;
            if (onProgressChangedListener != null) {
                onProgressChangedListener.onProgressChanged(this, getProgress(), getProgressFloat(), true);
                this.g.getProgressOnActionUp(this, getProgress(), getProgressFloat());
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
            }
        } else if (this.a) {
            if (this.f22778default) {
                float fM27221finally2 = m27221finally(motionEvent.getX());
                if (fM27221finally2 != this.e) {
                    this.e = fM27221finally2;
                    this.f22787implements = fM27221finally2;
                } else {
                    z = false;
                    if (z) {
                        this.f22784for = m27232private();
                        if (this.f22771abstract || this.m.getParent() == null) {
                            b();
                        } else {
                            float fM27231package = m27231package();
                            this.q = fM27231package;
                            WindowManager.LayoutParams layoutParams = this.r;
                            layoutParams.x = (int) (fM27231package + 0.5f);
                            this.l.updateViewLayout(this.m, layoutParams);
                            this.m.m27249do(this.f22801switch ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
                        }
                        invalidate();
                        OnProgressChangedListener onProgressChangedListener2 = this.g;
                        if (onProgressChangedListener2 != null) {
                            onProgressChangedListener2.onProgressChanged(this, getProgress(), getProgressFloat(), true);
                        }
                    }
                }
            } else {
                float x3 = motionEvent.getX() + this.w;
                this.f22787implements = x3;
                float f4 = this.h;
                if (x3 < f4) {
                    this.f22787implements = f4;
                }
                float f5 = this.f22787implements;
                float f6 = this.i;
                if (f5 > f6) {
                    this.f22787implements = f6;
                }
            }
            z = true;
            if (z) {
            }
        }
        return this.a || this.f22805throws || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        if (this.f22771abstract || !this.f22793package) {
            return;
        }
        if (i != 0) {
            m27233protected();
        } else if (this.c) {
            c();
        }
        super.onVisibilityChanged(view, i);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setBubbleColor(@ColorInt int i) {
        if (this.f22799strictfp != i) {
            this.f22799strictfp = i;
            Cthis cthis = this.m;
            if (cthis != null) {
                cthis.invalidate();
            }
        }
    }

    public void setCustomSectionTextArray(@NonNull CustomSectionTextArray customSectionTextArray) {
        this.d = customSectionTextArray.onCustomize(this.f22775class, this.d);
        for (int i = 0; i <= this.f22775class; i++) {
            if (this.d.get(i) == null) {
                this.d.put(i, "");
            }
        }
        this.f22796public = false;
        requestLayout();
        invalidate();
    }

    public void setOnProgressChangedListener(OnProgressChangedListener onProgressChangedListener) {
        this.g = onProgressChangedListener;
    }

    public void setProgress(float f) {
        this.f22784for = f;
        OnProgressChangedListener onProgressChangedListener = this.g;
        if (onProgressChangedListener != null) {
            onProgressChangedListener.onProgressChanged(this, getProgress(), getProgressFloat(), false);
            this.g.getProgressOnFinally(this, getProgress(), getProgressFloat(), false);
        }
        if (!this.f22771abstract) {
            this.q = m27231package();
        }
        if (this.f22793package) {
            m27233protected();
            postDelayed(new Cgoto(), this.f22794private);
        }
        if (this.f22781extends) {
            this.f = false;
        }
        postInvalidate();
    }

    public void setSecondTrackColor(@ColorInt int i) {
        if (this.f22772break != i) {
            this.f22772break = i;
            invalidate();
        }
    }

    public void setThumbColor(@ColorInt int i) {
        if (this.f22774catch != i) {
            this.f22774catch = i;
            invalidate();
        }
    }

    public void setTrackColor(@ColorInt int i) {
        if (this.f22803this != i) {
            this.f22803this = i;
            invalidate();
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m27248strictfp() {
        if (this.f22771abstract) {
            return;
        }
        a();
        if (this.m.getParent() != null) {
            if (!this.f22793package) {
                postInvalidate();
                return;
            }
            WindowManager.LayoutParams layoutParams = this.r;
            layoutParams.y = (int) (this.p + 0.5f);
            this.l.updateViewLayout(this.m, layoutParams);
        }
    }

    public BubbleSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f22788import = -1;
        this.d = new SparseArray<>();
        this.s = new int[2];
        this.t = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BubbleSeekBar, i, 0);
        this.f22779do = typedArrayObtainStyledAttributes.getFloat(R.styleable.BubbleSeekBar_bsb_min, 0.0f);
        this.f22786if = typedArrayObtainStyledAttributes.getFloat(R.styleable.BubbleSeekBar_bsb_max, 100.0f);
        this.f22784for = typedArrayObtainStyledAttributes.getFloat(R.styleable.BubbleSeekBar_bsb_progress, this.f22779do);
        this.f22792new = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_is_float_type, false);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_track_size, com.xw.repo.Cif.m27289do(2));
        this.f22807try = dimensionPixelSize;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_second_track_size, dimensionPixelSize + com.xw.repo.Cif.m27289do(2));
        this.f22773case = dimensionPixelSize2;
        this.f22780else = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_thumb_radius, dimensionPixelSize2 + com.xw.repo.Cif.m27289do(2));
        this.f22785goto = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_thumb_radius_on_dragging, this.f22773case * 2);
        this.f22775class = typedArrayObtainStyledAttributes.getInteger(R.styleable.BubbleSeekBar_bsb_section_count, 10);
        this.f22803this = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_track_color, ContextCompat.getColor(context, R.color.colorPrimary));
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_second_track_color, ContextCompat.getColor(context, R.color.colorAccent));
        this.f22772break = color;
        this.f22774catch = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_thumb_color, color);
        this.f22800super = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_show_section_text, false);
        this.f22804throw = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_section_text_size, com.xw.repo.Cif.m27290for(14));
        this.f22809while = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_section_text_color, this.f22803this);
        this.f22778default = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_seek_step_section, false);
        this.f22781extends = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_seek_by_section, false);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.BubbleSeekBar_bsb_section_text_position, -1);
        if (integer == 0) {
            this.f22788import = 0;
        } else if (integer == 1) {
            this.f22788import = 1;
        } else if (integer == 2) {
            this.f22788import = 2;
        } else {
            this.f22788import = -1;
        }
        this.f22791native = typedArrayObtainStyledAttributes.getInteger(R.styleable.BubbleSeekBar_bsb_section_text_interval, 1);
        this.f22796public = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_show_thumb_text, false);
        this.f22797return = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_thumb_text_size, com.xw.repo.Cif.m27290for(14));
        this.f22798static = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_thumb_text_color, this.f22772break);
        this.f22799strictfp = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_bubble_color, this.f22772break);
        this.f22808volatile = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BubbleSeekBar_bsb_bubble_text_size, com.xw.repo.Cif.m27290for(14));
        this.f22790interface = typedArrayObtainStyledAttributes.getColor(R.styleable.BubbleSeekBar_bsb_bubble_text_color, -1);
        this.f22776const = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_show_section_mark, false);
        this.f22782final = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_auto_adjust_section_mark, false);
        this.f22801switch = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_show_progress_in_float, false);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.BubbleSeekBar_bsb_anim_duration, -1);
        this.f22783finally = integer2 < 0 ? 200L : integer2;
        this.f22805throws = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_touch_to_seek, false);
        this.f22793package = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_always_show_bubble, false);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(R.styleable.BubbleSeekBar_bsb_always_show_bubble_delay, 0);
        this.f22794private = integer3 < 0 ? 0L : integer3;
        this.f22771abstract = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_hide_bubble, false);
        this.f22777continue = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_bsb_rtl, false);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BubbleSeekBar_android_enabled, isEnabled()));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setStrokeCap(Paint.Cap.ROUND);
        this.j.setTextAlign(Paint.Align.CENTER);
        this.k = new Rect();
        this.b = com.xw.repo.Cif.m27289do(2);
        m27243transient();
        if (this.f22771abstract) {
            return;
        }
        this.l = (WindowManager) context.getSystemService("window");
        Cthis cthis = new Cthis(this, context);
        this.m = cthis;
        cthis.m27249do(this.f22801switch ? String.valueOf(getProgressFloat()) : String.valueOf(getProgress()));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.r = layoutParams;
        layoutParams.gravity = BadgeDrawable.f11272import;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.flags = 524328;
        if (!com.xw.repo.Cif.m27291if() && Build.VERSION.SDK_INT < 25) {
            this.r.type = 2005;
        } else {
            this.r.type = 2;
        }
        m27210abstract();
    }
}
