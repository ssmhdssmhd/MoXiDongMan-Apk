package com.google.zxing.pdf417.decoder.ec;

import android.support.v4.ll;

/* renamed from: com.google.zxing.pdf417.decoder.ec.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final Cif f17784do = Cif.f17787case;

    /* renamed from: for, reason: not valid java name */
    private int[] m22201for(Cfor cfor, Cfor cfor2, int[] iArr) {
        int iM22215try = cfor2.m22215try();
        int[] iArr2 = new int[iM22215try];
        for (int i = 1; i <= iM22215try; i++) {
            iArr2[iM22215try - i] = this.f17784do.m22224this(i, cfor2.m22210for(i));
        }
        Cfor cfor3 = new Cfor(this.f17784do, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int iM22219else = this.f17784do.m22219else(iArr[i2]);
            iArr3[i2] = this.f17784do.m22224this(this.f17784do.m22216break(0, cfor.m22212if(iM22219else)), this.f17784do.m22219else(cfor3.m22212if(iM22219else)));
        }
        return iArr3;
    }

    /* renamed from: if, reason: not valid java name */
    private int[] m22202if(Cfor cfor) throws ll {
        int iM22215try = cfor.m22215try();
        int[] iArr = new int[iM22215try];
        int i = 0;
        for (int i2 = 1; i2 < this.f17784do.m22225try() && i < iM22215try; i2++) {
            if (cfor.m22212if(i2) == 0) {
                iArr[i] = this.f17784do.m22219else(i2);
                i++;
            }
        }
        if (i == iM22215try) {
            return iArr;
        }
        throw ll.getChecksumInstance();
    }

    /* renamed from: new, reason: not valid java name */
    private Cfor[] m22203new(Cfor cfor, Cfor cfor2, int i) throws ll {
        if (cfor.m22215try() < cfor2.m22215try()) {
            cfor2 = cfor;
            cfor = cfor2;
        }
        Cfor cforM22217case = this.f17784do.m22217case();
        Cfor cforM22223new = this.f17784do.m22223new();
        while (true) {
            Cfor cfor3 = cfor2;
            cfor2 = cfor;
            cfor = cfor3;
            Cfor cfor4 = cforM22223new;
            Cfor cfor5 = cforM22217case;
            cforM22217case = cfor4;
            if (cfor.m22215try() < i / 2) {
                int iM22210for = cforM22217case.m22210for(0);
                if (iM22210for == 0) {
                    throw ll.getChecksumInstance();
                }
                int iM22219else = this.f17784do.m22219else(iM22210for);
                return new Cfor[]{cforM22217case.m22209else(iM22219else), cfor.m22209else(iM22219else)};
            }
            if (cfor.m22206case()) {
                throw ll.getChecksumInstance();
            }
            Cfor cforM22217case2 = this.f17784do.m22217case();
            int iM22219else2 = this.f17784do.m22219else(cfor.m22210for(cfor.m22215try()));
            while (cfor2.m22215try() >= cfor.m22215try() && !cfor2.m22206case()) {
                int iM22215try = cfor2.m22215try() - cfor.m22215try();
                int iM22224this = this.f17784do.m22224this(cfor2.m22210for(cfor2.m22215try()), iM22219else2);
                cforM22217case2 = cforM22217case2.m22208do(this.f17784do.m22222if(iM22215try, iM22224this));
                cfor2 = cfor2.m22207catch(cfor.m22214this(iM22215try, iM22224this));
            }
            cforM22223new = cforM22217case2.m22211goto(cforM22217case).m22207catch(cfor5).m22205break();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m22204do(int[] iArr, int i, int[] iArr2) throws ll {
        Cfor cfor = new Cfor(this.f17784do, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int iM22212if = cfor.m22212if(this.f17784do.m22220for(i2));
            iArr3[i - i2] = iM22212if;
            if (iM22212if != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        Cfor cforM22223new = this.f17784do.m22223new();
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                int iM22220for = this.f17784do.m22220for((iArr.length - 1) - i3);
                Cif cif = this.f17784do;
                cforM22223new = cforM22223new.m22211goto(new Cfor(cif, new int[]{cif.m22216break(0, iM22220for), 1}));
            }
        }
        Cfor[] cforArrM22203new = m22203new(this.f17784do.m22222if(i, 1), new Cfor(this.f17784do, iArr3), i);
        Cfor cfor2 = cforArrM22203new[0];
        Cfor cfor3 = cforArrM22203new[1];
        int[] iArrM22202if = m22202if(cfor2);
        int[] iArrM22201for = m22201for(cfor3, cfor2, iArrM22202if);
        for (int i4 = 0; i4 < iArrM22202if.length; i4++) {
            int length = (iArr.length - 1) - this.f17784do.m22221goto(iArrM22202if[i4]);
            if (length < 0) {
                throw ll.getChecksumInstance();
            }
            iArr[length] = this.f17784do.m22216break(iArr[length], iArrM22201for[i4]);
        }
        return iArrM22202if.length;
    }
}
