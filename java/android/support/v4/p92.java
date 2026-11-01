package android.support.v4;

import org.apache.commons.lang3.Ctry;

/* loaded from: classes3.dex */
public class p92 {

    /* renamed from: case, reason: not valid java name */
    public static final int f4879case = 3;

    /* renamed from: for, reason: not valid java name */
    public static final int f4880for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f4881new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f4882try = 2;

    /* renamed from: do, reason: not valid java name */
    public byte[] f4883do;

    /* renamed from: if, reason: not valid java name */
    public int f4884if;

    public p92(byte[] bArr, int i) {
        this.f4883do = bArr;
        this.f4884if = i;
    }

    /* renamed from: do, reason: not valid java name */
    public static p92 m5917do(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        int length = str.length();
        ee eeVar = new ee(length);
        eeVar.m1808try(0);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt == '[') {
                eeVar.m1802do(0, 0);
            } else if (cCharAt == '.') {
                eeVar.m1802do(1, 0);
            } else if (cCharAt == '*') {
                eeVar.m1802do(2, 0);
            } else if (cCharAt >= '0' && cCharAt <= '9') {
                int i3 = cCharAt - '0';
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        break;
                    }
                    i3 = ((i3 * 10) + cCharAt2) - 48;
                    i2++;
                }
                if (i2 < length && str.charAt(i2) == ';') {
                    i2++;
                }
                eeVar.m1802do(3, i3);
            }
            i = i2;
        }
        byte[] bArr = eeVar.f1402do;
        bArr[0] = (byte) (eeVar.f1403if / 2);
        return new p92(bArr, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public int m5918for(int i) {
        return this.f4883do[this.f4884if + (i * 2) + 1];
    }

    /* renamed from: if, reason: not valid java name */
    public int m5919if() {
        return this.f4883do[this.f4884if];
    }

    /* renamed from: new, reason: not valid java name */
    public int m5920new(int i) {
        return this.f4883do[this.f4884if + (i * 2) + 2];
    }

    public String toString() {
        char c;
        int iM5919if = m5919if();
        StringBuffer stringBuffer = new StringBuffer(iM5919if * 2);
        for (int i = 0; i < iM5919if; i++) {
            int iM5918for = m5918for(i);
            if (iM5918for == 0) {
                c = '[';
            } else if (iM5918for == 1) {
                c = Ctry.f28883do;
            } else if (iM5918for == 2) {
                c = '*';
            } else if (iM5918for != 3) {
                c = '_';
            } else {
                stringBuffer.append(m5920new(i));
                c = ';';
            }
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }
}
