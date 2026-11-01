package android.support.v4;

import com.google.zxing.Cnew;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes2.dex */
public final class m22 {

    /* renamed from: case, reason: not valid java name */
    private static final String f3821case = "ISO8859_1";

    /* renamed from: do, reason: not valid java name */
    private static final String f3822do;

    /* renamed from: else, reason: not valid java name */
    private static final boolean f3823else;

    /* renamed from: for, reason: not valid java name */
    public static final String f3824for = "GB2312";

    /* renamed from: if, reason: not valid java name */
    public static final String f3825if = "SJIS";

    /* renamed from: new, reason: not valid java name */
    private static final String f3826new = "EUC_JP";

    /* renamed from: try, reason: not valid java name */
    private static final String f3827try = "UTF8";

    static {
        String strName = Charset.defaultCharset().name();
        f3822do = strName;
        f3823else = f3825if.equalsIgnoreCase(strName) || f3826new.equalsIgnoreCase(strName);
    }

    private m22() {
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x007e A[PHI: r10
      0x007e: PHI (r10v6 int) = (r10v1 int), (r10v5 int), (r10v1 int) binds: [B:32:0x0061, B:40:0x0079, B:27:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00eb  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m4825do(byte[] bArr, Map<Cnew, ?> map) {
        byte[] bArr2 = bArr;
        if (map != null) {
            Cnew cnew = Cnew.CHARACTER_SET;
            if (map.containsKey(cnew)) {
                return map.get(cnew).toString();
            }
        }
        int length = bArr2.length;
        boolean z = true;
        int i = 0;
        boolean z2 = bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65;
        int i2 = 0;
        boolean z3 = true;
        boolean z4 = true;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i3 < length && (z || z3 || z4)) {
            int i13 = bArr2[i3] & 255;
            if (z4) {
                if (i4 > 0) {
                    if ((i13 & 128) != 0) {
                        i4--;
                    } else {
                        z4 = false;
                    }
                } else if ((i13 & 128) != 0) {
                    if ((i13 & 64) != 0) {
                        i4++;
                        if ((i13 & 32) == 0) {
                            i6++;
                        } else {
                            i4++;
                            if ((i13 & 16) == 0) {
                                i7++;
                            } else {
                                i4++;
                                if ((i13 & 8) == 0) {
                                    i8++;
                                }
                            }
                        }
                    }
                }
            }
            if (z) {
                if (i13 > 127 && i13 < 160) {
                    z = false;
                } else if (i13 > 159 && (i13 < 192 || i13 == 215 || i13 == 247)) {
                    i10++;
                }
            }
            if (z3) {
                if (i5 > 0) {
                    if (i13 < 64 || i13 == 127 || i13 > 252) {
                        z3 = false;
                    } else {
                        i5--;
                    }
                } else if (i13 != 128 && i13 != 160 && i13 <= 239) {
                    if (i13 <= 160 || i13 >= 224) {
                        if (i13 > 127) {
                            i5++;
                            int i14 = i11 + 1;
                            if (i14 > i) {
                                i = i14;
                                i11 = i;
                            } else {
                                i11 = i14;
                            }
                        } else {
                            i11 = 0;
                        }
                        i12 = 0;
                    } else {
                        i2++;
                        int i15 = i12 + 1;
                        if (i15 > i9) {
                            i9 = i15;
                            i12 = i9;
                        } else {
                            i12 = i15;
                        }
                        i11 = 0;
                    }
                }
            }
            i3++;
            bArr2 = bArr;
        }
        if (z4 && i4 > 0) {
            z4 = false;
        }
        if (z3 && i5 > 0) {
            z3 = false;
        }
        return (!z4 || (!z2 && (i6 + i7) + i8 <= 0)) ? (!z3 || (!f3823else && i9 < 3 && i < 3)) ? (z && z3) ? (!(i9 == 2 && i2 == 2) && i10 * 10 < length) ? f3821case : f3825if : z ? f3821case : z3 ? f3825if : z4 ? f3827try : f3822do : f3825if : f3827try;
    }
}
