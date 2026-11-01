package com.google.zxing.pdf417.decoder;

import android.support.v4.w91;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.google.zxing.pdf417.decoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final Map<Integer, Integer> f17806do = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public Integer m22249do(int i) {
        return this.f17806do.get(Integer.valueOf(i));
    }

    /* renamed from: for, reason: not valid java name */
    public void m22250for(int i) {
        Integer num = this.f17806do.get(Integer.valueOf(i));
        if (num == null) {
            num = 0;
        }
        this.f17806do.put(Integer.valueOf(i), Integer.valueOf(num.intValue() + 1));
    }

    /* renamed from: if, reason: not valid java name */
    public int[] m22251if() {
        ArrayList arrayList = new ArrayList();
        int iIntValue = -1;
        for (Map.Entry<Integer, Integer> entry : this.f17806do.entrySet()) {
            if (entry.getValue().intValue() > iIntValue) {
                iIntValue = entry.getValue().intValue();
                arrayList.clear();
                arrayList.add(entry.getKey());
            } else if (entry.getValue().intValue() == iIntValue) {
                arrayList.add(entry.getKey());
            }
        }
        return w91.m9107for(arrayList);
    }
}
