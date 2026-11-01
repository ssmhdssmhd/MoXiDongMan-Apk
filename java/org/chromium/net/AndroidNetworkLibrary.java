package org.chromium.net;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.TransportInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.support.v4.cx0;
import android.support.v4.e2;
import android.support.v4.g2;
import android.support.v4.m62;
import androidx.annotation.VisibleForTesting;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketImpl;
import java.net.URLConnection;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Enumeration;
import java.util.List;
import org.chromium.base.BuildInfo;
import org.chromium.base.Ctry;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.CalledByNativeUnchecked;

@cx0
/* loaded from: classes3.dex */
class AndroidNetworkLibrary {

    /* renamed from: do, reason: not valid java name */
    private static final String f33302do = "AndroidNetworkLibrary";

    /* renamed from: for, reason: not valid java name */
    private static Boolean f33303for;

    /* renamed from: if, reason: not valid java name */
    private static Boolean f33304if;

    /* renamed from: org.chromium.net.AndroidNetworkLibrary$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static Cdo f33305do = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public static Cdo m37296do() {
            return f33305do;
        }

        @VisibleForTesting
        /* renamed from: new, reason: not valid java name */
        public static void m37297new(Cdo cdo) {
            f33305do = cdo;
        }

        @TargetApi(24)
        /* renamed from: for, reason: not valid java name */
        public boolean m37298for(String str) {
            return Build.VERSION.SDK_INT < 24 ? m37299if() : org.chromium.base.compat.Cdo.m37027new(str);
        }

