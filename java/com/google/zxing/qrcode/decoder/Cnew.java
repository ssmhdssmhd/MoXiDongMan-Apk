package com.google.zxing.qrcode.decoder;

import android.support.v4.a9;
import android.support.v4.ld0;
import android.support.v4.m22;
import android.support.v4.mx;
import android.support.v4.xk;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.decoder.new, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f17903do = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* renamed from: if, reason: not valid java name */
    private static final int f17904if = 1;

    /* renamed from: com.google.zxing.qrcode.decoder.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17905do;

        static {
            int[] iArr = new int[Cgoto.values().length];
            f17905do = iArr;
            try {
                iArr[Cgoto.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17905do[Cgoto.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17905do[Cgoto.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17905do[Cgoto.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17905do[Cgoto.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17905do[Cgoto.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17905do[Cgoto.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17905do[Cgoto.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17905do[Cgoto.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17905do[Cgoto.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private Cnew() {
    }

    /* renamed from: case, reason: not valid java name */
    private static void m22326case(a9 a9Var, StringBuilder sb, int i) throws ld0 {
        while (i >= 3) {
            if (a9Var.m76do() < 10) {
                throw ld0.getFormatInstance();
            }
            int iM79new = a9Var.m79new(10);
            if (iM79new >= 1000) {
                throw ld0.getFormatInstance();
            }
            sb.append(m22330goto(iM79new / 100));
            sb.append(m22330goto((iM79new / 10) % 10));
            sb.append(m22330goto(iM79new % 10));
            i -= 3;
        }
        if (i == 2) {
            if (a9Var.m76do() < 7) {
                throw ld0.getFormatInstance();
            }
            int iM79new2 = a9Var.m79new(7);
            if (iM79new2 >= 100) {
                throw ld0.getFormatInstance();
            }
            sb.append(m22330goto(iM79new2 / 10));
            sb.append(m22330goto(iM79new2 % 10));
            return;
        }
        if (i == 1) {
            if (a9Var.m76do() < 4) {
                throw ld0.getFormatInstance();
            }
            int iM79new3 = a9Var.m79new(4);
            if (iM79new3 >= 10) {
                throw ld0.getFormatInstance();
            }
            sb.append(m22330goto(iM79new3));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d9 A[LOOP:0: B:53:0x001e->B:49:0x00d9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b8 A[SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static mx m22327do(byte[] bArr, Cthis cthis, Ccase ccase, Map<com.google.zxing.Cnew, ?> map) throws ld0 {
        Cgoto cgoto;
        a9 a9Var = new a9(bArr);
        StringBuilder sb = new StringBuilder(50);
        int i = 1;
        ArrayList arrayList = new ArrayList(1);
        xk characterSetECIByValue = null;
        boolean z = false;
        int i2 = -1;
        int iM79new = -1;
        while (true) {
            try {
                Cgoto cgotoForBits = a9Var.m76do() < 4 ? Cgoto.TERMINATOR : Cgoto.forBits(a9Var.m79new(4));
                int[] iArr = Cdo.f17905do;
                switch (iArr[cgotoForBits.ordinal()]) {
                    case 5:
                        cgoto = cgotoForBits;
                        if (cgoto != Cgoto.TERMINATOR) {
                            return new mx(bArr, sb.toString(), arrayList.isEmpty() ? null : arrayList, ccase == null ? null : ccase.toString(), i2, iM79new);
                        }
                        i = 1;
                    case 6:
                    case 7:
                        cgoto = cgotoForBits;
                        z = true;
                        if (cgoto != Cgoto.TERMINATOR) {
                        }
                        break;
                    case 8:
                        if (a9Var.m76do() < 16) {
                            throw ld0.getFormatInstance();
                        }
                        int iM79new2 = a9Var.m79new(8);
                        iM79new = a9Var.m79new(8);
                        i2 = iM79new2;
                        cgoto = cgotoForBits;
                        if (cgoto != Cgoto.TERMINATOR) {
                        }
                        break;
                    case 9:
                        characterSetECIByValue = xk.getCharacterSetECIByValue(m22328else(a9Var));
                        if (characterSetECIByValue == null) {
                            throw ld0.getFormatInstance();
                        }
                        cgoto = cgotoForBits;
                        if (cgoto != Cgoto.TERMINATOR) {
                        }
                        break;
                    case 10:
                        int iM79new3 = a9Var.m79new(4);
                        int iM79new4 = a9Var.m79new(cgotoForBits.getCharacterCountBits(cthis));
                        if (iM79new3 == i) {
                            m22332new(a9Var, sb, iM79new4);
                        }
                        cgoto = cgotoForBits;
                        if (cgoto != Cgoto.TERMINATOR) {
                        }
                        break;
                    default:
                        int iM79new5 = a9Var.m79new(cgotoForBits.getCharacterCountBits(cthis));
                        int i3 = iArr[cgotoForBits.ordinal()];
                        if (i3 == i) {
                            cgoto = cgotoForBits;
                            m22326case(a9Var, sb, iM79new5);
                        } else if (i3 == 2) {
                            cgoto = cgotoForBits;
                            m22331if(a9Var, sb, iM79new5, z);
                        } else if (i3 == 3) {
                            cgoto = cgotoForBits;
                            m22329for(a9Var, sb, iM79new5, characterSetECIByValue, arrayList, map);
                        } else {
                            if (i3 != 4) {
                                throw ld0.getFormatInstance();
                            }
                            m22333try(a9Var, sb, iM79new5);
                            cgoto = cgotoForBits;
                        }
                        if (cgoto != Cgoto.TERMINATOR) {
                        }
                        break;
                }
            } catch (IllegalArgumentException unused) {
                throw ld0.getFormatInstance();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static int m22328else(a9 a9Var) throws ld0 {
        int iM79new = a9Var.m79new(8);
        if ((iM79new & 128) == 0) {
            return iM79new & 127;
        }
        if ((iM79new & 192) == 128) {
            return a9Var.m79new(8) | ((iM79new & 63) << 8);
        }
        if ((iM79new & 224) == 192) {
            return a9Var.m79new(16) | ((iM79new & 31) << 16);
        }
        throw ld0.getFormatInstance();
    }

    /* renamed from: for, reason: not valid java name */
    private static void m22329for(a9 a9Var, StringBuilder sb, int i, xk xkVar, Collection<byte[]> collection, Map<com.google.zxing.Cnew, ?> map) throws ld0 {
        if ((i << 3) > a9Var.m76do()) {
            throw ld0.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) a9Var.m79new(8);
        }
        try {
            sb.append(new String(bArr, xkVar == null ? m22.m4825do(bArr, map) : xkVar.name()));
            collection.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw ld0.getFormatInstance();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static char m22330goto(int i) throws ld0 {
        char[] cArr = f17903do;
        if (i < cArr.length) {
            return cArr[i];
        }
        throw ld0.getFormatInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m22331if(a9 a9Var, StringBuilder sb, int i, boolean z) throws ld0 {
        while (i > 1) {
            if (a9Var.m76do() < 11) {
                throw ld0.getFormatInstance();
            }
            int iM79new = a9Var.m79new(11);
            sb.append(m22330goto(iM79new / 45));
            sb.append(m22330goto(iM79new % 45));
            i -= 2;
        }
        if (i == 1) {
            if (a9Var.m76do() < 6) {
                throw ld0.getFormatInstance();
            }
            sb.append(m22330goto(a9Var.m79new(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        } else {
                            sb.setCharAt(length, (char) 29);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m22332new(a9 a9Var, StringBuilder sb, int i) throws ld0 {
        if (i * 13 > a9Var.m76do()) {
            throw ld0.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iM79new = a9Var.m79new(13);
            int i3 = (iM79new % 96) | ((iM79new / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, m22.f3824for));
        } catch (UnsupportedEncodingException unused) {
            throw ld0.getFormatInstance();
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static void m22333try(a9 a9Var, StringBuilder sb, int i) throws ld0 {
        if (i * 13 > a9Var.m76do()) {
            throw ld0.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iM79new = a9Var.m79new(13);
            int i3 = (iM79new % 192) | ((iM79new / 192) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, m22.f3825if));
        } catch (UnsupportedEncodingException unused) {
            throw ld0.getFormatInstance();
        }
    }
}
