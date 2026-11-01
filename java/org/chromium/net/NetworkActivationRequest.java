package org.chromium.net;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.support.v4.ii0;
import android.support.v4.lo0;
import org.chromium.base.Ctry;
import org.chromium.base.annotations.CalledByNative;

@lo0("net::android")
/* loaded from: classes3.dex */
public class NetworkActivationRequest extends ConnectivityManager.NetworkCallback {

    /* renamed from: do, reason: not valid java name */
    private final ConnectivityManager f33326do;

    /* renamed from: for, reason: not valid java name */
    @ii0("mNativePtrLock")
    private long f33327for;

    /* renamed from: if, reason: not valid java name */
    private final Object f33328if = new Object();

    public interface Natives {
        void notifyAvailable(long j, long j2);
    }

    private NetworkActivationRequest(long j, int i) {
        ConnectivityManager connectivityManager = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity");
        this.f33326do = connectivityManager;
        if (connectivityManager == null) {
            return;
        }
        try {
            connectivityManager.requestNetwork(new NetworkRequest.Builder().addTransportType(i).addCapability(12).build(), this);
            this.f33327for = j;
        } catch (SecurityException unused) {
        }
    }

    @CalledByNative
    public static NetworkActivationRequest createMobileNetworkRequest(long j) {
        return new NetworkActivationRequest(j, 0);
    }

    @CalledByNative
    private void unregister() {
        boolean z;
        synchronized (this.f33328if) {
            z = this.f33327for != 0;
            this.f33327for = 0L;
        }
        if (z) {
            this.f33326do.unregisterNetworkCallback(this);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        synchronized (this.f33328if) {
            if (this.f33327for == 0) {
                return;
            }
            Cclass.m37481if().notifyAvailable(this.f33327for, NetworkChangeNotifierAutoDetect.m37347static(network));
        }
    }
}
