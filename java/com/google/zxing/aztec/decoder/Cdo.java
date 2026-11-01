package com.google.zxing.aztec.decoder;

import android.support.v4.am1;
import android.support.v4.l5;
import android.support.v4.ld0;
import android.support.v4.mx;
import android.support.v4.on0;
import android.support.v4.z8;
import androidx.exifinterface.media.ExifInterface;
import com.google.zxing.common.reedsolomon.Cfor;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import java.util.Arrays;
import org.apache.commons.lang3.Cclass;
import org.mozilla.javascript.optimizer.OptRuntime;

/* renamed from: com.google.zxing.aztec.decoder.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private l5 f17398do;

    /* renamed from: if, reason: not valid java name */
    private static final String[] f17395if = {"CTRL_PS", Cclass.f28652do, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", Cstatic.m1, ExifInterface.LONGITUDE_EAST, "F", "G", "H", OptRuntime.GeneratorState.resumptionPoint_TYPE, "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: for, reason: not valid java name */
    private static final String[] f17394for = {"CTRL_PS", Cclass.f28652do, ak.av, "b", "c", "d", "e", "f", "g", "h", ak.aC, "j", "k", "l", "m", "n", "o", ak.ax, "q", "r", ak.aB, ak.aH, ak.aG, "v", "w", "x", "y", ak.aD, "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: new, reason: not valid java name */
    private static final String[] f17396new = {"CTRL_PS", Cclass.f28652do, "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", Cclass.f28656new, "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* renamed from: try, reason: not valid java name */
    private static final String[] f17397try = {"", Cclass.f28656new, "\r\n", ". ", ", ", ": ", org.antlr.v4.runtime.tree.xpath.Cdo.f28590try, "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", on0.f4694final, ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};

    /* renamed from: case, reason: not valid java name */
    private static final String[] f17393case = {"CTRL_PS", Cclass.f28652do, "0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: com.google.zxing.aztec.decoder.do$do, reason: invalid class name and collision with other inner class name */
    public static /* synthetic */ class C0163do {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17399do;

        static {
            int[] iArr = new int[Cif.values().length];
            f17399do = iArr;
            try {
                iArr[Cif.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17399do[Cif.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17399do[Cif.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17399do[Cif.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17399do[Cif.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.google.zxing.aztec.decoder.do$if, reason: invalid class name */
    public enum Cif {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    /* renamed from: break, reason: not valid java name */
    private static int m21726break(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    /* renamed from: case, reason: not valid java name */
    private static String m21727case(boolean[] zArr) {
        int length = zArr.length;
        Cif cif = Cif.UPPER;
        StringBuilder sb = new StringBuilder(20);
        Cif cifM21730else = cif;
        int i = 0;
        while (i < length) {
            if (cif != Cif.BINARY) {
                int i2 = cif == Cif.DIGIT ? 4 : 5;
                if (length - i < i2) {
                    break;
                }
                int iM21726break = m21726break(zArr, i, i2);
                i += i2;
                String strM21735try = m21735try(cif, iM21726break);
                if (strM21735try.startsWith("CTRL_")) {
                    cifM21730else = m21730else(strM21735try.charAt(5));
                    if (strM21735try.charAt(6) != 'L') {
                        cifM21730else = cif;
                        cif = cifM21730else;
                    }
                } else {
                    sb.append(strM21735try);
                }
                cif = cifM21730else;
            } else {
                if (length - i < 5) {
                    break;
                }
                int iM21726break2 = m21726break(zArr, i, 5);
                i += 5;
                if (iM21726break2 == 0) {
                    if (length - i < 11) {
                        break;
                    }
                    iM21726break2 = m21726break(zArr, i, 11) + 31;
                    i += 11;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= iM21726break2) {
                        break;
                    }
                    if (length - i < 8) {
                        i = length;
                        break;
                    }
                    sb.append((char) m21726break(zArr, i, 8));
                    i += 8;
                    i3++;
                }
                cif = cifM21730else;
            }
        }
        return sb.toString();
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m21728catch(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m21729do(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = m21734this(zArr, i << 3);
        }
        return bArr;
    }

    /* renamed from: else, reason: not valid java name */
    private static Cif m21730else(char c) {
        return c != 'B' ? c != 'D' ? c != 'P' ? c != 'L' ? c != 'M' ? Cif.UPPER : Cif.MIXED : Cif.LOWER : Cif.PUNCT : Cif.DIGIT : Cif.BINARY;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m21731goto(boolean[] zArr) {
        return m21727case(zArr);
    }

    /* renamed from: if, reason: not valid java name */
    private boolean[] m21732if(boolean[] zArr) throws ld0 {
        com.google.zxing.common.reedsolomon.Cdo cdo;
        int i = 8;
        if (this.f17398do.m4594new() <= 2) {
            i = 6;
            cdo = com.google.zxing.common.reedsolomon.Cdo.f17450break;
        } else if (this.f17398do.m4594new() <= 8) {
            cdo = com.google.zxing.common.reedsolomon.Cdo.f17454final;
        } else if (this.f17398do.m4594new() <= 22) {
            i = 10;
            cdo = com.google.zxing.common.reedsolomon.Cdo.f17457this;
        } else {
            i = 12;
            cdo = com.google.zxing.common.reedsolomon.Cdo.f17455goto;
        }
        int iM4593for = this.f17398do.m4593for();
        int length = zArr.length / i;
        if (length < iM4593for) {
            throw ld0.getFormatInstance();
        }
        int length2 = zArr.length % i;
        int[] iArr = new int[length];
        int i2 = 0;
        while (i2 < length) {
            iArr[i2] = m21726break(zArr, length2, i);
            i2++;
            length2 += i;
        }
        try {
            new Cfor(cdo).m21823do(iArr, length - iM4593for);
            int i3 = (1 << i) - 1;
            int i4 = 0;
            for (int i5 = 0; i5 < iM4593for; i5++) {
                int i6 = iArr[i5];
                if (i6 == 0 || i6 == i3) {
                    throw ld0.getFormatInstance();
                }
                if (i6 == 1 || i6 == i3 - 1) {
                    i4++;
                }
            }
            boolean[] zArr2 = new boolean[(iM4593for * i) - i4];
            int i7 = 0;
            for (int i8 = 0; i8 < iM4593for; i8++) {
                int i9 = iArr[i8];
                if (i9 == 1 || i9 == i3 - 1) {
                    Arrays.fill(zArr2, i7, (i7 + i) - 1, i9 > 1);
                    i7 += i - 1;
                } else {
                    int i10 = i - 1;
                    while (i10 >= 0) {
                        int i11 = i7 + 1;
                        zArr2[i7] = ((1 << i10) & i9) != 0;
                        i10--;
                        i7 = i11;
                    }
                }
            }
            return zArr2;
        } catch (am1 e) {
            throw ld0.getFormatInstance(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private boolean[] m21733new(z8 z8Var) {
        boolean zM4595try = this.f17398do.m4595try();
        int iM4594new = this.f17398do.m4594new();
        int i = (zM4595try ? 11 : 14) + (iM4594new << 2);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[m21728catch(iM4594new, zM4595try)];
        int i2 = 2;
        if (zM4595try) {
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = i3;
            }
        } else {
            int i4 = i / 2;
            int i5 = ((i + 1) + (((i4 - 1) / 15) * 2)) / 2;
            for (int i6 = 0; i6 < i4; i6++) {
                iArr[(i4 - i6) - 1] = (i5 - r12) - 1;
                iArr[i4 + i6] = (i6 / 15) + i6 + i5 + 1;
            }
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < iM4594new) {
            int i9 = ((iM4594new - i7) << i2) + (zM4595try ? 9 : 12);
            int i10 = i7 << 1;
            int i11 = (i - 1) - i10;
            int i12 = 0;
            while (i12 < i9) {
                int i13 = i12 << 1;
                int i14 = 0;
                while (i14 < i2) {
                    int i15 = i10 + i14;
                    int i16 = i10 + i12;
                    zArr[i8 + i13 + i14] = z8Var.m10105try(iArr[i15], iArr[i16]);
                    int i17 = iArr[i16];
                    int i18 = i11 - i14;
                    zArr[(i9 * 2) + i8 + i13 + i14] = z8Var.m10105try(i17, iArr[i18]);
                    int i19 = i11 - i12;
                    zArr[(i9 * 4) + i8 + i13 + i14] = z8Var.m10105try(iArr[i18], iArr[i19]);
                    zArr[(i9 * 6) + i8 + i13 + i14] = z8Var.m10105try(iArr[i19], iArr[i15]);
                    i14++;
                    iM4594new = iM4594new;
                    zM4595try = zM4595try;
                    i2 = 2;
                }
                i12++;
                i2 = 2;
            }
            i8 += i9 << 3;
            i7++;
            i2 = 2;
        }
        return zArr;
    }

    /* renamed from: this, reason: not valid java name */
    private static byte m21734this(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? m21726break(zArr, i, 8) : m21726break(zArr, i, length) << (8 - length));
    }

    /* renamed from: try, reason: not valid java name */
    private static String m21735try(Cif cif, int i) {
        int i2 = C0163do.f17399do[cif.ordinal()];
        if (i2 == 1) {
            return f17395if[i];
        }
        if (i2 == 2) {
            return f17394for[i];
        }
        if (i2 == 3) {
            return f17396new[i];
        }
        if (i2 == 4) {
            return f17397try[i];
        }
        if (i2 == 5) {
            return f17393case[i];
        }
        throw new IllegalStateException("Bad table");
    }

    /* renamed from: for, reason: not valid java name */
    public mx m21736for(l5 l5Var) throws ld0 {
        this.f17398do = l5Var;
        boolean[] zArrM21732if = m21732if(m21733new(l5Var.m5821do()));
        mx mxVar = new mx(m21729do(zArrM21732if), m21727case(zArrM21732if), null, null);
        mxVar.m5036final(zArrM21732if.length);
        return mxVar;
    }
}
