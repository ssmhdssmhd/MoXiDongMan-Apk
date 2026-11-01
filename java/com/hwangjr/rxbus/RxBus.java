package com.hwangjr.rxbus;

import com.hwangjr.rxbus.thread.ThreadEnforcer;

/* loaded from: classes2.dex */
public class RxBus {
    private static Bus sBus;

    public static synchronized Bus get() {
        if (sBus == null) {
            sBus = new Bus(ThreadEnforcer.ANY);
        }
        return sBus;
    }
}
