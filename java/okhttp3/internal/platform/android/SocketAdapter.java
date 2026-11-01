package okhttp3.internal.platform.android;

import android.support.v4.m41;
import android.support.v4.z41;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.Protocol;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J(\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\bH&¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/platform/android/SocketAdapter;", "", "", "isSupported", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/X509TrustManager;", "trustManager", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "matchesSocket", "matchesSocketFactory", "", "hostname", "", "Lokhttp3/Protocol;", "protocols", "Landroid/support/v4/ub2;", "configureTlsExtensions", "getSelectedProtocol", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface SocketAdapter {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
    public static final class DefaultImpls {
        public static boolean matchesSocketFactory(@m41 SocketAdapter socketAdapter, @m41 SSLSocketFactory sslSocketFactory) {
            Csuper.m30700throw(sslSocketFactory, "sslSocketFactory");
            return false;
        }

        @z41
        public static X509TrustManager trustManager(@m41 SocketAdapter socketAdapter, @m41 SSLSocketFactory sslSocketFactory) {
            Csuper.m30700throw(sslSocketFactory, "sslSocketFactory");
            return null;
        }
    }

    void configureTlsExtensions(@m41 SSLSocket sSLSocket, @z41 String str, @m41 List<? extends Protocol> list);

    @z41
    String getSelectedProtocol(@m41 SSLSocket sSLSocket);

    boolean isSupported();

    boolean matchesSocket(@m41 SSLSocket sSLSocket);

    boolean matchesSocketFactory(@m41 SSLSocketFactory sSLSocketFactory);

    @z41
    X509TrustManager trustManager(@m41 SSLSocketFactory sSLSocketFactory);
}
