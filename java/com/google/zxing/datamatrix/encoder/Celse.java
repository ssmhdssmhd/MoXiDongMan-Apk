package com.google.zxing.datamatrix.encoder;

import android.support.v4.d10;
import java.util.Arrays;

/* renamed from: com.google.zxing.datamatrix.encoder.else, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Celse {

    /* renamed from: break, reason: not valid java name */
    public static final char f17509break = 254;

    /* renamed from: case, reason: not valid java name */
    private static final char f17510case = 237;

    /* renamed from: catch, reason: not valid java name */
    public static final char f17511catch = 254;

    /* renamed from: class, reason: not valid java name */
    private static final String f17512class = "[)>\u001e05\u001d";

    /* renamed from: const, reason: not valid java name */
    private static final String f17513const = "[)>\u001e06\u001d";

    /* renamed from: do, reason: not valid java name */
    private static final char f17514do = 129;

    /* renamed from: else, reason: not valid java name */
    public static final char f17515else = 238;

    /* renamed from: final, reason: not valid java name */
    private static final String f17516final = "\u001e\u0004";

    /* renamed from: for, reason: not valid java name */
    public static final char f17517for = 231;

    /* renamed from: goto, reason: not valid java name */
    public static final char f17518goto = 239;

    /* renamed from: if, reason: not valid java name */
    public static final char f17519if = 230;

    /* renamed from: import, reason: not valid java name */
    public static final int f17520import = 3;

    /* renamed from: native, reason: not valid java name */
    public static final int f17521native = 4;

    /* renamed from: new, reason: not valid java name */
    public static final char f17522new = 235;

    /* renamed from: public, reason: not valid java name */
    public static final int f17523public = 5;

    /* renamed from: super, reason: not valid java name */
    public static final int f17524super = 0;

    /* renamed from: this, reason: not valid java name */
    public static final char f17525this = 240;

    /* renamed from: throw, reason: not valid java name */
    public static final int f17526throw = 1;

    /* renamed from: try, reason: not valid java name */
    private static final char f17527try = 236;

    /* renamed from: while, reason: not valid java name */
    public static final int f17528while = 2;

    private Celse() {
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m21908break(char c) {
        return c >= ' ' && c <= '^';
    }

    /* renamed from: case, reason: not valid java name */
    public static void m21909case(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    /* renamed from: catch, reason: not valid java name */
    private static boolean m21910catch(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m21911class(char c) {
        if (m21915final(c) || c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m21912const(char c) {
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m21913do(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            char cCharAt = charSequence.charAt(i);
            while (m21914else(cCharAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    cCharAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m21914else(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: final, reason: not valid java name */
    private static boolean m21915final(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    /* renamed from: for, reason: not valid java name */
    public static String m21916for(String str, Cthis cthis, d10 d10Var, d10 d10Var2) {
        int iM21888case = 0;
        Encoder[] encoderArr = {new Cdo(), new Cfor(), new Cbreak(), new Ccatch(), new Ctry(), new Cif()};
        Ccase ccase = new Ccase(str);
        ccase.m21902super(cthis);
        ccase.m21891const(d10Var, d10Var2);
        if (str.startsWith(f17512class) && str.endsWith(f17516final)) {
            ccase.m21899native(f17527try);
            ccase.m21894final(2);
            ccase.f17500case += 7;
        } else if (str.startsWith(f17513const) && str.endsWith(f17516final)) {
            ccase.m21899native(f17510case);
            ccase.m21894final(2);
            ccase.f17500case += 7;
        }
        while (ccase.m21887break()) {
            encoderArr[iM21888case].encode(ccase);
            if (ccase.m21888case() >= 0) {
                iM21888case = ccase.m21888case();
                ccase.m21889catch();
            }
        }
        int iM21892do = ccase.m21892do();
        ccase.m21905while();
        int iM21941if = ccase.m21896goto().m21941if();
        if (iM21892do < iM21941if && iM21888case != 0 && iM21888case != 5 && iM21888case != 4) {
            ccase.m21899native((char) 254);
        }
        StringBuilder sbM21897if = ccase.m21897if();
        if (sbM21897if.length() < iM21941if) {
            sbM21897if.append(f17514do);
        }
        while (sbM21897if.length() < iM21941if) {
            sbM21897if.append(m21922throw(f17514do, sbM21897if.length() + 1));
        }
        return ccase.m21897if().toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m21917goto(char c) {
        return c >= 128 && c <= 255;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m21918if(String str) {
        return m21916for(str, Cthis.FORCE_NONE, null, null);
    }

    /* renamed from: new, reason: not valid java name */
    private static int m21919new(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        for (int i2 = 0; i2 < 6; i2++) {
            iArr[i2] = (int) Math.ceil(fArr[i2]);
            int i3 = iArr[i2];
            if (i > i3) {
                Arrays.fill(bArr, (byte) 0);
                i = i3;
            }
            if (i == i3) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m21920super(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        char c;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[]{1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int iM21919new = m21919new(fArr, iArr, Integer.MAX_VALUE, bArr);
                int iM21923try = m21923try(bArr);
                if (iArr[0] == iM21919new) {
                    return 0;
                }
                if (iM21923try == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (iM21923try == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (iM21923try != 1 || bArr[2] <= 0) {
                    return (iM21923try != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char cCharAt = charSequence.charAt(i4);
            i3++;
            if (m21914else(cCharAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (m21917goto(cCharAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (m21921this(cCharAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (m21917goto(cCharAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (m21910catch(cCharAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (m21917goto(cCharAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (m21911class(cCharAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (m21917goto(cCharAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (m21908break(cCharAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (m21917goto(cCharAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (m21912const(cCharAt)) {
                c = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                c = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i3 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                m21919new(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int iM21923try2 = m21923try(bArr2);
                if (iArr2[0] < iArr2[c] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (iM21923try2 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (iM21923try2 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (iM21923try2 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                if (iArr2[1] + 1 < iArr2[0] && iArr2[1] + 1 < iArr2[5] && iArr2[1] + 1 < iArr2[4] && iArr2[1] + 1 < iArr2[2]) {
                    if (iArr2[1] < iArr2[3]) {
                        return 1;
                    }
                    if (iArr2[1] == iArr2[3]) {
                        for (int i5 = i + i3 + 1; i5 < charSequence.length(); i5++) {
                            char cCharAt2 = charSequence.charAt(i5);
                            if (m21915final(cCharAt2)) {
                                return 3;
                            }
                            if (!m21911class(cCharAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m21921this(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    private static char m21922throw(char c, int i) {
        int i2 = c + ((i * 149) % 253) + 1;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    /* renamed from: try, reason: not valid java name */
    private static int m21923try(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }
}
