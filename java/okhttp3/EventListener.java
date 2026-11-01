package okhttp3;

import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.tp0;
import android.support.v4.z41;
import androidx.core.app.NotificationCompat;
import fi.iki.elonen.Cdo;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\b&\u0018\u0000 @2\u00020\u0001:\u0002@AB\u0007¢\u0006\u0004\b>\u0010?J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J+\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0011\u0010\f\u001a\r\u0012\t\u0012\u00070\n¢\u0006\u0002\b\u000b0\tH\u0016J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J+\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0011\u0010\u0012\u001a\r\u0012\t\u0012\u00070\u0011¢\u0006\u0002\b\u000b0\tH\u0016J \u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J*\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J2\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0018\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016J\u0018\u0010%\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010(\u001a\u00020'H\u0016J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010-\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010.\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u00102\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u00104\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u00105\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u00107\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u00108\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u00109\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010=\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010<\u001a\u000200H\u0016¨\u0006B"}, d2 = {"Lokhttp3/EventListener;", "", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Landroid/support/v4/ub2;", "callStart", "Lokhttp3/HttpUrl;", "url", "proxySelectStart", "", "Ljava/net/Proxy;", "Landroid/support/v4/bq0;", "proxies", "proxySelectEnd", "", "domainName", "dnsStart", "Ljava/net/InetAddress;", "inetAddressList", "dnsEnd", "Ljava/net/InetSocketAddress;", "inetSocketAddress", "proxy", "connectStart", "secureConnectStart", "Lokhttp3/Handshake;", "handshake", "secureConnectEnd", "Lokhttp3/Protocol;", "protocol", "connectEnd", "Ljava/io/IOException;", "ioe", "connectFailed", "Lokhttp3/Connection;", Cdo.HEADER_CONNECTION, "connectionAcquired", "connectionReleased", "requestHeadersStart", "Lokhttp3/Request;", "request", "requestHeadersEnd", "requestBodyStart", "", "byteCount", "requestBodyEnd", "requestFailed", "responseHeadersStart", "Lokhttp3/Response;", "response", "responseHeadersEnd", "responseBodyStart", "responseBodyEnd", "responseFailed", "callEnd", "callFailed", "canceled", "satisfactionFailure", "cacheHit", "cacheMiss", "cachedResponse", "cacheConditionalHit", "<init>", "()V", "Companion", "Factory", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);

    @m41
    @tp0
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lokhttp3/EventListener$Companion;", "", "Lokhttp3/EventListener;", "NONE", "Lokhttp3/EventListener;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0006"}, d2 = {"Lokhttp3/EventListener$Factory;", "", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "create", "okhttp"}, k = 1, mv = {1, 4, 0})
    public interface Factory {
        @m41
        EventListener create(@m41 Call call);
    }

    public void cacheConditionalHit(@m41 Call call, @m41 Response cachedResponse) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(cachedResponse, "cachedResponse");
    }

    public void cacheHit(@m41 Call call, @m41 Response response) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(response, "response");
    }

    public void cacheMiss(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void callEnd(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void callFailed(@m41 Call call, @m41 IOException ioe) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(ioe, "ioe");
    }

    public void callStart(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void canceled(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void connectEnd(@m41 Call call, @m41 InetSocketAddress inetSocketAddress, @m41 Proxy proxy, @z41 Protocol protocol) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(inetSocketAddress, "inetSocketAddress");
        Csuper.m30700throw(proxy, "proxy");
    }

    public void connectFailed(@m41 Call call, @m41 InetSocketAddress inetSocketAddress, @m41 Proxy proxy, @z41 Protocol protocol, @m41 IOException ioe) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(inetSocketAddress, "inetSocketAddress");
        Csuper.m30700throw(proxy, "proxy");
        Csuper.m30700throw(ioe, "ioe");
    }

    public void connectStart(@m41 Call call, @m41 InetSocketAddress inetSocketAddress, @m41 Proxy proxy) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(inetSocketAddress, "inetSocketAddress");
        Csuper.m30700throw(proxy, "proxy");
    }

    public void connectionAcquired(@m41 Call call, @m41 Connection connection) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(connection, "connection");
    }

    public void connectionReleased(@m41 Call call, @m41 Connection connection) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(connection, "connection");
    }

    public void dnsEnd(@m41 Call call, @m41 String domainName, @m41 List<InetAddress> inetAddressList) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(domainName, "domainName");
        Csuper.m30700throw(inetAddressList, "inetAddressList");
    }

    public void dnsStart(@m41 Call call, @m41 String domainName) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(domainName, "domainName");
    }

    public void proxySelectEnd(@m41 Call call, @m41 HttpUrl url, @m41 List<Proxy> proxies) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(url, "url");
        Csuper.m30700throw(proxies, "proxies");
    }

    public void proxySelectStart(@m41 Call call, @m41 HttpUrl url) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(url, "url");
    }

    public void requestBodyEnd(@m41 Call call, long j) {
        Csuper.m30700throw(call, "call");
    }

    public void requestBodyStart(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void requestFailed(@m41 Call call, @m41 IOException ioe) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(ioe, "ioe");
    }

    public void requestHeadersEnd(@m41 Call call, @m41 Request request) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(request, "request");
    }

    public void requestHeadersStart(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void responseBodyEnd(@m41 Call call, long j) {
        Csuper.m30700throw(call, "call");
    }

    public void responseBodyStart(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void responseFailed(@m41 Call call, @m41 IOException ioe) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(ioe, "ioe");
    }

    public void responseHeadersEnd(@m41 Call call, @m41 Response response) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(response, "response");
    }

    public void responseHeadersStart(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }

    public void satisfactionFailure(@m41 Call call, @m41 Response response) {
        Csuper.m30700throw(call, "call");
        Csuper.m30700throw(response, "response");
    }

    public void secureConnectEnd(@m41 Call call, @z41 Handshake handshake) {
        Csuper.m30700throw(call, "call");
    }

    public void secureConnectStart(@m41 Call call) {
        Csuper.m30700throw(call, "call");
    }
}
