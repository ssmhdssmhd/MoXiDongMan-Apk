package com.google.common.collect;

import android.support.v4.ki0;
import java.io.Serializable;

@ki0(serializable = true)
/* loaded from: classes2.dex */
final class x3 extends k2<Object> implements Serializable {
    public static final x3 INSTANCE = new x3();
    private static final long serialVersionUID = 0;

    private x3() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return "Ordering.usingToString()";
    }
}
