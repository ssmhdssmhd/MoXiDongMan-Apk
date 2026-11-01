package com.google.zxing.qrcode.encoder;

import android.support.v4.zd;

/* renamed from: com.google.zxing.qrcode.encoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final int f17940do = 3;

    /* renamed from: for, reason: not valid java name */
    private static final int f17941for = 40;

    /* renamed from: if, reason: not valid java name */
    private static final int f17942if = 3;

    /* renamed from: new, reason: not valid java name */
    private static final int f17943new = 10;

    private Cfor() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040 A[RETURN] */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m22396case(int i, int i2, int i3) {
        int i4;
        int i5;
        switch (i) {
            case 0:
                i3 += i2;
                i4 = i3 & 1;
                return i4 != 0;
            case 1:
                i4 = i3 & 1;
                if (i4 != 0) {
                }
                break;
            case 2:
                i4 = i2 % 3;
                if (i4 != 0) {
                }
                break;
            case 3:
                i4 = (i3 + i2) % 3;
                if (i4 != 0) {
                }
                break;
            case 4:
                i3 /= 2;
                i2 /= 3;
                i3 += i2;
                i4 = i3 & 1;
                if (i4 != 0) {
                }
                break;
            case 5:
                int i6 = i3 * i2;
                i4 = (i6 & 1) + (i6 % 3);
                if (i4 != 0) {
                }
                break;
            case 6:
                int i7 = i3 * i2;
                i5 = (i7 & 1) + (i7 % 3);
                i4 = i5 & 1;
                if (i4 != 0) {
                }
                break;
            case 7:
                i5 = ((i3 * i2) % 3) + ((i3 + i2) & 1);
                i4 = i5 & 1;
                if (i4 != 0) {
                }
                break;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i)));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m22397do(zd zdVar) {
        return m22401if(zdVar, true) + m22401if(zdVar, false);
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m22398else(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, bArr.length);
        for (int iMax = Math.max(i, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m22399for(zd zdVar) {
        byte[][] bArrM10156for = zdVar.m10156for();
        int iM10160try = zdVar.m10160try();
        int iM10159new = zdVar.m10159new();
        int i = 0;
        for (int i2 = 0; i2 < iM10159new - 1; i2++) {
            byte[] bArr = bArrM10156for[i2];
            int i3 = 0;
            while (i3 < iM10160try - 1) {
                byte b = bArr[i3];
                int i4 = i3 + 1;
                if (b == bArr[i4]) {
                    int i5 = i2 + 1;
                    if (b == bArrM10156for[i5][i3] && b == bArrM10156for[i5][i4]) {
                        i++;
                    }
                }
                i3 = i4;
            }
        }
        return i * 3;
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m22400goto(byte[][] bArr, int i, int i2, int i3) {
        int iMin = Math.min(i3, bArr.length);
        for (int iMax = Math.max(i2, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m22401if(zd zdVar, boolean z) {
        int iM10159new = z ? zdVar.m10159new() : zdVar.m10160try();
        int iM10160try = z ? zdVar.m10160try() : zdVar.m10159new();
        byte[][] bArrM10156for = zdVar.m10156for();
        int i = 0;
        for (int i2 = 0; i2 < iM10159new; i2++) {
            byte b = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < iM10160try; i4++) {
                byte b2 = z ? bArrM10156for[i2][i4] : bArrM10156for[i4][i2];
                if (b2 == b) {
                    i3++;
                } else {
                    if (i3 >= 5) {
                        i += (i3 - 5) + 3;
                    }
                    b = b2;
                    i3 = 1;
                }
            }
            if (i3 >= 5) {
                i += (i3 - 5) + 3;
            }
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m22402new(zd zdVar) {
        byte[][] bArrM10156for = zdVar.m10156for();
        int iM10160try = zdVar.m10160try();
        int iM10159new = zdVar.m10159new();
        int i = 0;
        for (int i2 = 0; i2 < iM10159new; i2++) {
            for (int i3 = 0; i3 < iM10160try; i3++) {
                byte[] bArr = bArrM10156for[i2];
                int i4 = i3 + 6;
                if (i4 < iM10160try && bArr[i3] == 1 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 1 && bArr[i3 + 3] == 1 && bArr[i3 + 4] == 1 && bArr[i3 + 5] == 0 && bArr[i4] == 1 && (m22398else(bArr, i3 - 4, i3) || m22398else(bArr, i3 + 7, i3 + 11))) {
                    i++;
                }
                int i5 = i2 + 6;
                if (i5 < iM10159new && bArrM10156for[i2][i3] == 1 && bArrM10156for[i2 + 1][i3] == 0 && bArrM10156for[i2 + 2][i3] == 1 && bArrM10156for[i2 + 3][i3] == 1 && bArrM10156for[i2 + 4][i3] == 1 && bArrM10156for[i2 + 5][i3] == 0 && bArrM10156for[i5][i3] == 1 && (m22400goto(bArrM10156for, i3, i2 - 4, i2) || m22400goto(bArrM10156for, i3, i2 + 7, i2 + 11))) {
                    i++;
                }
            }
        }
        return i * 40;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m22403try(zd zdVar) {
        byte[][] bArrM10156for = zdVar.m10156for();
        int iM10160try = zdVar.m10160try();
        int iM10159new = zdVar.m10159new();
        int i = 0;
        for (int i2 = 0; i2 < iM10159new; i2++) {
            byte[] bArr = bArrM10156for[i2];
            for (int i3 = 0; i3 < iM10160try; i3++) {
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int iM10159new2 = zdVar.m10159new() * zdVar.m10160try();
        return ((Math.abs((i << 1) - iM10159new2) * 10) / iM10159new2) * 10;
    }
}
