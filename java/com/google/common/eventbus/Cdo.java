package com.google.common.eventbus;

import android.support.v4.o8;
import com.google.common.eventbus.Cfor;
import java.util.concurrent.Executor;

@o8
/* renamed from: com.google.common.eventbus.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends Cfor {
    public Cdo(String str, Executor executor) {
        super(str, executor, Cif.m16625for(), Cfor.Cdo.f14935do);
    }

    public Cdo(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super("default", executor, Cif.m16625for(), subscriberExceptionHandler);
    }

    public Cdo(Executor executor) {
        super("default", executor, Cif.m16625for(), Cfor.Cdo.f14935do);
    }
}
