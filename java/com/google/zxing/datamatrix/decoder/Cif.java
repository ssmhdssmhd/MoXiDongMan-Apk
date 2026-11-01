package com.google.zxing.datamatrix.decoder;

import com.google.zxing.datamatrix.decoder.Ctry;

/* renamed from: com.google.zxing.datamatrix.decoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final int f17480do;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f17481if;

    private Cif(int i, byte[] bArr) {
        this.f17480do = i;
        this.f17481if = bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif[] m21855if(byte[] bArr, Ctry ctry) {
        Ctry.Cfor cforM21867new = ctry.m21867new();
        Ctry.Cif[] cifArrM21870do = cforM21867new.m21870do();
        int iM21872do = 0;
        for (Ctry.Cif cif : cifArrM21870do) {
            iM21872do += cif.m21872do();
        }
        Cif[] cifArr = new Cif[iM21872do];
        int i = 0;
        for (Ctry.Cif cif2 : cifArrM21870do) {
            int i2 = 0;
            while (i2 < cif2.m21872do()) {
                int iM21873if = cif2.m21873if();
                cifArr[i] = new Cif(iM21873if, new byte[cforM21867new.m21871if() + iM21873if]);
                i2++;
                i++;
            }
        }
        int length = cifArr[0].f17481if.length - cforM21867new.m21871if();
        int i3 = length - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = 0;
            while (i6 < i) {
                cifArr[i6].f17481if[i5] = bArr[i4];
                i6++;
                i4++;
            }
        }
        boolean z = ctry.m21868this() == 24;
        int i7 = z ? 8 : i;
        int i8 = 0;
        while (i8 < i7) {
            cifArr[i8].f17481if[i3] = bArr[i4];
            i8++;
            i4++;
        }
        int length2 = cifArr[0].f17481if.length;
        while (length < length2) {
            int i9 = 0;
            while (i9 < i) {
                int i10 = z ? (i9 + 8) % i : i9;
                cifArr[i10].f17481if[(!z || i10 <= 7) ? length : length - 1] = bArr[i4];
                i9++;
                i4++;
            }
            length++;
        }
        if (i4 == bArr.length) {
            return cifArr;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m21856do() {
        return this.f17481if;
    }

    /* renamed from: for, reason: not valid java name */
    public int m21857for() {
        return this.f17480do;
    }
}
