package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class v92 {
    static {
        String str = TypedValues.Cycle.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m8815do(String str) {
        char c;
        str.hashCode();
        switch (str.hashCode()) {
            case -1310311125:
                if (!str.equals("easing")) {
                    c = 65535;
                    break;
                } else {
                    c = 0;
                    break;
                }
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 1;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 2;
                    break;
                }
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 4;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 5;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 6;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 7;
                    break;
                }
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c = '\b';
                    break;
                }
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c = '\t';
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = '\n';
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 11;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = '\f';
                    break;
                }
                break;
            case 579057826:
                if (str.equals("curveFit")) {
                    c = wk.f7547for;
                    break;
                }
                break;
            case 803192288:
                if (str.equals("pathRotate")) {
                    c = 14;
                    break;
                }
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c = 15;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return TypedValues.Cycle.TYPE_EASING;
            case 1:
                return 308;
            case 2:
                return 309;
            case 3:
                return 310;
            case 4:
                return 304;
            case 5:
                return 305;
            case 6:
                return 306;
            case 7:
                return 315;
            case '\b':
                return 313;
            case '\t':
                return 314;
            case '\n':
                return 311;
            case 11:
                return 312;
            case '\f':
                return 403;
            case '\r':
                return 401;
            case 14:
                return TypedValues.Cycle.TYPE_PATH_ROTATE;
            case 15:
                return TypedValues.Cycle.TYPE_VISIBILITY;
            default:
                return -1;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m8816if(int i) {
        if (i == 100) {
            return 2;
        }
        if (i == 101) {
            return 8;
        }
        if (i == 416) {
            return 4;
        }
        if (i == 420 || i == 421) {
            return 8;
        }
        switch (i) {
            case 304:
            case 305:
            case 306:
            case 307:
            case 308:
            case 309:
            case 310:
            case 311:
            case 312:
            case 313:
            case 314:
            case 315:
                return 4;
            default:
                switch (i) {
                    case 401:
                    case TypedValues.Cycle.TYPE_VISIBILITY /* 402 */:
                        return 2;
                    case 403:
                        return 4;
                    default:
                        switch (i) {
                            case TypedValues.Cycle.TYPE_WAVE_PERIOD /* 423 */:
                            case TypedValues.Cycle.TYPE_WAVE_OFFSET /* 424 */:
                            case TypedValues.Cycle.TYPE_WAVE_PHASE /* 425 */:
                                return 4;
                            default:
                                return -1;
                        }
                }
        }
    }
}
