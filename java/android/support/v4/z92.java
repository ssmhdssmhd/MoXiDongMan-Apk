package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class z92 {
    static {
        String str = TypedValues.Transition.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m10139do(String str) {
        str.hashCode();
        switch (str) {
            case "transitionFlags":
                return TypedValues.Transition.TYPE_TRANSITION_FLAGS;
            case "duration":
                return TypedValues.Transition.TYPE_DURATION;
            case "motionInterpolator":
                return TypedValues.Transition.TYPE_INTERPOLATOR;
            case "autoTransition":
                return 704;
            case "to":
                return TypedValues.Transition.TYPE_TO;
            case "from":
                return TypedValues.Transition.TYPE_FROM;
            case "pathMotionArc":
                return 509;
            case "staggered":
                return TypedValues.Transition.TYPE_STAGGERED;
            default:
                return -1;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m10140if(int i) {
        if (i == 509) {
            return 2;
        }
        switch (i) {
            case TypedValues.Transition.TYPE_DURATION /* 700 */:
                return 2;
            case TypedValues.Transition.TYPE_FROM /* 701 */:
            case TypedValues.Transition.TYPE_TO /* 702 */:
                return 8;
            default:
                switch (i) {
                    case TypedValues.Transition.TYPE_INTERPOLATOR /* 705 */:
                    case TypedValues.Transition.TYPE_TRANSITION_FLAGS /* 707 */:
                        return 8;
                    case TypedValues.Transition.TYPE_STAGGERED /* 706 */:
                        return 4;
                    default:
                        return -1;
                }
        }
    }
}
