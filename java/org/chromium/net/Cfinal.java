package org.chromium.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: org.chromium.net.final, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfinal extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    private final ProxyChangeListener f33454do;

    public Cfinal(ProxyChangeListener proxyChangeListener) {
        this.f33454do = proxyChangeListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.PROXY_CHANGE")) {
            this.f33454do.m37409throw(intent);
        }
    }
}
