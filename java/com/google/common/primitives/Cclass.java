package com.google.common.primitives;

import android.support.v4.ki0;
import com.google.common.base.Cdefault;
import freemarker.core.b2;

@ki0(emulated = true)
/* renamed from: com.google.common.primitives.class, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cclass {

    /* renamed from: do, reason: not valid java name */
    private static final String f15496do = "guava.gwt.emergency_reenable_rpc";

    private Cclass() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m17507do() {
        if (!Boolean.parseBoolean(System.getProperty(f15496do, b2.f23511if))) {
            throw new UnsupportedOperationException(Cdefault.m15043try("We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava's GWT-RPC support, see %s.", f15496do, "https://stackoverflow.com/q/5189914/28465", "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"));
        }
    }
}
