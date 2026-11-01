package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class x92 {
    static {
        String str = TypedValues.MotionScene.NAME;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m9441do(String str) {
        str.hashCode();
        if (str.equals(TypedValues.MotionScene.S_DEFAULT_DURATION)) {
            return 600;
        }
        return !str.equals(TypedValues.MotionScene.S_LAYOUT_DURING_TRANSITION) ? -1 : 601;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m9442if(int i) {
        if (i != 600) {
            return i != 601 ? -1 : 1;
        }
        return 2;
    }
}
