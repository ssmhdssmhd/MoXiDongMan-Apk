package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.zxing.common.reedsolomon.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f17468do;

    /* renamed from: if, reason: not valid java name */
    private final List<Cif> f17469if;

    public Cnew(Cdo cdo) {
        this.f17468do = cdo;
        ArrayList arrayList = new ArrayList();
        this.f17469if = arrayList;
        arrayList.add(new Cif(cdo, new int[]{1}));
    }

    /* renamed from: do, reason: not valid java name */
    private Cif m21834do(int i) {
        if (i >= this.f17469if.size()) {
            List<Cif> list = this.f17469if;
            Cif cifM21832this = list.get(list.size() - 1);
            for (int size = this.f17469if.size(); size <= i; size++) {
                Cdo cdo = this.f17468do;
                cifM21832this = cifM21832this.m21832this(new Cif(cdo, new int[]{1, cdo.m21814for((size - 1) + cdo.m21817new())}));
                this.f17469if.add(cifM21832this);
            }
        }
        return this.f17469if.get(i);
    }

    /* renamed from: if, reason: not valid java name */
    public void m21835if(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        Cif cifM21834do = m21834do(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrM21833try = new Cif(this.f17468do, iArr2).m21824break(i, 1).m21830if(cifM21834do)[1].m21833try();
        int length2 = i - iArrM21833try.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(iArrM21833try, 0, iArr, length + length2, iArrM21833try.length);
    }
}
