package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Cthis;

/* renamed from: com.google.zxing.qrcode.decoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final int f17901do;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f17902if;

    private Cif(int i, byte[] bArr) {
        this.f17901do = i;
        this.f17902if = bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif[] m22323if(byte[] bArr, Cthis cthis, Ccase ccase) {
        if (bArr.length != cthis.m22341goto()) {
            throw new IllegalArgumentException();
        }
        Cthis.Cif cifM22339case = cthis.m22339case(ccase);
        Cthis.Cdo[] cdoArrM22346do = cifM22339case.m22346do();
        int iM22344do = 0;
        for (Cthis.Cdo cdo : cdoArrM22346do) {
            iM22344do += cdo.m22344do();
        }
        Cif[] cifArr = new Cif[iM22344do];
        int i = 0;
        for (Cthis.Cdo cdo2 : cdoArrM22346do) {
            int i2 = 0;
            while (i2 < cdo2.m22344do()) {
                int iM22345if = cdo2.m22345if();
                cifArr[i] = new Cif(iM22345if, new byte[cifM22339case.m22348if() + iM22345if]);
                i2++;
                i++;
            }
        }
        int length = cifArr[0].f17902if.length;
        int i3 = iM22344do - 1;
        while (i3 >= 0 && cifArr[i3].f17902if.length != length) {
            i3--;
        }
        int i4 = i3 + 1;
        int iM22348if = length - cifM22339case.m22348if();
        int i5 = 0;
        for (int i6 = 0; i6 < iM22348if; i6++) {
            int i7 = 0;
            while (i7 < i) {
                cifArr[i7].f17902if[i6] = bArr[i5];
                i7++;
                i5++;
            }
        }
        int i8 = i4;
        while (i8 < i) {
            cifArr[i8].f17902if[iM22348if] = bArr[i5];
            i8++;
            i5++;
        }
        int length2 = cifArr[0].f17902if.length;
        while (iM22348if < length2) {
            int i9 = 0;
            while (i9 < i) {
                cifArr[i9].f17902if[i9 < i4 ? iM22348if : iM22348if + 1] = bArr[i5];
                i9++;
                i5++;
            }
            iM22348if++;
        }
        return cifArr;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m22324do() {
        return this.f17902if;
    }

    /* renamed from: for, reason: not valid java name */
    public int m22325for() {
        return this.f17901do;
    }
}
