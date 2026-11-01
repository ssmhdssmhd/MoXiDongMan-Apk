package org.chromium.net;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.b22;
import android.support.v4.e2;
import android.support.v4.ed;
import android.support.v4.g2;
import android.support.v4.ii0;
import androidx.annotation.VisibleForTesting;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import org.chromium.base.ApplicationStatus;

@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class NetworkChangeNotifierAutoDetect extends BroadcastReceiver {

    /* renamed from: throw, reason: not valid java name */
    private static final String f33337throw = NetworkChangeNotifierAutoDetect.class.getSimpleName();

    /* renamed from: while, reason: not valid java name */
    private static final int f33338while = -1;

    /* renamed from: break, reason: not valid java name */
    private NetworkRequest f33339break;

    /* renamed from: case, reason: not valid java name */
    private ConnectivityManager.NetworkCallback f33340case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f33341catch;

    /* renamed from: class, reason: not valid java name */
    private Ccase f33342class;

    /* renamed from: const, reason: not valid java name */
    private boolean f33343const;

    /* renamed from: do, reason: not valid java name */
    private final Looper f33344do;

    /* renamed from: else, reason: not valid java name */
    private Cfor f33345else;

    /* renamed from: final, reason: not valid java name */
    private boolean f33346final;

    /* renamed from: for, reason: not valid java name */
    private final NetworkConnectivityIntentFilter f33347for;

    /* renamed from: goto, reason: not valid java name */
    private Cgoto f33348goto;

    /* renamed from: if, reason: not valid java name */
    private final Handler f33349if;

    /* renamed from: new, reason: not valid java name */
    private final Observer f33350new;

    /* renamed from: super, reason: not valid java name */
    private boolean f33351super;

    /* renamed from: this, reason: not valid java name */
    private Ctry f33352this;

    /* renamed from: try, reason: not valid java name */
    private final Celse f33353try;

    public static class NetworkConnectivityIntentFilter extends IntentFilter {
        public NetworkConnectivityIntentFilter() {
            addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
    }

    public interface Observer {
        void onConnectionSubtypeChanged(int i);

        void onConnectionTypeChanged(int i);

        void onNetworkConnect(long j, int i);

        void onNetworkDisconnect(long j);

        void onNetworkSoonToDisconnect(long j);

        void purgeActiveNetworkList(long[] jArr);
    }

    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: case, reason: not valid java name */
        private final String f33354case;

        /* renamed from: do, reason: not valid java name */
        private final boolean f33355do;

        /* renamed from: for, reason: not valid java name */
        private final int f33356for;

        /* renamed from: if, reason: not valid java name */
        private final int f33357if;

        /* renamed from: new, reason: not valid java name */
        private final String f33358new;

        /* renamed from: try, reason: not valid java name */
        private final boolean f33359try;

        public Ccase(boolean z, int i, int i2, String str, boolean z2, String str2) {
            this.f33355do = z;
            this.f33357if = i;
            this.f33356for = i2;
            this.f33358new = str == null ? "" : str;
            this.f33359try = z2;
            this.f33354case = str2 == null ? "" : str2;
        }

        /* renamed from: case, reason: not valid java name */
        public String m37363case() {
            return this.f33354case;
        }

        /* renamed from: do, reason: not valid java name */
        public int m37364do() {
            if (!m37365else()) {
                return 1;
            }
            int iM37370try = m37370try();
            if (iM37370try != 0 && iM37370try != 4 && iM37370try != 5) {
                return 0;
            }
            switch (m37369new()) {
            }
            return 0;
        }

        /* renamed from: else, reason: not valid java name */
        public boolean m37365else() {
            return this.f33355do;
        }

        /* renamed from: for, reason: not valid java name */
        public String m37366for() {
            return this.f33358new;
        }

        /* renamed from: goto, reason: not valid java name */
        public boolean m37367goto() {
            return this.f33359try;
        }

        /* renamed from: if, reason: not valid java name */
        public int m37368if() {
            if (m37365else()) {
                return NetworkChangeNotifierAutoDetect.m37342final(m37370try(), m37369new());
            }
            return 6;
        }

        /* renamed from: new, reason: not valid java name */
        public int m37369new() {
            return this.f33356for;
        }

        /* renamed from: try, reason: not valid java name */
        public int m37370try() {
            return this.f33357if;
        }
    }

    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (NetworkChangeNotifierAutoDetect.this.f33341catch) {
                if (NetworkChangeNotifierAutoDetect.this.f33343const) {
                    NetworkChangeNotifierAutoDetect.this.f33343const = false;
                } else {
                    NetworkChangeNotifierAutoDetect.this.m37337class();
                }
            }
        }
    }

    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$else, reason: invalid class name */
    public static abstract class Celse {

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ boolean f33361if = false;

        /* renamed from: do, reason: not valid java name */
        private NetworkChangeNotifierAutoDetect f33362do;

        /* renamed from: do, reason: not valid java name */
        public abstract void mo37371do();

        /* renamed from: for, reason: not valid java name */
        public final void m37372for() {
            this.f33362do.m37361throws();
        }

        /* renamed from: if, reason: not valid java name */
        public void mo37373if(NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect) {
            this.f33362do = networkChangeNotifierAutoDetect;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m37374new() {
            this.f33362do.m37357private();
        }
    }

    @TargetApi(28)
    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$if, reason: invalid class name */
    public class Cif extends ConnectivityManager.NetworkCallback {

        /* renamed from: do, reason: not valid java name */
        public LinkProperties f33371do;

        /* renamed from: if, reason: not valid java name */
        public NetworkCapabilities f33373if;

        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        private Ccase m37389do(Network network) {
            int i;
            int subtype;
            if (this.f33373if.hasTransport(1) || this.f33373if.hasTransport(5)) {
                i = 1;
            } else {
                if (this.f33373if.hasTransport(0)) {
                    NetworkInfo networkInfoM37385try = NetworkChangeNotifierAutoDetect.this.f33345else.m37385try(network);
                    subtype = networkInfoM37385try != null ? networkInfoM37385try.getSubtype() : -1;
                    i = 0;
                    return new Ccase(true, i, subtype, String.valueOf(NetworkChangeNotifierAutoDetect.m37347static(network)), g2.m2506else(this.f33371do), g2.m2507for(this.f33371do));
                }
                i = this.f33373if.hasTransport(3) ? 9 : this.f33373if.hasTransport(2) ? 7 : this.f33373if.hasTransport(4) ? 17 : -1;
            }
            subtype = -1;
            return new Ccase(true, i, subtype, String.valueOf(NetworkChangeNotifierAutoDetect.m37347static(network)), g2.m2506else(this.f33371do), g2.m2507for(this.f33371do));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            this.f33371do = null;
            this.f33373if = null;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            this.f33373if = networkCapabilities;
            if (!NetworkChangeNotifierAutoDetect.this.f33341catch || this.f33371do == null || this.f33373if == null) {
                return;
            }
            NetworkChangeNotifierAutoDetect.this.m37338const(m37389do(network));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            this.f33371do = linkProperties;
            if (!NetworkChangeNotifierAutoDetect.this.f33341catch || this.f33371do == null || this.f33373if == null) {
                return;
            }
            NetworkChangeNotifierAutoDetect.this.m37338const(m37389do(network));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            this.f33371do = null;
            this.f33373if = null;
            if (NetworkChangeNotifierAutoDetect.this.f33341catch) {
                NetworkChangeNotifierAutoDetect.this.m37338const(new Ccase(false, -1, -1, null, false, ""));
            }
        }

        public /* synthetic */ Cif(NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect, Cdo cdo) {
            this();
        }
    }

    @TargetApi(21)
    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$new, reason: invalid class name */
    public class Cnew extends ConnectivityManager.NetworkCallback {
        private Cnew() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (NetworkChangeNotifierAutoDetect.this.f33341catch) {
                NetworkChangeNotifierAutoDetect.this.m37337class();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            onAvailable(null);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            onAvailable(null);
        }

        public /* synthetic */ Cnew(NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect, Cdo cdo) {
            this();
        }
    }

    @TargetApi(21)
    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$try, reason: invalid class name */
    public class Ctry extends ConnectivityManager.NetworkCallback {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ boolean f33375for = false;

        /* renamed from: do, reason: not valid java name */
        private Network f33376do;

        /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$try$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ long f33378do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ boolean f33379for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f33380if;

            public Cdo(long j, int i, boolean z) {
                this.f33378do = j;
                this.f33380if = i;
                this.f33379for = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                NetworkChangeNotifierAutoDetect.this.f33350new.onNetworkConnect(this.f33378do, this.f33380if);
                if (this.f33379for) {
                    NetworkChangeNotifierAutoDetect.this.f33350new.onConnectionTypeChanged(this.f33380if);
                    NetworkChangeNotifierAutoDetect.this.f33350new.purgeActiveNetworkList(new long[]{this.f33378do});
                }
            }
        }

        /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$try$for, reason: invalid class name */
        public class Cfor implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ long f33382do;

            public Cfor(long j) {
                this.f33382do = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                NetworkChangeNotifierAutoDetect.this.f33350new.onNetworkSoonToDisconnect(this.f33382do);
            }
        }

        /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$try$if, reason: invalid class name */
        public class Cif implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ long f33384do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f33386if;

            public Cif(long j, int i) {
                this.f33384do = j;
                this.f33386if = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                NetworkChangeNotifierAutoDetect.this.f33350new.onNetworkConnect(this.f33384do, this.f33386if);
            }
        }

        /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$try$new, reason: invalid class name */
        public class Cnew implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Network f33387do;

            public Cnew(Network network) {
                this.f33387do = network;
            }

            @Override // java.lang.Runnable
            public void run() {
                NetworkChangeNotifierAutoDetect.this.f33350new.onNetworkDisconnect(NetworkChangeNotifierAutoDetect.m37347static(this.f33387do));
            }
        }

        /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$try$try, reason: invalid class name and collision with other inner class name */
        public class RunnableC0477try implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f33389do;

            public RunnableC0477try(int i) {
                this.f33389do = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                NetworkChangeNotifierAutoDetect.this.f33350new.onConnectionTypeChanged(this.f33389do);
            }
        }

        private Ctry() {
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m37390do(Network network, NetworkCapabilities networkCapabilities) {
            if (networkCapabilities == null) {
                networkCapabilities = NetworkChangeNotifierAutoDetect.this.f33345else.m37383new(network);
            }
            return networkCapabilities == null || (networkCapabilities.hasTransport(4) && !NetworkChangeNotifierAutoDetect.this.f33345else.m37378catch(network));
        }

        /* renamed from: for, reason: not valid java name */
        private boolean m37391for(Network network) {
            Network network2 = this.f33376do;
            return (network2 == null || network2.equals(network)) ? false : true;
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m37392if(Network network, NetworkCapabilities networkCapabilities) {
            return m37391for(network) || m37390do(network, networkCapabilities);
        }

        /* renamed from: new, reason: not valid java name */
        public void m37393new() {
            NetworkCapabilities networkCapabilitiesM37383new;
            Network[] networkArrM37350throw = NetworkChangeNotifierAutoDetect.m37350throw(NetworkChangeNotifierAutoDetect.this.f33345else, null);
            this.f33376do = null;
            if (networkArrM37350throw.length == 1 && (networkCapabilitiesM37383new = NetworkChangeNotifierAutoDetect.this.f33345else.m37383new(networkArrM37350throw[0])) != null && networkCapabilitiesM37383new.hasTransport(4)) {
                this.f33376do = networkArrM37350throw[0];
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Network network2;
            NetworkCapabilities networkCapabilitiesM37383new = NetworkChangeNotifierAutoDetect.this.f33345else.m37383new(network);
            if (m37392if(network, networkCapabilitiesM37383new)) {
                return;
            }
            boolean z = networkCapabilitiesM37383new.hasTransport(4) && ((network2 = this.f33376do) == null || !network.equals(network2));
            if (z) {
                this.f33376do = network;
            }
            NetworkChangeNotifierAutoDetect.this.m37341extends(new Cdo(NetworkChangeNotifierAutoDetect.m37347static(network), NetworkChangeNotifierAutoDetect.this.f33345else.m37382if(network), z));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (m37392if(network, networkCapabilities)) {
                return;
            }
            NetworkChangeNotifierAutoDetect.this.m37341extends(new Cif(NetworkChangeNotifierAutoDetect.m37347static(network), NetworkChangeNotifierAutoDetect.this.f33345else.m37382if(network)));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLosing(Network network, int i) {
            if (m37392if(network, null)) {
                return;
            }
            NetworkChangeNotifierAutoDetect.this.m37341extends(new Cfor(NetworkChangeNotifierAutoDetect.m37347static(network)));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (m37391for(network)) {
                return;
            }
            NetworkChangeNotifierAutoDetect.this.m37341extends(new Cnew(network));
            if (this.f33376do != null) {
                this.f33376do = null;
                for (Network network2 : NetworkChangeNotifierAutoDetect.m37350throw(NetworkChangeNotifierAutoDetect.this.f33345else, network)) {
                    onAvailable(network2);
                }
                NetworkChangeNotifierAutoDetect.this.m37341extends(new RunnableC0477try(NetworkChangeNotifierAutoDetect.this.m37362while().m37368if()));
            }
        }

        public /* synthetic */ Ctry(NetworkChangeNotifierAutoDetect networkChangeNotifierAutoDetect, Cdo cdo) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @TargetApi(21)
    public NetworkChangeNotifierAutoDetect(Observer observer, Celse celse) {
        Looper looperMyLooper = Looper.myLooper();
        this.f33344do = looperMyLooper;
        this.f33349if = new Handler(looperMyLooper);
        this.f33350new = observer;
        this.f33345else = new Cfor(org.chromium.base.Ctry.m37273case());
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            this.f33348goto = new Cgoto(org.chromium.base.Ctry.m37273case());
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        if (i >= 21) {
            this.f33352this = new Ctry(this, objArr3 == true ? 1 : 0);
            this.f33339break = new NetworkRequest.Builder().addCapability(12).removeCapability(15).build();
        } else {
            this.f33352this = null;
            this.f33339break = null;
        }
        if (i >= 30) {
            this.f33340case = new Cif(this, objArr2 == true ? 1 : 0);
        } else {
            this.f33340case = i >= 28 ? new Cnew(this, objArr == true ? 1 : 0) : null;
        }
        this.f33342class = m37362while();
        this.f33347for = new NetworkConnectivityIntentFilter();
        this.f33343const = false;
        this.f33346final = false;
        this.f33353try = celse;
        celse.mo37373if(this);
        this.f33346final = true;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m37336catch() {
        if (ed.f1398if && !m37348switch()) {
            throw new IllegalStateException("Must be called on NetworkChangeNotifierAutoDetect thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m37337class() {
        m37338const(m37362while());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public void m37338const(Ccase ccase) {
        if (ccase.m37368if() != this.f33342class.m37368if() || !ccase.m37366for().equals(this.f33342class.m37366for()) || ccase.m37367goto() != this.f33342class.m37367goto() || !ccase.m37363case().equals(this.f33342class.m37363case())) {
            this.f33350new.onConnectionTypeChanged(ccase.m37368if());
        }
        if (ccase.m37368if() != this.f33342class.m37368if() || ccase.m37364do() != this.f33342class.m37364do()) {
            this.f33350new.onConnectionSubtypeChanged(ccase.m37364do());
        }
        this.f33342class = ccase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public void m37341extends(Runnable runnable) {
        if (m37348switch()) {
            runnable.run();
        } else {
            this.f33349if.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static int m37342final(int i, int i2) {
        if (i != 0) {
            if (i == 1) {
                return 2;
            }
            if (i != 4 && i != 5) {
                if (i == 6) {
                    return 5;
                }
                if (i != 7) {
                    return i != 9 ? 0 : 1;
                }
                return 7;
            }
        }
        if (i2 == 20) {
            return 8;
        }
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 3;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 4;
            case 13:
                return 5;
            default:
                return 0;
        }
    }

    @TargetApi(21)
    /* renamed from: static, reason: not valid java name */
    public static long m37347static(Network network) {
        return Build.VERSION.SDK_INT >= 23 ? e2.m1606class(network) : Integer.parseInt(network.toString());
    }

    /* renamed from: switch, reason: not valid java name */
    private boolean m37348switch() {
        return this.f33344do == Looper.myLooper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    /* renamed from: throw, reason: not valid java name */
    public static Network[] m37350throw(Cfor cfor, Network network) {
        NetworkCapabilities networkCapabilitiesM37383new;
        Network[] networkArrM37379do = cfor.m37379do();
        int i = 0;
        for (Network network2 : networkArrM37379do) {
            if (!network2.equals(network) && (networkCapabilitiesM37383new = cfor.m37383new(network2)) != null && networkCapabilitiesM37383new.hasCapability(12)) {
                if (!networkCapabilitiesM37383new.hasTransport(4)) {
                    networkArrM37379do[i] = network2;
                    i++;
                } else if (cfor.m37378catch(network2)) {
                    return new Network[]{network2};
                }
            }
        }
        return (Network[]) Arrays.copyOf(networkArrM37379do, i);
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m37352default() {
        return this.f33351super;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m37353finally(Cfor cfor) {
        this.f33345else = cfor;
    }

    /* renamed from: import, reason: not valid java name */
    public long m37354import() {
        Network networkM37380for;
        if (Build.VERSION.SDK_INT >= 21 && (networkM37380for = this.f33345else.m37380for()) != null) {
            return m37347static(networkM37380for);
        }
        return -1L;
    }

    /* renamed from: native, reason: not valid java name */
    public long[] m37355native() {
        if (Build.VERSION.SDK_INT < 21) {
            return new long[0];
        }
        Network[] networkArrM37350throw = m37350throw(this.f33345else, null);
        long[] jArr = new long[networkArrM37350throw.length * 2];
        int i = 0;
        for (Network network : networkArrM37350throw) {
            int i2 = i + 1;
            jArr[i] = m37347static(network);
            i = i2 + 1;
            jArr[i2] = this.f33345else.m37382if(r5);
        }
        return jArr;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m37341extends(new Cdo());
    }

    /* renamed from: package, reason: not valid java name */
    public void m37356package(Cgoto cgoto) {
        this.f33348goto = cgoto;
    }

    /* renamed from: private, reason: not valid java name */
    public void m37357private() {
        m37336catch();
        if (this.f33341catch) {
            this.f33341catch = false;
            Ctry ctry = this.f33352this;
            if (ctry != null) {
                this.f33345else.m37376break(ctry);
            }
            ConnectivityManager.NetworkCallback networkCallback = this.f33340case;
            if (networkCallback != null) {
                this.f33345else.m37376break(networkCallback);
            } else {
                org.chromium.base.Ctry.m37273case().unregisterReceiver(this);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: public, reason: not valid java name */
    public Celse m37358public() {
        return this.f33353try;
    }

    @VisibleForTesting
    /* renamed from: return, reason: not valid java name */
    public boolean m37359return() {
        return this.f33341catch;
    }

    /* renamed from: super, reason: not valid java name */
    public void m37360super() {
        m37336catch();
        this.f33353try.mo37371do();
        m37357private();
    }

    /* renamed from: throws, reason: not valid java name */
    public void m37361throws() {
        m37336catch();
        if (this.f33341catch) {
            m37337class();
            return;
        }
        if (this.f33346final) {
            m37337class();
        }
        ConnectivityManager.NetworkCallback networkCallback = this.f33340case;
        if (networkCallback != null) {
            try {
                this.f33345else.m37381goto(networkCallback, this.f33349if);
            } catch (RuntimeException unused) {
                this.f33340case = null;
            }
        }
        if (this.f33340case == null) {
            this.f33343const = org.chromium.base.Ctry.m37273case().registerReceiver(this, this.f33347for) != null;
        }
        this.f33341catch = true;
        Ctry ctry = this.f33352this;
        if (ctry != null) {
            ctry.m37393new();
            try {
                this.f33345else.m37384this(this.f33339break, this.f33352this, this.f33349if);
            } catch (RuntimeException unused2) {
                this.f33351super = true;
                this.f33352this = null;
            }
            if (this.f33351super || !this.f33346final) {
                return;
            }
            Network[] networkArrM37350throw = m37350throw(this.f33345else, null);
            long[] jArr = new long[networkArrM37350throw.length];
            for (int i = 0; i < networkArrM37350throw.length; i++) {
                jArr[i] = m37347static(networkArrM37350throw[i]);
            }
            this.f33350new.purgeActiveNetworkList(jArr);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public Ccase m37362while() {
        return this.f33345else.m37377case(this.f33348goto);
    }

    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ boolean f33363if = false;

        /* renamed from: do, reason: not valid java name */
        private final ConnectivityManager f33364do;

        public Cfor(Context context) {
            this.f33364do = (ConnectivityManager) context.getSystemService("connectivity");
        }

        @TargetApi(21)
        /* renamed from: else, reason: not valid java name */
        private NetworkInfo m37375else(NetworkInfo networkInfo) {
            if (networkInfo == null) {
                return null;
            }
            if (networkInfo.isConnected()) {
                return networkInfo;
            }
            if (Build.VERSION.SDK_INT >= 21 && networkInfo.getDetailedState() == NetworkInfo.DetailedState.BLOCKED && ApplicationStatus.getStateForApplication() == 1) {
                return networkInfo;
            }
            return null;
        }

        @TargetApi(21)
        /* renamed from: break, reason: not valid java name */
        public void m37376break(ConnectivityManager.NetworkCallback networkCallback) {
            this.f33364do.unregisterNetworkCallback(networkCallback);
        }

        /* renamed from: case, reason: not valid java name */
        public Ccase m37377case(Cgoto cgoto) {
            NetworkInfo activeNetworkInfo;
            Network networkM37380for;
            if (Build.VERSION.SDK_INT >= 23) {
                networkM37380for = m37380for();
                activeNetworkInfo = e2.m1607const(this.f33364do, networkM37380for);
            } else {
                activeNetworkInfo = this.f33364do.getActiveNetworkInfo();
                networkM37380for = null;
            }
            NetworkInfo networkInfoM37375else = m37375else(activeNetworkInfo);
            if (networkInfoM37375else == null) {
                return new Ccase(false, -1, -1, null, false, "");
            }
            if (networkM37380for == null) {
                return networkInfoM37375else.getType() == 1 ? (networkInfoM37375else.getExtraInfo() == null || "".equals(networkInfoM37375else.getExtraInfo())) ? new Ccase(true, networkInfoM37375else.getType(), networkInfoM37375else.getSubtype(), cgoto.m37388if(), false, "") : new Ccase(true, networkInfoM37375else.getType(), networkInfoM37375else.getSubtype(), networkInfoM37375else.getExtraInfo(), false, "") : new Ccase(true, networkInfoM37375else.getType(), networkInfoM37375else.getSubtype(), null, false, "");
            }
            DnsStatus dnsStatus = AndroidNetworkLibrary.getDnsStatus(networkM37380for);
            return dnsStatus == null ? new Ccase(true, networkInfoM37375else.getType(), networkInfoM37375else.getSubtype(), String.valueOf(NetworkChangeNotifierAutoDetect.m37347static(networkM37380for)), false, "") : new Ccase(true, networkInfoM37375else.getType(), networkInfoM37375else.getSubtype(), String.valueOf(NetworkChangeNotifierAutoDetect.m37347static(networkM37380for)), dnsStatus.getPrivateDnsActive(), dnsStatus.getPrivateDnsServerName());
        }

        @TargetApi(21)
        @VisibleForTesting
        /* renamed from: catch, reason: not valid java name */
        public boolean m37378catch(Network network) throws IOException {
            Socket socket = new Socket();
            try {
                b22 b22VarM429if = b22.m429if();
                try {
                    network.bindSocket(socket);
                    if (b22VarM429if != null) {
                        b22VarM429if.close();
                    }
                    try {
                        socket.close();
                        return true;
                    } catch (IOException unused) {
                        return true;
                    }
                } catch (Throwable th) {
                    if (b22VarM429if != null) {
                        try {
                            b22VarM429if.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException unused2) {
                try {
                    socket.close();
                } catch (IOException unused3) {
                }
                return false;
            } catch (Throwable th3) {
                try {
                    socket.close();
                } catch (IOException unused4) {
                }
                throw th3;
            }
        }

        @TargetApi(21)
        @VisibleForTesting
        /* renamed from: do, reason: not valid java name */
        public Network[] m37379do() {
            Network[] allNetworks = this.f33364do.getAllNetworks();
            return allNetworks == null ? new Network[0] : allNetworks;
        }

        @TargetApi(21)
        /* renamed from: for, reason: not valid java name */
        public Network m37380for() {
            Network networkM1631try;
            if (Build.VERSION.SDK_INT >= 23) {
                networkM1631try = e2.m1631try(this.f33364do);
                if (networkM1631try != null) {
                    return networkM1631try;
                }
            } else {
                networkM1631try = null;
            }
            NetworkInfo activeNetworkInfo = this.f33364do.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            for (Network network : NetworkChangeNotifierAutoDetect.m37350throw(this, null)) {
                NetworkInfo networkInfoM37385try = m37385try(network);
                if (networkInfoM37385try != null && (networkInfoM37385try.getType() == activeNetworkInfo.getType() || networkInfoM37385try.getType() == 17)) {
                    networkM1631try = network;
                }
            }
            return networkM1631try;
        }

        @TargetApi(28)
        /* renamed from: goto, reason: not valid java name */
        public void m37381goto(ConnectivityManager.NetworkCallback networkCallback, Handler handler) {
            org.chromium.base.compat.Cif.m37043catch(this.f33364do, networkCallback, handler);
        }

        @TargetApi(21)
        /* renamed from: if, reason: not valid java name */
        public int m37382if(Network network) {
            NetworkInfo networkInfoM37385try = m37385try(network);
            if (networkInfoM37385try != null && networkInfoM37385try.getType() == 17) {
                networkInfoM37385try = this.f33364do.getActiveNetworkInfo();
            }
            if (networkInfoM37385try == null || !networkInfoM37385try.isConnected()) {
                return 6;
            }
            return NetworkChangeNotifierAutoDetect.m37342final(networkInfoM37385try.getType(), networkInfoM37385try.getSubtype());
        }

        @TargetApi(21)
        @VisibleForTesting
        /* renamed from: new, reason: not valid java name */
        public NetworkCapabilities m37383new(Network network) {
            for (int i = 0; i < 2; i++) {
                try {
                    return this.f33364do.getNetworkCapabilities(network);
                } catch (SecurityException unused) {
                }
            }
            return null;
        }

        @TargetApi(21)
        /* renamed from: this, reason: not valid java name */
        public void m37384this(NetworkRequest networkRequest, ConnectivityManager.NetworkCallback networkCallback, Handler handler) {
            if (Build.VERSION.SDK_INT >= 26) {
                org.chromium.base.compat.Cif.m37044class(this.f33364do, networkRequest, networkCallback, handler);
            } else {
                this.f33364do.registerNetworkCallback(networkRequest, networkCallback);
            }
        }

        /* renamed from: try, reason: not valid java name */
        public NetworkInfo m37385try(Network network) {
            try {
                try {
                    return this.f33364do.getNetworkInfo(network);
                } catch (NullPointerException unused) {
                    return null;
                }
            } catch (NullPointerException unused2) {
                return this.f33364do.getNetworkInfo(network);
            }
        }

        public Cfor() {
            this.f33364do = null;
        }
    }

    /* renamed from: org.chromium.net.NetworkChangeNotifierAutoDetect$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: case, reason: not valid java name */
        public static final /* synthetic */ boolean f33365case = false;

        /* renamed from: do, reason: not valid java name */
        private final Context f33366do;

        /* renamed from: for, reason: not valid java name */
        @ii0("mLock")
        private boolean f33367for;

        /* renamed from: if, reason: not valid java name */
        private final Object f33368if;

        /* renamed from: new, reason: not valid java name */
        @ii0("mLock")
        private boolean f33369new;

        /* renamed from: try, reason: not valid java name */
        @ii0("mLock")
        private WifiManager f33370try;

        public Cgoto(Context context) {
            this.f33368if = new Object();
            this.f33366do = context;
        }

        @ii0("mLock")
        /* renamed from: do, reason: not valid java name */
        private WifiInfo m37386do() {
            try {
                try {
                    return this.f33370try.getConnectionInfo();
                } catch (NullPointerException unused) {
                    return null;
                }
            } catch (NullPointerException unused2) {
                return this.f33370try.getConnectionInfo();
            }
        }

        @ii0("mLock")
        @SuppressLint({"WifiManagerPotentialLeak"})
        /* renamed from: for, reason: not valid java name */
        private boolean m37387for() {
            if (this.f33367for) {
                return this.f33369new;
            }
            boolean z = this.f33366do.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", this.f33366do.getPackageName()) == 0;
            this.f33369new = z;
            this.f33370try = z ? (WifiManager) this.f33366do.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI) : null;
            this.f33367for = true;
            return this.f33369new;
        }

        /* renamed from: if, reason: not valid java name */
        public String m37388if() {
            synchronized (this.f33368if) {
                if (!m37387for()) {
                    return AndroidNetworkLibrary.getWifiSSID();
                }
                WifiInfo wifiInfoM37386do = m37386do();
                if (wifiInfoM37386do == null) {
                    return "";
                }
                return wifiInfoM37386do.getSSID();
            }
        }

        public Cgoto() {
            this.f33368if = new Object();
            this.f33366do = null;
        }
    }
}
