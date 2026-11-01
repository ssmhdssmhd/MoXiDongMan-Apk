package com.google.zxing.oned.rss.expanded;

import android.support.v4.w8;
import java.util.List;

/* renamed from: com.google.zxing.oned.rss.expanded.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo {
    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static w8 m22095do(List<Cif> list) {
        int size = (list.size() << 1) - 1;
        if (list.get(list.size() - 1).m22106new() == null) {
            size--;
        }
        w8 w8Var = new w8(size * 12);
        int i = 0;
        int iM6230if = list.get(0).m22106new().m6230if();
        for (int i2 = 11; i2 >= 0; i2--) {
            if (((1 << i2) & iM6230if) != 0) {
                w8Var.m9094while(i);
            }
            i++;
        }
        for (int i3 = 1; i3 < list.size(); i3++) {
            Cif cif = list.get(i3);
            int iM6230if2 = cif.m22104for().m6230if();
            for (int i4 = 11; i4 >= 0; i4--) {
                if (((1 << i4) & iM6230if2) != 0) {
                    w8Var.m9094while(i);
                }
                i++;
            }
            if (cif.m22106new() != null) {
                int iM6230if3 = cif.m22106new().m6230if();
                for (int i5 = 11; i5 >= 0; i5--) {
                    if (((1 << i5) & iM6230if3) != 0) {
                        w8Var.m9094while(i);
                    }
                    i++;
                }
            }
        }
        return w8Var;
    }
}
