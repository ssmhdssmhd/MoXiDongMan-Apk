package com.google.common.collect;

import android.support.v4.ki0;

@ki0(serializable = true)
/* loaded from: classes2.dex */
class i extends h1<Object, Object> {
    public static final i INSTANCE = new i();
    private static final long serialVersionUID = 0;

    private i() {
        super(x0.of(), 0, null);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
