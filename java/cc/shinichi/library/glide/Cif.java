package cc.shinichi.library.glide;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* renamed from: cc.shinichi.library.glide.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif {

    /* renamed from: cc.shinichi.library.glide.if$do, reason: invalid class name */
    public class Cdo implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* renamed from: cc.shinichi.library.glide.if$if, reason: invalid class name and collision with other inner class name */
    public class C0007if implements HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static HostnameVerifier m10425do() {
        return new C0007if();
    }

    /* renamed from: for, reason: not valid java name */
    private static TrustManager[] m10426for() {
        return new TrustManager[]{new Cdo()};
    }

    /* renamed from: if, reason: not valid java name */
    public static SSLSocketFactory m10427if() throws NoSuchAlgorithmException, KeyManagementException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, m10426for(), new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
