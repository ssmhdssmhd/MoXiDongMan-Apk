package com.google.common.io;

import android.support.v4.li0;
import android.support.v4.o8;
import java.io.Flushable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
@o8
/* renamed from: com.google.common.io.throw, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrow {

    /* renamed from: do, reason: not valid java name */
    private static final Logger f15353do = Logger.getLogger(Cthrow.class.getName());

    private Cthrow() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m17157do(Flushable flushable, boolean z) throws IOException {
        try {
            flushable.flush();
        } catch (IOException e) {
            if (!z) {
                throw e;
            }
            f15353do.log(Level.WARNING, "IOException thrown while flushing Flushable.", (Throwable) e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m17158if(Flushable flushable) {
        try {
            m17157do(flushable, true);
        } catch (IOException e) {
            f15353do.log(Level.SEVERE, "IOException should not have been thrown.", (Throwable) e);
        }
    }
}
