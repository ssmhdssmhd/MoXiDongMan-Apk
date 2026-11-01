package org.chromium.net;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.support.v4.cx0;
import android.support.v4.lo0;
import android.support.v4.rv0;
import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;
import org.chromium.base.Ctry;

@lo0("net")
@cx0
/* loaded from: classes3.dex */
public class X509Util {

    /* renamed from: break, reason: not valid java name */
    private static KeyStore f33412break = null;

    /* renamed from: case, reason: not valid java name */
    private static final String f33413case = "1.3.6.1.4.1.311.10.3.3";

    /* renamed from: catch, reason: not valid java name */
    private static KeyStore f33414catch = null;

    /* renamed from: class, reason: not valid java name */
    private static File f33415class = null;

    /* renamed from: const, reason: not valid java name */
    private static Set<Pair<X500Principal, PublicKey>> f33416const = null;

    /* renamed from: do, reason: not valid java name */
    private static final String f33417do = "X509Util";

    /* renamed from: else, reason: not valid java name */
    private static X509TrustManagerImplementation f33418else = null;

    /* renamed from: final, reason: not valid java name */
    private static boolean f33419final = false;

    /* renamed from: for, reason: not valid java name */
    private static final String f33420for = "1.3.6.1.5.5.7.3.1";

    /* renamed from: goto, reason: not valid java name */
    private static Cif f33421goto = null;

    /* renamed from: if, reason: not valid java name */
    private static CertificateFactory f33422if = null;

    /* renamed from: new, reason: not valid java name */
    private static final String f33423new = "2.5.29.37.0";

    /* renamed from: this, reason: not valid java name */
    private static X509TrustManagerImplementation f33425this = null;

    /* renamed from: try, reason: not valid java name */
    private static final String f33427try = "2.16.840.1.113730.4.1";

    /* renamed from: while, reason: not valid java name */
    public static final /* synthetic */ boolean f33428while = false;

    /* renamed from: super, reason: not valid java name */
    private static final Object f33424super = new Object();

    /* renamed from: throw, reason: not valid java name */
    private static final char[] f33426throw = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public interface Natives {
        void notifyKeyChainChanged();
    }

