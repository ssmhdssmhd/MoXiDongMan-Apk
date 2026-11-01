package android.support.v4;

import com.google.zxing.Cfor;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class nz {

    /* renamed from: break, reason: not valid java name */
    private static final int f4372break = 5;

    /* renamed from: catch, reason: not valid java name */
    private static final int f4374catch = 10;

    /* renamed from: else, reason: not valid java name */
    private static final int f4376else = 3;

    /* renamed from: for, reason: not valid java name */
    private static final float f4377for = 0.42f;

    /* renamed from: goto, reason: not valid java name */
    private static final int f4378goto = 5;

    /* renamed from: new, reason: not valid java name */
    private static final float f4380new = 0.8f;

    /* renamed from: this, reason: not valid java name */
    private static final int f4381this = 25;

    /* renamed from: do, reason: not valid java name */
    private static final int[] f4375do = {0, 4, 1, 5};

    /* renamed from: if, reason: not valid java name */
    private static final int[] f4379if = {6, 2, 7, 3};

    /* renamed from: try, reason: not valid java name */
    private static final int[] f4382try = {8, 1, 1, 1, 1, 1, 1, 3};

    /* renamed from: case, reason: not valid java name */
    private static final int[] f4373case = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private nz() {
    }

    /* renamed from: case, reason: not valid java name */
    private static yn1[] m5419case(z8 z8Var, int i, int i2) {
        int iM10094goto = z8Var.m10094goto();
        int iM10091class = z8Var.m10091class();
        yn1[] yn1VarArr = new yn1[8];
        m5420do(yn1VarArr, m5425try(z8Var, iM10094goto, iM10091class, i, i2, f4382try), f4375do);
        if (yn1VarArr[4] != null) {
            i2 = (int) yn1VarArr[4].m9911for();
            i = (int) yn1VarArr[4].m9912new();
        }
        m5420do(yn1VarArr, m5425try(z8Var, iM10094goto, iM10091class, i, i2, f4373case), f4379if);
        return yn1VarArr;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m5420do(yn1[] yn1VarArr, yn1[] yn1VarArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            yn1VarArr[iArr[i]] = yn1VarArr2[i];
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static float m5421else(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (r5 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        r4 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        if (r4.hasNext() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        r5 = (android.support.v4.yn1[]) r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r5[1] == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        r3 = (int) java.lang.Math.max(r3, r5[1].m9912new());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
    
        if (r5[3] == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        r3 = java.lang.Math.max(r3, (int) r5[3].m9912new());
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List<ResultPoint[]> m5422for(boolean z, z8 z8Var) {
        int iM9911for;
        float fM9912new;
        ArrayList arrayList = new ArrayList();
        int iMax = 0;
        loop0: while (true) {
            int i = 0;
            boolean z2 = false;
            while (true) {
                if (iMax >= z8Var.m10094goto()) {
                    break loop0;
                }
                yn1[] yn1VarArrM5419case = m5419case(z8Var, iMax, i);
                if (yn1VarArrM5419case[0] != null || yn1VarArrM5419case[3] != null) {
                    arrayList.add(yn1VarArrM5419case);
                    if (!z) {
                        break loop0;
                    }
                    if (yn1VarArrM5419case[2] != null) {
                        iM9911for = (int) yn1VarArrM5419case[2].m9911for();
                        fM9912new = yn1VarArrM5419case[2].m9912new();
                    } else {
                        iM9911for = (int) yn1VarArrM5419case[4].m9911for();
                        fM9912new = yn1VarArrM5419case[4].m9912new();
                    }
                    iMax = (int) fM9912new;
                    i = iM9911for;
                    z2 = true;
                } else {
                    break;
                }
            }
            iMax += 5;
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public static x91 m5423if(Cfor cfor, Map<Cnew, ?> map, boolean z) throws j41 {
        z8 z8VarM21954if = cfor.m21954if();
        List<ResultPoint[]> listM5422for = m5422for(z, z8VarM21954if);
        if (listM5422for.isEmpty()) {
            z8VarM21954if = z8VarM21954if.clone();
            z8VarM21954if.m10102super();
            listM5422for = m5422for(z, z8VarM21954if);
        }
        return new x91(z8VarM21954if, listM5422for);
    }

    /* renamed from: new, reason: not valid java name */
    private static int[] m5424new(z8 z8Var, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (z8Var.m10105try(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int length = iArr.length;
        boolean z2 = z;
        int i6 = 0;
        int i7 = i;
        while (i < i3) {
            if (z8Var.m10105try(i, i2) != z2) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                if (i6 != length - 1) {
                    i6++;
                } else {
                    if (m5421else(iArr2, iArr, 0.8f) < f4377for) {
                        return new int[]{i7, i};
                    }
                    i7 += iArr2[0] + iArr2[1];
                    int i8 = i6 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i8);
                    iArr2[i8] = 0;
                    iArr2[i6] = 0;
                    i6--;
                }
                iArr2[i6] = 1;
                z2 = !z2;
            }
            i++;
        }
        if (i6 != length - 1 || m5421else(iArr2, iArr, 0.8f) >= f4377for) {
            return null;
        }
        return new int[]{i7, i - 1};
    }

    /* renamed from: try, reason: not valid java name */
    private static yn1[] m5425try(z8 z8Var, int i, int i2, int i3, int i4, int[] iArr) {
        boolean z;
        int i5;
        int i6;
        int i7;
        yn1[] yn1VarArr = new yn1[4];
        int[] iArr2 = new int[iArr.length];
        int i8 = i3;
        while (true) {
            if (i8 >= i) {
                z = false;
                break;
            }
            int[] iArrM5424new = m5424new(z8Var, i4, i8, i2, false, iArr, iArr2);
            if (iArrM5424new != null) {
                int i9 = i8;
                int[] iArr3 = iArrM5424new;
                int i10 = i9;
                while (true) {
                    if (i10 <= 0) {
                        i7 = i10;
                        break;
                    }
                    int i11 = i10 - 1;
                    int[] iArrM5424new2 = m5424new(z8Var, i4, i11, i2, false, iArr, iArr2);
                    if (iArrM5424new2 == null) {
                        i7 = i11 + 1;
                        break;
                    }
                    iArr3 = iArrM5424new2;
                    i10 = i11;
                }
                float f = i7;
                yn1VarArr[0] = new yn1(iArr3[0], f);
                yn1VarArr[1] = new yn1(iArr3[1], f);
                i8 = i7;
                z = true;
            } else {
                i8 += 5;
            }
        }
        int i12 = i8 + 1;
        if (z) {
            int[] iArr4 = {(int) yn1VarArr[0].m9911for(), (int) yn1VarArr[1].m9911for()};
            int i13 = i12;
            int i14 = 0;
            while (true) {
                if (i13 >= i) {
                    i5 = i14;
                    i6 = i13;
                    break;
                }
                i5 = i14;
                i6 = i13;
                int[] iArrM5424new3 = m5424new(z8Var, iArr4[0], i13, i2, false, iArr, iArr2);
                if (iArrM5424new3 != null && Math.abs(iArr4[0] - iArrM5424new3[0]) < 5 && Math.abs(iArr4[1] - iArrM5424new3[1]) < 5) {
                    iArr4 = iArrM5424new3;
                    i14 = 0;
                } else {
                    if (i5 > 25) {
                        break;
                    }
                    i14 = i5 + 1;
                }
                i13 = i6 + 1;
            }
            i12 = i6 - (i5 + 1);
            float f2 = i12;
            yn1VarArr[2] = new yn1(iArr4[0], f2);
            yn1VarArr[3] = new yn1(iArr4[1], f2);
        }
        if (i12 - i8 < 10) {
            Arrays.fill(yn1VarArr, (Object) null);
        }
        return yn1VarArr;
    }
}
