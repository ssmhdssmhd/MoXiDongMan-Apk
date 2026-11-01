package android.support.v4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.util.Enumeration;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class g31 {

    /* renamed from: do, reason: not valid java name */
    private static final Pattern f2047do = Pattern.compile("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");

    /* renamed from: do, reason: not valid java name */
    public static String m2566do(String str, String str2) {
        try {
            return new URL(new URL(str), str2).toString();
        } catch (Exception unused) {
            return str2;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m2567for(String str) {
        boolean zMatches = Pattern.compile("(((https|http)?://)?([a-z0-9]+[.])|(www.))\\w+[.|\\/]([a-z0-9]{0,})?[[.]([a-z0-9]{0,})]+((/[\\S&&[^,;一-龥]]+)+)?([.][a-z0-9]{0,}+|/?)").matcher(str.trim()).matches();
        if (zMatches) {
            return true;
        }
        return zMatches;
    }

    /* renamed from: if, reason: not valid java name */
    public static InetAddress m2568if() throws SocketException {
        Enumeration<NetworkInterface> networkInterfaces;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e) {
            e.printStackTrace();
            networkInterfaces = null;
        }
        if (networkInterfaces != null) {
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                if (inetAddresses != null) {
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && m2569new(inetAddressNextElement.getHostAddress())) {
                            return inetAddressNextElement;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2569new(String str) {
        return f2047do.matcher(str).matches();
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m2570try(Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (allNetworkInfo = connectivityManager.getAllNetworkInfo()) == null) {
            return false;
        }
        for (NetworkInfo networkInfo : allNetworkInfo) {
            if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                return true;
            }
        }
        return false;
    }
}
