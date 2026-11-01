package com.uber.autodispose;

import android.support.v4.a51;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo extends AtomicReference<Throwable> {
    private static final long serialVersionUID = 3949248817947090603L;

    public boolean addThrowable(Throwable th) {
        return Cpublic.m24640do(this, th);
    }

    @a51
    public Throwable terminate() {
        return Cpublic.m24641if(this);
    }
}
