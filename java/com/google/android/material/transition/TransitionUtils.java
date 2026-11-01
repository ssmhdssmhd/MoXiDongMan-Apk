package com.google.android.material.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.support.v4.Cprivate;
import android.support.v4.px0;
import android.support.v4.um1;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.transition.PathMotion;
import androidx.transition.PatternPathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.common.collect.LinkedHashMultimap;

/* loaded from: classes.dex */
class TransitionUtils {

    /* renamed from: case, reason: not valid java name */
    private static final String f13347case = ")";

    /* renamed from: do, reason: not valid java name */
    public static final int f13348do = -1;

    /* renamed from: else, reason: not valid java name */
    private static final int f13349else = 0;

    /* renamed from: for, reason: not valid java name */
    private static final String f13350for = "cubic-bezier";

    /* renamed from: goto, reason: not valid java name */
    private static final int f13351goto = 1;

    /* renamed from: if, reason: not valid java name */
    @AttrRes
    public static final int f13352if = 0;

    /* renamed from: new, reason: not valid java name */
    private static final String f13353new = "path";

    /* renamed from: this, reason: not valid java name */
    private static final RectF f13354this = new RectF();

    /* renamed from: try, reason: not valid java name */
    private static final String f13355try = "(";

    public interface CanvasOperation {
        void run(Canvas canvas);
    }

    public interface CornerSizeBinaryOperator {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    /* renamed from: com.google.android.material.transition.TransitionUtils$do, reason: invalid class name */
    public static class Cdo implements ShapeAppearanceModel.CornerSizeUnaryOperator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RectF f13356do;

        public Cdo(RectF rectF) {
            this.f13356do = rectF;
        }

        @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
        @NonNull
        public CornerSize apply(@NonNull CornerSize cornerSize) {
            return cornerSize instanceof um1 ? cornerSize : new um1(cornerSize.getCornerSize(this.f13356do) / this.f13356do.height());
        }
    }

    /* renamed from: com.google.android.material.transition.TransitionUtils$if, reason: invalid class name */
    public static class Cif implements CornerSizeBinaryOperator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RectF f13357do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13358for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ RectF f13359if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f13360new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f13361try;

        public Cif(RectF rectF, RectF rectF2, float f, float f2, float f3) {
            this.f13357do = rectF;
            this.f13359if = rectF2;
            this.f13358for = f;
            this.f13360new = f2;
            this.f13361try = f3;
        }

