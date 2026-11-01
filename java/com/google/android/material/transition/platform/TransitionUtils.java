package com.google.android.material.transition.platform;

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
import android.support.v4.ox0;
import android.support.v4.px0;
import android.support.v4.um1;
import android.transition.PathMotion;
import android.transition.PatternPathMotion;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.common.collect.LinkedHashMultimap;

@RequiresApi(21)
/* loaded from: classes.dex */
class TransitionUtils {

    /* renamed from: case, reason: not valid java name */
    private static final String f13419case = ")";

    /* renamed from: do, reason: not valid java name */
    public static final int f13420do = -1;

    /* renamed from: else, reason: not valid java name */
    private static final int f13421else = 0;

    /* renamed from: for, reason: not valid java name */
    private static final String f13422for = "cubic-bezier";

    /* renamed from: goto, reason: not valid java name */
    private static final int f13423goto = 1;

    /* renamed from: if, reason: not valid java name */
    @AttrRes
    public static final int f13424if = 0;

    /* renamed from: new, reason: not valid java name */
    private static final String f13425new = "path";

    /* renamed from: this, reason: not valid java name */
    private static final RectF f13426this = new RectF();

    /* renamed from: try, reason: not valid java name */
    private static final String f13427try = "(";

    public interface CanvasOperation {
        void run(Canvas canvas);
    }

    public interface CornerSizeBinaryOperator {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    /* renamed from: com.google.android.material.transition.platform.TransitionUtils$do, reason: invalid class name */
    public static class Cdo implements ShapeAppearanceModel.CornerSizeUnaryOperator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RectF f13428do;

        public Cdo(RectF rectF) {
            this.f13428do = rectF;
        }

        @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
        @NonNull
        public CornerSize apply(@NonNull CornerSize cornerSize) {
            return cornerSize instanceof um1 ? cornerSize : new um1(cornerSize.getCornerSize(this.f13428do) / this.f13428do.height());
        }
    }

    /* renamed from: com.google.android.material.transition.platform.TransitionUtils$if, reason: invalid class name */
    public static class Cif implements CornerSizeBinaryOperator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RectF f13429do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13430for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ RectF f13431if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f13432new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f13433try;

        public Cif(RectF rectF, RectF rectF2, float f, float f2, float f3) {
            this.f13429do = rectF;
            this.f13431if = rectF2;
            this.f13430for = f;
            this.f13432new = f2;
            this.f13433try = f3;
        }

