package org.chromium.net;

import android.support.v4.cx0;
import android.support.v4.el;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import org.chromium.base.Ctry;
import org.chromium.base.ThreadUtils;
import org.chromium.net.Cdo;

@AnyThread
@cx0
/* renamed from: org.chromium.net.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: try, reason: not valid java name */
    private static volatile Cdo f33444try;

    /* renamed from: do, reason: not valid java name */
    @el
    private volatile String f33445do;

    /* renamed from: for, reason: not valid java name */
    @el
    private volatile String f33446for;

    /* renamed from: if, reason: not valid java name */
    @el
    private volatile String f33447if;

    /* renamed from: new, reason: not valid java name */
    private Cif f33448new;

    /* renamed from: org.chromium.net.do$if, reason: invalid class name */
    public class Cif extends PhoneStateListener {

        /* renamed from: do, reason: not valid java name */
        @el
        private ServiceState f33449do;

        private Cif() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            ServiceState serviceState2 = this.f33449do;
            if (serviceState2 == null || !serviceState2.equals(serviceState)) {
                this.f33449do = serviceState;
                Cdo.this.m37488class(Cdo.m37493this());
            }
        }
    }

    private Cdo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ void m37486break(Cdo cdo) {
        TelephonyManager telephonyManagerM37493this = m37493this();
        if (telephonyManagerM37493this != null) {
            cdo.m37487catch(telephonyManagerM37493this);
        }
    }

    @MainThread
    /* renamed from: catch, reason: not valid java name */
    private void m37487catch(TelephonyManager telephonyManager) {
        ThreadUtils.m36938for();
        Cif cif = new Cif();
        this.f33448new = cif;
        telephonyManager.listen(cif, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m37488class(@el TelephonyManager telephonyManager) {
        if (telephonyManager == null) {
            return;
        }
        this.f33445do = telephonyManager.getNetworkCountryIso();
        this.f33447if = telephonyManager.getNetworkOperator();
        this.f33446for = telephonyManager.getSimOperator();
    }

    /* renamed from: new, reason: not valid java name */
    private static Cdo m37492new() {
        final Cdo cdo = new Cdo();
        ThreadUtils.m36933class(new Runnable() { // from class: android.support.v4.v1
            @Override // java.lang.Runnable
            public final void run() {
                Cdo.m37486break(this.f7032do);
            }
        });
        return cdo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @el
    /* renamed from: this, reason: not valid java name */
    public static TelephonyManager m37493this() {
        return (TelephonyManager) Ctry.m37273case().getSystemService("phone");
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m37494try() {
        Cdo cdoM37492new = f33444try;
        if (cdoM37492new == null) {
            synchronized (Cdo.class) {
                cdoM37492new = f33444try;
                if (cdoM37492new == null) {
                    cdoM37492new = m37492new();
                    f33444try = cdoM37492new;
                }
            }
        }
        return cdoM37492new;
    }

    /* renamed from: case, reason: not valid java name */
    public String m37495case() {
        if (this.f33445do == null) {
            TelephonyManager telephonyManagerM37493this = m37493this();
            if (telephonyManagerM37493this == null) {
                return "";
            }
            this.f33445do = telephonyManagerM37493this.getNetworkCountryIso();
        }
        return this.f33445do;
    }

    /* renamed from: else, reason: not valid java name */
    public String m37496else() {
        if (this.f33447if == null) {
            TelephonyManager telephonyManagerM37493this = m37493this();
            if (telephonyManagerM37493this == null) {
                return "";
            }
            this.f33447if = telephonyManagerM37493this.getNetworkOperator();
        }
        return this.f33447if;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m37497goto() {
        if (this.f33446for == null) {
            TelephonyManager telephonyManagerM37493this = m37493this();
            if (telephonyManagerM37493this == null) {
                return "";
            }
            this.f33446for = telephonyManagerM37493this.getSimOperator();
        }
        return this.f33446for;
    }
}