        @Override // com.google.android.material.transition.TransitionUtils.CornerSizeBinaryOperator
        @NonNull
        public CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
            return new Cprivate(TransitionUtils.m14762super(cornerSize.getCornerSize(this.f13357do), cornerSize2.getCornerSize(this.f13359if), this.f13358for, this.f13360new, this.f13361try));
        }
    }

    private TransitionUtils() {
    }

    /* renamed from: break, reason: not valid java name */
    public static RectF m14741break(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: case, reason: not valid java name */
    public static View m14742case(View view, @IdRes int i) {
        View viewFindViewById = view.findViewById(i);
        return viewFindViewById != null ? viewFindViewById : m14767try(view, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Rect m14743catch(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m14744class(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(f13355try);
        return str.startsWith(sb.toString()) && str.endsWith(f13347case);
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m14745const(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.m13978import().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.m13980public().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.m13974class().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.m13972break().getCornerSize(rectF) == 0.0f) ? false : true;
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    public static PathMotion m14746default(Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.type;
        if (i2 != 16) {
            if (i2 == 3) {
                return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
            }
            throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
        }
        int i3 = typedValue.data;
        if (i3 == 0) {
            return null;
        }
        if (i3 == 1) {
            return new MaterialArcMotion();
        }
        throw new IllegalArgumentException("Invalid motion path type: " + i3);
    }

    /* renamed from: do, reason: not valid java name */
    public static float m14747do(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* renamed from: else, reason: not valid java name */
    private static float m14748else(String[] strArr, int i) throws NumberFormatException {
        float f = Float.parseFloat(strArr[i]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }

    /* renamed from: extends, reason: not valid java name */
    private static int m14749extends(Canvas canvas, Rect rect, int i) {
        RectF rectF = f13354this;
        rectF.set(rect);
        return Build.VERSION.SDK_INT >= 21 ? canvas.saveLayerAlpha(rectF, i) : canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i, 31);
    }

    /* renamed from: final, reason: not valid java name */
    public static float m14750final(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m14751finally(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            m14749extends(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(iSave);
    }

    /* renamed from: for, reason: not valid java name */
    public static Shader m14752for(@ColorInt int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m14753goto(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    /* renamed from: if, reason: not valid java name */
    public static ShapeAppearanceModel m14754if(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return shapeAppearanceModel.m13975default(new Cdo(rectF));
    }

    /* renamed from: import, reason: not valid java name */
    public static ShapeAppearanceModel m14755import(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : m14758package(shapeAppearanceModel, shapeAppearanceModel2, rectF, new Cif(rectF, rectF2, f, f2, f3));
    }

    /* renamed from: native, reason: not valid java name */
    public static void m14756native(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static <T> T m14757new(@Nullable T t, @NonNull T t2) {
        return t != null ? t : t2;
    }

    /* renamed from: package, reason: not valid java name */
    public static ShapeAppearanceModel m14758package(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        return (m14745const(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).m13982static().m14010instanceof(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13978import(), shapeAppearanceModel2.m13978import())).d(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13980public(), shapeAppearanceModel2.m13980public())).m14005default(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13972break(), shapeAppearanceModel2.m13972break())).m14002abstract(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13974class(), shapeAppearanceModel2.m13974class())).m14003const();
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m14759public(Transition transition, Context context, @AttrRes int i) {
        int iM6249try;
        if (i == 0 || transition.getDuration() != -1 || (iM6249try = px0.m6249try(context, i, -1)) == -1) {
            return false;
        }
        transition.setDuration(iM6249try);
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m14760return(Transition transition, Context context, @AttrRes int i, TimeInterpolator timeInterpolator) {
        if (i == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(m14766throws(context, i, timeInterpolator));
        return true;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m14761static(Transition transition, Context context, @AttrRes int i) {
        PathMotion pathMotionM14746default;
        if (i == 0 || (pathMotionM14746default = m14746default(context, i)) == null) {
            return false;
        }
        transition.setPathMotion(pathMotionM14746default);
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public static float m14762super(float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f5) {
        return m14765throw(f, f2, f3, f4, f5, false);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m14763switch(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static RectF m14764this(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    /* renamed from: throw, reason: not valid java name */
    public static float m14765throw(float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, @FloatRange(from = 0.0d) float f5, boolean z) {
        return (!z || (f5 >= 0.0f && f5 <= 1.0f)) ? f5 < f3 ? f : f5 > f4 ? f2 : m14750final(f, f2, (f5 - f3) / (f4 - f3)) : m14750final(f, f2, f5);
    }

    /* renamed from: throws, reason: not valid java name */
    public static TimeInterpolator m14766throws(Context context, @AttrRes int i, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be a string");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!m14744class(strValueOf, f13350for)) {
            if (m14744class(strValueOf, f13353new)) {
                return PathInterpolatorCompat.create(PathParser.createPathFromPathData(m14753goto(strValueOf, f13353new)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: " + strValueOf);
        }
        String[] strArrSplit = m14753goto(strValueOf, f13350for).split(",");
        if (strArrSplit.length == 4) {
            return PathInterpolatorCompat.create(m14748else(strArrSplit, 0), m14748else(strArrSplit, 1), m14748else(strArrSplit, 2), m14748else(strArrSplit, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    /* renamed from: try, reason: not valid java name */
    public static View m14767try(View view, @IdRes int i) throws Resources.NotFoundException {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* renamed from: while, reason: not valid java name */
    public static int m14768while(int i, int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) m14750final(i, i2, (f3 - f) / (f2 - f));
    }
}
