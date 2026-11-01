package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class w92 {
    static {
        String str = TypedValues.Motion.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m9109do(String str) {
        str.hashCode();
        switch (str) {
            case "AnimateCircleAngleTo":
                return TypedValues.Motion.TYPE_ANIMATE_CIRCLEANGLE_TO;
            case "QuantizeMotionPhase":
                return TypedValues.Motion.TYPE_QUANTIZE_MOTION_PHASE;
            case "QuantizeMotionSteps":
                return TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS;
            case "PathRotate":
                return 601;
            case "QuantizeInterpolator":
                return TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR;
            case "DrawPath":
                return TypedValues.Motion.TYPE_DRAW_PATH;
            case "Stagger":
                return 600;
            case "PolarRelativeTo":
                return 609;
            case "QuantizeInterpolatorType":
                return TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_TYPE;
            case "QuantizeInterpolatorID":
                return TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_ID;
            case "TransitionEasing":
                return TypedValues.Motion.TYPE_EASING;
            case "AnimateRelativeTo":
                return TypedValues.Motion.TYPE_ANIMATE_RELATIVE_TO;
            case "PathMotionArc":
                return TypedValues.Motion.TYPE_PATHMOTION_ARC;
            default:
                return -1;
        }
    }
}
