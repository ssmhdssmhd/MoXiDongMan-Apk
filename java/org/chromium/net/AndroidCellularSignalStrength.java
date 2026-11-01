package org.chromium.net;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.lo0;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import org.chromium.base.ApplicationStatus;
import org.chromium.base.Ctry;
import org.chromium.base.ThreadUtils;
import org.chromium.base.annotations.CalledByNative;

@lo0("net::android")
/* loaded from: classes3.dex */
public class AndroidCellularSignalStrength {

    /* renamed from: if, reason: not valid java name */
    private static final AndroidCellularSignalStrength f33292if = new AndroidCellularSignalStrength();

    /* renamed from: do, reason: not valid java name */
    private volatile int f33293do = Integer.MIN_VALUE;

    /* renamed from: org.chromium.net.AndroidCellularSignalStrength$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AndroidCellularSignalStrength.this.new Cif();
        }
    }

    /* renamed from: org.chromium.net.AndroidCellularSignalStrength$if, reason: invalid class name */
    public class Cif extends PhoneStateListener implements ApplicationStatus.ApplicationStateListener {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ boolean f33295for = false;

        /* renamed from: do, reason: not valid java name */
        private final TelephonyManager f33296do;

        public Cif() {
            ThreadUtils.m36940if();
            TelephonyManager telephonyManager = (TelephonyManager) Ctry.m37273case().getSystemService("phone");
            this.f33296do = telephonyManager;
            if (telephonyManager.getSimState() != 5) {
                return;
            }
            ApplicationStatus.m36713native(this);
            onApplicationStateChange(ApplicationStatus.getStateForApplication());
        }

        /* renamed from: do, reason: not valid java name */
        private void m37291do() {
            this.f33296do.listen(this, 256);
        }

        /* renamed from: if, reason: not valid java name */
        private void m37292if() {
            AndroidCellularSignalStrength.this.f33293do = Integer.MIN_VALUE;
            this.f33296do.listen(this, 0);
        }

        @Override // org.chromium.base.ApplicationStatus.ApplicationStateListener
        public void onApplicationStateChange(int i) {
            if (i == 1) {
                m37291do();
            } else if (i == 2) {
                m37292if();
            }
        }

        @Override // android.telephony.PhoneStateListener
        @TargetApi(23)
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (ApplicationStatus.getStateForApplication() != 1) {
                return;
            }
            try {
                AndroidCellularSignalStrength.this.f33293do = signalStrength.getLevel();
            } catch (SecurityException unused) {
                AndroidCellularSignalStrength.this.f33293do = Integer.MIN_VALUE;
            }
        }
    }

    private AndroidCellularSignalStrength() {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("AndroidCellularSignalStrength");
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new Cdo());
    }

    @TargetApi(23)
    @CalledByNative
    private static int getSignalStrengthLevel() {
        return f33292if.f33293do;
    }
}
