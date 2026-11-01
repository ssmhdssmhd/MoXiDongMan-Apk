package com.google.zxing.qrcode.decoder;

import android.support.v4.ld0;
import android.support.v4.z8;

/* renamed from: com.google.zxing.qrcode.decoder.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final z8 f17891do;

    /* renamed from: for, reason: not valid java name */
    private Celse f17892for;

    /* renamed from: if, reason: not valid java name */
    private Cthis f17893if;

    /* renamed from: new, reason: not valid java name */
    private boolean f17894new;

    public Cdo(z8 z8Var) throws ld0 {
        int iM10094goto = z8Var.m10094goto();
        if (iM10094goto < 21 || (iM10094goto & 3) != 1) {
            throw ld0.getFormatInstance();
        }
        this.f17891do = z8Var;
    }

    /* renamed from: do, reason: not valid java name */
    private int m22311do(int i, int i2, int i3) {
        return this.f17894new ? this.f17891do.m10105try(i2, i) : this.f17891do.m10105try(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    /* renamed from: case, reason: not valid java name */
    public void m22312case() {
        if (this.f17892for == null) {
            return;
        }
        Cfor.values()[this.f17892for.m22321for()].unmaskBitMatrix(this.f17891do, this.f17891do.m10094goto());
    }

    /* renamed from: else, reason: not valid java name */
    public void m22313else(boolean z) {
        this.f17893if = null;
        this.f17892for = null;
        this.f17894new = z;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m22314for() throws ld0 {
        Celse celseM22316new = m22316new();
        Cthis cthisM22317try = m22317try();
        Cfor cfor = Cfor.values()[celseM22316new.m22321for()];
        int iM10094goto = this.f17891do.m10094goto();
        cfor.unmaskBitMatrix(this.f17891do, iM10094goto);
        z8 z8VarM22340do = cthisM22317try.m22340do();
        byte[] bArr = new byte[cthisM22317try.m22341goto()];
        int i = iM10094goto - 1;
        boolean z = true;
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            if (i2 == 6) {
                i2--;
            }
            for (int i6 = 0; i6 < iM10094goto; i6++) {
                int i7 = z ? i - i6 : i6;
                for (int i8 = 0; i8 < 2; i8++) {
                    int i9 = i2 - i8;
                    if (!z8VarM22340do.m10105try(i9, i7)) {
                        i4++;
                        i5 <<= 1;
                        if (this.f17891do.m10105try(i9, i7)) {
                            i5 |= 1;
                        }
                        if (i4 == 8) {
                            bArr[i3] = (byte) i5;
                            i3++;
                            i4 = 0;
                            i5 = 0;
                        }
                    }
                }
            }
            z = !z;
            i2 -= 2;
        }
        if (i3 == cthisM22317try.m22341goto()) {
            return bArr;
        }
        throw ld0.getFormatInstance();
    }

    /* renamed from: if, reason: not valid java name */
    public void m22315if() {
        int i = 0;
        while (i < this.f17891do.m10091class()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.f17891do.m10094goto(); i3++) {
                if (this.f17891do.m10105try(i, i3) != this.f17891do.m10105try(i3, i)) {
                    this.f17891do.m10098new(i3, i);
                    this.f17891do.m10098new(i, i3);
                }
            }
            i = i2;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Celse m22316new() throws ld0 {
        Celse celse = this.f17892for;
        if (celse != null) {
            return celse;
        }
        int iM22311do = 0;
        int iM22311do2 = 0;
        for (int i = 0; i < 6; i++) {
            iM22311do2 = m22311do(i, 8, iM22311do2);
        }
        int iM22311do3 = m22311do(8, 7, m22311do(8, 8, m22311do(7, 8, iM22311do2)));
        for (int i2 = 5; i2 >= 0; i2--) {
            iM22311do3 = m22311do(8, i2, iM22311do3);
        }
        int iM10094goto = this.f17891do.m10094goto();
        int i3 = iM10094goto - 7;
        for (int i4 = iM10094goto - 1; i4 >= i3; i4--) {
            iM22311do = m22311do(8, i4, iM22311do);
        }
        for (int i5 = iM10094goto - 8; i5 < iM10094goto; i5++) {
            iM22311do = m22311do(i5, 8, iM22311do);
        }
        Celse celseM22318do = Celse.m22318do(iM22311do3, iM22311do);
        this.f17892for = celseM22318do;
        if (celseM22318do != null) {
            return celseM22318do;
        }
        throw ld0.getFormatInstance();
    }

    /* renamed from: try, reason: not valid java name */
    public Cthis m22317try() throws ld0 {
        Cthis cthis = this.f17893if;
        if (cthis != null) {
            return cthis;
        }
        int iM10094goto = this.f17891do.m10094goto();
        int i = (iM10094goto - 17) / 4;
        if (i <= 6) {
            return Cthis.m22337this(i);
        }
        int i2 = iM10094goto - 11;
        int iM22311do = 0;
        int iM22311do2 = 0;
        for (int i3 = 5; i3 >= 0; i3--) {
            for (int i4 = iM10094goto - 9; i4 >= i2; i4--) {
                iM22311do2 = m22311do(i4, i3, iM22311do2);
            }
        }
        Cthis cthisM22335for = Cthis.m22335for(iM22311do2);
        if (cthisM22335for != null && cthisM22335for.m22343try() == iM10094goto) {
            this.f17893if = cthisM22335for;
            return cthisM22335for;
        }
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = iM10094goto - 9; i6 >= i2; i6--) {
                iM22311do = m22311do(i5, i6, iM22311do);
            }
        }
        Cthis cthisM22335for2 = Cthis.m22335for(iM22311do);
        if (cthisM22335for2 == null || cthisM22335for2.m22343try() != iM10094goto) {
            throw ld0.getFormatInstance();
        }
        this.f17893if = cthisM22335for2;
        return cthisM22335for2;
    }
}
