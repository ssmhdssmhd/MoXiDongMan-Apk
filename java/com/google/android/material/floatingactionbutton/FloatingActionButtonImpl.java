package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.v4.by0;
import android.support.v4.no1;
import android.support.v4.q01;
import android.support.v4.tx0;
import android.support.v4.ul0;
import android.support.v4.w1;
import android.support.v4.z1;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class FloatingActionButtonImpl {
    private static final float a = 0.0f;
    private static final float b = 0.0f;
    private static final float c = 1.0f;
    private static final float d = 1.0f;
    private static final float e = 1.0f;

    /* renamed from: implements, reason: not valid java name */
    public static final int f11937implements = 2;

    /* renamed from: instanceof, reason: not valid java name */
    public static final float f11938instanceof = 1.5f;

    /* renamed from: interface, reason: not valid java name */
    public static final long f11939interface = 100;

    /* renamed from: protected, reason: not valid java name */
    public static final int f11940protected = 0;

    /* renamed from: synchronized, reason: not valid java name */
    private static final float f11942synchronized = 0.0f;

    /* renamed from: transient, reason: not valid java name */
    public static final int f11943transient = 1;

    /* renamed from: volatile, reason: not valid java name */
    public static final long f11944volatile = 100;

    /* renamed from: break, reason: not valid java name */
    public float f11946break;

    /* renamed from: case, reason: not valid java name */
    public boolean f11947case;

    /* renamed from: catch, reason: not valid java name */
    public int f11948catch;

    /* renamed from: class, reason: not valid java name */
    @NonNull
    private final com.google.android.material.internal.Cfor f11949class;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private q01 f11950const;

    /* renamed from: continue, reason: not valid java name */
    @Nullable
    private ViewTreeObserver.OnPreDrawListener f11951continue;

    /* renamed from: default, reason: not valid java name */
    public final FloatingActionButton f11952default;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    public ShapeAppearanceModel f11953do;

    /* renamed from: extends, reason: not valid java name */
    public final ShadowViewDelegate f11955extends;

    /* renamed from: final, reason: not valid java name */
    @Nullable
    private q01 f11956final;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    public Drawable f11958for;

    /* renamed from: goto, reason: not valid java name */
    public float f11959goto;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    public MaterialShapeDrawable f11960if;

    /* renamed from: import, reason: not valid java name */
    private float f11961import;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    public com.google.android.material.floatingactionbutton.Cfor f11963new;

    /* renamed from: public, reason: not valid java name */
    private int f11966public;

    /* renamed from: static, reason: not valid java name */
    private ArrayList<Animator.AnimatorListener> f11968static;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private Animator f11969super;

    /* renamed from: switch, reason: not valid java name */
    private ArrayList<Animator.AnimatorListener> f11970switch;

    /* renamed from: this, reason: not valid java name */
    public float f11971this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private q01 f11972throw;

    /* renamed from: throws, reason: not valid java name */
    private ArrayList<InternalTransformationCallback> f11973throws;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    public Drawable f11974try;

    /* renamed from: while, reason: not valid java name */
    @Nullable
    private q01 f11975while;

    /* renamed from: strictfp, reason: not valid java name */
    public static final TimeInterpolator f11941strictfp = w1.f7370for;
    public static final int[] f = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] g = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    public static final int[] h = {R.attr.state_focused, R.attr.state_enabled};
    public static final int[] i = {R.attr.state_hovered, R.attr.state_enabled};
    public static final int[] j = {R.attr.state_enabled};
    public static final int[] k = new int[0];

    /* renamed from: else, reason: not valid java name */
    public boolean f11954else = true;

    /* renamed from: native, reason: not valid java name */
    private float f11962native = 1.0f;

    /* renamed from: return, reason: not valid java name */
    private int f11967return = 0;

    /* renamed from: finally, reason: not valid java name */
    private final Rect f11957finally = new Rect();

    /* renamed from: package, reason: not valid java name */
    private final RectF f11964package = new RectF();

    /* renamed from: private, reason: not valid java name */
    private final RectF f11965private = new RectF();

    /* renamed from: abstract, reason: not valid java name */
    private final Matrix f11945abstract = new Matrix();

    public interface InternalTransformationCallback {
        void onScaleChanged();

        void onTranslationChanged();
    }

    public interface InternalVisibilityChangedListener {
        void onHidden();

        void onShown();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$break, reason: invalid class name */
    public abstract class Cbreak extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        private boolean f11976do;

        /* renamed from: for, reason: not valid java name */
        private float f11977for;

        /* renamed from: if, reason: not valid java name */
        private float f11978if;

        private Cbreak() {
        }

        /* renamed from: do, reason: not valid java name */
        public abstract float mo13508do();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FloatingActionButtonImpl.this.w((int) this.f11977for);
            this.f11976do = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.f11976do) {
                MaterialShapeDrawable materialShapeDrawable = FloatingActionButtonImpl.this.f11960if;
                this.f11978if = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.m13959switch();
                this.f11977for = mo13508do();
                this.f11976do = true;
            }
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            float f = this.f11978if;
            floatingActionButtonImpl.w((int) (f + ((this.f11977for - f) * valueAnimator.getAnimatedFraction())));
        }

        public /* synthetic */ Cbreak(FloatingActionButtonImpl floatingActionButtonImpl, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$case, reason: invalid class name */
    public class Ccase extends Cbreak {
        public Ccase() {
            super(FloatingActionButtonImpl.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.Cbreak
        /* renamed from: do */
        public float mo13508do() {
            return 0.0f;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        private boolean f11981do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ InternalVisibilityChangedListener f11982for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f11983if;

        public Cdo(boolean z, InternalVisibilityChangedListener internalVisibilityChangedListener) {
            this.f11983if = z;
            this.f11982for = internalVisibilityChangedListener;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f11981do = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FloatingActionButtonImpl.this.f11967return = 0;
            FloatingActionButtonImpl.this.f11969super = null;
            if (this.f11981do) {
                return;
            }
            FloatingActionButton floatingActionButton = FloatingActionButtonImpl.this.f11952default;
            boolean z = this.f11983if;
            floatingActionButton.m13626do(z ? 8 : 4, z);
            InternalVisibilityChangedListener internalVisibilityChangedListener = this.f11982for;
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.onHidden();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            FloatingActionButtonImpl.this.f11952default.m13626do(0, this.f11983if);
            FloatingActionButtonImpl.this.f11967return = 1;
            FloatingActionButtonImpl.this.f11969super = animator;
            this.f11981do = false;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$else, reason: invalid class name */
    public class Celse extends Cbreak {
        public Celse() {
            super(FloatingActionButtonImpl.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.Cbreak
        /* renamed from: do */
        public float mo13508do() {
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            return floatingActionButtonImpl.f11959goto + floatingActionButtonImpl.f11971this;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$for, reason: invalid class name */
    public class Cfor extends by0 {
        public Cfor() {
        }

        @Override // android.support.v4.by0, android.animation.TypeEvaluator
        /* renamed from: do */
        public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            FloatingActionButtonImpl.this.f11962native = f;
            return super.evaluate(f, matrix, matrix2);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$goto, reason: invalid class name */
    public class Cgoto extends Cbreak {
        public Cgoto() {
            super(FloatingActionButtonImpl.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.Cbreak
        /* renamed from: do */
        public float mo13508do() {
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            return floatingActionButtonImpl.f11959goto + floatingActionButtonImpl.f11946break;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f11988do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ InternalVisibilityChangedListener f11990if;

        public Cif(boolean z, InternalVisibilityChangedListener internalVisibilityChangedListener) {
            this.f11988do = z;
            this.f11990if = internalVisibilityChangedListener;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FloatingActionButtonImpl.this.f11967return = 0;
            FloatingActionButtonImpl.this.f11969super = null;
            InternalVisibilityChangedListener internalVisibilityChangedListener = this.f11990if;
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.onShown();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            FloatingActionButtonImpl.this.f11952default.m13626do(0, this.f11988do);
            FloatingActionButtonImpl.this.f11967return = 2;
            FloatingActionButtonImpl.this.f11969super = animator;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$new, reason: invalid class name */
    public class Cnew implements TypeEvaluator<Float> {

        /* renamed from: do, reason: not valid java name */
        public FloatEvaluator f11991do = new FloatEvaluator();

        public Cnew() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float evaluate(float f, Float f2, Float f3) {
            float fFloatValue = this.f11991do.evaluate(f, (Number) f2, (Number) f3).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$this, reason: invalid class name */
    public class Cthis extends Cbreak {
        public Cthis() {
            super(FloatingActionButtonImpl.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.Cbreak
        /* renamed from: do */
        public float mo13508do() {
            return FloatingActionButtonImpl.this.f11959goto;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$try, reason: invalid class name */
    public class Ctry implements ViewTreeObserver.OnPreDrawListener {
        public Ctry() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            FloatingActionButtonImpl.this.m13489interface();
            return true;
        }
    }

    public FloatingActionButtonImpl(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        this.f11952default = floatingActionButton;
        this.f11955extends = shadowViewDelegate;
        com.google.android.material.internal.Cfor cfor = new com.google.android.material.internal.Cfor();
        this.f11949class = cfor;
        cfor.m13677do(f, m13477this(new Cgoto()));
        cfor.m13677do(g, m13477this(new Celse()));
        cfor.m13677do(h, m13477this(new Celse()));
        cfor.m13677do(i, m13477this(new Celse()));
        cfor.m13677do(j, m13477this(new Cthis()));
        cfor.m13677do(k, m13477this(new Ccase()));
        this.f11961import = floatingActionButton.getRotation();
    }

    /* renamed from: class, reason: not valid java name */
    private q01 m13469class() {
        if (this.f11956final == null) {
            this.f11956final = q01.m6295new(this.f11952default.getContext(), com.google.android.material.R.animator.design_fab_hide_motion_spec);
        }
        return (q01) Preconditions.checkNotNull(this.f11956final);
    }

    /* renamed from: const, reason: not valid java name */
    private q01 m13470const() {
        if (this.f11950const == null) {
            this.f11950const = q01.m6295new(this.f11952default.getContext(), com.google.android.material.R.animator.design_fab_show_motion_spec);
        }
        return (q01) Preconditions.checkNotNull(this.f11950const);
    }

    /* renamed from: else, reason: not valid java name */
    private void m13472else(float f2, @NonNull Matrix matrix) {
        matrix.reset();
        if (this.f11952default.getDrawable() == null || this.f11966public == 0) {
            return;
        }
        RectF rectF = this.f11964package;
        RectF rectF2 = this.f11965private;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i2 = this.f11966public;
        rectF2.set(0.0f, 0.0f, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i3 = this.f11966public;
        matrix.postScale(f2, f2, i3 / 2.0f, i3 / 2.0f);
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private AnimatorSet m13474goto(@NonNull q01 q01Var, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f11952default, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        q01Var.m6303goto("opacity").m6721do(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f11952default, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        q01Var.m6303goto("scale").m6721do(objectAnimatorOfFloat2);
        x(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f11952default, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        q01Var.m6303goto("scale").m6721do(objectAnimatorOfFloat3);
        x(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        m13472else(f4, this.f11945abstract);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f11952default, new ul0(), new Cfor(), new Matrix(this.f11945abstract));
        q01Var.m6303goto("iconScale").m6721do(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        z1.m10010do(animatorSet, arrayList);
        return animatorSet;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    private ViewTreeObserver.OnPreDrawListener m13476import() {
        if (this.f11951continue == null) {
            this.f11951continue = new Ctry();
        }
        return this.f11951continue;
    }

    private boolean q() {
        return ViewCompat.isLaidOut(this.f11952default) && !this.f11952default.isInEditMode();
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    private ValueAnimator m13477this(@NonNull Cbreak cbreak) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f11941strictfp);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(cbreak);
        valueAnimator.addUpdateListener(cbreak);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private void x(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new Cnew());
    }

    public boolean a() {
        return true;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m13478abstract() {
        ViewTreeObserver viewTreeObserver = this.f11952default.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.f11951continue;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.f11951continue = null;
        }
    }

    public void b(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f11960if;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.Cfor cfor = this.f11963new;
        if (cfor != null) {
            cfor.m13518new(colorStateList);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public MaterialShapeDrawable mo13479break() {
        return new MaterialShapeDrawable((ShapeAppearanceModel) Preconditions.checkNotNull(this.f11953do));
    }

    public void c(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawable materialShapeDrawable = this.f11960if;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintMode(mode);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m13480case(@NonNull InternalTransformationCallback internalTransformationCallback) {
        if (this.f11973throws == null) {
            this.f11973throws = new ArrayList<>();
        }
        this.f11973throws.add(internalTransformationCallback);
    }

    @Nullable
    /* renamed from: catch, reason: not valid java name */
    public final Drawable m13481catch() {
        return this.f11974try;
    }

    /* renamed from: continue, reason: not valid java name */
    public void mo13482continue(int[] iArr) {
        this.f11949class.m13679new(iArr);
    }

    public final void d(float f2) {
        if (this.f11959goto != f2) {
            this.f11959goto = f2;
            mo13498strictfp(f2, this.f11971this, this.f11946break);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m13483default() {
        return this.f11952default.getVisibility() == 0 ? this.f11967return == 1 : this.f11967return != 2;
    }

    public void e(boolean z) {
        this.f11947case = z;
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m13484extends() {
        return this.f11952default.getVisibility() != 0 ? this.f11967return == 2 : this.f11967return != 1;
    }

    public final void f(@Nullable q01 q01Var) {
        this.f11975while = q01Var;
    }

    /* renamed from: final, reason: not valid java name */
    public float mo13485final() {
        return this.f11959goto;
    }

    /* renamed from: finally, reason: not valid java name */
    public void mo13486finally() {
        this.f11949class.m13678for();
    }

    public final void g(float f2) {
        if (this.f11971this != f2) {
            this.f11971this = f2;
            mo13498strictfp(this.f11959goto, f2, this.f11946break);
        }
    }

    public final void h(float f2) {
        this.f11962native = f2;
        Matrix matrix = this.f11945abstract;
        m13472else(f2, matrix);
        this.f11952default.setImageMatrix(matrix);
    }

    public final void i(int i2) {
        if (this.f11966public != i2) {
            this.f11966public = i2;
            u();
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public void m13487implements(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f11970switch;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m13488instanceof(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f11968static;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* renamed from: interface, reason: not valid java name */
    public void m13489interface() {
        float rotation = this.f11952default.getRotation();
        if (this.f11961import != rotation) {
            this.f11961import = rotation;
            t();
        }
    }

    public void j(int i2) {
        this.f11948catch = i2;
    }

    public final void k(float f2) {
        if (this.f11946break != f2) {
            this.f11946break = f2;
            mo13498strictfp(this.f11959goto, this.f11971this, f2);
        }
    }

    public void l(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f11958for;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, no1.m5294new(colorStateList));
        }
    }

    public void m(boolean z) {
        this.f11954else = z;
        v();
    }

    public final void n(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11953do = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f11960if;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Object obj = this.f11958for;
        if (obj instanceof Shapeable) {
            ((Shapeable) obj).setShapeAppearanceModel(shapeAppearanceModel);
        }
        com.google.android.material.floatingactionbutton.Cfor cfor = this.f11963new;
        if (cfor != null) {
            cfor.m13515else(shapeAppearanceModel);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void mo13490native(@NonNull Rect rect) {
        int sizeDimension = this.f11947case ? (this.f11948catch - this.f11952default.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.f11954else ? mo13485final() + this.f11946break : 0.0f));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    /* renamed from: new, reason: not valid java name */
    public void m13491new(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f11970switch == null) {
            this.f11970switch = new ArrayList<>();
        }
        this.f11970switch.add(animatorListener);
    }

    public final void o(@Nullable q01 q01Var) {
        this.f11972throw = q01Var;
    }

    public boolean p() {
        return true;
    }

    /* renamed from: package, reason: not valid java name */
    public void m13492package() {
        MaterialShapeDrawable materialShapeDrawable = this.f11960if;
        if (materialShapeDrawable != null) {
            tx0.m8140case(this.f11952default, materialShapeDrawable);
        }
        if (a()) {
            this.f11952default.getViewTreeObserver().addOnPreDrawListener(m13476import());
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void mo13493private() {
    }

    /* renamed from: protected, reason: not valid java name */
    public void m13494protected() {
        ArrayList<InternalTransformationCallback> arrayList = this.f11973throws;
        if (arrayList != null) {
            Iterator<InternalTransformationCallback> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onScaleChanged();
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public float m13495public() {
        return this.f11946break;
    }

    public final boolean r() {
        return !this.f11947case || this.f11952default.getSizeDimension() >= this.f11948catch;
    }

    @Nullable
    /* renamed from: return, reason: not valid java name */
    public final ShapeAppearanceModel m13496return() {
        return this.f11953do;
    }

    public void s(@Nullable InternalVisibilityChangedListener internalVisibilityChangedListener, boolean z) {
        if (m13484extends()) {
            return;
        }
        Animator animator = this.f11969super;
        if (animator != null) {
            animator.cancel();
        }
        if (!q()) {
            this.f11952default.m13626do(0, z);
            this.f11952default.setAlpha(1.0f);
            this.f11952default.setScaleY(1.0f);
            this.f11952default.setScaleX(1.0f);
            h(1.0f);
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.onShown();
                return;
            }
            return;
        }
        if (this.f11952default.getVisibility() != 0) {
            this.f11952default.setAlpha(0.0f);
            this.f11952default.setScaleY(0.0f);
            this.f11952default.setScaleX(0.0f);
            h(0.0f);
        }
        q01 q01VarM13470const = this.f11972throw;
        if (q01VarM13470const == null) {
            q01VarM13470const = m13470const();
        }
        AnimatorSet animatorSetM13474goto = m13474goto(q01VarM13470const, 1.0f, 1.0f, 1.0f);
        animatorSetM13474goto.addListener(new Cif(z, internalVisibilityChangedListener));
        ArrayList<Animator.AnimatorListener> arrayList = this.f11968static;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetM13474goto.addListener(it.next());
            }
        }
        animatorSetM13474goto.start();
    }

    @Nullable
    /* renamed from: static, reason: not valid java name */
    public final q01 m13497static() {
        return this.f11972throw;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void mo13498strictfp(float f2, float f3, float f4) {
        v();
        w(f2);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m13499super() {
        return this.f11947case;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m13500switch(@Nullable InternalVisibilityChangedListener internalVisibilityChangedListener, boolean z) {
        if (m13483default()) {
            return;
        }
        Animator animator = this.f11969super;
        if (animator != null) {
            animator.cancel();
        }
        if (!q()) {
            this.f11952default.m13626do(z ? 8 : 4, z);
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.onHidden();
                return;
            }
            return;
        }
        q01 q01VarM13469class = this.f11975while;
        if (q01VarM13469class == null) {
            q01VarM13469class = m13469class();
        }
        AnimatorSet animatorSetM13474goto = m13474goto(q01VarM13469class, 0.0f, 0.0f, 0.0f);
        animatorSetM13474goto.addListener(new Cdo(z, internalVisibilityChangedListener));
        ArrayList<Animator.AnimatorListener> arrayList = this.f11970switch;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetM13474goto.addListener(it.next());
            }
        }
        animatorSetM13474goto.start();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m13501synchronized(@NonNull InternalTransformationCallback internalTransformationCallback) {
        ArrayList<InternalTransformationCallback> arrayList = this.f11973throws;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(internalTransformationCallback);
    }

    public void t() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f11961import % 90.0f != 0.0f) {
                if (this.f11952default.getLayerType() != 1) {
                    this.f11952default.setLayerType(1, null);
                }
            } else if (this.f11952default.getLayerType() != 0) {
                this.f11952default.setLayerType(0, null);
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.f11960if;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.H((int) this.f11961import);
        }
    }

    @Nullable
    /* renamed from: throw, reason: not valid java name */
    public final q01 m13502throw() {
        return this.f11975while;
    }

    /* renamed from: throws, reason: not valid java name */
    public void mo13503throws(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        MaterialShapeDrawable materialShapeDrawableMo13479break = mo13479break();
        this.f11960if = materialShapeDrawableMo13479break;
        materialShapeDrawableMo13479break.setTintList(colorStateList);
        if (mode != null) {
            this.f11960if.setTintMode(mode);
        }
        this.f11960if.G(-12303292);
        this.f11960if.k(this.f11952default.getContext());
        RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f11960if.getShapeAppearanceModel());
        rippleDrawableCompat.setTintList(no1.m5294new(colorStateList2));
        this.f11958for = rippleDrawableCompat;
        this.f11974try = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f11960if), rippleDrawableCompat});
    }

    /* renamed from: transient, reason: not valid java name */
    public void m13504transient() {
        ArrayList<InternalTransformationCallback> arrayList = this.f11973throws;
        if (arrayList != null) {
            Iterator<InternalTransformationCallback> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onTranslationChanged();
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m13505try(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f11968static == null) {
            this.f11968static = new ArrayList<>();
        }
        this.f11968static.add(animatorListener);
    }

    public final void u() {
        h(this.f11962native);
    }

    public final void v() {
        Rect rect = this.f11957finally;
        mo13490native(rect);
        m13506volatile(rect);
        this.f11955extends.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m13506volatile(@NonNull Rect rect) {
        Preconditions.checkNotNull(this.f11974try, "Didn't initialize content background");
        if (!p()) {
            this.f11955extends.setBackgroundDrawable(this.f11974try);
        } else {
            this.f11955extends.setBackgroundDrawable(new InsetDrawable(this.f11974try, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    public void w(float f2) {
        MaterialShapeDrawable materialShapeDrawable = this.f11960if;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.y(f2);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public float m13507while() {
        return this.f11971this;
    }
}
