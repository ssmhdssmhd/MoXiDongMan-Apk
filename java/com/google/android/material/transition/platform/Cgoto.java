package com.google.android.material.transition.platform;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.ox0;
import android.support.v4.w1;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.transition.platform.TransitionUtils;
import com.google.common.collect.LinkedHashMultimap;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto extends Transition {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f13484abstract = 1;
    private static final Ccase b;

    /* renamed from: continue, reason: not valid java name */
    public static final int f13485continue = 2;
    private static final Ccase d;
    private static final float e = -1.0f;

    /* renamed from: extends, reason: not valid java name */
    public static final int f13486extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f13487finally = 1;

    /* renamed from: interface, reason: not valid java name */
    public static final int f13490interface = 1;

    /* renamed from: package, reason: not valid java name */
    public static final int f13491package = 2;

    /* renamed from: private, reason: not valid java name */
    public static final int f13492private = 0;

    /* renamed from: protected, reason: not valid java name */
    public static final int f13493protected = 2;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f13494strictfp = 3;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f13497volatile = 0;

    /* renamed from: break, reason: not valid java name */
    @ColorInt
    private int f13498break;

    /* renamed from: case, reason: not valid java name */
    @IdRes
    private int f13499case;

    /* renamed from: catch, reason: not valid java name */
    @ColorInt
    private int f13500catch;

    /* renamed from: class, reason: not valid java name */
    private int f13501class;

    /* renamed from: const, reason: not valid java name */
    private int f13502const;

    /* renamed from: default, reason: not valid java name */
    private float f13503default;

    /* renamed from: do, reason: not valid java name */
    private boolean f13504do;

    /* renamed from: else, reason: not valid java name */
    @IdRes
    private int f13505else;

    /* renamed from: final, reason: not valid java name */
    private int f13506final;

    /* renamed from: for, reason: not valid java name */
    private boolean f13507for;

    /* renamed from: goto, reason: not valid java name */
    @ColorInt
    private int f13508goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f13509if;

    /* renamed from: import, reason: not valid java name */
    @Nullable
    private ShapeAppearanceModel f13510import;

    /* renamed from: native, reason: not valid java name */
    @Nullable
    private Ctry f13511native;

    /* renamed from: new, reason: not valid java name */
    private boolean f13512new;

    /* renamed from: public, reason: not valid java name */
    @Nullable
    private Ctry f13513public;

    /* renamed from: return, reason: not valid java name */
    @Nullable
    private Ctry f13514return;

    /* renamed from: static, reason: not valid java name */
    @Nullable
    private Ctry f13515static;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private View f13516super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f13517switch;

    /* renamed from: this, reason: not valid java name */
    @ColorInt
    private int f13518this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private View f13519throw;

    /* renamed from: throws, reason: not valid java name */
    private float f13520throws;

    /* renamed from: try, reason: not valid java name */
    @IdRes
    private int f13521try;

    /* renamed from: while, reason: not valid java name */
    @Nullable
    private ShapeAppearanceModel f13522while;

    /* renamed from: transient, reason: not valid java name */
    private static final String f13496transient = Cgoto.class.getSimpleName();

    /* renamed from: implements, reason: not valid java name */
    private static final String f13488implements = "materialContainerTransition:bounds";

    /* renamed from: instanceof, reason: not valid java name */
    private static final String f13489instanceof = "materialContainerTransition:shapeAppearance";

    /* renamed from: synchronized, reason: not valid java name */
    private static final String[] f13495synchronized = {f13488implements, f13489instanceof};
    private static final Ccase a = new Ccase(new Ctry(0.0f, 0.25f), new Ctry(0.0f, 1.0f), new Ctry(0.0f, 1.0f), new Ctry(0.0f, 0.75f), null);
    private static final Ccase c = new Ccase(new Ctry(0.1f, 0.4f), new Ctry(0.1f, 1.0f), new Ctry(0.1f, 1.0f), new Ctry(0.1f, 0.9f), null);

    /* renamed from: com.google.android.material.transition.platform.goto$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final Ctry f13523do;

        /* renamed from: for, reason: not valid java name */
        @NonNull
        private final Ctry f13524for;

        /* renamed from: if, reason: not valid java name */
        @NonNull
        private final Ctry f13525if;

        /* renamed from: new, reason: not valid java name */
        @NonNull
        private final Ctry f13526new;

        public /* synthetic */ Ccase(Ctry ctry, Ctry ctry2, Ctry ctry3, Ctry ctry4, Cdo cdo) {
            this(ctry, ctry2, ctry3, ctry4);
        }

        private Ccase(@NonNull Ctry ctry, @NonNull Ctry ctry2, @NonNull Ctry ctry3, @NonNull Ctry ctry4) {
            this.f13523do = ctry;
            this.f13525if = ctry2;
            this.f13524for = ctry3;
            this.f13526new = ctry4;
        }
    }

    /* renamed from: com.google.android.material.transition.platform.goto$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ C0072goto f13527do;

        public Cdo(C0072goto c0072goto) {
            this.f13527do = c0072goto;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13527do.m14934super(valueAnimator.getAnimatedFraction());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.platform.goto$else, reason: invalid class name */
    public @interface Celse {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.platform.goto$for, reason: invalid class name */
    public @interface Cfor {
    }

    /* renamed from: com.google.android.material.transition.platform.goto$goto, reason: invalid class name and collision with other inner class name */
    public static final class C0072goto extends Drawable {
        private static final int a = -7829368;
        private static final float b = 0.3f;
        private static final float c = 1.5f;

        /* renamed from: synchronized, reason: not valid java name */
        private static final int f13529synchronized = 754974720;

        /* renamed from: abstract, reason: not valid java name */
        private final boolean f13530abstract;

        /* renamed from: break, reason: not valid java name */
        private final Paint f13531break;

        /* renamed from: case, reason: not valid java name */
        private final RectF f13532case;

        /* renamed from: catch, reason: not valid java name */
        private final Paint f13533catch;

        /* renamed from: class, reason: not valid java name */
        private final Paint f13534class;

        /* renamed from: const, reason: not valid java name */
        private final Paint f13535const;

        /* renamed from: continue, reason: not valid java name */
        private final Paint f13536continue;

        /* renamed from: default, reason: not valid java name */
        private final RectF f13537default;

        /* renamed from: do, reason: not valid java name */
        private final View f13538do;

        /* renamed from: else, reason: not valid java name */
        private final ShapeAppearanceModel f13539else;

        /* renamed from: extends, reason: not valid java name */
        private final RectF f13540extends;

        /* renamed from: final, reason: not valid java name */
        private final com.google.android.material.transition.platform.Celse f13541final;

        /* renamed from: finally, reason: not valid java name */
        private final Ccase f13542finally;

        /* renamed from: for, reason: not valid java name */
        private final ShapeAppearanceModel f13543for;

        /* renamed from: goto, reason: not valid java name */
        private final float f13544goto;

        /* renamed from: if, reason: not valid java name */
        private final RectF f13545if;

        /* renamed from: implements, reason: not valid java name */
        private float f13546implements;

        /* renamed from: import, reason: not valid java name */
        private final boolean f13547import;

        /* renamed from: instanceof, reason: not valid java name */
        private float f13548instanceof;

        /* renamed from: interface, reason: not valid java name */
        private com.google.android.material.transition.platform.Ccase f13549interface;

        /* renamed from: native, reason: not valid java name */
        private final float f13550native;

        /* renamed from: new, reason: not valid java name */
        private final float f13551new;

        /* renamed from: package, reason: not valid java name */
        private final FadeModeEvaluator f13552package;

        /* renamed from: private, reason: not valid java name */
        private final FitModeEvaluator f13553private;

        /* renamed from: protected, reason: not valid java name */
        private RectF f13554protected;

        /* renamed from: public, reason: not valid java name */
        private final float f13555public;

        /* renamed from: return, reason: not valid java name */
        private final boolean f13556return;

        /* renamed from: static, reason: not valid java name */
        private final MaterialShapeDrawable f13557static;

        /* renamed from: strictfp, reason: not valid java name */
        private final Path f13558strictfp;

        /* renamed from: super, reason: not valid java name */
        private final PathMeasure f13559super;

        /* renamed from: switch, reason: not valid java name */
        private final RectF f13560switch;

        /* renamed from: this, reason: not valid java name */
        private final Paint f13561this;

        /* renamed from: throw, reason: not valid java name */
        private final float f13562throw;

        /* renamed from: throws, reason: not valid java name */
        private final RectF f13563throws;

        /* renamed from: transient, reason: not valid java name */
        private float f13564transient;

        /* renamed from: try, reason: not valid java name */
        private final View f13565try;

        /* renamed from: volatile, reason: not valid java name */
        private com.google.android.material.transition.platform.Cif f13566volatile;

        /* renamed from: while, reason: not valid java name */
        private final float[] f13567while;

        /* renamed from: com.google.android.material.transition.platform.goto$goto$do, reason: invalid class name */
        public class Cdo implements TransitionUtils.CanvasOperation {
            public Cdo() {
            }

            @Override // com.google.android.material.transition.platform.TransitionUtils.CanvasOperation
            public void run(Canvas canvas) {
                C0072goto.this.f13538do.draw(canvas);
            }
        }

        /* renamed from: com.google.android.material.transition.platform.goto$goto$if, reason: invalid class name */
        public class Cif implements TransitionUtils.CanvasOperation {
            public Cif() {
            }

            @Override // com.google.android.material.transition.platform.TransitionUtils.CanvasOperation
            public void run(Canvas canvas) {
                C0072goto.this.f13565try.draw(canvas);
            }
        }

        public /* synthetic */ C0072goto(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, int i, int i2, int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, Ccase ccase, boolean z3, Cdo cdo) {
            this(pathMotion, view, rectF, shapeAppearanceModel, f, view2, rectF2, shapeAppearanceModel2, f2, i, i2, i3, i4, z, z2, fadeModeEvaluator, fitModeEvaluator, ccase, z3);
        }

        /* renamed from: break, reason: not valid java name */
        private void m14922break(Canvas canvas) {
            ShapeAppearanceModel shapeAppearanceModelM14860for = this.f13541final.m14860for();
            if (!shapeAppearanceModelM14860for.m13981return(this.f13554protected)) {
                canvas.drawPath(this.f13541final.m14862new(), this.f13534class);
            } else {
                float cornerSize = shapeAppearanceModelM14860for.m13978import().getCornerSize(this.f13554protected);
                canvas.drawRoundRect(this.f13554protected, cornerSize, cornerSize, this.f13534class);
            }
        }

        /* renamed from: case, reason: not valid java name */
        private void m14923case(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF pointFM14926const = m14926const(rectF);
            if (this.f13548instanceof == 0.0f) {
                path.reset();
                path.moveTo(pointFM14926const.x, pointFM14926const.y);
            } else {
                path.lineTo(pointFM14926const.x, pointFM14926const.y);
                this.f13536continue.setColor(i);
                canvas.drawPath(path, this.f13536continue);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        private void m14924catch(Canvas canvas) {
            m14929final(canvas, this.f13533catch);
            Rect bounds = getBounds();
            RectF rectF = this.f13537default;
            TransitionUtils.m14820finally(canvas, bounds, rectF.left, rectF.top, this.f13549interface.f13442if, this.f13566volatile.f13579if, new Cif());
        }

        /* renamed from: class, reason: not valid java name */
        private void m14925class(Canvas canvas) {
            m14929final(canvas, this.f13531break);
            Rect bounds = getBounds();
            RectF rectF = this.f13560switch;
            TransitionUtils.m14820finally(canvas, bounds, rectF.left, rectF.top, this.f13549interface.f13440do, this.f13566volatile.f13577do, new Cdo());
        }

        /* renamed from: const, reason: not valid java name */
        private static PointF m14926const(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        /* renamed from: else, reason: not valid java name */
        private void m14928else(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.f13536continue.setColor(i);
            canvas.drawRect(rectF, this.f13536continue);
        }

        /* renamed from: final, reason: not valid java name */
        private void m14929final(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* renamed from: goto, reason: not valid java name */
        private void m14931goto(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f13541final.m14862new(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                m14922break(canvas);
            } else {
                m14935this(canvas);
            }
            canvas.restore();
        }

        /* renamed from: new, reason: not valid java name */
        private static float m14933new(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public void m14934super(float f) {
            if (this.f13548instanceof != f) {
                m14936throw(f);
            }
        }

        /* renamed from: this, reason: not valid java name */
        private void m14935this(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f13557static;
            RectF rectF = this.f13554protected;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f13557static.y(this.f13564transient);
            this.f13557static.M((int) this.f13546implements);
            this.f13557static.setShapeAppearanceModel(this.f13541final.m14860for());
            this.f13557static.draw(canvas);
        }

        /* renamed from: throw, reason: not valid java name */
        private void m14936throw(float f) {
            float f2;
            float f3;
            this.f13548instanceof = f;
            this.f13535const.setAlpha((int) (this.f13547import ? TransitionUtils.m14819final(0.0f, 255.0f, f) : TransitionUtils.m14819final(255.0f, 0.0f, f)));
            this.f13559super.getPosTan(this.f13562throw * f, this.f13567while, null);
            float[] fArr = this.f13567while;
            float f4 = fArr[0];
            float f5 = fArr[1];
            if (f > 1.0f || f < 0.0f) {
                if (f > 1.0f) {
                    f2 = 0.99f;
                    f3 = (f - 1.0f) / 0.00999999f;
                } else {
                    f2 = 0.01f;
                    f3 = (f / 0.01f) * (-1.0f);
                }
                this.f13559super.getPosTan(this.f13562throw * f2, fArr, null);
                float[] fArr2 = this.f13567while;
                f4 += (f4 - fArr2[0]) * f3;
                f5 += (f5 - fArr2[1]) * f3;
            }
            float f6 = f4;
            float f7 = f5;
            com.google.android.material.transition.platform.Ccase ccaseEvaluate = this.f13553private.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13542finally.f13525if.f13575do))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13542finally.f13525if.f13576if))).floatValue(), this.f13545if.width(), this.f13545if.height(), this.f13532case.width(), this.f13532case.height());
            this.f13549interface = ccaseEvaluate;
            RectF rectF = this.f13560switch;
            float f8 = ccaseEvaluate.f13441for;
            rectF.set(f6 - (f8 / 2.0f), f7, (f8 / 2.0f) + f6, ccaseEvaluate.f13443new + f7);
            RectF rectF2 = this.f13537default;
            com.google.android.material.transition.platform.Ccase ccase = this.f13549interface;
            float f9 = ccase.f13444try;
            rectF2.set(f6 - (f9 / 2.0f), f7, f6 + (f9 / 2.0f), ccase.f13439case + f7);
            this.f13563throws.set(this.f13560switch);
            this.f13540extends.set(this.f13537default);
            float fFloatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13542finally.f13524for.f13575do))).floatValue();
            float fFloatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13542finally.f13524for.f13576if))).floatValue();
            boolean zShouldMaskStartBounds = this.f13553private.shouldMaskStartBounds(this.f13549interface);
            RectF rectF3 = zShouldMaskStartBounds ? this.f13563throws : this.f13540extends;
            float fM14831super = TransitionUtils.m14831super(0.0f, 1.0f, fFloatValue, fFloatValue2, f);
            if (!zShouldMaskStartBounds) {
                fM14831super = 1.0f - fM14831super;
            }
            this.f13553private.applyMask(rectF3, fM14831super, this.f13549interface);
            this.f13554protected = new RectF(Math.min(this.f13563throws.left, this.f13540extends.left), Math.min(this.f13563throws.top, this.f13540extends.top), Math.max(this.f13563throws.right, this.f13540extends.right), Math.max(this.f13563throws.bottom, this.f13540extends.bottom));
            this.f13541final.m14861if(f, this.f13543for, this.f13539else, this.f13560switch, this.f13563throws, this.f13540extends, this.f13542finally.f13526new);
            this.f13564transient = TransitionUtils.m14819final(this.f13551new, this.f13544goto, f);
            float fM14933new = m14933new(this.f13554protected, this.f13550native);
            float fM14937try = m14937try(this.f13554protected, this.f13555public);
            float f10 = this.f13564transient;
            float f11 = (int) (fM14937try * f10);
            this.f13546implements = f11;
            this.f13534class.setShadowLayer(f10, (int) (fM14933new * f10), f11, f13529synchronized);
            this.f13566volatile = this.f13552package.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13542finally.f13523do.f13575do))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13542finally.f13523do.f13576if))).floatValue(), 0.35f);
            if (this.f13531break.getColor() != 0) {
                this.f13531break.setAlpha(this.f13566volatile.f13577do);
            }
            if (this.f13533catch.getColor() != 0) {
                this.f13533catch.setAlpha(this.f13566volatile.f13579if);
            }
            invalidateSelf();
        }

        /* renamed from: try, reason: not valid java name */
        private static float m14937try(RectF rectF, float f) {
            return (rectF.centerY() / f) * 1.5f;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f13535const.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f13535const);
            }
            int iSave = this.f13530abstract ? canvas.save() : -1;
            if (this.f13556return && this.f13564transient > 0.0f) {
                m14931goto(canvas);
            }
            this.f13541final.m14859do(canvas);
            m14929final(canvas, this.f13561this);
            if (this.f13566volatile.f13578for) {
                m14925class(canvas);
                m14924catch(canvas);
            } else {
                m14924catch(canvas);
                m14925class(canvas);
            }
            if (this.f13530abstract) {
                canvas.restoreToCount(iSave);
                m14923case(canvas, this.f13560switch, this.f13558strictfp, -65281);
                m14928else(canvas, this.f13563throws, InputDeviceCompat.SOURCE_ANY);
                m14928else(canvas, this.f13560switch, -16711936);
                m14928else(canvas, this.f13540extends, -16711681);
                m14928else(canvas, this.f13537default, QMUIProgressBar.f19440abstract);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        private C0072goto(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, Ccase ccase, boolean z3) {
            Paint paint = new Paint();
            this.f13561this = paint;
            Paint paint2 = new Paint();
            this.f13531break = paint2;
            Paint paint3 = new Paint();
            this.f13533catch = paint3;
            this.f13534class = new Paint();
            Paint paint4 = new Paint();
            this.f13535const = paint4;
            this.f13541final = new com.google.android.material.transition.platform.Celse();
            this.f13567while = new float[]{rectF.centerX(), rectF.top};
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f13557static = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.f13536continue = paint5;
            this.f13558strictfp = new Path();
            this.f13538do = view;
            this.f13545if = rectF;
            this.f13543for = shapeAppearanceModel;
            this.f13551new = f;
            this.f13565try = view2;
            this.f13532case = rectF2;
            this.f13539else = shapeAppearanceModel2;
            this.f13544goto = f2;
            this.f13547import = z;
            this.f13556return = z2;
            this.f13552package = fadeModeEvaluator;
            this.f13553private = fitModeEvaluator;
            this.f13542finally = ccase;
            this.f13530abstract = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.f13550native = r12.widthPixels;
            this.f13555public = r12.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.z(ColorStateList.valueOf(0));
            materialShapeDrawable.I(2);
            materialShapeDrawable.F(false);
            materialShapeDrawable.G(-7829368);
            RectF rectF3 = new RectF(rectF);
            this.f13560switch = rectF3;
            this.f13563throws = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f13537default = rectF4;
            this.f13540extends = new RectF(rectF4);
            PointF pointFM14926const = m14926const(rectF);
            PointF pointFM14926const2 = m14926const(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(pointFM14926const.x, pointFM14926const.y, pointFM14926const2.x, pointFM14926const2.y), false);
            this.f13559super = pathMeasure;
            this.f13562throw = pathMeasure.getLength();
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(TransitionUtils.m14821for(i4));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            m14936throw(0.0f);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.goto$if, reason: invalid class name */
    public class Cif extends Cthrow {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13570do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ View f13571for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ C0072goto f13572if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ View f13573new;

        public Cif(View view, C0072goto c0072goto, View view2, View view3) {
            this.f13570do = view;
            this.f13572if = c0072goto;
            this.f13571for = view2;
            this.f13573new = view3;
        }

        @Override // com.google.android.material.transition.platform.Cthrow, android.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            Cgoto.this.removeListener(this);
            if (Cgoto.this.f13509if) {
                return;
            }
            this.f13571for.setAlpha(1.0f);
            this.f13573new.setAlpha(1.0f);
            ViewUtils.m13619goto(this.f13570do).remove(this.f13572if);
        }

        @Override // com.google.android.material.transition.platform.Cthrow, android.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            ViewUtils.m13619goto(this.f13570do).add(this.f13572if);
            this.f13571for.setAlpha(0.0f);
            this.f13573new.setAlpha(0.0f);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.platform.goto$new, reason: invalid class name */
    public @interface Cnew {
    }

    /* renamed from: com.google.android.material.transition.platform.goto$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        private final float f13575do;

        /* renamed from: if, reason: not valid java name */
        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        private final float f13576if;

        public Ctry(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2) {
            this.f13575do = f;
            this.f13576if = f2;
        }

        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        /* renamed from: for, reason: not valid java name */
        public float m14940for() {
            return this.f13576if;
        }

        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        /* renamed from: new, reason: not valid java name */
        public float m14941new() {
            return this.f13575do;
        }
    }

    static {
        Cdo cdo = null;
        b = new Ccase(new Ctry(0.6f, 0.9f), new Ctry(0.0f, 1.0f), new Ctry(0.0f, 0.9f), new Ctry(0.3f, 0.9f), cdo);
        d = new Ccase(new Ctry(0.6f, 0.9f), new Ctry(0.0f, 0.9f), new Ctry(0.0f, 0.9f), new Ctry(0.2f, 0.9f), cdo);
    }

    public Cgoto() {
        this.f13504do = false;
        this.f13509if = false;
        this.f13507for = false;
        this.f13512new = false;
        this.f13521try = R.id.content;
        this.f13499case = -1;
        this.f13505else = -1;
        this.f13508goto = 0;
        this.f13518this = 0;
        this.f13498break = 0;
        this.f13500catch = 1375731712;
        this.f13501class = 0;
        this.f13502const = 0;
        this.f13506final = 0;
        this.f13517switch = Build.VERSION.SDK_INT >= 28;
        this.f13520throws = -1.0f;
        this.f13503default = -1.0f;
    }

    /* renamed from: finally, reason: not valid java name */
    private Ccase m14880finally(boolean z, Ccase ccase, Ccase ccase2) {
        if (!z) {
            ccase = ccase2;
        }
        return new Ccase((Ctry) TransitionUtils.m14826new(this.f13511native, ccase.f13523do), (Ctry) TransitionUtils.m14826new(this.f13513public, ccase.f13525if), (Ctry) TransitionUtils.m14826new(this.f13514return, ccase.f13524for), (Ctry) TransitionUtils.m14826new(this.f13515static, ccase.f13526new), null);
    }

    /* renamed from: for, reason: not valid java name */
    private static RectF m14881for(View view, @Nullable View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF rectFM14833this = TransitionUtils.m14833this(view2);
        rectFM14833this.offset(f, f2);
        return rectFM14833this;
    }

    /* renamed from: goto, reason: not valid java name */
    private static float m14882goto(float f, View view) {
        return f != -1.0f ? f : ViewCompat.getElevation(view);
    }

    /* renamed from: if, reason: not valid java name */
    private Ccase m14883if(boolean z) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof ox0)) ? m14880finally(z, c, d) : m14880finally(z, a, b);
    }

    /* renamed from: interface, reason: not valid java name */
    private void m14884interface(Context context, boolean z) {
        TransitionUtils.m14829return(this, context, com.google.android.material.R.attr.motionEasingStandard, w1.f7371if);
        TransitionUtils.m14828public(this, context, z ? com.google.android.material.R.attr.motionDurationLong1 : com.google.android.material.R.attr.motionDurationMedium2);
        if (this.f13507for) {
            return;
        }
        TransitionUtils.m14830static(this, context, com.google.android.material.R.attr.motionPath);
    }

    /* renamed from: new, reason: not valid java name */
    private static ShapeAppearanceModel m14885new(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.m14823if(m14887public(view, shapeAppearanceModel), rectF);
    }

    @StyleRes
    /* renamed from: private, reason: not valid java name */
    private static int m14886private(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: public, reason: not valid java name */
    private static ShapeAppearanceModel m14887public(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        int i = com.google.android.material.R.id.mtrl_motion_snapshot_view;
        if (view.getTag(i) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(i);
        }
        Context context = view.getContext();
        int iM14886private = m14886private(context);
        return iM14886private != -1 ? ShapeAppearanceModel.m13969if(context, iM14886private, 0).m14003const() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.m13966do().m14003const();
    }

    /* renamed from: strictfp, reason: not valid java name */
    private boolean m14888strictfp(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.f13501class;
        if (i == 0) {
            return TransitionUtils.m14816do(rectF2) > TransitionUtils.m14816do(rectF);
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f13501class);
    }

    /* renamed from: try, reason: not valid java name */
    private static void m14889try(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = TransitionUtils.m14811case(transitionValues.view, i);
        } else if (view != null) {
            transitionValues.view = view;
        } else {
            View view2 = transitionValues.view;
            int i2 = com.google.android.material.R.id.mtrl_motion_snapshot_view;
            if (view2.getTag(i2) instanceof View) {
                View view3 = (View) transitionValues.view.getTag(i2);
                transitionValues.view.setTag(i2, null);
                transitionValues.view = view3;
            }
        }
        View view4 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view4) && view4.getWidth() == 0 && view4.getHeight() == 0) {
            return;
        }
        RectF rectFM14810break = view4.getParent() == null ? TransitionUtils.m14810break(view4) : TransitionUtils.m14833this(view4);
        transitionValues.values.put(f13488implements, rectFM14810break);
        transitionValues.values.put(f13489instanceof, m14885new(view4, rectFM14810break, shapeAppearanceModel));
    }

    public void a(@ColorInt int i) {
        this.f13498break = i;
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m14890abstract() {
        return this.f13504do;
    }

    public void b(float f) {
        this.f13503default = f;
    }

    /* renamed from: break, reason: not valid java name */
    public float m14891break() {
        return this.f13503default;
    }

    public void c(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f13510import = shapeAppearanceModel;
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m14889try(transitionValues, this.f13519throw, this.f13505else, this.f13510import);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m14889try(transitionValues, this.f13516super, this.f13499case, this.f13522while);
    }

    @ColorInt
    /* renamed from: case, reason: not valid java name */
    public int m14892case() {
        return this.f13508goto;
    }

    @Nullable
    /* renamed from: catch, reason: not valid java name */
    public ShapeAppearanceModel m14893catch() {
        return this.f13510import;
    }

    @Nullable
    /* renamed from: class, reason: not valid java name */
    public View m14894class() {
        return this.f13519throw;
    }

    @IdRes
    /* renamed from: const, reason: not valid java name */
    public int m14895const() {
        return this.f13505else;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m14896continue() {
        return this.f13517switch;
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) throws Resources.NotFoundException {
        View viewM14836try;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get(f13488implements);
            ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get(f13489instanceof);
            if (rectF != null && shapeAppearanceModel != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get(f13488implements);
                ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get(f13489instanceof);
                if (rectF2 != null && shapeAppearanceModel2 != null) {
                    View view2 = transitionValues.view;
                    View view3 = transitionValues2.view;
                    View view4 = view3.getParent() != null ? view3 : view2;
                    if (this.f13521try == view4.getId()) {
                        viewM14836try = (View) view4.getParent();
                        view = view4;
                    } else {
                        viewM14836try = TransitionUtils.m14836try(view4, this.f13521try);
                        view = null;
                    }
                    RectF rectFM14833this = TransitionUtils.m14833this(viewM14836try);
                    float f = -rectFM14833this.left;
                    float f2 = -rectFM14833this.top;
                    RectF rectFM14881for = m14881for(viewM14836try, view, f, f2);
                    rectF.offset(f, f2);
                    rectF2.offset(f, f2);
                    boolean zM14888strictfp = m14888strictfp(rectF, rectF2);
                    if (!this.f13512new) {
                        m14884interface(view4.getContext(), zM14888strictfp);
                    }
                    C0072goto c0072goto = new C0072goto(getPathMotion(), view2, rectF, shapeAppearanceModel, m14882goto(this.f13520throws, view2), view3, rectF2, shapeAppearanceModel2, m14882goto(this.f13503default, view3), this.f13508goto, this.f13518this, this.f13498break, this.f13500catch, zM14888strictfp, this.f13517switch, com.google.android.material.transition.platform.Cdo.m14858do(this.f13502const, zM14888strictfp), com.google.android.material.transition.platform.Ctry.m14960do(this.f13506final, zM14888strictfp, rectF, rectF2), m14883if(zM14888strictfp), this.f13504do, null);
                    c0072goto.setBounds(Math.round(rectFM14881for.left), Math.round(rectFM14881for.top), Math.round(rectFM14881for.right), Math.round(rectFM14881for.bottom));
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new Cdo(c0072goto));
                    addListener(new Cif(viewM14836try, c0072goto, view2, view3));
                    return valueAnimatorOfFloat;
                }
            }
        }
        return null;
    }

    public void d(@Nullable View view) {
        this.f13519throw = view;
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    public View m14897default() {
        return this.f13516super;
    }

    public void e(@IdRes int i) {
        this.f13505else = i;
    }

    @IdRes
    /* renamed from: else, reason: not valid java name */
    public int m14898else() {
        return this.f13521try;
    }

    @IdRes
    /* renamed from: extends, reason: not valid java name */
    public int m14899extends() {
        return this.f13499case;
    }

    public void f(int i) {
        this.f13502const = i;
    }

    /* renamed from: final, reason: not valid java name */
    public int m14900final() {
        return this.f13502const;
    }

    public void g(@Nullable Ctry ctry) {
        this.f13511native = ctry;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f13495synchronized;
    }

    public void h(int i) {
        this.f13506final = i;
    }

    public void i(boolean z) {
        this.f13509if = z;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m14901implements(boolean z) {
        this.f13504do = z;
    }

    @Nullable
    /* renamed from: import, reason: not valid java name */
    public Ctry m14902import() {
        return this.f13513public;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m14903instanceof(@IdRes int i) {
        this.f13521try = i;
    }

    public void j(@Nullable Ctry ctry) {
        this.f13514return = ctry;
    }

    public void k(@Nullable Ctry ctry) {
        this.f13513public = ctry;
    }

    public void l(@ColorInt int i) {
        this.f13500catch = i;
    }

    public void m(@Nullable Ctry ctry) {
        this.f13515static = ctry;
    }

    public void n(@ColorInt int i) {
        this.f13518this = i;
    }

    @ColorInt
    /* renamed from: native, reason: not valid java name */
    public int m14904native() {
        return this.f13500catch;
    }

    public void o(float f) {
        this.f13520throws = f;
    }

    public void p(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f13522while = shapeAppearanceModel;
    }

    /* renamed from: package, reason: not valid java name */
    public int m14905package() {
        return this.f13501class;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m14906protected(@ColorInt int i) {
        this.f13508goto = i;
        this.f13518this = i;
        this.f13498break = i;
    }

    public void q(@Nullable View view) {
        this.f13516super = view;
    }

    public void r(@IdRes int i) {
        this.f13499case = i;
    }

    @Nullable
    /* renamed from: return, reason: not valid java name */
    public Ctry m14907return() {
        return this.f13515static;
    }

    public void s(int i) {
        this.f13501class = i;
    }

    @Override // android.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f13507for = true;
    }

    @ColorInt
    /* renamed from: static, reason: not valid java name */
    public int m14908static() {
        return this.f13518this;
    }

    @Nullable
    /* renamed from: super, reason: not valid java name */
    public Ctry m14909super() {
        return this.f13511native;
    }

    /* renamed from: switch, reason: not valid java name */
    public float m14910switch() {
        return this.f13520throws;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m14911synchronized(boolean z) {
        this.f13517switch = z;
    }

    @ColorInt
    /* renamed from: this, reason: not valid java name */
    public int m14912this() {
        return this.f13498break;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m14913throw() {
        return this.f13506final;
    }

    @Nullable
    /* renamed from: throws, reason: not valid java name */
    public ShapeAppearanceModel m14914throws() {
        return this.f13522while;
    }

    /* renamed from: transient, reason: not valid java name */
    public void m14915transient(@ColorInt int i) {
        this.f13508goto = i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public boolean m14916volatile() {
        return this.f13509if;
    }

    @Nullable
    /* renamed from: while, reason: not valid java name */
    public Ctry m14917while() {
        return this.f13514return;
    }

    public Cgoto(@NonNull Context context, boolean z) {
        this.f13504do = false;
        this.f13509if = false;
        this.f13507for = false;
        this.f13512new = false;
        this.f13521try = R.id.content;
        this.f13499case = -1;
        this.f13505else = -1;
        this.f13508goto = 0;
        this.f13518this = 0;
        this.f13498break = 0;
        this.f13500catch = 1375731712;
        this.f13501class = 0;
        this.f13502const = 0;
        this.f13506final = 0;
        this.f13517switch = Build.VERSION.SDK_INT >= 28;
        this.f13520throws = -1.0f;
        this.f13503default = -1.0f;
        m14884interface(context, z);
        this.f13512new = true;
    }
}
