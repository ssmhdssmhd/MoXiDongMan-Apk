package com.google.zxing.maxicode.decoder;

import android.support.v4.mx;
import android.support.v4.t3;
import androidx.exifinterface.media.ExifInterface;
import java.text.DecimalFormat;

/* renamed from: com.google.zxing.maxicode.decoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: break, reason: not valid java name */
    private static final char f17552break = 65529;

    /* renamed from: case, reason: not valid java name */
    private static final char f17553case = 65525;

    /* renamed from: catch, reason: not valid java name */
    private static final char f17554catch = 65530;

    /* renamed from: class, reason: not valid java name */
    private static final char f17555class = 65531;

    /* renamed from: const, reason: not valid java name */
    private static final char f17556const = 65532;

    /* renamed from: do, reason: not valid java name */
    private static final char f17557do = 65520;

    /* renamed from: else, reason: not valid java name */
    private static final char f17558else = 65526;

    /* renamed from: final, reason: not valid java name */
    private static final char f17559final = 28;

    /* renamed from: for, reason: not valid java name */
    private static final char f17560for = 65522;

    /* renamed from: goto, reason: not valid java name */
    private static final char f17561goto = 65527;

    /* renamed from: if, reason: not valid java name */
    private static final char f17562if = 65521;

    /* renamed from: new, reason: not valid java name */
    private static final char f17563new = 65523;

    /* renamed from: super, reason: not valid java name */
    private static final char f17564super = 29;

    /* renamed from: this, reason: not valid java name */
    private static final char f17565this = 65528;

    /* renamed from: throw, reason: not valid java name */
    private static final char f17566throw = 30;

    /* renamed from: try, reason: not valid java name */
    private static final char f17567try = 65524;

    /* renamed from: while, reason: not valid java name */
    private static final String[] f17568while = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};

    private Cif() {
    }

    /* renamed from: case, reason: not valid java name */
    private static int m21965case(byte[] bArr) {
        return m21971new(bArr, new byte[]{33, 34, 35, 36, t3.f6398private, 26, t3.f6381continue, t3.f6403strictfp, t3.f6412volatile, t3.f6394interface, 19, t3.f6409throws, t3.f6382default, t3.f6385extends, t3.f6387finally, t3.f6397package, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    /* renamed from: do, reason: not valid java name */
    public static mx m21966do(byte[] bArr, int i) {
        String strM21969goto;
        StringBuilder sb = new StringBuilder(144);
        if (i == 2 || i == 3) {
            if (i == 2) {
                strM21969goto = new DecimalFormat("0000000000".substring(0, m21967else(bArr))).format(m21965case(bArr));
            } else {
                strM21969goto = m21969goto(bArr);
            }
            DecimalFormat decimalFormat = new DecimalFormat("000");
            String str = decimalFormat.format(m21968for(bArr));
            String str2 = decimalFormat.format(m21972this(bArr));
            sb.append(m21973try(bArr, 10, 84));
            if (sb.toString().startsWith("[)>\u001e01\u001d")) {
                sb.insert(9, strM21969goto + f17564super + str + f17564super + str2 + f17564super);
            } else {
                sb.insert(0, strM21969goto + f17564super + str + f17564super + str2 + f17564super);
            }
        } else if (i == 4) {
            sb.append(m21973try(bArr, 1, 93));
        } else if (i == 5) {
            sb.append(m21973try(bArr, 1, 77));
        }
        return new mx(bArr, sb.toString(), null, String.valueOf(i));
    }

    /* renamed from: else, reason: not valid java name */
    private static int m21967else(byte[] bArr) {
        return m21971new(bArr, new byte[]{39, 40, 41, ExifInterface.START_CODE, t3.f6399protected, 32});
    }

    /* renamed from: for, reason: not valid java name */
    private static int m21968for(byte[] bArr) {
        return m21971new(bArr, new byte[]{53, 54, 43, 44, 45, 46, 47, 48, 37, 38});
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m21969goto(byte[] bArr) {
        String[] strArr = f17568while;
        return String.valueOf(new char[]{strArr[0].charAt(m21971new(bArr, new byte[]{39, 40, 41, ExifInterface.START_CODE, t3.f6399protected, 32})), strArr[0].charAt(m21971new(bArr, new byte[]{33, 34, 35, 36, t3.f6398private, 26})), strArr[0].charAt(m21971new(bArr, new byte[]{t3.f6381continue, t3.f6403strictfp, t3.f6412volatile, t3.f6394interface, 19, t3.f6409throws})), strArr[0].charAt(m21971new(bArr, new byte[]{t3.f6382default, t3.f6385extends, t3.f6387finally, t3.f6397package, 13, 14})), strArr[0].charAt(m21971new(bArr, new byte[]{15, 16, 17, 18, 7, 8})), strArr[0].charAt(m21971new(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }

    /* renamed from: if, reason: not valid java name */
    private static int m21970if(int i, byte[] bArr) {
        int i2 = i - 1;
        return ((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) == 0 ? 0 : 1;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m21971new(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            throw new IllegalArgumentException();
        }
        int iM21970if = 0;
        for (int i = 0; i < bArr2.length; i++) {
            iM21970if += m21970if(bArr2[i], bArr) << ((bArr2.length - i) - 1);
        }
        return iM21970if;
    }

    /* renamed from: this, reason: not valid java name */
    private static int m21972this(byte[] bArr) {
        return m21971new(bArr, new byte[]{55, 56, 57, 58, 59, 60, 49, 50, 51, 52});
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: try, reason: not valid java name */
    private static String m21973try(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = i;
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (i3 < i + i2) {
            char cCharAt = f17568while[i4].charAt(bArr[i3]);
            switch (cCharAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i6 = i4;
                    i4 = cCharAt - f17557do;
                    i5 = 1;
                    break;
                case 65525:
                    i5 = 2;
                    i6 = i4;
                    i4 = 0;
                    break;
                case 65526:
                    i5 = 3;
                    i6 = i4;
                    i4 = 0;
                    break;
                case 65527:
                    i4 = 0;
                    i5 = -1;
                    break;
                case 65528:
                    i4 = 1;
                    i5 = -1;
                    break;
                case 65529:
                    i5 = -1;
                    break;
                case 65530:
                default:
                    sb.append(cCharAt);
                    break;
                case 65531:
                    int i7 = i3 + 1;
                    int i8 = bArr[i7] << t3.f6397package;
                    int i9 = i7 + 1;
                    int i10 = i8 + (bArr[i9] << 18);
                    int i11 = i9 + 1;
                    int i12 = i10 + (bArr[i11] << 12);
                    int i13 = i11 + 1;
                    int i14 = i12 + (bArr[i13] << 6);
                    i3 = i13 + 1;
                    sb.append(new DecimalFormat("000000000").format(i14 + bArr[i3]));
                    break;
            }
            int i15 = i5 - 1;
            if (i5 == 0) {
                i4 = i6;
            }
            i3++;
            i5 = i15;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }
}
