package com.google.zxing.pdf417.decoder;

import android.support.v4.ld0;
import android.support.v4.mx;
import android.support.v4.xk;
import android.support.v4.z91;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* renamed from: com.google.zxing.pdf417.decoder.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry {

    /* renamed from: abstract, reason: not valid java name */
    private static final int f17814abstract = 2;

    /* renamed from: break, reason: not valid java name */
    private static final int f17815break = 922;

    /* renamed from: case, reason: not valid java name */
    private static final int f17816case = 926;

    /* renamed from: catch, reason: not valid java name */
    private static final int f17817catch = 913;

    /* renamed from: class, reason: not valid java name */
    private static final int f17818class = 15;

    /* renamed from: const, reason: not valid java name */
    private static final int f17819const = 0;

    /* renamed from: default, reason: not valid java name */
    private static final int f17820default = 29;

    /* renamed from: do, reason: not valid java name */
    private static final int f17821do = 900;

    /* renamed from: else, reason: not valid java name */
    private static final int f17822else = 927;

    /* renamed from: extends, reason: not valid java name */
    private static final int f17823extends = 29;

    /* renamed from: final, reason: not valid java name */
    private static final int f17824final = 1;

    /* renamed from: for, reason: not valid java name */
    private static final int f17826for = 902;

    /* renamed from: goto, reason: not valid java name */
    private static final int f17827goto = 928;

    /* renamed from: if, reason: not valid java name */
    private static final int f17828if = 901;

    /* renamed from: import, reason: not valid java name */
    private static final int f17829import = 5;

    /* renamed from: native, reason: not valid java name */
    private static final int f17830native = 6;

    /* renamed from: new, reason: not valid java name */
    private static final int f17831new = 924;

    /* renamed from: private, reason: not valid java name */
    private static final BigInteger[] f17833private;

    /* renamed from: public, reason: not valid java name */
    private static final int f17834public = 25;

    /* renamed from: return, reason: not valid java name */
    private static final int f17835return = 27;

    /* renamed from: static, reason: not valid java name */
    private static final int f17836static = 27;

    /* renamed from: super, reason: not valid java name */
    private static final int f17837super = 2;

    /* renamed from: switch, reason: not valid java name */
    private static final int f17838switch = 28;

    /* renamed from: this, reason: not valid java name */
    private static final int f17839this = 923;

    /* renamed from: throw, reason: not valid java name */
    private static final int f17840throw = 3;

    /* renamed from: throws, reason: not valid java name */
    private static final int f17841throws = 28;

    /* renamed from: try, reason: not valid java name */
    private static final int f17842try = 925;

    /* renamed from: while, reason: not valid java name */
    private static final int f17843while = 4;

    /* renamed from: finally, reason: not valid java name */
    private static final char[] f17825finally = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* renamed from: package, reason: not valid java name */
    private static final char[] f17832package = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* renamed from: com.google.zxing.pdf417.decoder.try$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17844do;

        static {
            int[] iArr = new int[Cif.values().length];
            f17844do = iArr;
            try {
                iArr[Cif.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17844do[Cif.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17844do[Cif.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17844do[Cif.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17844do[Cif.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17844do[Cif.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.google.zxing.pdf417.decoder.try$if, reason: invalid class name */
    public enum Cif {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        f17833private = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = f17833private;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    private Ctry() {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int m22267case(int[] iArr, int i, StringBuilder sb) throws ld0 {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < 900) {
                iArr2[i2] = i4;
                i2++;
            } else if (i4 == 900 || i4 == 901 || i4 == 928) {
                i3--;
                z = true;
            } else {
                switch (i4) {
                }
            }
            if ((i2 % 15 == 0 || i4 == 902 || z) && i2 > 0) {
                sb.append(m22270for(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:29:0x0065
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:281)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0077. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x007a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0021 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int m22268do(int r16, int[] r17, java.nio.charset.Charset r18, int r19, java.lang.StringBuilder r20) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.Ctry.m22268do(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0034. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0037. Please report as an issue. */
    /* renamed from: else, reason: not valid java name */
    private static int m22269else(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[(iArr[0] - i) << 1];
        int[] iArr3 = new int[(iArr[0] - i) << 1];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 < 900) {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
            } else if (i4 != f17817catch) {
                if (i4 != 928) {
                    switch (i4) {
                        case 900:
                            iArr2[i2] = 900;
                            i2++;
                            break;
                        case 901:
                        case 902:
                            break;
                        default:
                            switch (i4) {
                            }
                    }
                }
                i = i3 - 1;
                z = true;
            } else {
                iArr2[i2] = f17817catch;
                i = i3 + 1;
                iArr3[i2] = iArr[i3];
                i2++;
            }
            i = i3;
        }
        m22273try(iArr2, iArr3, i2, sb);
        return i;
    }

    /* renamed from: for, reason: not valid java name */
    private static String m22270for(int[] iArr, int i) throws ld0 {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(f17833private[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw ld0.getFormatInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static mx m22271if(int[] iArr, String str) throws ld0 {
        int iM22269else;
        StringBuilder sb = new StringBuilder(iArr.length << 1);
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        int i = iArr[1];
        z91 z91Var = new z91();
        int i2 = 2;
        while (i2 < iArr[0]) {
            if (i != f17817catch) {
                switch (i) {
                    case 900:
                        iM22269else = m22269else(iArr, i2, sb);
                        break;
                    case 901:
                        iM22269else = m22268do(i, iArr, charsetForName, i2, sb);
                        break;
                    case 902:
                        iM22269else = m22267case(iArr, i2, sb);
                        break;
                    default:
                        switch (i) {
                            case f17815break /* 922 */:
                            case f17839this /* 923 */:
                                throw ld0.getFormatInstance();
                            case f17831new /* 924 */:
                                break;
                            case f17842try /* 925 */:
                                iM22269else = i2 + 1;
                                break;
                            case f17816case /* 926 */:
                                iM22269else = i2 + 2;
                                break;
                            case f17822else /* 927 */:
                                iM22269else = i2 + 1;
                                charsetForName = Charset.forName(xk.getCharacterSetECIByValue(iArr[i2]).name());
                                break;
                            case 928:
                                iM22269else = m22272new(iArr, i2, z91Var);
                                break;
                            default:
                                iM22269else = m22269else(iArr, i2 - 1, sb);
                                break;
                        }
                }
            } else {
                iM22269else = i2 + 1;
                sb.append((char) iArr[i2]);
            }
            if (iM22269else >= iArr.length) {
                throw ld0.getFormatInstance();
            }
            i2 = iM22269else + 1;
            i = iArr[iM22269else];
        }
        if (sb.length() == 0) {
            throw ld0.getFormatInstance();
        }
        mx mxVar = new mx(null, sb.toString(), null, str);
        mxVar.m5041super(z91Var);
        return mxVar;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m22272new(int[] iArr, int i, z91 z91Var) throws ld0 {
        if (i + 2 > iArr[0]) {
            throw ld0.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = 0;
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        z91Var.m10131public(Integer.parseInt(m22270for(iArr2, 2)));
        StringBuilder sb = new StringBuilder();
        int iM22269else = m22269else(iArr, i, sb);
        z91Var.m10124final(sb.toString());
        int i3 = iArr[iM22269else] == f17839this ? iM22269else + 1 : -1;
        while (iM22269else < iArr[0]) {
            int i4 = iArr[iM22269else];
            if (i4 == f17815break) {
                iM22269else++;
                z91Var.m10138while(true);
            } else {
                if (i4 != f17839this) {
                    throw ld0.getFormatInstance();
                }
                int i5 = iM22269else + 1;
                switch (iArr[i5]) {
                    case 0:
                        StringBuilder sb2 = new StringBuilder();
                        iM22269else = m22269else(iArr, i5 + 1, sb2);
                        z91Var.m10134super(sb2.toString());
                        break;
                    case 1:
                        StringBuilder sb3 = new StringBuilder();
                        iM22269else = m22267case(iArr, i5 + 1, sb3);
                        z91Var.m10129native(Integer.parseInt(sb3.toString()));
                        break;
                    case 2:
                        StringBuilder sb4 = new StringBuilder();
                        iM22269else = m22267case(iArr, i5 + 1, sb4);
                        z91Var.m10133static(Long.parseLong(sb4.toString()));
                        break;
                    case 3:
                        StringBuilder sb5 = new StringBuilder();
                        iM22269else = m22269else(iArr, i5 + 1, sb5);
                        z91Var.m10132return(sb5.toString());
                        break;
                    case 4:
                        StringBuilder sb6 = new StringBuilder();
                        iM22269else = m22269else(iArr, i5 + 1, sb6);
                        z91Var.m10120class(sb6.toString());
                        break;
                    case 5:
                        StringBuilder sb7 = new StringBuilder();
                        iM22269else = m22267case(iArr, i5 + 1, sb7);
                        z91Var.m10136throw(Long.parseLong(sb7.toString()));
                        break;
                    case 6:
                        StringBuilder sb8 = new StringBuilder();
                        iM22269else = m22267case(iArr, i5 + 1, sb8);
                        z91Var.m10121const(Integer.parseInt(sb8.toString()));
                        break;
                    default:
                        throw ld0.getFormatInstance();
                }
            }
        }
        if (i3 != -1) {
            int i6 = iM22269else - i3;
            if (z91Var.m10119catch()) {
                i6--;
            }
            z91Var.m10128import(Arrays.copyOfRange(iArr, i3, i6 + i3));
        }
        return iM22269else;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: try, reason: not valid java name */
    private static void m22273try(int[] iArr, int[] iArr2, int i, StringBuilder sb) {
        Cif cif;
        int i2;
        Cif cif2 = Cif.ALPHA;
        Cif cif3 = cif2;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            char c = ' ';
            switch (Cdo.f17844do[cif2.ordinal()]) {
                case 1:
                    if (i4 < 26) {
                        i2 = i4 + 65;
                        c = (char) i2;
                        break;
                    } else {
                        if (i4 == 900) {
                            cif2 = Cif.ALPHA;
                        } else if (i4 != f17817catch) {
                            switch (i4) {
                                case 27:
                                    cif2 = Cif.LOWER;
                                    break;
                                case 28:
                                    cif2 = Cif.MIXED;
                                    break;
                                case 29:
                                    cif = Cif.PUNCT_SHIFT;
                                    c = 0;
                                    Cif cif4 = cif;
                                    cif3 = cif2;
                                    cif2 = cif4;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr2[i3]);
                        }
                        c = 0;
                        break;
                    }
                case 2:
                    if (i4 < 26) {
                        i2 = i4 + 97;
                        c = (char) i2;
                        break;
                    } else {
                        if (i4 == 900) {
                            cif2 = Cif.ALPHA;
                        } else if (i4 != f17817catch) {
                            switch (i4) {
                                case 27:
                                    cif = Cif.ALPHA_SHIFT;
                                    c = 0;
                                    Cif cif42 = cif;
                                    cif3 = cif2;
                                    cif2 = cif42;
                                    break;
                                case 28:
                                    cif2 = Cif.MIXED;
                                    break;
                                case 29:
                                    cif = Cif.PUNCT_SHIFT;
                                    c = 0;
                                    Cif cif422 = cif;
                                    cif3 = cif2;
                                    cif2 = cif422;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr2[i3]);
                        }
                        c = 0;
                        break;
                    }
                    break;
                case 3:
                    if (i4 < 25) {
                        c = f17832package[i4];
                        break;
                    } else {
                        if (i4 == 900) {
                            cif2 = Cif.ALPHA;
                        } else if (i4 != f17817catch) {
                            switch (i4) {
                                case 25:
                                    cif2 = Cif.PUNCT;
                                    break;
                                case 27:
                                    cif2 = Cif.LOWER;
                                    break;
                                case 28:
                                    cif2 = Cif.ALPHA;
                                    break;
                                case 29:
                                    cif = Cif.PUNCT_SHIFT;
                                    c = 0;
                                    Cif cif4222 = cif;
                                    cif3 = cif2;
                                    cif2 = cif4222;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr2[i3]);
                        }
                        c = 0;
                        break;
                    }
                    break;
                case 4:
                    if (i4 < 29) {
                        c = f17825finally[i4];
                        break;
                    } else {
                        if (i4 == 29 || i4 == 900) {
                            cif2 = Cif.ALPHA;
                        } else if (i4 == f17817catch) {
                            sb.append((char) iArr2[i3]);
                        }
                        c = 0;
                        break;
                    }
                case 5:
                    if (i4 < 26) {
                        c = (char) (i4 + 65);
                    } else if (i4 != 26) {
                        cif2 = i4 != 900 ? cif3 : Cif.ALPHA;
                        c = 0;
                        break;
                    }
                    cif2 = cif3;
                    break;
                case 6:
                    if (i4 < 29) {
                        c = f17825finally[i4];
                        cif2 = cif3;
                        break;
                    } else if (i4 == 29 || i4 == 900) {
                        cif2 = Cif.ALPHA;
                        c = 0;
                        break;
                    } else {
                        if (i4 == f17817catch) {
                            sb.append((char) iArr2[i3]);
                        }
                        c = 0;
                    }
                    break;
                default:
                    c = 0;
                    break;
            }
            if (c != 0) {
                sb.append(c);
            }
        }
    }
}
