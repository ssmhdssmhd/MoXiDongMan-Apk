package org.chromium.net;

import org.chromium.base.ApplicationStatus;
import org.chromium.net.NetworkChangeNotifierAutoDetect;

/* renamed from: org.chromium.net.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport extends NetworkChangeNotifierAutoDetect.Celse implements ApplicationStatus.ApplicationStateListener {

    /* renamed from: for, reason: not valid java name */
    private boolean f33695for;

    @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Celse
    /* renamed from: do */
    public void mo37371do() {
        if (this.f33695for) {
            return;
        }
        ApplicationStatus.m36704default(this);
        this.f33695for = true;
    }

    @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Celse
    /* renamed from: if */
    public void mo37373if(NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect) {
        super.mo37373if(networkChangeNotifierAutoDetect);
        ApplicationStatus.m36713native(this);
        onApplicationStateChange(0);
    }

    @Override // org.chromium.base.ApplicationStatus.ApplicationStateListener
    public void onApplicationStateChange(int i) {
        if (ApplicationStatus.hasVisibleActivities()) {
            m37372for();
        } else {
            m37374new();
        }
    }
}
