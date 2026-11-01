package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class u92 {
    static {
        String str = TypedValues.Custom.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m8309do(String str) {
        str.hashCode();
        switch (str) {
            case "dimension":
                return TypedValues.Custom.TYPE_DIMENSION;
            case "string":
                return TypedValues.Custom.TYPE_STRING;
            case "refrence":
                return TypedValues.Custom.TYPE_REFERENCE;
            case "boolean":
                return TypedValues.Custom.TYPE_BOOLEAN;
            case "color":
                return TypedValues.Custom.TYPE_COLOR;
            case "float":
                return 901;
            case "integer":
                return TypedValues.Custom.TYPE_INT;
            default:
                return -1;
        }
    }
}
