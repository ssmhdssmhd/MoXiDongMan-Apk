package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class y92 {
    static {
        String str = TypedValues.Position.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m9798do(String str) {
        str.hashCode();
        switch (str) {
            case "transitionEasing":
                return TypedValues.Position.TYPE_TRANSITION_EASING;
            case "percentWidth":
                return 503;
            case "percentHeight":
                return TypedValues.Position.TYPE_PERCENT_HEIGHT;
            case "drawPath":
                return 502;
            case "sizePercent":
                return TypedValues.Position.TYPE_SIZE_PERCENT;
            case "percentX":
                return TypedValues.Position.TYPE_PERCENT_X;
            case "percentY":
                return TypedValues.Position.TYPE_PERCENT_Y;
            default:
                return -1;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m9799if(int i) {
        if (i == 100) {
            return 2;
        }
        if (i == 101) {
            return 8;
        }
        switch (i) {
            case TypedValues.Position.TYPE_TRANSITION_EASING /* 501 */:
            case 502:
                return 8;
            case 503:
            case TypedValues.Position.TYPE_PERCENT_HEIGHT /* 504 */:
            case TypedValues.Position.TYPE_SIZE_PERCENT /* 505 */:
            case TypedValues.Position.TYPE_PERCENT_X /* 506 */:
            case TypedValues.Position.TYPE_PERCENT_Y /* 507 */:
                return 4;
            case TypedValues.Position.TYPE_CURVE_FIT /* 508 */:
                return 2;
            default:
                return -1;
        }
    }
}
