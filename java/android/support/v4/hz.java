package android.support.v4;

import android.content.Context;
import android.util.TypedValue;

/* loaded from: classes.dex */
public class hz {
    private hz() {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    /* renamed from: do, reason: not valid java name */
    public static int m3172do(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: for, reason: not valid java name */
    public static float m3173for(Context context, float f) {
        return f / context.getResources().getDisplayMetrics().scaledDensity;
    }

    /* renamed from: if, reason: not valid java name */
    public static float m3174if(Context context, float f) {
        return f / context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3175new(Context context, float f) {
        return (int) TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }
}