        @TargetApi(23)
        /* renamed from: if, reason: not valid java name */
        public boolean m37299if() {
            if (Build.VERSION.SDK_INT < 23) {
                return true;
            }
            return e2.m1619native();
        }
    }

    /* renamed from: org.chromium.net.AndroidNetworkLibrary$for, reason: invalid class name */
    public static class Cfor extends Socket {

        /* renamed from: org.chromium.net.AndroidNetworkLibrary$for$do, reason: invalid class name */
        public static class Cdo extends SocketImpl {
            public Cdo(FileDescriptor fileDescriptor) {
                ((SocketImpl) this).fd = fileDescriptor;
            }

            @Override // java.net.SocketImpl
            public void accept(SocketImpl socketImpl) {
                throw new RuntimeException("accept not implemented");
            }

            @Override // java.net.SocketImpl
            public int available() {
                throw new RuntimeException("accept not implemented");
            }

            @Override // java.net.SocketImpl
            public void bind(InetAddress inetAddress, int i) {
                throw new RuntimeException("accept not implemented");
            }

            @Override // java.net.SocketImpl
            public void close() {
            }

            @Override // java.net.SocketImpl
            public void connect(InetAddress inetAddress, int i) {
                throw new RuntimeException("connect not implemented");
            }

            @Override // java.net.SocketImpl
            public void create(boolean z) {
            }

            @Override // java.net.SocketImpl
            public InputStream getInputStream() {
                throw new RuntimeException("getInputStream not implemented");
            }

            @Override // java.net.SocketOptions
            public Object getOption(int i) {
                throw new RuntimeException("getOption not implemented");
            }

            @Override // java.net.SocketImpl
            public OutputStream getOutputStream() {
                throw new RuntimeException("getOutputStream not implemented");
            }

            @Override // java.net.SocketImpl
            public void listen(int i) {
                throw new RuntimeException("listen not implemented");
            }

            @Override // java.net.SocketImpl
            public void sendUrgentData(int i) {
                throw new RuntimeException("sendUrgentData not implemented");
            }

            @Override // java.net.SocketOptions
            public void setOption(int i, Object obj) {
                throw new RuntimeException("setOption not implemented");
            }

            @Override // java.net.SocketImpl
            public void connect(SocketAddress socketAddress, int i) {
                throw new RuntimeException("connect not implemented");
            }

            @Override // java.net.SocketImpl
            public void connect(String str, int i) {
                throw new RuntimeException("connect not implemented");
            }
        }

        public Cfor(FileDescriptor fileDescriptor) throws IOException {
            super(new Cdo(fileDescriptor));
        }
    }

    /* renamed from: org.chromium.net.AndroidNetworkLibrary$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private static final Method f33306do;

        static {
            try {
                f33306do = FileDescriptor.class.getMethod("setInt$", Integer.TYPE);
            } catch (NoSuchMethodException | SecurityException e) {
                throw new RuntimeException("Unable to get FileDescriptor.setInt$", e);
            }
        }

        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public static FileDescriptor m37300do(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            try {
                FileDescriptor fileDescriptor = new FileDescriptor();
                f33306do.invoke(fileDescriptor, Integer.valueOf(i));
                return fileDescriptor;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("FileDescriptor.setInt$() failed", e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("FileDescriptor.setInt$() failed", e2);
            }
        }
    }

    @CalledByNativeUnchecked
    public static void addTestRootCertificate(byte[] bArr) throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        X509Util.m37432if(bArr);
    }

    @CalledByNativeUnchecked
    public static void clearTestRootCertificates() throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        X509Util.m37430for();
    }

    /* renamed from: do, reason: not valid java name */
    private static WifiInfo m37293do() {
        TransportInfo transportInfoM37034else;
        if (!m37294for()) {
            Intent intentRegisterReceiver = Ctry.m37273case().registerReceiver(null, new IntentFilter("android.net.wifi.STATE_CHANGE"));
            if (intentRegisterReceiver != null) {
                return (WifiInfo) intentRegisterReceiver.getParcelableExtra("wifiInfo");
            }
            return null;
        }
        if (!BuildInfo.m36737new()) {
            return ((WifiManager) Ctry.m37273case().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity");
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasTransport(1) && (transportInfoM37034else = org.chromium.base.compat.Cfor.m37034else(networkCapabilities)) != null && (transportInfoM37034else instanceof WifiInfo)) {
                return (WifiInfo) transportInfoM37034else;
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m37294for() {
        if (f33303for == null) {
            f33303for = Boolean.valueOf(org.chromium.base.Cdo.m37069do(Ctry.m37273case(), "android.permission.ACCESS_WIFI_STATE", Process.myPid(), Process.myUid()) == 0);
        }
        return f33303for.booleanValue();
    }

    @TargetApi(23)
    @CalledByNative
    public static DnsStatus getDnsStatus(Network network) {
        ConnectivityManager connectivityManager;
        if (!m37295if() || (connectivityManager = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity")) == null) {
            return null;
        }
        if (network == null) {
            network = e2.m1631try(connectivityManager);
        }
        if (network == null) {
            return null;
        }
        try {
            LinkProperties linkProperties = connectivityManager.getLinkProperties(network);
            if (linkProperties == null) {
                return null;
            }
            List<InetAddress> dnsServers = linkProperties.getDnsServers();
            String domains = linkProperties.getDomains();
            return Build.VERSION.SDK_INT >= 28 ? new DnsStatus(dnsServers, g2.m2506else(linkProperties), g2.m2507for(linkProperties), domains) : new DnsStatus(dnsServers, false, "", domains);
        } catch (RuntimeException unused) {
            return null;
        }
    }

    @TargetApi(23)
    @CalledByNative
    private static boolean getIsCaptivePortal() {
        ConnectivityManager connectivityManager;
        Network networkM1631try;
        NetworkCapabilities networkCapabilities;
        return (Build.VERSION.SDK_INT < 23 || (connectivityManager = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity")) == null || (networkM1631try = e2.m1631try(connectivityManager)) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(networkM1631try)) == null || !networkCapabilities.hasCapability(17)) ? false : true;
    }

    @CalledByNative
    private static boolean getIsRoaming() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) Ctry.m37273case().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return activeNetworkInfo.isRoaming();
    }

    @CalledByNative
    public static String getMimeTypeFromExtension(String str) {
        return URLConnection.guessContentTypeFromName("foo." + str);
    }

    @CalledByNative
    private static String getNetworkOperator() {
        return org.chromium.net.Cdo.m37494try().m37496else();
    }

    @CalledByNative
    private static String getSimOperator() {
        return org.chromium.net.Cdo.m37494try().m37497goto();
    }

    @CalledByNative
    public static String getWifiSSID() {
        String ssid;
        WifiInfo wifiInfoM37293do = m37293do();
        return (wifiInfoM37293do == null || (ssid = wifiInfoM37293do.getSSID()) == null || ssid.equals("<unknown ssid>")) ? "" : ssid;
    }

    @CalledByNative
    public static int getWifiSignalLevel(int i) {
        int intExtra;
        int iCalculateSignalLevel;
        if (Ctry.m37273case() == null || Ctry.m37273case().getContentResolver() == null) {
            return -1;
        }
        if (m37294for()) {
            WifiInfo wifiInfoM37293do = m37293do();
            if (wifiInfoM37293do == null) {
                return -1;
            }
            intExtra = wifiInfoM37293do.getRssi();
        } else {
            try {
                Intent intentRegisterReceiver = Ctry.m37273case().registerReceiver(null, new IntentFilter("android.net.wifi.RSSI_CHANGED"));
                if (intentRegisterReceiver == null) {
                    return -1;
                }
                intExtra = intentRegisterReceiver.getIntExtra("newRssi", Integer.MIN_VALUE);
            } catch (IllegalArgumentException unused) {
            }
        }
        if (intExtra != Integer.MIN_VALUE && (iCalculateSignalLevel = WifiManager.calculateSignalLevel(intExtra, i)) >= 0 && iCalculateSignalLevel < i) {
            return iCalculateSignalLevel;
        }
        return -1;
    }

    @CalledByNative
    public static boolean haveOnlyLoopbackAddresses() throws SocketException {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return false;
            }
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("could not get network interfaces: ");
            sb.append(e);
            return false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m37295if() {
        if (f33304if == null) {
            f33304if = Boolean.valueOf(org.chromium.base.Cdo.m37069do(Ctry.m37273case(), "android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0);
        }
        return f33304if.booleanValue();
    }

    @CalledByNative
    private static boolean isCleartextPermitted(String str) {
        try {
            return Cdo.m37296do().m37298for(str);
        } catch (IllegalArgumentException unused) {
            return Cdo.m37296do().m37299if();
        }
    }

    @TargetApi(23)
    @CalledByNative
    private static boolean reportBadDefaultNetwork() {
        ConnectivityManager connectivityManager;
        if (Build.VERSION.SDK_INT < 23 || (connectivityManager = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity")) == null) {
            return false;
        }
        e2.m1614finally(connectivityManager, null, false);
        return true;
    }

    @CalledByNative
    private static void tagSocket(int i, int i2, int i3) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ParcelFileDescriptor parcelFileDescriptorAdoptFd;
        FileDescriptor fileDescriptor;
        int threadStatsTag = TrafficStats.getThreadStatsTag();
        if (i3 != threadStatsTag) {
            TrafficStats.setThreadStatsTag(i3);
        }
        if (i2 != -1) {
            m62.m4857if(i2);
        }
        if (Build.VERSION.SDK_INT < 23) {
            parcelFileDescriptorAdoptFd = null;
            fileDescriptor = Cif.m37300do(i);
        } else {
            parcelFileDescriptorAdoptFd = ParcelFileDescriptor.adoptFd(i);
            fileDescriptor = parcelFileDescriptorAdoptFd.getFileDescriptor();
        }
        Cfor cfor = new Cfor(fileDescriptor);
        TrafficStats.tagSocket(cfor);
        cfor.close();
        if (parcelFileDescriptorAdoptFd != null) {
            parcelFileDescriptorAdoptFd.detachFd();
        }
        if (i3 != threadStatsTag) {
            TrafficStats.setThreadStatsTag(threadStatsTag);
        }
        if (i2 != -1) {
            m62.m4856do();
        }
    }

    @CalledByNative
    public static AndroidCertVerifyResult verifyServerCertificates(byte[][] bArr, String str, String str2) {
        try {
            return X509Util.m37427const(bArr, str, str2);
        } catch (IllegalArgumentException unused) {
            return new AndroidCertVerifyResult(-1);
        } catch (KeyStoreException unused2) {
            return new AndroidCertVerifyResult(-1);
        } catch (NoSuchAlgorithmException unused3) {
            return new AndroidCertVerifyResult(-1);
        }
    }
}
