package com.google.android.material.transition;

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
import android.support.v4.w1;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.transition.TransitionUtils;
import com.google.common.collect.LinkedHashMultimap;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class MaterialContainerTransform extends Transition {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f13237abstract = 1;
    private static final Ccase b;

    /* renamed from: continue, reason: not valid java name */
    public static final int f13238continue = 2;
    private static final Ccase d;
    private static final float e = -1.0f;

    /* renamed from: extends, reason: not valid java name */
    public static final int f13239extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f13240finally = 1;

    /* renamed from: interface, reason: not valid java name */
    public static final int f13243interface = 1;

    /* renamed from: package, reason: not valid java name */
    public static final int f13244package = 2;

    /* renamed from: private, reason: not valid java name */
    public static final int f13245private = 0;

    /* renamed from: protected, reason: not valid java name */
    public static final int f13246protected = 2;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f13247strictfp = 3;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f13250volatile = 0;

    /* renamed from: break, reason: not valid java name */
    @ColorInt
    private int f13251break;

    /* renamed from: case, reason: not valid java name */
    @IdRes
    private int f13252case;

    /* renamed from: catch, reason: not valid java name */
    @ColorInt
    private int f13253catch;

    /* renamed from: class, reason: not valid java name */
    private int f13254class;

    /* renamed from: const, reason: not valid java name */
    private int f13255const;

    /* renamed from: default, reason: not valid java name */
    private float f13256default;

    /* renamed from: do, reason: not valid java name */
    private boolean f13257do;

    /* renamed from: else, reason: not valid java name */
    @IdRes
    private int f13258else;

    /* renamed from: final, reason: not valid java name */
    private int f13259final;

    /* renamed from: for, reason: not valid java name */
    private boolean f13260for;

    /* renamed from: goto, reason: not valid java name */
    @ColorInt
    private int f13261goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f13262if;

    /* renamed from: import, reason: not valid java name */
    @Nullable
    private ShapeAppearanceModel f13263import;

    /* renamed from: native, reason: not valid java name */
    @Nullable
    private Ctry f13264native;

    /* renamed from: new, reason: not valid java name */
    private boolean f13265new;

    /* renamed from: public, reason: not valid java name */
    @Nullable
    private Ctry f13266public;

    /* renamed from: return, reason: not valid java name */
    @Nullable
    private Ctry f13267return;

    /* renamed from: static, reason: not valid java name */
    @Nullable
    private Ctry f13268static;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private View f13269super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f13270switch;

    /* renamed from: this, reason: not valid java name */
    @ColorInt
    private int f13271this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private View f13272throw;

    /* renamed from: throws, reason: not valid java name */
    private float f13273throws;

    /* renamed from: try, reason: not valid java name */
    @IdRes
    private int f13274try;

    /* renamed from: while, reason: not valid java name */
    @Nullable
    private ShapeAppearanceModel f13275while;

    /* renamed from: transient, reason: not valid java name */
    private static final String f13249transient = MaterialContainerTransform.class.getSimpleName();

    /* renamed from: implements, reason: not valid java name */
    private static final String f13241implements = "materialContainerTransition:bounds";

    /* renamed from: instanceof, reason: not valid java name */
    private static final String f13242instanceof = "materialContainerTransition:shapeAppearance";

    /* renamed from: synchronized, reason: not valid java name */
    private static final String[] f13248synchronized = {f13241implements, f13242instanceof};
    private static final Ccase a = new Ccase(new Ctry(0.0f, 0.25f), new Ctry(0.0f, 1.0f), new Ctry(0.0f, 1.0f), new Ctry(0.0f, 0.75f), null);
    private static final Ccase c = new Ccase(new Ctry(0.1f, 0.4f), new Ctry(0.1f, 1.0f), new Ctry(0.1f, 1.0f), new Ctry(0.1f, 0.9f), null);

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final Ctry f13276do;

        /* renamed from: for, reason: not valid java name */
        @NonNull
        private final Ctry f13277for;

        /* renamed from: if, reason: not valid java name */
        @NonNull
        private final Ctry f13278if;

        /* renamed from: new, reason: not valid java name */
        @NonNull
        private final Ctry f13279new;

        public /* synthetic */ Ccase(Ctry ctry, Ctry ctry2, Ctry ctry3, Ctry ctry4, Cdo cdo) {
            this(ctry, ctry2, ctry3, ctry4);
        }

        private Ccase(@NonNull Ctry ctry, @NonNull Ctry ctry2, @NonNull Ctry ctry3, @NonNull Ctry ctry4) {
            this.f13276do = ctry;
            this.f13278if = ctry2;
            this.f13277for = ctry3;
            this.f13279new = ctry4;
        }
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cgoto f13280do;

        public Cdo(Cgoto cgoto) {
            this.f13280do = cgoto;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13280do.m14713super(valueAnimator.getAnimatedFraction());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$else, reason: invalid class name */
    public @interface Celse {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$for, reason: invalid class name */
    public @interface Cfor {
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$goto, reason: invalid class name */
    public static final class Cgoto extends Drawable {
        private static final int a = -7829368;
        private static final float b = 0.3f;
        private static final float c = 1.5f;

        /* renamed from: synchronized, reason: not valid java name */
        private static final int f13282synchronized = 754974720;

        /* renamed from: abstract, reason: not valid java name */
        private final boolean f13283abstract;

        /* renamed from: break, reason: not valid java name */
        private final Paint f13284break;

        /* renamed from: case, reason: not valid java name */
        private final RectF f13285case;

        /* renamed from: catch, reason: not valid java name */
        private final Paint f13286catch;

        /* renamed from: class, reason: not valid java name */
        private final Paint f13287class;

        /* renamed from: const, reason: not valid java name */
        private final Paint f13288const;

        /* renamed from: continue, reason: not valid java name */
        private final Paint f13289continue;

        /* renamed from: default, reason: not valid java name */
        private final RectF f13290default;

        /* renamed from: do, reason: not valid java name */
        private final View f13291do;

        /* renamed from: else, reason: not valid java name */
        private final ShapeAppearanceModel f13292else;

        /* renamed from: extends, reason: not valid java name */
        private final RectF f13293extends;

        /* renamed from: final, reason: not valid java name */
        private final com.google.android.material.transition.Celse f13294final;

        /* renamed from: finally, reason: not valid java name */
        private final Ccase f13295finally;

        /* renamed from: for, reason: not valid java name */
        private final ShapeAppearanceModel f13296for;

        /* renamed from: goto, reason: not valid java name */
        private final float f13297goto;

        /* renamed from: if, reason: not valid java name */
        private final RectF f13298if;

        /* renamed from: implements, reason: not valid java name */
        private float f13299implements;

        /* renamed from: import, reason: not valid java name */
        private final boolean f13300import;

        /* renamed from: instanceof, reason: not valid java name */
        private float f13301instanceof;

        /* renamed from: interface, reason: not valid java name */
        private com.google.android.material.transition.Ccase f13302interface;

        /* renamed from: native, reason: not valid java name */
        private final float f13303native;

        /* renamed from: new, reason: not valid java name */
        private final float f13304new;

        /* renamed from: package, reason: not valid java name */
        private final FadeModeEvaluator f13305package;

        /* renamed from: private, reason: not valid java name */
        private final FitModeEvaluator f13306private;

        /* renamed from: protected, reason: not valid java name */
        private RectF f13307protected;

        /* renamed from: public, reason: not valid java name */
        private final float f13308public;

        /* renamed from: return, reason: not valid java name */
        private final boolean f13309return;

        /* renamed from: static, reason: not valid java name */
        private final MaterialShapeDrawable f13310static;

        /* renamed from: strictfp, reason: not valid java name */
        private final Path f13311strictfp;

        /* renamed from: super, reason: not valid java name */
        private final PathMeasure f13312super;

        /* renamed from: switch, reason: not valid java name */
        private final RectF f13313switch;

        /* renamed from: this, reason: not valid java name */
        private final Paint f13314this;

        /* renamed from: throw, reason: not valid java name */
        private final float f13315throw;

        /* renamed from: throws, reason: not valid java name */
        private final RectF f13316throws;

        /* renamed from: transient, reason: not valid java name */
        private float f13317transient;

        /* renamed from: try, reason: not valid java name */
        private final View f13318try;

        /* renamed from: volatile, reason: not valid java name */
        private com.google.android.material.transition.Cif f13319volatile;

        /* renamed from: while, reason: not valid java name */
        private final float[] f13320while;

        /* renamed from: com.google.android.material.transition.MaterialContainerTransform$goto$do, reason: invalid class name */
        public class Cdo implements TransitionUtils.CanvasOperation {
            public Cdo() {
            }

            @Override // com.google.android.material.transition.TransitionUtils.CanvasOperation
            public void run(Canvas canvas) {
                Cgoto.this.f13291do.draw(canvas);
            }
        }

        /* renamed from: com.google.android.material.transition.MaterialContainerTransform$goto$if, reason: invalid class name */
        public class Cif implements TransitionUtils.CanvasOperation {
            public Cif() {
            }

            @Override // com.google.android.material.transition.TransitionUtils.CanvasOperation
            public void run(Canvas canvas) {
                Cgoto.this.f13318try.draw(canvas);
            }
        }

        public /* synthetic */ Cgoto(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, int i, int i2, int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, Ccase ccase, boolean z3, Cdo cdo) {
            this(pathMotion, view, rectF, shapeAppearanceModel, f, view2, rectF2, shapeAppearanceModel2, f2, i, i2, i3, i4, z, z2, fadeModeEvaluator, fitModeEvaluator, ccase, z3);
        }

        /* renamed from: break, reason: not valid java name */
        private void m14701break(Canvas canvas) {
            ShapeAppearanceModel shapeAppearanceModelM14781for = this.f13294final.m14781for();
            if (!shapeAppearanceModelM14781for.m13981return(this.f13307protected)) {
                canvas.drawPath(this.f13294final.m14783new(), this.f13287class);
            } else {
                float cornerSize = shapeAppearanceModelM14781for.m13978import().getCornerSize(this.f13307protected);
                canvas.drawRoundRect(this.f13307protected, cornerSize, cornerSize, this.f13287class);
            }
        }

        /* renamed from: case, reason: not valid java name */
        private void m14702case(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF pointFM14705const = m14705const(rectF);
            if (this.f13301instanceof == 0.0f) {
                path.reset();
                path.moveTo(pointFM14705const.x, pointFM14705const.y);
            } else {
                path.lineTo(pointFM14705const.x, pointFM14705const.y);
                this.f13289continue.setColor(i);
                canvas.drawPath(path, this.f13289continue);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        private void m14703catch(Canvas canvas) {
            m14708final(canvas, this.f13286catch);
            Rect bounds = getBounds();
            RectF rectF = this.f13290default;
            TransitionUtils.m14751finally(canvas, bounds, rectF.left, rectF.top, this.f13302interface.f13372if, this.f13319volatile.f13397if, new Cif());
        }

        /* renamed from: class, reason: not valid java name */
        private void m14704class(Canvas canvas) {
            m14708final(canvas, this.f13284break);
            Rect bounds = getBounds();
            RectF rectF = this.f13313switch;
            TransitionUtils.m14751finally(canvas, bounds, rectF.left, rectF.top, this.f13302interface.f13370do, this.f13319volatile.f13395do, new Cdo());
        }

        /* renamed from: const, reason: not valid java name */
        private static PointF m14705const(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        /* renamed from: else, reason: not valid java name */
        private void m14707else(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.f13289continue.setColor(i);
            canvas.drawRect(rectF, this.f13289continue);
        }

        /* renamed from: final, reason: not valid java name */
        private void m14708final(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* renamed from: goto, reason: not valid java name */
        private void m14710goto(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f13294final.m14783new(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                m14701break(canvas);
            } else {
                m14714this(canvas);
            }
            canvas.restore();
        }

        /* renamed from: new, reason: not valid java name */
        private static float m14712new(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public void m14713super(float f) {
            if (this.f13301instanceof != f) {
                m14715throw(f);
            }
        }

        /* renamed from: this, reason: not valid java name */
        private void m14714this(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f13310static;
            RectF rectF = this.f13307protected;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f13310static.y(this.f13317transient);
            this.f13310static.M((int) this.f13299implements);
            this.f13310static.setShapeAppearanceModel(this.f13294final.m14781for());
            this.f13310static.draw(canvas);
        }

        /* renamed from: throw, reason: not valid java name */
        private void m14715throw(float f) {
            float f2;
            float f3;
            this.f13301instanceof = f;
            this.f13288const.setAlpha((int) (this.f13300import ? TransitionUtils.m14750final(0.0f, 255.0f, f) : TransitionUtils.m14750final(255.0f, 0.0f, f)));
            this.f13312super.getPosTan(this.f13315throw * f, this.f13320while, null);
            float[] fArr = this.f13320while;
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
                this.f13312super.getPosTan(this.f13315throw * f2, fArr, null);
                float[] fArr2 = this.f13320while;
                f4 += (f4 - fArr2[0]) * f3;
                f5 += (f5 - fArr2[1]) * f3;
            }
            float f6 = f4;
            float f7 = f5;
            com.google.android.material.transition.Ccase ccaseEvaluate = this.f13306private.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13295finally.f13278if.f13328do))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13295finally.f13278if.f13329if))).floatValue(), this.f13298if.width(), this.f13298if.height(), this.f13285case.width(), this.f13285case.height());
            this.f13302interface = ccaseEvaluate;
            RectF rectF = this.f13313switch;
            float f8 = ccaseEvaluate.f13371for;
            rectF.set(f6 - (f8 / 2.0f), f7, (f8 / 2.0f) + f6, ccaseEvaluate.f13373new + f7);
            RectF rectF2 = this.f13290default;
            com.google.android.material.transition.Ccase ccase = this.f13302interface;
            float f9 = ccase.f13374try;
            rectF2.set(f6 - (f9 / 2.0f), f7, f6 + (f9 / 2.0f), ccase.f13369case + f7);
            this.f13316throws.set(this.f13313switch);
            this.f13293extends.set(this.f13290default);
            float fFloatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13295finally.f13277for.f13328do))).floatValue();
            float fFloatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13295finally.f13277for.f13329if))).floatValue();
            boolean zShouldMaskStartBounds = this.f13306private.shouldMaskStartBounds(this.f13302interface);
            RectF rectF3 = zShouldMaskStartBounds ? this.f13316throws : this.f13293extends;
            float fM14762super = TransitionUtils.m14762super(0.0f, 1.0f, fFloatValue, fFloatValue2, f);
            if (!zShouldMaskStartBounds) {
                fM14762super = 1.0f - fM14762super;
            }
            this.f13306private.applyMask(rectF3, fM14762super, this.f13302interface);
            this.f13307protected = new RectF(Math.min(this.f13316throws.left, this.f13293extends.left), Math.min(this.f13316throws.top, this.f13293extends.top), Math.max(this.f13316throws.right, this.f13293extends.right), Math.max(this.f13316throws.bottom, this.f13293extends.bottom));
            this.f13294final.m14782if(f, this.f13296for, this.f13292else, this.f13313switch, this.f13316throws, this.f13293extends, this.f13295finally.f13279new);
            this.f13317transient = TransitionUtils.m14750final(this.f13304new, this.f13297goto, f);
            float fM14712new = m14712new(this.f13307protected, this.f13303native);
            float fM14716try = m14716try(this.f13307protected, this.f13308public);
            float f10 = this.f13317transient;
            float f11 = (int) (fM14716try * f10);
            this.f13299implements = f11;
            this.f13287class.setShadowLayer(f10, (int) (fM14712new * f10), f11, f13282synchronized);
            this.f13319volatile = this.f13305package.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13295finally.f13276do.f13328do))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f13295finally.f13276do.f13329if))).floatValue(), 0.35f);
            if (this.f13284break.getColor() != 0) {
                this.f13284break.setAlpha(this.f13319volatile.f13395do);
            }
            if (this.f13286catch.getColor() != 0) {
                this.f13286catch.setAlpha(this.f13319volatile.f13397if);
            }
            invalidateSelf();
        }

        /* renamed from: try, reason: not valid java name */
        private static float m14716try(RectF rectF, float f) {
            return (rectF.centerY() / f) * 1.5f;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f13288const.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f13288const);
            }
            int iSave = this.f13283abstract ? canvas.save() : -1;
            if (this.f13309return && this.f13317transient > 0.0f) {
                m14710goto(canvas);
            }
            this.f13294final.m14780do(canvas);
            m14708final(canvas, this.f13314this);
            if (this.f13319volatile.f13396for) {
                m14704class(canvas);
                m14703catch(canvas);
            } else {
                m14703catch(canvas);
                m14704class(canvas);
            }
            if (this.f13283abstract) {
                canvas.restoreToCount(iSave);
                m14702case(canvas, this.f13313switch, this.f13311strictfp, -65281);
                m14707else(canvas, this.f13316throws, InputDeviceCompat.SOURCE_ANY);
                m14707else(canvas, this.f13313switch, -16711936);
                m14707else(canvas, this.f13293extends, -16711681);
                m14707else(canvas, this.f13290default, QMUIProgressBar.f19440abstract);
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

        private Cgoto(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, Ccase ccase, boolean z3) {
            Paint paint = new Paint();
            this.f13314this = paint;
            Paint paint2 = new Paint();
            this.f13284break = paint2;
            Paint paint3 = new Paint();
            this.f13286catch = paint3;
            this.f13287class = new Paint();
            Paint paint4 = new Paint();
            this.f13288const = paint4;
            this.f13294final = new com.google.android.material.transition.Celse();
            this.f13320while = new float[]{rectF.centerX(), rectF.top};
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f13310static = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.f13289continue = paint5;
            this.f13311strictfp = new Path();
            this.f13291do = view;
            this.f13298if = rectF;
            this.f13296for = shapeAppearanceModel;
            this.f13304new = f;
            this.f13318try = view2;
            this.f13285case = rectF2;
            this.f13292else = shapeAppearanceModel2;
            this.f13297goto = f2;
            this.f13300import = z;
            this.f13309return = z2;
            this.f13305package = fadeModeEvaluator;
            this.f13306private = fitModeEvaluator;
            this.f13295finally = ccase;
            this.f13283abstract = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.f13303native = r12.widthPixels;
            this.f13308public = r12.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.z(ColorStateList.valueOf(0));
            materialShapeDrawable.I(2);
            materialShapeDrawable.F(false);
            materialShapeDrawable.G(-7829368);
            RectF rectF3 = new RectF(rectF);
            this.f13313switch = rectF3;
            this.f13316throws = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f13290default = rectF4;
            this.f13293extends = new RectF(rectF4);
            PointF pointFM14705const = m14705const(rectF);
            PointF pointFM14705const2 = m14705const(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(pointFM14705const.x, pointFM14705const.y, pointFM14705const2.x, pointFM14705const2.y), false);
            this.f13312super = pathMeasure;
            this.f13315throw = pathMeasure.getLength();
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(TransitionUtils.m14752for(i4));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            m14715throw(0.0f);
        }
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$if, reason: invalid class name */
    public class Cif extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13323do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ View f13324for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cgoto f13325if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ View f13326new;

        public Cif(View view, Cgoto cgoto, View view2, View view3) {
            this.f13323do = view;
            this.f13325if = cgoto;
            this.f13324for = view2;
            this.f13326new = view3;
        }

        @Override // com.google.android.material.transition.Ccatch, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f13262if) {
                return;
            }
            this.f13324for.setAlpha(1.0f);
            this.f13326new.setAlpha(1.0f);
            ViewUtils.m13619goto(this.f13323do).remove(this.f13325if);
        }

        @Override // com.google.android.material.transition.Ccatch, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            ViewUtils.m13619goto(this.f13323do).add(this.f13325if);
            this.f13324for.setAlpha(0.0f);
            this.f13326new.setAlpha(0.0f);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$new, reason: invalid class name */
    public @interface Cnew {
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        private final float f13328do;

        /* renamed from: if, reason: not valid java name */
        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        private final float f13329if;

        public Ctry(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2) {
            this.f13328do = f;
            this.f13329if = f2;
        }

        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        /* renamed from: for, reason: not valid java name */
        public float m14719for() {
            return this.f13329if;
        }

        @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
        /* renamed from: new, reason: not valid java name */
        public float m14720new() {
            return this.f13328do;
        }
    }

    static {
        Cdo cdo = null;
        b = new Ccase(new Ctry(0.6f, 0.9f), new Ctry(0.0f, 1.0f), new Ctry(0.0f, 0.9f), new Ctry(0.3f, 0.9f), cdo);
        d = new Ccase(new Ctry(0.6f, 0.9f), new Ctry(0.0f, 0.9f), new Ctry(0.0f, 0.9f), new Ctry(0.2f, 0.9f), cdo);
    }

    public MaterialContainerTransform() {
        this.f13257do = false;
        this.f13262if = false;
        this.f13260for = false;
        this.f13265new = false;
        this.f13274try = R.id.content;
        this.f13252case = -1;
        this.f13258else = -1;
        this.f13261goto = 0;
        this.f13271this = 0;
        this.f13251break = 0;
        this.f13253catch = 1375731712;
        this.f13254class = 0;
        this.f13255const = 0;
        this.f13259final = 0;
        this.f13270switch = Build.VERSION.SDK_INT >= 28;
        this.f13273throws = -1.0f;
        this.f13256default = -1.0f;
    }

    /* renamed from: finally, reason: not valid java name */
    private Ccase m14659finally(boolean z, Ccase ccase, Ccase ccase2) {
        if (!z) {
            ccase = ccase2;
        }
        return new Ccase((Ctry) TransitionUtils.m14757new(this.f13264native, ccase.f13276do), (Ctry) TransitionUtils.m14757new(this.f13266public, ccase.f13278if), (Ctry) TransitionUtils.m14757new(this.f13267return, ccase.f13277for), (Ctry) TransitionUtils.m14757new(this.f13268static, ccase.f13279new), null);
    }

    /* renamed from: for, reason: not valid java name */
    private static RectF m14660for(View view, @Nullable View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF rectFM14764this = TransitionUtils.m14764this(view2);
        rectFM14764this.offset(f, f2);
        return rectFM14764this;
    }

    /* renamed from: goto, reason: not valid java name */
    private static float m14661goto(float f, View view) {
        return f != -1.0f ? f : ViewCompat.getElevation(view);
    }

    /* renamed from: if, reason: not valid java name */
    private Ccase m14662if(boolean z) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof MaterialArcMotion)) ? m14659finally(z, c, d) : m14659finally(z, a, b);
    }

    /* renamed from: interface, reason: not valid java name */
    private void m14663interface(Context context, boolean z) {
        TransitionUtils.m14760return(this, context, com.google.android.material.R.attr.motionEasingStandard, w1.f7371if);
        TransitionUtils.m14759public(this, context, z ? com.google.android.material.R.attr.motionDurationLong1 : com.google.android.material.R.attr.motionDurationMedium2);
        if (this.f13260for) {
            return;
        }
        TransitionUtils.m14761static(this, context, com.google.android.material.R.attr.motionPath);
    }

    /* renamed from: new, reason: not valid java name */
    private static ShapeAppearanceModel m14664new(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.m14754if(m14666public(view, shapeAppearanceModel), rectF);
    }

    @StyleRes
    /* renamed from: private, reason: not valid java name */
    private static int m14665private(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: public, reason: not valid java name */
    private static ShapeAppearanceModel m14666public(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        int i = com.google.android.material.R.id.mtrl_motion_snapshot_view;
        if (view.getTag(i) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(i);
        }
        Context context = view.getContext();
        int iM14665private = m14665private(context);
        return iM14665private != -1 ? ShapeAppearanceModel.m13969if(context, iM14665private, 0).m14003const() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.m13966do().m14003const();
    }

    /* renamed from: strictfp, reason: not valid java name */
    private boolean m14667strictfp(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.f13254class;
        if (i == 0) {
            return TransitionUtils.m14747do(rectF2) > TransitionUtils.m14747do(rectF);
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f13254class);
    }

    /* renamed from: try, reason: not valid java name */
    private static void m14668try(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = TransitionUtils.m14742case(transitionValues.view, i);
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
        RectF rectFM14741break = view4.getParent() == null ? TransitionUtils.m14741break(view4) : TransitionUtils.m14764this(view4);
        transitionValues.values.put(f13241implements, rectFM14741break);
        transitionValues.values.put(f13242instanceof, m14664new(view4, rectFM14741break, shapeAppearanceModel));
    }

    public void a(@ColorInt int i) {
        this.f13251break = i;
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m14669abstract() {
        return this.f13257do;
    }

    public void b(float f) {
        this.f13256default = f;
    }

    /* renamed from: break, reason: not valid java name */
    public float m14670break() {
        return this.f13256default;
    }

    public void c(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f13263import = shapeAppearanceModel;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m14668try(transitionValues, this.f13272throw, this.f13258else, this.f13263import);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m14668try(transitionValues, this.f13269super, this.f13252case, this.f13275while);
    }

    @ColorInt
    /* renamed from: case, reason: not valid java name */
    public int m14671case() {
        return this.f13261goto;
    }

    @Nullable
    /* renamed from: catch, reason: not valid java name */
    public ShapeAppearanceModel m14672catch() {
        return this.f13263import;
    }

    @Nullable
    /* renamed from: class, reason: not valid java name */
    public View m14673class() {
        return this.f13272throw;
    }

    @IdRes
    /* renamed from: const, reason: not valid java name */
    public int m14674const() {
        return this.f13258else;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m14675continue() {
        return this.f13270switch;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) throws Resources.NotFoundException {
        View viewM14767try;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get(f13241implements);
            ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get(f13242instanceof);
            if (rectF != null && shapeAppearanceModel != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get(f13241implements);
                ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get(f13242instanceof);
                if (rectF2 != null && shapeAppearanceModel2 != null) {
                    View view2 = transitionValues.view;
                    View view3 = transitionValues2.view;
                    View view4 = view3.getParent() != null ? view3 : view2;
                    if (this.f13274try == view4.getId()) {
                        viewM14767try = (View) view4.getParent();
                        view = view4;
                    } else {
                        viewM14767try = TransitionUtils.m14767try(view4, this.f13274try);
                        view = null;
                    }
                    RectF rectFM14764this = TransitionUtils.m14764this(viewM14767try);
                    float f = -rectFM14764this.left;
                    float f2 = -rectFM14764this.top;
                    RectF rectFM14660for = m14660for(viewM14767try, view, f, f2);
                    rectF.offset(f, f2);
                    rectF2.offset(f, f2);
                    boolean zM14667strictfp = m14667strictfp(rectF, rectF2);
                    if (!this.f13265new) {
                        m14663interface(view4.getContext(), zM14667strictfp);
                    }
                    Cgoto cgoto = new Cgoto(getPathMotion(), view2, rectF, shapeAppearanceModel, m14661goto(this.f13273throws, view2), view3, rectF2, shapeAppearanceModel2, m14661goto(this.f13256default, view3), this.f13261goto, this.f13271this, this.f13251break, this.f13253catch, zM14667strictfp, this.f13270switch, com.google.android.material.transition.Cdo.m14779do(this.f13255const, zM14667strictfp), com.google.android.material.transition.Ctry.m14975do(this.f13259final, zM14667strictfp, rectF, rectF2), m14662if(zM14667strictfp), this.f13257do, null);
                    cgoto.setBounds(Math.round(rectFM14660for.left), Math.round(rectFM14660for.top), Math.round(rectFM14660for.right), Math.round(rectFM14660for.bottom));
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new Cdo(cgoto));
                    addListener(new Cif(viewM14767try, cgoto, view2, view3));
                    return valueAnimatorOfFloat;
                }
            }
        }
        return null;
    }

    public void d(@Nullable View view) {
        this.f13272throw = view;
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    public View m14676default() {
        return this.f13269super;
    }

    public void e(@IdRes int i) {
        this.f13258else = i;
    }

    @IdRes
    /* renamed from: else, reason: not valid java name */
    public int m14677else() {
        return this.f13274try;
    }

    @IdRes
    /* renamed from: extends, reason: not valid java name */
    public int m14678extends() {
        return this.f13252case;
    }

    public void f(int i) {
        this.f13255const = i;
    }

    /* renamed from: final, reason: not valid java name */
    public int m14679final() {
        return this.f13255const;
    }

    public void g(@Nullable Ctry ctry) {
        this.f13264native = ctry;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f13248synchronized;
    }

    public void h(int i) {
        this.f13259final = i;
    }

    public void i(boolean z) {
        this.f13262if = z;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m14680implements(boolean z) {
        this.f13257do = z;
    }

    @Nullable
    /* renamed from: import, reason: not valid java name */
    public Ctry m14681import() {
        return this.f13266public;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m14682instanceof(@IdRes int i) {
        this.f13274try = i;
    }

    public void j(@Nullable Ctry ctry) {
        this.f13267return = ctry;
    }

    public void k(@Nullable Ctry ctry) {
        this.f13266public = ctry;
    }

    public void l(@ColorInt int i) {
        this.f13253catch = i;
    }

    public void m(@Nullable Ctry ctry) {
        this.f13268static = ctry;
    }

    public void n(@ColorInt int i) {
        this.f13271this = i;
    }

    @ColorInt
    /* renamed from: native, reason: not valid java name */
    public int m14683native() {
        return this.f13253catch;
    }

    public void o(float f) {
        this.f13273throws = f;
    }

    public void p(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f13275while = shapeAppearanceModel;
    }

    /* renamed from: package, reason: not valid java name */
    public int m14684package() {
        return this.f13254class;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m14685protected(@ColorInt int i) {
        this.f13261goto = i;
        this.f13271this = i;
        this.f13251break = i;
    }

    public void q(@Nullable View view) {
        this.f13269super = view;
    }

    public void r(@IdRes int i) {
        this.f13252case = i;
    }

    @Nullable
    /* renamed from: return, reason: not valid java name */
    public Ctry m14686return() {
        return this.f13268static;
    }

    public void s(int i) {
        this.f13254class = i;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f13260for = true;
    }

    @ColorInt
    /* renamed from: static, reason: not valid java name */
    public int m14687static() {
        return this.f13271this;
    }

    @Nullable
    /* renamed from: super, reason: not valid java name */
    public Ctry m14688super() {
        return this.f13264native;
    }

    /* renamed from: switch, reason: not valid java name */
    public float m14689switch() {
        return this.f13273throws;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m14690synchronized(boolean z) {
        this.f13270switch = z;
    }

    @ColorInt
    /* renamed from: this, reason: not valid java name */
    public int m14691this() {
        return this.f13251break;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m14692throw() {
        return this.f13259final;
    }

    @Nullable
    /* renamed from: throws, reason: not valid java name */
    public ShapeAppearanceModel m14693throws() {
        return this.f13275while;
    }

    /* renamed from: transient, reason: not valid java name */
    public void m14694transient(@ColorInt int i) {
        this.f13261goto = i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public boolean m14695volatile() {
        return this.f13262if;
    }

    @Nullable
    /* renamed from: while, reason: not valid java name */
    public Ctry m14696while() {
        return this.f13267return;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z) {
        this.f13257do = false;
        this.f13262if = false;
        this.f13260for = false;
        this.f13265new = false;
        this.f13274try = R.id.content;
        this.f13252case = -1;
        this.f13258else = -1;
        this.f13261goto = 0;
        this.f13271this = 0;
        this.f13251break = 0;
        this.f13253catch = 1375731712;
        this.f13254class = 0;
        this.f13255const = 0;
        this.f13259final = 0;
        this.f13270switch = Build.VERSION.SDK_INT >= 28;
        this.f13273throws = -1.0f;
        this.f13256default = -1.0f;
        m14663interface(context, z);
        this.f13265new = true;
    }
}
