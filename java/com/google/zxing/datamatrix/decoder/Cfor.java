package com.google.zxing.datamatrix.decoder;

import android.support.v4.a9;
import android.support.v4.ay0;
import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.ld0;
import android.support.v4.mx;
import android.support.v4.t3;
import android.support.v4.w21;
import android.support.v4.wk;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.google.zxing.datamatrix.decoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f17473do = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', ay0.f288try, 'M', 'N', 'O', 'P', 'Q', ay0.f285else, 'S', 'T', ay0.f284case, 'V', 'W', 'X', 'Y', ay0.f286for};

    /* renamed from: for, reason: not valid java name */
    private static final char[] f17474for;

    /* renamed from: if, reason: not valid java name */
    private static final char[] f17475if;

    /* renamed from: new, reason: not valid java name */
    private static final char[] f17476new;

    /* renamed from: try, reason: not valid java name */
    private static final char[] f17477try;

    /* renamed from: com.google.zxing.datamatrix.decoder.for$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17478do;

        static {
            int[] iArr = new int[Cif.values().length];
            f17478do = iArr;
            try {
                iArr[Cif.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17478do[Cif.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17478do[Cif.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17478do[Cif.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17478do[Cif.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.google.zxing.datamatrix.decoder.for$if, reason: invalid class name */
    public enum Cif {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    static {
        char[] cArr = {'!', ca2.f674do, '#', '$', '%', ca2.f679for, '\'', '(', ')', '*', hy1.f2562if, ',', hy1.f2561for, Ctry.f28883do, Attributes.InternalPrefix, ':', ';', ca2.f687new, hy1.f2563new, ca2.f702try, '?', '@', '[', '\\', ']', '^', '_'};
        f17475if = cArr;
        f17474for = new char[]{'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        f17476new = cArr;
        f17477try = new char[]{'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', ay0.f288try, 'M', 'N', 'O', 'P', 'Q', ay0.f285else, 'S', 'T', ay0.f284case, 'V', 'W', 'X', 'Y', ay0.f286for, MessageFormatter.DELIM_START, '|', MessageFormatter.DELIM_STOP, net.minidev.json.parser.Cif.f28242public, t3.a};
    }

    private Cfor() {
    }

    /* renamed from: case, reason: not valid java name */
    private static void m21846case(a9 a9Var, StringBuilder sb) {
        while (a9Var.m76do() > 16) {
            for (int i = 0; i < 4; i++) {
                int iM79new = a9Var.m79new(6);
                if (iM79new == 31) {
                    int iM78if = 8 - a9Var.m78if();
                    if (iM78if != 8) {
                        a9Var.m79new(iM78if);
                        return;
                    }
                    return;
                }
                if ((iM79new & 32) == 0) {
                    iM79new |= 64;
                }
                sb.append((char) iM79new);
            }
            if (a9Var.m76do() <= 0) {
                return;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static mx m21847do(byte[] bArr) throws ld0 {
        a9 a9Var = new a9(bArr);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        Cif cifM21849for = Cif.ASCII_ENCODE;
        do {
            Cif cif = Cif.ASCII_ENCODE;
            if (cifM21849for == cif) {
                cifM21849for = m21849for(a9Var, sb, sb2);
            } else {
                int i = Cdo.f17478do[cifM21849for.ordinal()];
                if (i == 1) {
                    m21854try(a9Var, sb);
                } else if (i == 2) {
                    m21848else(a9Var, sb);
                } else if (i == 3) {
                    m21851if(a9Var, sb);
                } else if (i == 4) {
                    m21846case(a9Var, sb);
                } else {
                    if (i != 5) {
                        throw ld0.getFormatInstance();
                    }
                    m21852new(a9Var, sb, arrayList);
                }
                cifM21849for = cif;
            }
            if (cifM21849for == Cif.PAD_ENCODE) {
                break;
            }
        } while (a9Var.m76do() > 0);
        if (sb2.length() > 0) {
            sb.append((CharSequence) sb2);
        }
        String string = sb.toString();
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new mx(bArr, string, arrayList, null);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m21848else(a9 a9Var, StringBuilder sb) throws ld0 {
        int iM79new;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (a9Var.m76do() != 8 && (iM79new = a9Var.m79new(8)) != 254) {
            m21850goto(iM79new, a9Var.m79new(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            char[] cArr = f17476new;
                            if (i3 < cArr.length) {
                                char c = cArr[i3];
                                if (z) {
                                    sb.append((char) (c + 128));
                                    z = false;
                                } else {
                                    sb.append(c);
                                }
                            } else if (i3 == 27) {
                                sb.append((char) 29);
                            } else {
                                if (i3 != 30) {
                                    throw ld0.getFormatInstance();
                                }
                                z = true;
                            }
                            i = 0;
                        } else {
                            if (i != 3) {
                                throw ld0.getFormatInstance();
                            }
                            char[] cArr2 = f17477try;
                            if (i3 >= cArr2.length) {
                                throw ld0.getFormatInstance();
                            }
                            char c2 = cArr2[i3];
                            if (z) {
                                sb.append((char) (c2 + 128));
                                z = false;
                                i = 0;
                            } else {
                                sb.append(c2);
                                i = 0;
                            }
                        }
                    } else if (z) {
                        sb.append((char) (i3 + 128));
                        z = false;
                        i = 0;
                    } else {
                        sb.append((char) i3);
                        i = 0;
                    }
                } else if (i3 < 3) {
                    i = i3 + 1;
                } else {
                    char[] cArr3 = f17474for;
                    if (i3 >= cArr3.length) {
                        throw ld0.getFormatInstance();
                    }
                    char c3 = cArr3[i3];
                    if (z) {
                        sb.append((char) (c3 + 128));
                        z = false;
                    } else {
                        sb.append(c3);
                    }
                }
            }
            if (a9Var.m76do() <= 0) {
                return;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static Cif m21849for(a9 a9Var, StringBuilder sb, StringBuilder sb2) throws ld0 {
        boolean z = false;
        do {
            int iM79new = a9Var.m79new(8);
            if (iM79new == 0) {
                throw ld0.getFormatInstance();
            }
            if (iM79new > 128) {
                if (iM79new != 129) {
                    if (iM79new > 229) {
                        switch (iM79new) {
                            case 230:
                                return Cif.C40_ENCODE;
                            case 231:
                                return Cif.BASE256_ENCODE;
                            case 232:
                                sb.append((char) 29);
                                break;
                            case 233:
                            case 234:
                            case 241:
                                break;
                            case 235:
                                z = true;
                                break;
                            case 236:
                                sb.append("[)>\u001e05\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 237:
                                sb.append("[)>\u001e06\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 238:
                                return Cif.ANSIX12_ENCODE;
                            case 239:
                                return Cif.TEXT_ENCODE;
                            case MountainSceneView.f20267finally /* 240 */:
                                return Cif.EDIFACT_ENCODE;
                            default:
                                if (iM79new != 254 || a9Var.m76do() != 0) {
                                    throw ld0.getFormatInstance();
                                }
                                break;
                        }
                    } else {
                        int i = iM79new + w21.Q1;
                        if (i < 10) {
                            sb.append('0');
                        }
                        sb.append(i);
                    }
                } else {
                    return Cif.PAD_ENCODE;
                }
            } else {
                if (z) {
                    iM79new += 128;
                }
                sb.append((char) (iM79new - 1));
                return Cif.ASCII_ENCODE;
            }
        } while (a9Var.m76do() > 0);
        return Cif.ASCII_ENCODE;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m21850goto(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m21851if(a9 a9Var, StringBuilder sb) throws ld0 {
        int iM79new;
        int[] iArr = new int[3];
        while (a9Var.m76do() != 8 && (iM79new = a9Var.m79new(8)) != 254) {
            m21850goto(iM79new, a9Var.m79new(8), iArr);
            for (int i = 0; i < 3; i++) {
                int i2 = iArr[i];
                if (i2 == 0) {
                    sb.append(wk.f7547for);
                } else if (i2 == 1) {
                    sb.append('*');
                } else if (i2 == 2) {
                    sb.append(ca2.f702try);
                } else if (i2 == 3) {
                    sb.append(' ');
                } else if (i2 < 14) {
                    sb.append((char) (i2 + 44));
                } else {
                    if (i2 >= 40) {
                        throw ld0.getFormatInstance();
                    }
                    sb.append((char) (i2 + 51));
                }
            }
            if (a9Var.m76do() <= 0) {
                return;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m21852new(a9 a9Var, StringBuilder sb, Collection<byte[]> collection) throws ld0 {
        int iM77for = a9Var.m77for() + 1;
        int i = iM77for + 1;
        int iM21853this = m21853this(a9Var.m79new(8), iM77for);
        if (iM21853this == 0) {
            iM21853this = a9Var.m76do() / 8;
        } else if (iM21853this >= 250) {
            iM21853this = ((iM21853this - 249) * 250) + m21853this(a9Var.m79new(8), i);
            i++;
        }
        if (iM21853this < 0) {
            throw ld0.getFormatInstance();
        }
        byte[] bArr = new byte[iM21853this];
        int i2 = 0;
        while (i2 < iM21853this) {
            if (a9Var.m76do() < 8) {
                throw ld0.getFormatInstance();
            }
            bArr[i2] = (byte) m21853this(a9Var.m79new(8), i);
            i2++;
            i++;
        }
        collection.add(bArr);
        try {
            sb.append(new String(bArr, "ISO8859_1"));
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e)));
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static int m21853this(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }

    /* renamed from: try, reason: not valid java name */
    private static void m21854try(a9 a9Var, StringBuilder sb) throws ld0 {
        int iM79new;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (a9Var.m76do() != 8 && (iM79new = a9Var.m79new(8)) != 254) {
            m21850goto(iM79new, a9Var.m79new(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            char[] cArr = f17475if;
                            if (i3 < cArr.length) {
                                char c = cArr[i3];
                                if (z) {
                                    sb.append((char) (c + 128));
                                    z = false;
                                } else {
                                    sb.append(c);
                                }
                            } else if (i3 == 27) {
                                sb.append((char) 29);
                            } else {
                                if (i3 != 30) {
                                    throw ld0.getFormatInstance();
                                }
                                z = true;
                            }
                            i = 0;
                        } else {
                            if (i != 3) {
                                throw ld0.getFormatInstance();
                            }
                            if (z) {
                                sb.append((char) (i3 + 224));
                                z = false;
                                i = 0;
                            } else {
                                sb.append((char) (i3 + 96));
                                i = 0;
                            }
                        }
                    } else if (z) {
                        sb.append((char) (i3 + 128));
                        z = false;
                        i = 0;
                    } else {
                        sb.append((char) i3);
                        i = 0;
                    }
                } else if (i3 < 3) {
                    i = i3 + 1;
                } else {
                    char[] cArr2 = f17473do;
                    if (i3 >= cArr2.length) {
                        throw ld0.getFormatInstance();
                    }
                    char c2 = cArr2[i3];
                    if (z) {
                        sb.append((char) (c2 + 128));
                        z = false;
                    } else {
                        sb.append(c2);
                    }
                }
            }
            if (a9Var.m76do() <= 0) {
                return;
            }
        }
    }
}