        @Override // com.google.android.material.transition.platform.TransitionUtils.CornerSizeBinaryOperator
        @NonNull
        public CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
            return new Cprivate(TransitionUtils.m14831super(cornerSize.getCornerSize(this.f13429do), cornerSize2.getCornerSize(this.f13431if), this.f13430for, this.f13432new, this.f13433try));
        }
    }

    private TransitionUtils() {
    }

    /* renamed from: break, reason: not valid java name */
    public static RectF m14810break(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: case, reason: not valid java name */
    public static View m14811case(View view, @IdRes int i) {
        View viewFindViewById = view.findViewById(i);
        return viewFindViewById != null ? viewFindViewById : m14836try(view, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Rect m14812catch(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m14813class(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(f13427try);
        return str.startsWith(sb.toString()) && str.endsWith(f13419case);
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m14814const(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.m13978import().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.m13980public().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.m13974class().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.m13972break().getCornerSize(rectF) == 0.0f) ? false : true;
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    public static PathMotion m14815default(Context context, @AttrRes int i) {
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
            return new ox0();
        }
        throw new IllegalArgumentException("Invalid motion path type: " + i3);
    }

    /* renamed from: do, reason: not valid java name */
    public static float m14816do(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* renamed from: else, reason: not valid java name */
    private static float m14817else(String[] strArr, int i) throws NumberFormatException {
        float f = Float.parseFloat(strArr[i]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }

    /* renamed from: extends, reason: not valid java name */
    private static int m14818extends(Canvas canvas, Rect rect, int i) {
        RectF rectF = f13426this;
        rectF.set(rect);
        return Build.VERSION.SDK_INT >= 21 ? canvas.saveLayerAlpha(rectF, i) : canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i, 31);
    }

    /* renamed from: final, reason: not valid java name */
    public static float m14819final(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m14820finally(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            m14818extends(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(iSave);
    }

    /* renamed from: for, reason: not valid java name */
    public static Shader m14821for(@ColorInt int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m14822goto(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    /* renamed from: if, reason: not valid java name */
    public static ShapeAppearanceModel m14823if(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return shapeAppearanceModel.m13975default(new Cdo(rectF));
    }

    /* renamed from: import, reason: not valid java name */
    public static ShapeAppearanceModel m14824import(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : m14827package(shapeAppearanceModel, shapeAppearanceModel2, rectF, new Cif(rectF, rectF2, f, f2, f3));
    }

    /* renamed from: native, reason: not valid java name */
    public static void m14825native(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static <T> T m14826new(@Nullable T t, @NonNull T t2) {
        return t != null ? t : t2;
    }

    /* renamed from: package, reason: not valid java name */
    public static ShapeAppearanceModel m14827package(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        return (m14814const(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).m13982static().m14010instanceof(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13978import(), shapeAppearanceModel2.m13978import())).d(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13980public(), shapeAppearanceModel2.m13980public())).m14005default(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13972break(), shapeAppearanceModel2.m13972break())).m14002abstract(cornerSizeBinaryOperator.apply(shapeAppearanceModel.m13974class(), shapeAppearanceModel2.m13974class())).m14003const();
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m14828public(Transition transition, Context context, @AttrRes int i) {
        int iM6249try;
        if (i == 0 || transition.getDuration() != -1 || (iM6249try = px0.m6249try(context, i, -1)) == -1) {
            return false;
        }
        transition.setDuration(iM6249try);
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m14829return(Transition transition, Context context, @AttrRes int i, TimeInterpolator timeInterpolator) {
        if (i == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(m14835throws(context, i, timeInterpolator));
        return true;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m14830static(Transition transition, Context context, @AttrRes int i) {
        PathMotion pathMotionM14815default;
        if (i == 0 || (pathMotionM14815default = m14815default(context, i)) == null) {
            return false;
        }
        transition.setPathMotion(pathMotionM14815default);
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public static float m14831super(float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f5) {
        return m14834throw(f, f2, f3, f4, f5, false);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m14832switch(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static RectF m14833this(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    /* renamed from: throw, reason: not valid java name */
    public static float m14834throw(float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, @FloatRange(from = 0.0d) float f5, boolean z) {
        return (!z || (f5 >= 0.0f && f5 <= 1.0f)) ? f5 < f3 ? f : f5 > f4 ? f2 : m14819final(f, f2, (f5 - f3) / (f4 - f3)) : m14819final(f, f2, f5);
    }

    /* renamed from: throws, reason: not valid java name */
    public static TimeInterpolator m14835throws(Context context, @AttrRes int i, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be a string");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!m14813class(strValueOf, f13422for)) {
            if (m14813class(strValueOf, f13425new)) {
                return PathInterpolatorCompat.create(PathParser.createPathFromPathData(m14822goto(strValueOf, f13425new)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: " + strValueOf);
        }
        String[] strArrSplit = m14822goto(strValueOf, f13422for).split(",");
        if (strArrSplit.length == 4) {
            return PathInterpolatorCompat.create(m14817else(strArrSplit, 0), m14817else(strArrSplit, 1), m14817else(strArrSplit, 2), m14817else(strArrSplit, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    /* renamed from: try, reason: not valid java name */
    public static View m14836try(View view, @IdRes int i) throws Resources.NotFoundException {
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
    public static int m14837while(int i, int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) m14819final(i, i2, (f3 - f) / (f2 - f));
    }
}
