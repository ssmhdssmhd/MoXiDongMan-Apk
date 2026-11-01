package com.google.zxing.qrcode.encoder;

import android.support.v4.ci1;
import android.support.v4.ig2;
import android.support.v4.w8;
import android.support.v4.xk;
import android.support.v4.zd;
import com.google.zxing.Ctry;
import com.google.zxing.common.reedsolomon.Cnew;
import com.google.zxing.qrcode.decoder.Ccase;
import com.google.zxing.qrcode.decoder.Cgoto;
import com.google.zxing.qrcode.decoder.Cthis;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.encoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final int[] f17944do = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* renamed from: if, reason: not valid java name */
    public static final String f17945if = "ISO-8859-1";

    /* renamed from: com.google.zxing.qrcode.encoder.if$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17946do;

        static {
            int[] iArr = new int[Cgoto.values().length];
            f17946do = iArr;
            try {
                iArr[Cgoto.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17946do[Cgoto.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17946do[Cgoto.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17946do[Cgoto.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private Cif() {
    }

    /* renamed from: break, reason: not valid java name */
    private static int m22404break(zd zdVar) {
        return Cfor.m22397do(zdVar) + Cfor.m22399for(zdVar) + Cfor.m22402new(zdVar) + Cfor.m22403try(zdVar);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m22405case(int i, Cthis cthis, Cgoto cgoto, w8 w8Var) throws ig2 {
        int characterCountBits = cgoto.getCharacterCountBits(cthis);
        int i2 = 1 << characterCountBits;
        if (i < i2) {
            w8Var.m9083for(i, characterCountBits);
            return;
        }
        throw new ig2(i + " is bigger than " + (i2 - 1));
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m22406catch(w8 w8Var, Ccase ccase, Cthis cthis, zd zdVar) throws ig2 {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            Cnew.m22433do(w8Var, ccase, cthis, i3, zdVar);
            int iM22404break = m22404break(zdVar);
            if (iM22404break < i) {
                i2 = i3;
                i = iM22404break;
            }
        }
        return i2;
    }

    /* renamed from: class, reason: not valid java name */
    public static Cgoto m22407class(String str) {
        return m22408const(str, null);
    }

    /* renamed from: const, reason: not valid java name */
    private static Cgoto m22408const(String str, String str2) {
        if ("Shift_JIS".equals(str2) && m22419return(str)) {
            return Cgoto.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z2 = true;
            } else {
                if (m22415import(cCharAt) == -1) {
                    return Cgoto.BYTE;
                }
                z = true;
            }
        }
        return z ? Cgoto.ALPHANUMERIC : z2 ? Cgoto.NUMERIC : Cgoto.BYTE;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m22409do(String str, w8 w8Var, String str2) throws ig2, UnsupportedEncodingException {
        try {
            for (byte b : str.getBytes(str2)) {
                w8Var.m9083for(b, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new ig2(e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m22410else(Cgoto cgoto, w8 w8Var) {
        w8Var.m9083for(cgoto.getBits(), 4);
    }

    /* renamed from: final, reason: not valid java name */
    private static Cthis m22411final(int i, Ccase ccase) throws ig2 {
        for (int i2 = 1; i2 <= 40; i2++) {
            Cthis cthisM22337this = Cthis.m22337this(i2);
            if (m22425throws(i, cthisM22337this, ccase)) {
                return cthisM22337this;
            }
        }
        throw new ig2("Data too big");
    }

    /* renamed from: for, reason: not valid java name */
    public static void m22412for(String str, Cgoto cgoto, w8 w8Var, String str2) throws ig2, UnsupportedEncodingException {
        int i = Cdo.f17946do[cgoto.ordinal()];
        if (i == 1) {
            m22413goto(str, w8Var);
            return;
        }
        if (i == 2) {
            m22414if(str, w8Var);
        } else if (i == 3) {
            m22409do(str, w8Var, str2);
        } else {
            if (i != 4) {
                throw new ig2("Invalid mode: ".concat(String.valueOf(cgoto)));
            }
            m22426try(str, w8Var);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m22413goto(CharSequence charSequence, w8 w8Var) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                w8Var.m9083for((iCharAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    w8Var.m9083for((iCharAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    w8Var.m9083for(iCharAt, 4);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m22414if(CharSequence charSequence, w8 w8Var) throws ig2 {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iM22415import = m22415import(charSequence.charAt(i));
            if (iM22415import == -1) {
                throw new ig2();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int iM22415import2 = m22415import(charSequence.charAt(i2));
                if (iM22415import2 == -1) {
                    throw new ig2();
                }
                w8Var.m9083for((iM22415import * 45) + iM22415import2, 11);
                i += 2;
            } else {
                w8Var.m9083for(iM22415import, 6);
                i = i2;
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static int m22415import(int i) {
        int[] iArr = f17944do;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m22416native(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws ig2 {
        if (i4 >= i3) {
            throw new ig2("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new ig2("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new ig2("RS blocks mismatch");
        }
        if (i != ((i9 + i11) * i6) + ((i10 + i12) * i5)) {
            throw new ig2("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m22417new(xk xkVar, w8 w8Var) {
        w8Var.m9083for(Cgoto.ECI.getBits(), 4);
        w8Var.m9083for(xkVar.getValue(), 8);
    }

    /* renamed from: public, reason: not valid java name */
    public static w8 m22418public(w8 w8Var, int i, int i2, int i3) throws ig2 {
        if (w8Var.m9079const() != i2) {
            throw new ig2("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            m22416native(i, i2, i3, i5, iArr, iArr2);
            int i6 = iArr[0];
            byte[] bArr = new byte[i6];
            w8Var.m9089public(i4 << 3, bArr, 0, i6);
            byte[] bArrM22427while = m22427while(bArr, iArr2[0]);
            arrayList.add(new com.google.zxing.qrcode.encoder.Cdo(bArr, bArrM22427while));
            iMax = Math.max(iMax, i6);
            iMax2 = Math.max(iMax2, bArrM22427while.length);
            i4 += iArr[0];
        }
        if (i2 != i4) {
            throw new ig2("Data bytes does not match offset");
        }
        w8 w8Var2 = new w8();
        for (int i7 = 0; i7 < iMax; i7++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrM22394do = ((com.google.zxing.qrcode.encoder.Cdo) it.next()).m22394do();
                if (i7 < bArrM22394do.length) {
                    w8Var2.m9083for(bArrM22394do[i7], 8);
                }
            }
        }
        for (int i8 = 0; i8 < iMax2; i8++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrM22395if = ((com.google.zxing.qrcode.encoder.Cdo) it2.next()).m22395if();
                if (i8 < bArrM22395if.length) {
                    w8Var2.m9083for(bArrM22395if[i8], 8);
                }
            }
        }
        if (i == w8Var2.m9079const()) {
            return w8Var2;
        }
        throw new ig2("Interleaving error: " + i + " and " + w8Var2.m9079const() + " differ.");
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m22419return(String str) throws UnsupportedEncodingException {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    /* renamed from: static, reason: not valid java name */
    private static Cthis m22420static(Ccase ccase, Cgoto cgoto, w8 w8Var, w8 w8Var2) throws ig2 {
        return m22411final(m22423this(cgoto, w8Var, w8Var2, m22411final(m22423this(cgoto, w8Var, w8Var2, Cthis.m22337this(1)), ccase)), ccase);
    }

    /* renamed from: super, reason: not valid java name */
    public static ci1 m22421super(String str, Ccase ccase) throws ig2 {
        return m22424throw(str, ccase, null);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m22422switch(int i, w8 w8Var) throws ig2 {
        int i2 = i << 3;
        if (w8Var.m9078class() > i2) {
            throw new ig2("data bits cannot fit in the QR Code" + w8Var.m9078class() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && w8Var.m9078class() < i2; i3++) {
            w8Var.m9080do(false);
        }
        int iM9078class = w8Var.m9078class() & 7;
        if (iM9078class > 0) {
            while (iM9078class < 8) {
                w8Var.m9080do(false);
                iM9078class++;
            }
        }
        int iM9079const = i - w8Var.m9079const();
        for (int i4 = 0; i4 < iM9079const; i4++) {
            w8Var.m9083for((i4 & 1) == 0 ? 236 : 17, 8);
        }
        if (w8Var.m9078class() != i2) {
            throw new ig2("Bits size does not equal capacity");
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static int m22423this(Cgoto cgoto, w8 w8Var, w8 w8Var2, Cthis cthis) {
        return w8Var.m9078class() + cgoto.getCharacterCountBits(cthis) + w8Var2.m9078class();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0095  */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ci1 m22424throw(String str, Ccase ccase, Map<Ctry, ?> map) throws ig2, UnsupportedEncodingException {
        Cthis cthisM22420static;
        xk characterSetECIByName;
        boolean z = map != null && map.containsKey(Ctry.CHARACTER_SET);
        String string = z ? map.get(Ctry.CHARACTER_SET).toString() : "ISO-8859-1";
        Cgoto cgotoM22408const = m22408const(str, string);
        w8 w8Var = new w8();
        Cgoto cgoto = Cgoto.BYTE;
        if (cgotoM22408const == cgoto && z && (characterSetECIByName = xk.getCharacterSetECIByName(string)) != null) {
            m22417new(characterSetECIByName, w8Var);
        }
        if ((map != null && map.containsKey(Ctry.GS1_FORMAT)) && Boolean.valueOf(map.get(Ctry.GS1_FORMAT).toString()).booleanValue()) {
            m22410else(Cgoto.FNC1_FIRST_POSITION, w8Var);
        }
        m22410else(cgotoM22408const, w8Var);
        w8 w8Var2 = new w8();
        m22412for(str, cgotoM22408const, w8Var2, string);
        if (map != null) {
            Ctry ctry = Ctry.QR_VERSION;
            if (map.containsKey(ctry)) {
                cthisM22420static = Cthis.m22337this(Integer.parseInt(map.get(ctry).toString()));
                if (!m22425throws(m22423this(cgotoM22408const, w8Var, w8Var2, cthisM22420static), cthisM22420static, ccase)) {
                    throw new ig2("Data too big for requested version");
                }
            } else {
                cthisM22420static = m22420static(ccase, cgotoM22408const, w8Var, w8Var2);
            }
        }
        w8 w8Var3 = new w8();
        w8Var3.m9085if(w8Var);
        m22405case(cgotoM22408const == cgoto ? w8Var2.m9079const() : str.length(), cthisM22420static, cgotoM22408const, w8Var3);
        w8Var3.m9085if(w8Var2);
        Cthis.Cif cifM22339case = cthisM22420static.m22339case(ccase);
        int iM22341goto = cthisM22420static.m22341goto() - cifM22339case.m22349new();
        m22422switch(iM22341goto, w8Var3);
        w8 w8VarM22418public = m22418public(w8Var3, cthisM22420static.m22341goto(), iM22341goto, cifM22339case.m22347for());
        ci1 ci1Var = new ci1();
        ci1Var.m941else(ccase);
        ci1Var.m938break(cgotoM22408const);
        ci1Var.m939catch(cthisM22420static);
        int iM22343try = cthisM22420static.m22343try();
        zd zdVar = new zd(iM22343try, iM22343try);
        int iM22406catch = m22406catch(w8VarM22418public, ccase, cthisM22420static, zdVar);
        ci1Var.m943goto(iM22406catch);
        Cnew.m22433do(w8VarM22418public, ccase, cthisM22420static, iM22406catch, zdVar);
        ci1Var.m946this(zdVar);
        return ci1Var;
    }

    /* renamed from: throws, reason: not valid java name */
    private static boolean m22425throws(int i, Cthis cthis, Ccase ccase) {
        return cthis.m22341goto() - cthis.m22339case(ccase).m22349new() >= (i + 7) / 8;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m22426try(String str, w8 w8Var) throws ig2, UnsupportedEncodingException {
        int i;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i2 = 0; i2 < length; i2 += 2) {
                int i3 = ((bytes[i2] & 255) << 8) | (bytes[i2 + 1] & 255);
                int i4 = 33088;
                if (i3 >= 33088 && i3 <= 40956) {
                    i = i3 - i4;
                } else if (i3 < 57408 || i3 > 60351) {
                    i = -1;
                } else {
                    i4 = 49472;
                    i = i3 - i4;
                }
                if (i == -1) {
                    throw new ig2("Invalid byte sequence");
                }
                w8Var.m9083for(((i >> 8) * 192) + (i & 255), 13);
            }
        } catch (UnsupportedEncodingException e) {
            throw new ig2(e);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static byte[] m22427while(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new Cnew(com.google.zxing.common.reedsolomon.Cdo.f17452class).m21835if(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }
}
