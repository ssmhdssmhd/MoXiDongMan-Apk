package android.support.v4;

import com.google.zxing.oned.Cdo;
import com.google.zxing.oned.Cimport;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* loaded from: classes2.dex */
public final class rm extends Cimport {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f5872do;

    /* renamed from: new, reason: not valid java name */
    private static final char f5875new;

    /* renamed from: if, reason: not valid java name */
    private static final char[] f5874if = {'T', 'N', '*', 'E'};

    /* renamed from: for, reason: not valid java name */
    private static final char[] f5873for = {Attributes.InternalPrefix, ':', hy1.f2562if, Ctry.f28883do};

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f5872do = cArr;
        f5875new = cArr[0];
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if, reason: not valid java name */
    public boolean[] mo7057if(String str) {
        int i;
        if (str.length() < 2) {
            StringBuilder sb = new StringBuilder();
            char c = f5875new;
            sb.append(c);
            sb.append(str);
            sb.append(c);
            str = sb.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f5872do;
            boolean zM22005case = Cdo.m22005case(cArr, upperCase);
            boolean zM22005case2 = Cdo.m22005case(cArr, upperCase2);
            char[] cArr2 = f5874if;
            boolean zM22005case3 = Cdo.m22005case(cArr2, upperCase);
            boolean zM22005case4 = Cdo.m22005case(cArr2, upperCase2);
            if (zM22005case) {
                if (!zM22005case2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!zM22005case3) {
                if (zM22005case2 || zM22005case4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
                StringBuilder sb2 = new StringBuilder();
                char c2 = f5875new;
                sb2.append(c2);
                sb2.append(str);
                sb2.append(c2);
                str = sb2.toString();
            } else if (!zM22005case4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else {
                if (!Cdo.m22005case(f5873for, str.charAt(i3))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + '\'');
                }
                i2 += 10;
            }
        }
        boolean[] zArr = new boolean[i2 + (str.length() - 1)];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i5));
            if (i5 == 0 || i5 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i6 = 0;
            while (true) {
                char[] cArr3 = Cdo.f17607else;
                if (i6 >= cArr3.length) {
                    i = 0;
                    break;
                }
                if (upperCase3 == cArr3[i6]) {
                    i = Cdo.f17608goto[i6];
                    break;
                }
                i6++;
            }
            int i7 = 0;
            boolean z = true;
            while (true) {
                int i8 = 0;
                while (i7 < 7) {
                    zArr[i4] = z;
                    i4++;
                    if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                        break;
                    }
                    i8++;
                }
                z = !z;
                i7++;
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}
