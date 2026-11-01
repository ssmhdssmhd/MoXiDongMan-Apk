package android.support.v4;

/* loaded from: classes2.dex */
public abstract class ci0 {

    /* renamed from: do, reason: not valid java name */
    private static ci0 f792do = new ux();

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0075  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m932do(z8 z8Var, float[] fArr) throws j41 {
        int iM10091class = z8Var.m10091class();
        int iM10094goto = z8Var.m10094goto();
        boolean z = true;
        for (int i = 0; i < fArr.length && z; i += 2) {
            int i2 = (int) fArr[i];
            int i3 = i + 1;
            int i4 = (int) fArr[i3];
            if (i2 < -1 || i2 > iM10091class || i4 < -1 || i4 > iM10094goto) {
                throw j41.getNotFoundInstance();
            }
            if (i2 == -1) {
                fArr[i] = 0.0f;
            } else if (i2 == iM10091class) {
                fArr[i] = iM10091class - 1;
            } else {
                z = false;
                if (i4 != -1) {
                    fArr[i3] = 0.0f;
                } else if (i4 == iM10094goto) {
                    fArr[i3] = iM10094goto - 1;
                }
                z = true;
            }
            z = true;
            if (i4 != -1) {
            }
            z = true;
        }
        boolean z2 = true;
        for (int length = fArr.length - 2; length >= 0 && z2; length -= 2) {
            int i5 = (int) fArr[length];
            int i6 = length + 1;
            int i7 = (int) fArr[i6];
            if (i5 < -1 || i5 > iM10091class || i7 < -1 || i7 > iM10094goto) {
                throw j41.getNotFoundInstance();
            }
            if (i5 == -1) {
                fArr[length] = 0.0f;
            } else if (i5 == iM10091class) {
                fArr[length] = iM10091class - 1;
            } else {
                z2 = false;
                if (i7 != -1) {
                    fArr[i6] = 0.0f;
                } else if (i7 == iM10094goto) {
                    fArr[i6] = iM10094goto - 1;
                }
                z2 = true;
            }
            z2 = true;
            if (i7 != -1) {
            }
            z2 = true;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static ci0 m933if() {
        return f792do;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m934try(ci0 ci0Var) {
        f792do = ci0Var;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract z8 mo935for(z8 z8Var, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) throws j41;

    /* renamed from: new, reason: not valid java name */
    public abstract z8 mo936new(z8 z8Var, int i, int i2, hd1 hd1Var) throws j41;
}
