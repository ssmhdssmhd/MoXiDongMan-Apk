package com.google.common.collect;

import android.support.v4.ki0;

@ki0(serializable = true)
/* loaded from: classes2.dex */
class h extends w0<Object, Object> {
    public static final h INSTANCE = new h();
    private static final long serialVersionUID = 0;

    private h() {
        super(x0.of(), 0);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
