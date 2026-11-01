package com.google.zxing.qrcode.encoder;

import android.support.v4.ci1;
import android.support.v4.ig2;
import android.support.v4.w8;
import android.support.v4.zd;
import com.google.zxing.qrcode.decoder.Ccase;
import com.google.zxing.qrcode.decoder.Cthis;
import org.jsoup.nodes.Attributes;

/* renamed from: com.google.zxing.qrcode.encoder.new, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnew {

    /* renamed from: case, reason: not valid java name */
    private static final int f17947case = 1335;

    /* renamed from: else, reason: not valid java name */
    private static final int f17949else = 21522;

    /* renamed from: try, reason: not valid java name */
    private static final int f17953try = 7973;

    /* renamed from: do, reason: not valid java name */
    private static final int[][] f17948do = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: if, reason: not valid java name */
    private static final int[][] f17951if = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: for, reason: not valid java name */
    private static final int[][] f17950for = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: new, reason: not valid java name */
    private static final int[][] f17952new = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private Cnew() {
    }

    /* renamed from: break, reason: not valid java name */
    private static void m22428break(zd zdVar) throws ig2 {
        int length = f17948do[0].length;
        m22443this(0, 0, zdVar);
        m22443this(zdVar.m10160try() - length, 0, zdVar);
        m22443this(0, zdVar.m10160try() - length, zdVar);
        m22434else(0, 7, zdVar);
        m22434else(zdVar.m10160try() - 8, 7, zdVar);
        m22434else(0, zdVar.m10160try() - 8, zdVar);
        m22432const(7, 0, zdVar);
        m22432const((zdVar.m10159new() - 7) - 1, 0, zdVar);
        m22432const(7, zdVar.m10159new() - 7, zdVar);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m22429case(w8 w8Var, int i, zd zdVar) throws ig2 {
        boolean zM9084goto;
        int iM10160try = zdVar.m10160try() - 1;
        int iM10159new = zdVar.m10159new() - 1;
        int i2 = 0;
        int i3 = -1;
        while (iM10160try > 0) {
            if (iM10160try == 6) {
                iM10160try--;
            }
            while (iM10159new >= 0 && iM10159new < zdVar.m10159new()) {
                for (int i4 = 0; i4 < 2; i4++) {
                    int i5 = iM10160try - i4;
                    if (m22442super(zdVar.m10158if(i5, iM10159new))) {
                        if (i2 < w8Var.m9078class()) {
                            zM9084goto = w8Var.m9084goto(i2);
                            i2++;
                        } else {
                            zM9084goto = false;
                        }
                        if (i != -1 && Cfor.m22396case(i, i5, iM10159new)) {
                            zM9084goto = !zM9084goto;
                        }
                        zdVar.m10157goto(i5, iM10159new, zM9084goto);
                    }
                }
                iM10159new += i3;
            }
            i3 = -i3;
            iM10159new += i3;
            iM10160try -= 2;
        }
        if (i2 == w8Var.m9078class()) {
            return;
        }
        throw new ig2("Not all bits consumed: " + i2 + Attributes.InternalPrefix + w8Var.m9078class());
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m22430catch(zd zdVar) {
        int i = 8;
        while (i < zdVar.m10160try() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (m22442super(zdVar.m10158if(i, 6))) {
                zdVar.m10155else(i, 6, i3);
            }
            if (m22442super(zdVar.m10158if(6, i))) {
                zdVar.m10155else(6, i, i3);
            }
            i = i2;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m22431class(Ccase ccase, int i, zd zdVar) throws ig2 {
        w8 w8Var = new w8();
        m22444throw(ccase, i, w8Var);
        for (int i2 = 0; i2 < w8Var.m9078class(); i2++) {
            boolean zM9084goto = w8Var.m9084goto((w8Var.m9078class() - 1) - i2);
            int[] iArr = f17952new[i2];
            zdVar.m10157goto(iArr[0], iArr[1], zM9084goto);
            if (i2 < 8) {
                zdVar.m10157goto((zdVar.m10160try() - i2) - 1, 8, zM9084goto);
            } else {
                zdVar.m10157goto(8, (zdVar.m10159new() - 7) + (i2 - 8), zM9084goto);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m22432const(int i, int i2, zd zdVar) throws ig2 {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!m22442super(zdVar.m10158if(i, i4))) {
                throw new ig2();
            }
            zdVar.m10155else(i, i4, 0);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m22433do(w8 w8Var, Ccase ccase, Cthis cthis, int i, zd zdVar) throws ig2 {
        m22436for(zdVar);
        m22441new(cthis, zdVar);
        m22431class(ccase, i, zdVar);
        m22440native(cthis, zdVar);
        m22429case(w8Var, i, zdVar);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m22434else(int i, int i2, zd zdVar) throws ig2 {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!m22442super(zdVar.m10158if(i4, i2))) {
                throw new ig2();
            }
            zdVar.m10155else(i4, i2, 0);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static int m22435final(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m22436for(zd zdVar) {
        zdVar.m10154do((byte) -1);
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m22437goto(int i, int i2, zd zdVar) {
        for (int i3 = 0; i3 < 5; i3++) {
            int[] iArr = f17951if[i3];
            for (int i4 = 0; i4 < 5; i4++) {
                zdVar.m10155else(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m22438if(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iM22435final = m22435final(i2);
        int iM22435final2 = i << (iM22435final - 1);
        while (m22435final(iM22435final2) >= iM22435final) {
            iM22435final2 ^= i2 << (m22435final(iM22435final2) - iM22435final);
        }
        return iM22435final2;
    }

    /* renamed from: import, reason: not valid java name */
    private static void m22439import(Cthis cthis, zd zdVar) {
        if (cthis.m22338break() < 2) {
            return;
        }
        int[] iArr = f17950for[cthis.m22338break() - 1];
        for (int i : iArr) {
            if (i >= 0) {
                for (int i2 : iArr) {
                    if (i2 >= 0 && m22442super(zdVar.m10158if(i2, i))) {
                        m22437goto(i2 - 2, i - 2, zdVar);
                    }
                }
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m22440native(Cthis cthis, zd zdVar) throws ig2 {
        if (cthis.m22338break() < 7) {
            return;
        }
        w8 w8Var = new w8();
        m22446while(cthis, w8Var);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean zM9084goto = w8Var.m9084goto(i);
                i--;
                zdVar.m10157goto(i2, (zdVar.m10159new() - 11) + i3, zM9084goto);
                zdVar.m10157goto((zdVar.m10159new() - 11) + i3, i2, zM9084goto);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m22441new(Cthis cthis, zd zdVar) throws ig2 {
        m22428break(zdVar);
        m22445try(zdVar);
        m22439import(cthis, zdVar);
        m22430catch(zdVar);
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m22442super(int i) {
        return i == -1;
    }

    /* renamed from: this, reason: not valid java name */
    private static void m22443this(int i, int i2, zd zdVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f17948do[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                zdVar.m10155else(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m22444throw(Ccase ccase, int i, w8 w8Var) throws ig2 {
        if (!ci1.m937case(i)) {
            throw new ig2("Invalid mask pattern");
        }
        int bits = (ccase.getBits() << 3) | i;
        w8Var.m9083for(bits, 5);
        w8Var.m9083for(m22438if(bits, f17947case), 10);
        w8 w8Var2 = new w8();
        w8Var2.m9083for(f17949else, 15);
        w8Var.m9090return(w8Var2);
        if (w8Var.m9078class() == 15) {
            return;
        }
        throw new ig2("should not happen but we got: " + w8Var.m9078class());
    }

    /* renamed from: try, reason: not valid java name */
    private static void m22445try(zd zdVar) throws ig2 {
        if (zdVar.m10158if(8, zdVar.m10159new() - 8) == 0) {
            throw new ig2();
        }
        zdVar.m10155else(8, zdVar.m10159new() - 8, 1);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m22446while(Cthis cthis, w8 w8Var) throws ig2 {
        w8Var.m9083for(cthis.m22338break(), 6);
        w8Var.m9083for(m22438if(cthis.m22338break(), f17953try), 12);
        if (w8Var.m9078class() == 18) {
            return;
        }
        throw new ig2("should not happen but we got: " + w8Var.m9078class());
    }
}
