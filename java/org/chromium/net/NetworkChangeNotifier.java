package org.chromium.net;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.os.Build;
import android.support.v4.e2;
import android.support.v4.lo0;
import android.support.v4.r21;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import org.chromium.base.Ctry;
import org.chromium.base.ObserverList;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.net.NetworkChangeNotifierAutoDetect;

@lo0("net")
/* loaded from: classes3.dex */
public class NetworkChangeNotifier {

    /* renamed from: case, reason: not valid java name */
    @SuppressLint({"StaticFieldLeak"})
    private static NetworkChangeNotifier f33329case;

    /* renamed from: else, reason: not valid java name */
    public static final /* synthetic */ boolean f33330else = false;

    /* renamed from: new, reason: not valid java name */
    private NetworkChangeNotifierAutoDetect f33334new;

    /* renamed from: try, reason: not valid java name */
    private int f33335try = 0;

    /* renamed from: do, reason: not valid java name */
    private final ArrayList<Long> f33331do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    private final ObserverList<ConnectionTypeObserver> f33333if = new ObserverList<>();

    /* renamed from: for, reason: not valid java name */
    private final ConnectivityManager f33332for = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity");

    public interface ConnectionTypeObserver {
        void onConnectionTypeChanged(int i);
    }

    public interface Natives {
        @r21("NetworkChangeNotifierDelegateAndroid")
        void notifyConnectionTypeChanged(long j, NetworkChangeNotifier networkChangeNotifier, int i, long j2);

        @r21("NetworkChangeNotifierDelegateAndroid")
        void notifyMaxBandwidthChanged(long j, NetworkChangeNotifier networkChangeNotifier, int i);

        @r21("NetworkChangeNotifierDelegateAndroid")
        void notifyOfNetworkConnect(long j, NetworkChangeNotifier networkChangeNotifier, long j2, int i);

        @r21("NetworkChangeNotifierDelegateAndroid")
        void notifyOfNetworkDisconnect(long j, NetworkChangeNotifier networkChangeNotifier, long j2);

        @r21("NetworkChangeNotifierDelegateAndroid")
        void notifyOfNetworkSoonToDisconnect(long j, NetworkChangeNotifier networkChangeNotifier, long j2);

        @r21("NetworkChangeNotifierDelegateAndroid")
        void notifyPurgeActiveNetworkList(long j, NetworkChangeNotifier networkChangeNotifier, long[] jArr);
    }

    /* renamed from: org.chromium.net.NetworkChangeNotifier$do, reason: invalid class name */
    public class Cdo implements NetworkChangeNotifierAutoDetect.Observer {
        public Cdo() {
        }

        @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Observer
        public void onConnectionSubtypeChanged(int i) {
            NetworkChangeNotifier.this.m37328catch(i);
        }

        @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Observer
        public void onConnectionTypeChanged(int i) {
            NetworkChangeNotifier.this.m37312default(i);
        }

        @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Observer
        public void onNetworkConnect(long j, int i) {
            NetworkChangeNotifier.this.m37330final(j, i);
        }

        @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Observer
        public void onNetworkDisconnect(long j) {
            NetworkChangeNotifier.this.m37331super(j);
        }

        @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Observer
        public void onNetworkSoonToDisconnect(long j) {
            NetworkChangeNotifier.this.m37332throw(j);
        }

        @Override // org.chromium.net.NetworkChangeNotifierAutoDetect.Observer
        public void purgeActiveNetworkList(long[] jArr) {
            NetworkChangeNotifier.this.m37333while(jArr);
        }
    }

    @VisibleForTesting
    public NetworkChangeNotifier() {
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m37309break() {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            return false;
        }
        return i < 23 ? ConnectivityManager.getProcessDefaultNetwork() != null : e2.m1604case(this.f33332for) != null;
    }

    /* renamed from: case, reason: not valid java name */
    public static NetworkChangeNotifierAutoDetect m37310case() {
        return m37314else().f33334new;
    }

