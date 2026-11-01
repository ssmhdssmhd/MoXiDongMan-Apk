package com.google.zxing.oned;

import android.support.v4.hy1;
import android.support.v4.ig2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import java.util.Map;
import org.jsoup.nodes.Attributes;

/* renamed from: com.google.zxing.oned.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry extends Cimport {
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ec  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m22149case(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0) {
                sb.append("%U");
            } else if (cCharAt == ' ') {
                sb.append(cCharAt);
            } else if (cCharAt == '@') {
                sb.append("%V");
            } else if (cCharAt == '`') {
                sb.append("%W");
            } else if (cCharAt != '-' && cCharAt != '.') {
                if (cCharAt <= 26) {
                    sb.append('$');
                    sb.append((char) ((cCharAt - 1) + 65));
                } else if (cCharAt < ' ') {
                    sb.append('%');
                    sb.append((char) ((cCharAt - 27) + 65));
                } else if (cCharAt <= ',' || cCharAt == '/' || cCharAt == ':') {
                    sb.append(Attributes.InternalPrefix);
                    sb.append((char) ((cCharAt - '!') + 65));
                } else if (cCharAt <= '9') {
                    sb.append((char) ((cCharAt - '0') + 48));
                } else if (cCharAt <= '?') {
                    sb.append('%');
                    sb.append((char) ((cCharAt - ';') + 70));
                } else if (cCharAt <= 'Z') {
                    sb.append((char) ((cCharAt - 'A') + 65));
                } else if (cCharAt <= '_') {
                    sb.append('%');
                    sb.append((char) ((cCharAt - '[') + 75));
                } else if (cCharAt <= 'z') {
                    sb.append(hy1.f2562if);
                    sb.append((char) ((cCharAt - 'a') + 65));
                } else {
                    if (cCharAt > 127) {
                        throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i) + "'");
                    }
                    sb.append('%');
                    sb.append((char) ((cCharAt - '{') + 80));
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    private static void m22150try(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<com.google.zxing.Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.CODE_39) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (Cnew.f17659try.indexOf(str.charAt(i)) < 0) {
                str = m22149case(str);
                length = str.length();
                if (length > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            } else {
                i++;
            }
        }
        int[] iArr = new int[9];
        int i2 = length + 25;
        for (int i3 = 0; i3 < length; i3++) {
            m22150try(Cnew.f17657case[Cnew.f17659try.indexOf(str.charAt(i3))], iArr);
            for (int i4 = 0; i4 < 9; i4++) {
                i2 += iArr[i4];
            }
        }
        boolean[] zArr = new boolean[i2];
        m22150try(148, iArr);
        int iM22019do = Cimport.m22019do(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iM22019do2 = iM22019do + Cimport.m22019do(zArr, iM22019do, iArr2, false);
        for (int i5 = 0; i5 < length; i5++) {
            m22150try(Cnew.f17657case[Cnew.f17659try.indexOf(str.charAt(i5))], iArr);
            int iM22019do3 = iM22019do2 + Cimport.m22019do(zArr, iM22019do2, iArr, true);
            iM22019do2 = iM22019do3 + Cimport.m22019do(zArr, iM22019do3, iArr2, false);
        }
        m22150try(148, iArr);
        Cimport.m22019do(zArr, iM22019do2, iArr, true);
        return zArr;
    }
}