    public interface X509TrustManagerImplementation {
        List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) throws CertificateException;
    }

    /* renamed from: org.chromium.net.X509Util$for, reason: invalid class name */
    public static final class Cfor implements X509TrustManagerImplementation {

        /* renamed from: do, reason: not valid java name */
        private final X509TrustManager f33429do;

        public Cfor(X509TrustManager x509TrustManager) {
            this.f33429do = x509TrustManager;
        }

        @Override // org.chromium.net.X509Util.X509TrustManagerImplementation
        public List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) throws CertificateException {
            try {
                this.f33429do.checkServerTrusted(x509CertificateArr, str);
                return Collections.emptyList();
            } catch (RuntimeException e) {
                rv0.m7156if(X509Util.f33417do, "X509TrustManager unexpectedly threw: %s", e);
                throw new CertificateException(e);
            }
        }
    }

    /* renamed from: org.chromium.net.X509Util$if, reason: invalid class name */
    public static final class Cif extends BroadcastReceiver {
        private Cif() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Build.VERSION.SDK_INT >= 26 ? "android.security.action.KEYCHAIN_CHANGED".equals(intent.getAction()) || "android.security.action.TRUST_STORE_CHANGED".equals(intent.getAction()) || ("android.security.action.KEY_ACCESS_CHANGED".equals(intent.getAction()) && !intent.getBooleanExtra("android.security.extra.KEY_ACCESSIBLE", false)) : "android.security.STORAGE_CHANGED".equals(intent.getAction())) {
                try {
                    X509Util.m37423break();
                } catch (KeyStoreException e) {
                    rv0.m7156if(X509Util.f33417do, "Unable to reload the default TrustManager", e);
                } catch (NoSuchAlgorithmException e2) {
                    rv0.m7156if(X509Util.f33417do, "Unable to reload the default TrustManager", e2);
                } catch (CertificateException e3) {
                    rv0.m7156if(X509Util.f33417do, "Unable to reload the default TrustManager", e3);
                }
            }
        }
    }

    /* renamed from: org.chromium.net.X509Util$new, reason: invalid class name */
    public static final class Cnew implements X509TrustManagerImplementation {

        /* renamed from: do, reason: not valid java name */
        private final X509TrustManagerExtensions f33430do;

        @SuppressLint({"NewApi"})
        public Cnew(X509TrustManager x509TrustManager) {
            this.f33430do = new X509TrustManagerExtensions(x509TrustManager);
        }

        @Override // org.chromium.net.X509Util.X509TrustManagerImplementation
        @SuppressLint({"NewApi"})
        public List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) throws CertificateException {
            try {
                return this.f33430do.checkServerTrusted(x509CertificateArr, str, str2);
            } catch (RuntimeException e) {
                rv0.m7156if(X509Util.f33417do, "checkServerTrusted() unexpectedly threw: %s", e);
                throw new CertificateException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static void m37423break() throws NoSuchAlgorithmException, KeyStoreException, CertificateException {
        synchronized (f33424super) {
            f33418else = null;
            f33416const = null;
            m37429else();
        }
        Cswitch.m37716if().notifyKeyChainChanged();
    }

    /* renamed from: case, reason: not valid java name */
    private static void m37424case() throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        synchronized (f33424super) {
            m37429else();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m37425catch() throws NoSuchAlgorithmException, KeyStoreException {
        f33425this = m37435try(f33412break);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m37426class(X509Certificate x509Certificate) throws CertificateException {
        List<String> extendedKeyUsage;
        try {
            extendedKeyUsage = x509Certificate.getExtendedKeyUsage();
        } catch (NullPointerException unused) {
        }
        if (extendedKeyUsage == null) {
            return true;
        }
        for (String str : extendedKeyUsage) {
            if (str.equals(f33420for) || str.equals(f33423new) || str.equals(f33427try) || str.equals(f33413case)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public static AndroidCertVerifyResult m37427const(byte[][] bArr, String str, String str2) throws NoSuchAlgorithmException, CertificateNotYetValidException, KeyStoreException, CertificateExpiredException {
        List<X509Certificate> listCheckServerTrusted;
        if (bArr == null || bArr.length == 0 || bArr[0] == null) {
            throw new IllegalArgumentException("Expected non-null and non-empty certificate chain passed as |certChain|. |certChain|=" + Arrays.deepToString(bArr));
        }
        try {
            m37424case();
            ArrayList arrayList = new ArrayList();
            try {
                arrayList.add(m37433new(bArr[0]));
                for (int i = 1; i < bArr.length; i++) {
                    try {
                        arrayList.add(m37433new(bArr[i]));
                    } catch (CertificateException unused) {
                        rv0.m7150const(f33417do, "intermediate " + i + " failed parsing", new Object[0]);
                    }
                }
                X509Certificate[] x509CertificateArr = (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                try {
                    x509CertificateArr[0].checkValidity();
                    if (!m37426class(x509CertificateArr[0])) {
                        return new AndroidCertVerifyResult(-6);
                    }
                    synchronized (f33424super) {
                        X509TrustManagerImplementation x509TrustManagerImplementation = f33418else;
                        if (x509TrustManagerImplementation == null) {
                            return new AndroidCertVerifyResult(-1);
                        }
                        try {
                            listCheckServerTrusted = x509TrustManagerImplementation.checkServerTrusted(x509CertificateArr, str, str2);
                        } catch (CertificateException e) {
                            try {
                                listCheckServerTrusted = f33425this.checkServerTrusted(x509CertificateArr, str, str2);
                            } catch (CertificateException unused2) {
                                rv0.m7155goto(f33417do, "Failed to validate the certificate chain, error: " + e.getMessage(), new Object[0]);
                                return new AndroidCertVerifyResult(-2);
                            }
                        }
                        return new AndroidCertVerifyResult(0, listCheckServerTrusted.size() > 0 ? m37434this(listCheckServerTrusted.get(listCheckServerTrusted.size() - 1)) : false, listCheckServerTrusted);
                    }
                } catch (CertificateExpiredException unused3) {
                    return new AndroidCertVerifyResult(-3);
                } catch (CertificateNotYetValidException unused4) {
                    return new AndroidCertVerifyResult(-4);
                } catch (CertificateException unused5) {
                    return new AndroidCertVerifyResult(-1);
                }
            } catch (CertificateException unused6) {
                return new AndroidCertVerifyResult(-5);
            }
        } catch (CertificateException unused7) {
            return new AndroidCertVerifyResult(-1);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static void m37429else() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (f33422if == null) {
            f33422if = CertificateFactory.getInstance("X.509");
        }
        if (f33418else == null) {
            f33418else = m37435try(null);
        }
        if (!f33419final) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
                f33414catch = keyStore;
                try {
                    keyStore.load(null);
                } catch (IOException unused) {
                }
                f33415class = new File(System.getenv("ANDROID_ROOT") + "/etc/security/cacerts");
            } catch (KeyStoreException unused2) {
            }
            f33419final = true;
        }
        if (f33416const == null) {
            f33416const = new HashSet();
        }
        if (f33412break == null) {
            KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
            f33412break = keyStore2;
            try {
                keyStore2.load(null);
            } catch (IOException unused3) {
            }
        }
        if (f33425this == null) {
            f33425this = m37435try(f33412break);
        }
        if (f33421goto == null) {
            f33421goto = new Cif();
            IntentFilter intentFilter = new IntentFilter();
            if (Build.VERSION.SDK_INT >= 26) {
                intentFilter.addAction("android.security.action.KEYCHAIN_CHANGED");
                intentFilter.addAction("android.security.action.KEY_ACCESS_CHANGED");
                intentFilter.addAction("android.security.action.TRUST_STORE_CHANGED");
            } else {
                intentFilter.addAction("android.security.STORAGE_CHANGED");
            }
            Ctry.m37273case().registerReceiver(f33421goto, intentFilter);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m37430for() throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        m37424case();
        synchronized (f33424super) {
            try {
                f33412break.load(null);
                m37425catch();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m37431goto(X500Principal x500Principal) throws NoSuchAlgorithmException {
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(x500Principal.getEncoded());
        char[] cArr = new char[8];
        for (int i = 0; i < 4; i++) {
            int i2 = i * 2;
            char[] cArr2 = f33426throw;
            int i3 = 3 - i;
            cArr[i2] = cArr2[(bArrDigest[i3] >> 4) & 15];
            cArr[i2 + 1] = cArr2[bArrDigest[i3] & 15];
        }
        return new String(cArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37432if(byte[] bArr) throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        m37424case();
        X509Certificate x509CertificateM37433new = m37433new(bArr);
        synchronized (f33424super) {
            f33412break.setCertificateEntry("root_cert_" + Integer.toString(f33412break.size()), x509CertificateM37433new);
            m37425catch();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static X509Certificate m37433new(byte[] bArr) throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        m37424case();
        return (X509Certificate) f33422if.generateCertificate(new ByteArrayInputStream(bArr));
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m37434this(X509Certificate x509Certificate) throws NoSuchAlgorithmException, KeyStoreException {
        if (f33414catch == null) {
            return false;
        }
        Pair<X500Principal, PublicKey> pair = new Pair<>(x509Certificate.getSubjectX500Principal(), x509Certificate.getPublicKey());
        if (f33416const.contains(pair)) {
            return true;
        }
        String strM37431goto = m37431goto(x509Certificate.getSubjectX500Principal());
        int i = 0;
        while (true) {
            String str = strM37431goto + org.apache.commons.lang3.Ctry.f28883do + i;
            if (!new File(f33415class, str).exists()) {
                return false;
            }
            Certificate certificate = f33414catch.getCertificate("system:" + str);
            if (certificate != null) {
                if (certificate instanceof X509Certificate) {
                    X509Certificate x509Certificate2 = (X509Certificate) certificate;
                    if (x509Certificate.getSubjectX500Principal().equals(x509Certificate2.getSubjectX500Principal()) && x509Certificate.getPublicKey().equals(x509Certificate2.getPublicKey())) {
                        f33416const.add(pair);
                        return true;
                    }
                } else {
                    rv0.m7156if(f33417do, "Anchor " + str + " not an X509Certificate: " + certificate.getClass().getName(), new Object[0]);
                }
            }
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static X509TrustManagerImplementation m37435try(KeyStore keyStore) throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        try {
            for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                if (trustManager instanceof X509TrustManager) {
                    try {
                        return Build.VERSION.SDK_INT >= 17 ? new Cnew((X509TrustManager) trustManager) : new Cfor((X509TrustManager) trustManager);
                    } catch (IllegalArgumentException e) {
                        rv0.m7156if(f33417do, "Error creating trust manager (" + trustManager.getClass().getName() + "): " + e, new Object[0]);
                    }
                }
            }
            rv0.m7156if(f33417do, "Could not find suitable trust manager", new Object[0]);
            return null;
        } catch (RuntimeException e2) {
            rv0.m7156if(f33417do, "TrustManagerFactory.getTrustManagers() unexpectedly threw: %s", e2);
            throw new KeyStoreException(e2);
        }
    }
}