    /* renamed from: const, reason: not valid java name */
    private void m37311const(int i, long j) {
        Iterator<Long> it = this.f33331do.iterator();
        while (it.hasNext()) {
            Cconst.m37484if().notifyConnectionTypeChanged(it.next().longValue(), this, i, j);
        }
        Iterator<ConnectionTypeObserver> it2 = this.f33333if.iterator();
        while (it2.hasNext()) {
            it2.next().onConnectionTypeChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public void m37312default(int i) {
        this.f33335try = i;
        m37329class(i);
    }

    /* renamed from: else, reason: not valid java name */
    public static NetworkChangeNotifier m37314else() {
        return f33329case;
    }

    @CalledByNative
    public static void fakeConnectionSubtypeChanged(int i) {
        m37324switch(false);
        m37314else().m37328catch(i);
    }

    @CalledByNative
    public static void fakeDefaultNetwork(long j, int i) {
        m37324switch(false);
        m37314else().m37311const(i, j);
    }

    @CalledByNative
    public static void fakeNetworkConnected(long j, int i) {
        m37324switch(false);
        m37314else().m37330final(j, i);
    }

    @CalledByNative
    public static void fakeNetworkDisconnected(long j) {
        m37324switch(false);
        m37314else().m37331super(j);
    }

    @CalledByNative
    public static void fakeNetworkSoonToBeDisconnected(long j) {
        m37324switch(false);
        m37314else().m37332throw(j);
    }

    @CalledByNative
    public static void fakePurgeActiveNetworkList(long[] jArr) {
        m37324switch(false);
        m37314else().m37333while(jArr);
    }

    /* renamed from: for, reason: not valid java name */
    private void m37315for(ConnectionTypeObserver connectionTypeObserver) {
        this.f33333if.m36878try(connectionTypeObserver);
    }

    @CalledByNative
    public static void forceConnectivityState(boolean z) {
        m37324switch(false);
        m37314else().m37327try(z);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m37316goto() {
        return f33329case != null;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37317if(ConnectionTypeObserver connectionTypeObserver) {
        m37314else().m37315for(connectionTypeObserver);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m37318import() {
        m37314else().m37326throws(true, new Cwhile());
    }

    @CalledByNative
    public static NetworkChangeNotifier init() {
        if (f33329case == null) {
            f33329case = new NetworkChangeNotifier();
        }
        return f33329case;
    }

    @CalledByNative
    public static boolean isProcessBoundToNetwork() {
        return m37314else().m37309break();
    }

    /* renamed from: native, reason: not valid java name */
    public static void m37319native(ConnectionTypeObserver connectionTypeObserver) {
        m37314else().m37321public(connectionTypeObserver);
    }

    /* renamed from: new, reason: not valid java name */
    private void m37320new() {
        NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect = this.f33334new;
        if (networkChangeNotifierAutoDetect != null) {
            networkChangeNotifierAutoDetect.m37360super();
            this.f33334new = null;
        }
    }

    /* renamed from: public, reason: not valid java name */
    private void m37321public(ConnectionTypeObserver connectionTypeObserver) {
        this.f33333if.m36876class(connectionTypeObserver);
    }

    @VisibleForTesting
    /* renamed from: return, reason: not valid java name */
    public static void m37322return(NetworkChangeNotifier networkChangeNotifier) {
        f33329case = networkChangeNotifier;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m37323static(NetworkChangeNotifierAutoDetect.Celse celse) {
        m37314else().m37326throws(true, celse);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m37324switch(boolean z) {
        m37314else().m37326throws(z, new Cimport());
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m37325this() {
        return m37314else().getCurrentConnectionType() != 6;
    }

    /* renamed from: throws, reason: not valid java name */
    private void m37326throws(boolean z, NetworkChangeNotifierAutoDetect.Celse celse) {
        if (!z) {
            m37320new();
            return;
        }
        if (this.f33334new == null) {
            NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect = new NetworkChangeNotifierAutoDetect(new Cdo(), celse);
            this.f33334new = networkChangeNotifierAutoDetect;
            NetworkChangeNotifierAutoDetect.Ccase ccaseM37362while = networkChangeNotifierAutoDetect.m37362while();
            m37312default(ccaseM37362while.m37368if());
            m37328catch(ccaseM37362while.m37364do());
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m37327try(boolean z) {
        if ((this.f33335try != 6) != z) {
            m37312default(z ? 0 : 6);
            m37328catch(!z ? 1 : 0);
        }
    }

    @CalledByNative
    public void addNativeObserver(long j) {
        this.f33331do.add(Long.valueOf(j));
    }

    /* renamed from: catch, reason: not valid java name */
    public void m37328catch(int i) {
        Iterator<Long> it = this.f33331do.iterator();
        while (it.hasNext()) {
            Cconst.m37484if().notifyMaxBandwidthChanged(it.next().longValue(), this, i);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m37329class(int i) {
        m37311const(i, getCurrentDefaultNetId());
    }

    /* renamed from: final, reason: not valid java name */
    public void m37330final(long j, int i) {
        Iterator<Long> it = this.f33331do.iterator();
        while (it.hasNext()) {
            Cconst.m37484if().notifyOfNetworkConnect(it.next().longValue(), this, j, i);
        }
    }

    @CalledByNative
    public int getCurrentConnectionSubtype() {
        NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect = this.f33334new;
        if (networkChangeNotifierAutoDetect == null) {
            return 0;
        }
        return networkChangeNotifierAutoDetect.m37362while().m37364do();
    }

    @CalledByNative
    public int getCurrentConnectionType() {
        return this.f33335try;
    }

    @CalledByNative
    public long getCurrentDefaultNetId() {
        NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect = this.f33334new;
        if (networkChangeNotifierAutoDetect == null) {
            return -1L;
        }
        return networkChangeNotifierAutoDetect.m37354import();
    }

    @CalledByNative
    public long[] getCurrentNetworksAndTypes() {
        NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect = this.f33334new;
        return networkChangeNotifierAutoDetect == null ? new long[0] : networkChangeNotifierAutoDetect.m37355native();
    }

    @CalledByNative
    public boolean registerNetworkCallbackFailed() {
        NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect = this.f33334new;
        if (networkChangeNotifierAutoDetect == null) {
            return false;
        }
        return networkChangeNotifierAutoDetect.m37352default();
    }

    @CalledByNative
    public void removeNativeObserver(long j) {
        this.f33331do.remove(Long.valueOf(j));
    }

    /* renamed from: super, reason: not valid java name */
    public void m37331super(long j) {
        Iterator<Long> it = this.f33331do.iterator();
        while (it.hasNext()) {
            Cconst.m37484if().notifyOfNetworkDisconnect(it.next().longValue(), this, j);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m37332throw(long j) {
        Iterator<Long> it = this.f33331do.iterator();
        while (it.hasNext()) {
            Cconst.m37484if().notifyOfNetworkSoonToDisconnect(it.next().longValue(), this, j);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m37333while(long[] jArr) {
        Iterator<Long> it = this.f33331do.iterator();
        while (it.hasNext()) {
            Cconst.m37484if().notifyPurgeActiveNetworkList(it.next().longValue(), this, jArr);
        }
    }
}
