package okhttp3;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.z41;
import com.umeng.analytics.pro.ak;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Creturn;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.WebSocket;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.mozilla.javascript.optimizer.OptRuntime;
import org.mozilla.javascript.v8dtoa.FastDtoa;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 \u008d\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u008e\u0001\u008d\u0001B\u0014\b\u0000\u0012\u0007\u0010\u0089\u0001\u001a\u00020\u000e¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001B\u000b\b\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008c\u0001J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u000f\u0010\u0013\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0007¢\u0006\u0004\b\u001d\u0010\u001bJ\u000f\u0010\"\u001a\u00020\u001fH\u0007¢\u0006\u0004\b \u0010!J\u000f\u0010&\u001a\u00020#H\u0007¢\u0006\u0004\b$\u0010%J\u000f\u0010*\u001a\u00020'H\u0007¢\u0006\u0004\b(\u0010)J\u000f\u0010,\u001a\u00020#H\u0007¢\u0006\u0004\b+\u0010%J\u000f\u0010.\u001a\u00020#H\u0007¢\u0006\u0004\b-\u0010%J\u000f\u00102\u001a\u00020/H\u0007¢\u0006\u0004\b0\u00101J\u0011\u00106\u001a\u0004\u0018\u000103H\u0007¢\u0006\u0004\b4\u00105J\u000f\u0010:\u001a\u000207H\u0007¢\u0006\u0004\b8\u00109J\u0011\u0010>\u001a\u0004\u0018\u00010;H\u0007¢\u0006\u0004\b<\u0010=J\u000f\u0010B\u001a\u00020?H\u0007¢\u0006\u0004\b@\u0010AJ\u000f\u0010D\u001a\u00020'H\u0007¢\u0006\u0004\bC\u0010)J\u000f\u0010H\u001a\u00020EH\u0007¢\u0006\u0004\bF\u0010GJ\u000f\u0010L\u001a\u00020IH\u0007¢\u0006\u0004\bJ\u0010KJ\u0015\u0010O\u001a\b\u0012\u0004\u0012\u00020M0\u0018H\u0007¢\u0006\u0004\bN\u0010\u001bJ\u0015\u0010R\u001a\b\u0012\u0004\u0012\u00020P0\u0018H\u0007¢\u0006\u0004\bQ\u0010\u001bJ\u000f\u0010V\u001a\u00020SH\u0007¢\u0006\u0004\bT\u0010UJ\u000f\u0010Z\u001a\u00020WH\u0007¢\u0006\u0004\bX\u0010YJ\u000f\u0010^\u001a\u00020[H\u0007¢\u0006\u0004\b\\\u0010]J\u000f\u0010`\u001a\u00020[H\u0007¢\u0006\u0004\b_\u0010]J\u000f\u0010b\u001a\u00020[H\u0007¢\u0006\u0004\ba\u0010]J\u000f\u0010d\u001a\u00020[H\u0007¢\u0006\u0004\bc\u0010]J\u000f\u0010f\u001a\u00020[H\u0007¢\u0006\u0004\be\u0010]R\u0019\u0010\u0013\u001a\u00020\u00108G@\u0006¢\u0006\f\n\u0004\b\u0013\u0010g\u001a\u0004\b\u0013\u0010\u0012R\u0019\u0010\u0017\u001a\u00020\u00148G@\u0006¢\u0006\f\n\u0004\b\u0017\u0010h\u001a\u0004\b\u0017\u0010\u0016R\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188G@\u0006¢\u0006\f\n\u0004\b\u001c\u0010i\u001a\u0004\b\u001c\u0010\u001bR\u001f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188G@\u0006¢\u0006\f\n\u0004\b\u001e\u0010i\u001a\u0004\b\u001e\u0010\u001bR\u0019\u0010\"\u001a\u00020\u001f8G@\u0006¢\u0006\f\n\u0004\b\"\u0010j\u001a\u0004\b\"\u0010!R\u0019\u0010&\u001a\u00020#8G@\u0006¢\u0006\f\n\u0004\b&\u0010k\u001a\u0004\b&\u0010%R\u0019\u0010*\u001a\u00020'8G@\u0006¢\u0006\f\n\u0004\b*\u0010l\u001a\u0004\b*\u0010)R\u0019\u0010,\u001a\u00020#8G@\u0006¢\u0006\f\n\u0004\b,\u0010k\u001a\u0004\b,\u0010%R\u0019\u0010.\u001a\u00020#8G@\u0006¢\u0006\f\n\u0004\b.\u0010k\u001a\u0004\b.\u0010%R\u0019\u00102\u001a\u00020/8G@\u0006¢\u0006\f\n\u0004\b2\u0010m\u001a\u0004\b2\u00101R\u001b\u00106\u001a\u0004\u0018\u0001038G@\u0006¢\u0006\f\n\u0004\b6\u0010n\u001a\u0004\b6\u00105R\u0019\u0010:\u001a\u0002078G@\u0006¢\u0006\f\n\u0004\b:\u0010o\u001a\u0004\b:\u00109R\u001b\u0010>\u001a\u0004\u0018\u00010;8G@\u0006¢\u0006\f\n\u0004\b>\u0010p\u001a\u0004\b>\u0010=R\u0019\u0010B\u001a\u00020?8G@\u0006¢\u0006\f\n\u0004\bB\u0010q\u001a\u0004\bB\u0010AR\u0019\u0010D\u001a\u00020'8G@\u0006¢\u0006\f\n\u0004\bD\u0010l\u001a\u0004\bD\u0010)R\u0019\u0010H\u001a\u00020E8G@\u0006¢\u0006\f\n\u0004\bH\u0010r\u001a\u0004\bH\u0010GR\u0018\u0010s\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u001b\u0010v\u001a\u0004\u0018\u00010u8G@\u0006¢\u0006\f\n\u0004\bv\u0010w\u001a\u0004\bv\u0010xR\u001f\u0010O\u001a\b\u0012\u0004\u0012\u00020M0\u00188G@\u0006¢\u0006\f\n\u0004\bO\u0010i\u001a\u0004\bO\u0010\u001bR\u001f\u0010R\u001a\b\u0012\u0004\u0012\u00020P0\u00188G@\u0006¢\u0006\f\n\u0004\bR\u0010i\u001a\u0004\bR\u0010\u001bR\u0019\u0010V\u001a\u00020S8G@\u0006¢\u0006\f\n\u0004\bV\u0010y\u001a\u0004\bV\u0010UR\u0019\u0010Z\u001a\u00020W8G@\u0006¢\u0006\f\n\u0004\bZ\u0010z\u001a\u0004\bZ\u0010YR\u001b\u0010|\u001a\u0004\u0018\u00010{8G@\u0006¢\u0006\f\n\u0004\b|\u0010}\u001a\u0004\b|\u0010~R\u0019\u0010^\u001a\u00020[8G@\u0006¢\u0006\f\n\u0004\b^\u0010\u007f\u001a\u0004\b^\u0010]R\u0019\u0010`\u001a\u00020[8G@\u0006¢\u0006\f\n\u0004\b`\u0010\u007f\u001a\u0004\b`\u0010]R\u0019\u0010b\u001a\u00020[8G@\u0006¢\u0006\f\n\u0004\bb\u0010\u007f\u001a\u0004\bb\u0010]R\u0019\u0010d\u001a\u00020[8G@\u0006¢\u0006\f\n\u0004\bd\u0010\u007f\u001a\u0004\bd\u0010]R\u0019\u0010f\u001a\u00020[8G@\u0006¢\u0006\f\n\u0004\bf\u0010\u007f\u001a\u0004\bf\u0010]R\u001f\u0010\u0081\u0001\u001a\u00030\u0080\u00018G@\u0006¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0006\b\u0081\u0001\u0010\u0083\u0001R\u001f\u0010\u0085\u0001\u001a\u00030\u0084\u00018\u0006@\u0006¢\u0006\u0010\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0013\u0010L\u001a\u00020I8G@\u0006¢\u0006\u0006\u001a\u0004\bL\u0010K¨\u0006\u008f\u0001"}, d2 = {"Lokhttp3/OkHttpClient;", "", "Lokhttp3/Call$Factory;", "Lokhttp3/WebSocket$Factory;", "Landroid/support/v4/ub2;", "verifyClientState", "Lokhttp3/Request;", "request", "Lokhttp3/Call;", "newCall", "Lokhttp3/WebSocketListener;", "listener", "Lokhttp3/WebSocket;", "newWebSocket", "Lokhttp3/OkHttpClient$Builder;", "newBuilder", "Lokhttp3/Dispatcher;", "-deprecated_dispatcher", "()Lokhttp3/Dispatcher;", "dispatcher", "Lokhttp3/ConnectionPool;", "-deprecated_connectionPool", "()Lokhttp3/ConnectionPool;", "connectionPool", "", "Lokhttp3/Interceptor;", "-deprecated_interceptors", "()Ljava/util/List;", "interceptors", "-deprecated_networkInterceptors", "networkInterceptors", "Lokhttp3/EventListener$Factory;", "-deprecated_eventListenerFactory", "()Lokhttp3/EventListener$Factory;", "eventListenerFactory", "", "-deprecated_retryOnConnectionFailure", "()Z", "retryOnConnectionFailure", "Lokhttp3/Authenticator;", "-deprecated_authenticator", "()Lokhttp3/Authenticator;", "authenticator", "-deprecated_followRedirects", "followRedirects", "-deprecated_followSslRedirects", "followSslRedirects", "Lokhttp3/CookieJar;", "-deprecated_cookieJar", "()Lokhttp3/CookieJar;", "cookieJar", "Lokhttp3/Cache;", "-deprecated_cache", "()Lokhttp3/Cache;", "cache", "Lokhttp3/Dns;", "-deprecated_dns", "()Lokhttp3/Dns;", "dns", "Ljava/net/Proxy;", "-deprecated_proxy", "()Ljava/net/Proxy;", "proxy", "Ljava/net/ProxySelector;", "-deprecated_proxySelector", "()Ljava/net/ProxySelector;", "proxySelector", "-deprecated_proxyAuthenticator", "proxyAuthenticator", "Ljavax/net/SocketFactory;", "-deprecated_socketFactory", "()Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "-deprecated_sslSocketFactory", "()Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Lokhttp3/ConnectionSpec;", "-deprecated_connectionSpecs", "connectionSpecs", "Lokhttp3/Protocol;", "-deprecated_protocols", "protocols", "Ljavax/net/ssl/HostnameVerifier;", "-deprecated_hostnameVerifier", "()Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/CertificatePinner;", "-deprecated_certificatePinner", "()Lokhttp3/CertificatePinner;", "certificatePinner", "", "-deprecated_callTimeoutMillis", "()I", "callTimeoutMillis", "-deprecated_connectTimeoutMillis", "connectTimeoutMillis", "-deprecated_readTimeoutMillis", "readTimeoutMillis", "-deprecated_writeTimeoutMillis", "writeTimeoutMillis", "-deprecated_pingIntervalMillis", "pingIntervalMillis", "Lokhttp3/Dispatcher;", "Lokhttp3/ConnectionPool;", "Ljava/util/List;", "Lokhttp3/EventListener$Factory;", "Z", "Lokhttp3/Authenticator;", "Lokhttp3/CookieJar;", "Lokhttp3/Cache;", "Lokhttp3/Dns;", "Ljava/net/Proxy;", "Ljava/net/ProxySelector;", "Ljavax/net/SocketFactory;", "sslSocketFactoryOrNull", "Ljavax/net/ssl/SSLSocketFactory;", "Ljavax/net/ssl/X509TrustManager;", "x509TrustManager", "Ljavax/net/ssl/X509TrustManager;", "()Ljavax/net/ssl/X509TrustManager;", "Ljavax/net/ssl/HostnameVerifier;", "Lokhttp3/CertificatePinner;", "Lokhttp3/internal/tls/CertificateChainCleaner;", "certificateChainCleaner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "()Lokhttp3/internal/tls/CertificateChainCleaner;", OptRuntime.GeneratorState.resumptionPoint_TYPE, "", "minWebSocketMessageToCompress", "J", "()J", "Lokhttp3/internal/connection/RouteDatabase;", "routeDatabase", "Lokhttp3/internal/connection/RouteDatabase;", "getRouteDatabase", "()Lokhttp3/internal/connection/RouteDatabase;", "builder", "<init>", "(Lokhttp3/OkHttpClient$Builder;)V", "()V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public class OkHttpClient implements Cloneable, Call.Factory, WebSocket.Factory {

    @m41
    private final Authenticator authenticator;

    @z41
    private final Cache cache;
    private final int callTimeoutMillis;

    @z41
    private final CertificateChainCleaner certificateChainCleaner;

    @m41
    private final CertificatePinner certificatePinner;
    private final int connectTimeoutMillis;

    @m41
    private final ConnectionPool connectionPool;

    @m41
    private final List<ConnectionSpec> connectionSpecs;

    @m41
    private final CookieJar cookieJar;

    @m41
    private final Dispatcher dispatcher;

    @m41
    private final Dns dns;

    @m41
    private final EventListener.Factory eventListenerFactory;
    private final boolean followRedirects;
    private final boolean followSslRedirects;

    @m41
    private final HostnameVerifier hostnameVerifier;

    @m41
    private final List<Interceptor> interceptors;
    private final long minWebSocketMessageToCompress;

    @m41
    private final List<Interceptor> networkInterceptors;
    private final int pingIntervalMillis;

    @m41
    private final List<Protocol> protocols;

    @z41
    private final Proxy proxy;

    @m41
    private final Authenticator proxyAuthenticator;

    @m41
    private final ProxySelector proxySelector;
    private final int readTimeoutMillis;
    private final boolean retryOnConnectionFailure;

    @m41
    private final RouteDatabase routeDatabase;

    @m41
    private final SocketFactory socketFactory;
    private final SSLSocketFactory sslSocketFactoryOrNull;
    private final int writeTimeoutMillis;

    @z41
    private final X509TrustManager x509TrustManager;
    public static final Companion Companion = new Companion(null);

    @m41
    private static final List<Protocol> DEFAULT_PROTOCOLS = Util.immutableListOf(Protocol.HTTP_2, Protocol.HTTP_1_1);

    @m41
    private static final List<ConnectionSpec> DEFAULT_CONNECTION_SPECS = Util.immutableListOf(ConnectionSpec.MODERN_TLS, ConnectionSpec.CLEARTEXT);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b]\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001B\u0014\b\u0010\u0012\u0007\u0010Ë\u0001\u001a\u00020J¢\u0006\u0006\bÉ\u0001\u0010Ì\u0001J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J8\u0010\n\u001a\u00020\u00002#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J8\u0010\u0015\u001a\u00020\u00002#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000bH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0013J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001bJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001bJ\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\"J\u0010\u0010%\u001a\u00020\u00002\b\u0010%\u001a\u0004\u0018\u00010$J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020&J\u0010\u0010)\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010(J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020*J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u001dJ\u000e\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020-J\u0010\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020/H\u0007J\u0016\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u000201J\u0014\u00105\u001a\u00020\u00002\f\u00105\u001a\b\u0012\u0004\u0012\u00020403J\u0014\u00107\u001a\u00020\u00002\f\u00107\u001a\b\u0012\u0004\u0012\u00020603J\u000e\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u000208J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u00020:J\u0016\u0010@\u001a\u00020\u00002\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010B\u001a\u00020AH\u0007J\u0016\u0010C\u001a\u00020\u00002\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>J\u0010\u0010C\u001a\u00020\u00002\u0006\u0010B\u001a\u00020AH\u0007J\u0016\u0010D\u001a\u00020\u00002\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>J\u0010\u0010D\u001a\u00020\u00002\u0006\u0010B\u001a\u00020AH\u0007J\u0016\u0010E\u001a\u00020\u00002\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>J\u0010\u0010E\u001a\u00020\u00002\u0006\u0010B\u001a\u00020AH\u0007J\u0016\u0010G\u001a\u00020\u00002\u0006\u0010F\u001a\u00020<2\u0006\u0010?\u001a\u00020>J\u0010\u0010G\u001a\u00020\u00002\u0006\u0010B\u001a\u00020AH\u0007J\u000e\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020<J\u0006\u0010K\u001a\u00020JR\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010V\u001a\u0004\bW\u0010XR\"\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010V\u001a\u0004\bY\u0010XR\"\u0010\u001a\u001a\u00020\u00198\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\"\u0010\u001c\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\"\u0010\u001e\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\"\u0010\u001f\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010_\u001a\u0004\bi\u0010a\"\u0004\bj\u0010cR\"\u0010!\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010_\u001a\u0004\bk\u0010a\"\u0004\bl\u0010cR\"\u0010#\u001a\u00020\"8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b#\u0010m\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR$\u0010%\u001a\u0004\u0018\u00010$8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010r\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\"\u0010'\u001a\u00020&8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b'\u0010w\u001a\u0004\bx\u0010y\"\u0004\bz\u0010{R%\u0010)\u001a\u0004\u0018\u00010(8\u0000@\u0000X\u0080\u000e¢\u0006\u0013\n\u0004\b)\u0010|\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R)\u0010+\u001a\u0004\u0018\u00010*8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b+\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R$\u0010,\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0014\n\u0004\b,\u0010d\u001a\u0005\b\u0086\u0001\u0010f\"\u0005\b\u0087\u0001\u0010hR'\u0010.\u001a\u00020-8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b.\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001R+\u0010\u008d\u0001\u001a\u0004\u0018\u00010/8\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u008d\u0001\u0010\u008e\u0001\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R+\u0010\u0093\u0001\u001a\u0004\u0018\u0001018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001\"\u0006\b\u0097\u0001\u0010\u0098\u0001R+\u00105\u001a\b\u0012\u0004\u0012\u000204038\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0004\b5\u0010V\u001a\u0005\b\u0099\u0001\u0010X\"\u0006\b\u009a\u0001\u0010\u009b\u0001R+\u00107\u001a\b\u0012\u0004\u0012\u000206038\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0004\b7\u0010V\u001a\u0005\b\u009c\u0001\u0010X\"\u0006\b\u009d\u0001\u0010\u009b\u0001R'\u00109\u001a\u0002088\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b9\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001\"\u0006\b¡\u0001\u0010¢\u0001R'\u0010;\u001a\u00020:8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b;\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001\"\u0006\b¦\u0001\u0010§\u0001R,\u0010©\u0001\u001a\u0005\u0018\u00010¨\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b©\u0001\u0010ª\u0001\u001a\u0006\b«\u0001\u0010¬\u0001\"\u0006\b\u00ad\u0001\u0010®\u0001R(\u0010@\u001a\u00030¯\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\b@\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010´\u0001R(\u0010C\u001a\u00030¯\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bC\u0010°\u0001\u001a\u0006\bµ\u0001\u0010²\u0001\"\u0006\b¶\u0001\u0010´\u0001R(\u0010D\u001a\u00030¯\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bD\u0010°\u0001\u001a\u0006\b·\u0001\u0010²\u0001\"\u0006\b¸\u0001\u0010´\u0001R(\u0010E\u001a\u00030¯\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bE\u0010°\u0001\u001a\u0006\b¹\u0001\u0010²\u0001\"\u0006\bº\u0001\u0010´\u0001R(\u0010G\u001a\u00030¯\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bG\u0010°\u0001\u001a\u0006\b»\u0001\u0010²\u0001\"\u0006\b¼\u0001\u0010´\u0001R'\u0010I\u001a\u00020<8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bI\u0010½\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001\"\u0006\bÀ\u0001\u0010Á\u0001R,\u0010Ã\u0001\u001a\u0005\u0018\u00010Â\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\bÃ\u0001\u0010Ä\u0001\u001a\u0006\bÅ\u0001\u0010Æ\u0001\"\u0006\bÇ\u0001\u0010È\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006Í\u0001"}, d2 = {"Lokhttp3/OkHttpClient$Builder;", "", "Lokhttp3/Dispatcher;", "dispatcher", "Lokhttp3/ConnectionPool;", "connectionPool", "", "Lokhttp3/Interceptor;", "interceptors", "interceptor", "addInterceptor", "Lkotlin/Function1;", "Lokhttp3/Interceptor$Chain;", "Landroid/support/v4/xb1;", "name", "chain", "Lokhttp3/Response;", "block", "-addInterceptor", "(Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient$Builder;", "networkInterceptors", "addNetworkInterceptor", "-addNetworkInterceptor", "Lokhttp3/EventListener;", "eventListener", "Lokhttp3/EventListener$Factory;", "eventListenerFactory", "", "retryOnConnectionFailure", "Lokhttp3/Authenticator;", "authenticator", "followRedirects", "followProtocolRedirects", "followSslRedirects", "Lokhttp3/CookieJar;", "cookieJar", "Lokhttp3/Cache;", "cache", "Lokhttp3/Dns;", "dns", "Ljava/net/Proxy;", "proxy", "Ljava/net/ProxySelector;", "proxySelector", "proxyAuthenticator", "Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/X509TrustManager;", "trustManager", "", "Lokhttp3/ConnectionSpec;", "connectionSpecs", "Lokhttp3/Protocol;", "protocols", "Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/CertificatePinner;", "certificatePinner", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "callTimeout", "Ljava/time/Duration;", "duration", "connectTimeout", "readTimeout", "writeTimeout", ak.aT, "pingInterval", "bytes", "minWebSocketMessageToCompress", "Lokhttp3/OkHttpClient;", "build", "Lokhttp3/Dispatcher;", "getDispatcher$okhttp", "()Lokhttp3/Dispatcher;", "setDispatcher$okhttp", "(Lokhttp3/Dispatcher;)V", "Lokhttp3/ConnectionPool;", "getConnectionPool$okhttp", "()Lokhttp3/ConnectionPool;", "setConnectionPool$okhttp", "(Lokhttp3/ConnectionPool;)V", "Ljava/util/List;", "getInterceptors$okhttp", "()Ljava/util/List;", "getNetworkInterceptors$okhttp", "Lokhttp3/EventListener$Factory;", "getEventListenerFactory$okhttp", "()Lokhttp3/EventListener$Factory;", "setEventListenerFactory$okhttp", "(Lokhttp3/EventListener$Factory;)V", "Z", "getRetryOnConnectionFailure$okhttp", "()Z", "setRetryOnConnectionFailure$okhttp", "(Z)V", "Lokhttp3/Authenticator;", "getAuthenticator$okhttp", "()Lokhttp3/Authenticator;", "setAuthenticator$okhttp", "(Lokhttp3/Authenticator;)V", "getFollowRedirects$okhttp", "setFollowRedirects$okhttp", "getFollowSslRedirects$okhttp", "setFollowSslRedirects$okhttp", "Lokhttp3/CookieJar;", "getCookieJar$okhttp", "()Lokhttp3/CookieJar;", "setCookieJar$okhttp", "(Lokhttp3/CookieJar;)V", "Lokhttp3/Cache;", "getCache$okhttp", "()Lokhttp3/Cache;", "setCache$okhttp", "(Lokhttp3/Cache;)V", "Lokhttp3/Dns;", "getDns$okhttp", "()Lokhttp3/Dns;", "setDns$okhttp", "(Lokhttp3/Dns;)V", "Ljava/net/Proxy;", "getProxy$okhttp", "()Ljava/net/Proxy;", "setProxy$okhttp", "(Ljava/net/Proxy;)V", "Ljava/net/ProxySelector;", "getProxySelector$okhttp", "()Ljava/net/ProxySelector;", "setProxySelector$okhttp", "(Ljava/net/ProxySelector;)V", "getProxyAuthenticator$okhttp", "setProxyAuthenticator$okhttp", "Ljavax/net/SocketFactory;", "getSocketFactory$okhttp", "()Ljavax/net/SocketFactory;", "setSocketFactory$okhttp", "(Ljavax/net/SocketFactory;)V", "sslSocketFactoryOrNull", "Ljavax/net/ssl/SSLSocketFactory;", "getSslSocketFactoryOrNull$okhttp", "()Ljavax/net/ssl/SSLSocketFactory;", "setSslSocketFactoryOrNull$okhttp", "(Ljavax/net/ssl/SSLSocketFactory;)V", "x509TrustManagerOrNull", "Ljavax/net/ssl/X509TrustManager;", "getX509TrustManagerOrNull$okhttp", "()Ljavax/net/ssl/X509TrustManager;", "setX509TrustManagerOrNull$okhttp", "(Ljavax/net/ssl/X509TrustManager;)V", "getConnectionSpecs$okhttp", "setConnectionSpecs$okhttp", "(Ljava/util/List;)V", "getProtocols$okhttp", "setProtocols$okhttp", "Ljavax/net/ssl/HostnameVerifier;", "getHostnameVerifier$okhttp", "()Ljavax/net/ssl/HostnameVerifier;", "setHostnameVerifier$okhttp", "(Ljavax/net/ssl/HostnameVerifier;)V", "Lokhttp3/CertificatePinner;", "getCertificatePinner$okhttp", "()Lokhttp3/CertificatePinner;", "setCertificatePinner$okhttp", "(Lokhttp3/CertificatePinner;)V", "Lokhttp3/internal/tls/CertificateChainCleaner;", "certificateChainCleaner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "getCertificateChainCleaner$okhttp", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "setCertificateChainCleaner$okhttp", "(Lokhttp3/internal/tls/CertificateChainCleaner;)V", "", OptRuntime.GeneratorState.resumptionPoint_TYPE, "getCallTimeout$okhttp", "()I", "setCallTimeout$okhttp", "(I)V", "getConnectTimeout$okhttp", "setConnectTimeout$okhttp", "getReadTimeout$okhttp", "setReadTimeout$okhttp", "getWriteTimeout$okhttp", "setWriteTimeout$okhttp", "getPingInterval$okhttp", "setPingInterval$okhttp", "J", "getMinWebSocketMessageToCompress$okhttp", "()J", "setMinWebSocketMessageToCompress$okhttp", "(J)V", "Lokhttp3/internal/connection/RouteDatabase;", "routeDatabase", "Lokhttp3/internal/connection/RouteDatabase;", "getRouteDatabase$okhttp", "()Lokhttp3/internal/connection/RouteDatabase;", "setRouteDatabase$okhttp", "(Lokhttp3/internal/connection/RouteDatabase;)V", "<init>", "()V", "okHttpClient", "(Lokhttp3/OkHttpClient;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Builder {

        @m41
        private Authenticator authenticator;

        @z41
        private Cache cache;
        private int callTimeout;

        @z41
        private CertificateChainCleaner certificateChainCleaner;

        @m41
        private CertificatePinner certificatePinner;
        private int connectTimeout;

        @m41
        private ConnectionPool connectionPool;

        @m41
        private List<ConnectionSpec> connectionSpecs;

        @m41
        private CookieJar cookieJar;

        @m41
        private Dispatcher dispatcher;

        @m41
        private Dns dns;

        @m41
        private EventListener.Factory eventListenerFactory;
        private boolean followRedirects;
        private boolean followSslRedirects;

        @m41
        private HostnameVerifier hostnameVerifier;

        @m41
        private final List<Interceptor> interceptors;
        private long minWebSocketMessageToCompress;

        @m41
        private final List<Interceptor> networkInterceptors;
        private int pingInterval;

        @m41
        private List<? extends Protocol> protocols;

        @z41
        private Proxy proxy;

        @m41
        private Authenticator proxyAuthenticator;

        @z41
        private ProxySelector proxySelector;
        private int readTimeout;
        private boolean retryOnConnectionFailure;

        @z41
        private RouteDatabase routeDatabase;

        @m41
        private SocketFactory socketFactory;

        @z41
        private SSLSocketFactory sslSocketFactoryOrNull;
        private int writeTimeout;

        @z41
        private X509TrustManager x509TrustManagerOrNull;

        public Builder() {
            this.dispatcher = new Dispatcher();
            this.connectionPool = new ConnectionPool();
            this.interceptors = new ArrayList();
            this.networkInterceptors = new ArrayList();
            this.eventListenerFactory = Util.asFactory(EventListener.NONE);
            this.retryOnConnectionFailure = true;
            Authenticator authenticator = Authenticator.NONE;
            this.authenticator = authenticator;
            this.followRedirects = true;
            this.followSslRedirects = true;
            this.cookieJar = CookieJar.NO_COOKIES;
            this.dns = Dns.SYSTEM;
            this.proxyAuthenticator = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            Csuper.m30696super(socketFactory, "SocketFactory.getDefault()");
            this.socketFactory = socketFactory;
            Companion companion = OkHttpClient.Companion;
            this.connectionSpecs = companion.getDEFAULT_CONNECTION_SPECS$okhttp();
            this.protocols = companion.getDEFAULT_PROTOCOLS$okhttp();
            this.hostnameVerifier = OkHostnameVerifier.INSTANCE;
            this.certificatePinner = CertificatePinner.DEFAULT;
            this.connectTimeout = FastDtoa.kTen4;
            this.readTimeout = FastDtoa.kTen4;
            this.writeTimeout = FastDtoa.kTen4;
            this.minWebSocketMessageToCompress = 1024L;
        }

        @m41
        @wp0(name = "-addInterceptor")
        public final Builder a(@m41 final Function1<? super Interceptor.Chain, Response> block) {
            Csuper.m30700throw(block, "block");
            return addInterceptor(new Interceptor() { // from class: okhttp3.OkHttpClient$Builder$addInterceptor$2
                @Override // okhttp3.Interceptor
                @m41
                public final Response intercept(@m41 Interceptor.Chain chain) {
                    Csuper.m30700throw(chain, "chain");
                    return (Response) block.invoke(chain);
                }
            });
        }

        @m41
        public final Builder addInterceptor(@m41 Interceptor interceptor) {
            Csuper.m30700throw(interceptor, "interceptor");
            this.interceptors.add(interceptor);
            return this;
        }

        @m41
        public final Builder addNetworkInterceptor(@m41 Interceptor interceptor) {
            Csuper.m30700throw(interceptor, "interceptor");
            this.networkInterceptors.add(interceptor);
            return this;
        }

        @m41
        public final Builder authenticator(@m41 Authenticator authenticator) {
            Csuper.m30700throw(authenticator, "authenticator");
            this.authenticator = authenticator;
            return this;
        }

        @m41
        @wp0(name = "-addNetworkInterceptor")
        public final Builder b(@m41 final Function1<? super Interceptor.Chain, Response> block) {
            Csuper.m30700throw(block, "block");
            return addNetworkInterceptor(new Interceptor() { // from class: okhttp3.OkHttpClient$Builder$addNetworkInterceptor$2
                @Override // okhttp3.Interceptor
                @m41
                public final Response intercept(@m41 Interceptor.Chain chain) {
                    Csuper.m30700throw(chain, "chain");
                    return (Response) block.invoke(chain);
                }
            });
        }

        @m41
        public final OkHttpClient build() {
            return new OkHttpClient(this);
        }

        @m41
        public final Builder cache(@z41 Cache cache) {
            this.cache = cache;
            return this;
        }

        @m41
        public final Builder callTimeout(long j, @m41 TimeUnit unit) {
            Csuper.m30700throw(unit, "unit");
            this.callTimeout = Util.checkDuration("timeout", j, unit);
            return this;
        }

        @m41
        public final Builder certificatePinner(@m41 CertificatePinner certificatePinner) {
            Csuper.m30700throw(certificatePinner, "certificatePinner");
            if (!Csuper.m30676else(certificatePinner, this.certificatePinner)) {
                this.routeDatabase = null;
            }
            this.certificatePinner = certificatePinner;
            return this;
        }

        @m41
        public final Builder connectTimeout(long j, @m41 TimeUnit unit) {
            Csuper.m30700throw(unit, "unit");
            this.connectTimeout = Util.checkDuration("timeout", j, unit);
            return this;
        }

        @m41
        public final Builder connectionPool(@m41 ConnectionPool connectionPool) {
            Csuper.m30700throw(connectionPool, "connectionPool");
            this.connectionPool = connectionPool;
            return this;
        }

        @m41
        public final Builder connectionSpecs(@m41 List<ConnectionSpec> connectionSpecs) {
            Csuper.m30700throw(connectionSpecs, "connectionSpecs");
            if (!Csuper.m30676else(connectionSpecs, this.connectionSpecs)) {
                this.routeDatabase = null;
            }
            this.connectionSpecs = Util.toImmutableList(connectionSpecs);
            return this;
        }

        @m41
        public final Builder cookieJar(@m41 CookieJar cookieJar) {
            Csuper.m30700throw(cookieJar, "cookieJar");
            this.cookieJar = cookieJar;
            return this;
        }

        @m41
        public final Builder dispatcher(@m41 Dispatcher dispatcher) {
            Csuper.m30700throw(dispatcher, "dispatcher");
            this.dispatcher = dispatcher;
            return this;
        }

        @m41
        public final Builder dns(@m41 Dns dns) {
            Csuper.m30700throw(dns, "dns");
            if (!Csuper.m30676else(dns, this.dns)) {
                this.routeDatabase = null;
            }
            this.dns = dns;
            return this;
        }

        @m41
        public final Builder eventListener(@m41 EventListener eventListener) {
            Csuper.m30700throw(eventListener, "eventListener");
            this.eventListenerFactory = Util.asFactory(eventListener);
            return this;
        }

        @m41
        public final Builder eventListenerFactory(@m41 EventListener.Factory eventListenerFactory) {
            Csuper.m30700throw(eventListenerFactory, "eventListenerFactory");
            this.eventListenerFactory = eventListenerFactory;
            return this;
        }

        @m41
        public final Builder followRedirects(boolean z) {
            this.followRedirects = z;
            return this;
        }

        @m41
        public final Builder followSslRedirects(boolean z) {
            this.followSslRedirects = z;
            return this;
        }

        @m41
        public final Authenticator getAuthenticator$okhttp() {
            return this.authenticator;
        }

        @z41
        public final Cache getCache$okhttp() {
            return this.cache;
        }

        public final int getCallTimeout$okhttp() {
            return this.callTimeout;
        }

        @z41
        public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
            return this.certificateChainCleaner;
        }

        @m41
        public final CertificatePinner getCertificatePinner$okhttp() {
            return this.certificatePinner;
        }

        public final int getConnectTimeout$okhttp() {
            return this.connectTimeout;
        }

        @m41
        public final ConnectionPool getConnectionPool$okhttp() {
            return this.connectionPool;
        }

        @m41
        public final List<ConnectionSpec> getConnectionSpecs$okhttp() {
            return this.connectionSpecs;
        }

        @m41
        public final CookieJar getCookieJar$okhttp() {
            return this.cookieJar;
        }

        @m41
        public final Dispatcher getDispatcher$okhttp() {
            return this.dispatcher;
        }

        @m41
        public final Dns getDns$okhttp() {
            return this.dns;
        }

        @m41
        public final EventListener.Factory getEventListenerFactory$okhttp() {
            return this.eventListenerFactory;
        }

        public final boolean getFollowRedirects$okhttp() {
            return this.followRedirects;
        }

        public final boolean getFollowSslRedirects$okhttp() {
            return this.followSslRedirects;
        }

        @m41
        public final HostnameVerifier getHostnameVerifier$okhttp() {
            return this.hostnameVerifier;
        }

        @m41
        public final List<Interceptor> getInterceptors$okhttp() {
            return this.interceptors;
        }

        public final long getMinWebSocketMessageToCompress$okhttp() {
            return this.minWebSocketMessageToCompress;
        }

        @m41
        public final List<Interceptor> getNetworkInterceptors$okhttp() {
            return this.networkInterceptors;
        }

        public final int getPingInterval$okhttp() {
            return this.pingInterval;
        }

        @m41
        public final List<Protocol> getProtocols$okhttp() {
            return this.protocols;
        }

        @z41
        public final Proxy getProxy$okhttp() {
            return this.proxy;
        }

        @m41
        public final Authenticator getProxyAuthenticator$okhttp() {
            return this.proxyAuthenticator;
        }

        @z41
        public final ProxySelector getProxySelector$okhttp() {
            return this.proxySelector;
        }

        public final int getReadTimeout$okhttp() {
            return this.readTimeout;
        }

        public final boolean getRetryOnConnectionFailure$okhttp() {
            return this.retryOnConnectionFailure;
        }

        @z41
        public final RouteDatabase getRouteDatabase$okhttp() {
            return this.routeDatabase;
        }

        @m41
        public final SocketFactory getSocketFactory$okhttp() {
            return this.socketFactory;
        }

        @z41
        public final SSLSocketFactory getSslSocketFactoryOrNull$okhttp() {
            return this.sslSocketFactoryOrNull;
        }

        public final int getWriteTimeout$okhttp() {
            return this.writeTimeout;
        }

        @z41
        public final X509TrustManager getX509TrustManagerOrNull$okhttp() {
            return this.x509TrustManagerOrNull;
        }

        @m41
        public final Builder hostnameVerifier(@m41 HostnameVerifier hostnameVerifier) {
            Csuper.m30700throw(hostnameVerifier, "hostnameVerifier");
            if (!Csuper.m30676else(hostnameVerifier, this.hostnameVerifier)) {
                this.routeDatabase = null;
            }
            this.hostnameVerifier = hostnameVerifier;
            return this;
        }

        @m41
        public final List<Interceptor> interceptors() {
            return this.interceptors;
        }

        @m41
        public final Builder minWebSocketMessageToCompress(long j) {
            if (j >= 0) {
                this.minWebSocketMessageToCompress = j;
                return this;
            }
            throw new IllegalArgumentException(("minWebSocketMessageToCompress must be positive: " + j).toString());
        }

        @m41
        public final List<Interceptor> networkInterceptors() {
            return this.networkInterceptors;
        }

        @m41
        public final Builder pingInterval(long j, @m41 TimeUnit unit) {
            Csuper.m30700throw(unit, "unit");
            this.pingInterval = Util.checkDuration(ak.aT, j, unit);
            return this;
        }

        @m41
        public final Builder protocols(@m41 List<? extends Protocol> protocols) {
            Csuper.m30700throw(protocols, "protocols");
            List listY4 = Cthrows.Y4(protocols);
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (!(listY4.contains(protocol) || listY4.contains(Protocol.HTTP_1_1))) {
                throw new IllegalArgumentException(("protocols must contain h2_prior_knowledge or http/1.1: " + listY4).toString());
            }
            if (!(!listY4.contains(protocol) || listY4.size() <= 1)) {
                throw new IllegalArgumentException(("protocols containing h2_prior_knowledge cannot use other protocols: " + listY4).toString());
            }
            if (!(!listY4.contains(Protocol.HTTP_1_0))) {
                throw new IllegalArgumentException(("protocols must not contain http/1.0: " + listY4).toString());
            }
            if (!(!listY4.contains(null))) {
                throw new IllegalArgumentException("protocols must not contain null".toString());
            }
            listY4.remove(Protocol.SPDY_3);
            if (!Csuper.m30676else(listY4, this.protocols)) {
                this.routeDatabase = null;
            }
            List<? extends Protocol> listUnmodifiableList = Collections.unmodifiableList(listY4);
            Csuper.m30696super(listUnmodifiableList, "Collections.unmodifiableList(protocolsCopy)");
            this.protocols = listUnmodifiableList;
            return this;
        }

        @m41
        public final Builder proxy(@z41 Proxy proxy) {
            if (!Csuper.m30676else(proxy, this.proxy)) {
                this.routeDatabase = null;
            }
            this.proxy = proxy;
            return this;
        }

        @m41
        public final Builder proxyAuthenticator(@m41 Authenticator proxyAuthenticator) {
            Csuper.m30700throw(proxyAuthenticator, "proxyAuthenticator");
            if (!Csuper.m30676else(proxyAuthenticator, this.proxyAuthenticator)) {
                this.routeDatabase = null;
            }
            this.proxyAuthenticator = proxyAuthenticator;
            return this;
        }

        @m41
        public final Builder proxySelector(@m41 ProxySelector proxySelector) {
            Csuper.m30700throw(proxySelector, "proxySelector");
            if (!Csuper.m30676else(proxySelector, this.proxySelector)) {
                this.routeDatabase = null;
            }
            this.proxySelector = proxySelector;
            return this;
        }

        @m41
        public final Builder readTimeout(long j, @m41 TimeUnit unit) {
            Csuper.m30700throw(unit, "unit");
            this.readTimeout = Util.checkDuration("timeout", j, unit);
            return this;
        }

        @m41
        public final Builder retryOnConnectionFailure(boolean z) {
            this.retryOnConnectionFailure = z;
            return this;
        }

        public final void setAuthenticator$okhttp(@m41 Authenticator authenticator) {
            Csuper.m30700throw(authenticator, "<set-?>");
            this.authenticator = authenticator;
        }

        public final void setCache$okhttp(@z41 Cache cache) {
            this.cache = cache;
        }

        public final void setCallTimeout$okhttp(int i) {
            this.callTimeout = i;
        }

        public final void setCertificateChainCleaner$okhttp(@z41 CertificateChainCleaner certificateChainCleaner) {
            this.certificateChainCleaner = certificateChainCleaner;
        }

        public final void setCertificatePinner$okhttp(@m41 CertificatePinner certificatePinner) {
            Csuper.m30700throw(certificatePinner, "<set-?>");
            this.certificatePinner = certificatePinner;
        }

        public final void setConnectTimeout$okhttp(int i) {
            this.connectTimeout = i;
        }

        public final void setConnectionPool$okhttp(@m41 ConnectionPool connectionPool) {
            Csuper.m30700throw(connectionPool, "<set-?>");
            this.connectionPool = connectionPool;
        }

        public final void setConnectionSpecs$okhttp(@m41 List<ConnectionSpec> list) {
            Csuper.m30700throw(list, "<set-?>");
            this.connectionSpecs = list;
        }

        public final void setCookieJar$okhttp(@m41 CookieJar cookieJar) {
            Csuper.m30700throw(cookieJar, "<set-?>");
            this.cookieJar = cookieJar;
        }

        public final void setDispatcher$okhttp(@m41 Dispatcher dispatcher) {
            Csuper.m30700throw(dispatcher, "<set-?>");
            this.dispatcher = dispatcher;
        }

        public final void setDns$okhttp(@m41 Dns dns) {
            Csuper.m30700throw(dns, "<set-?>");
            this.dns = dns;
        }

        public final void setEventListenerFactory$okhttp(@m41 EventListener.Factory factory) {
            Csuper.m30700throw(factory, "<set-?>");
            this.eventListenerFactory = factory;
        }

        public final void setFollowRedirects$okhttp(boolean z) {
            this.followRedirects = z;
        }

        public final void setFollowSslRedirects$okhttp(boolean z) {
            this.followSslRedirects = z;
        }

        public final void setHostnameVerifier$okhttp(@m41 HostnameVerifier hostnameVerifier) {
            Csuper.m30700throw(hostnameVerifier, "<set-?>");
            this.hostnameVerifier = hostnameVerifier;
        }

        public final void setMinWebSocketMessageToCompress$okhttp(long j) {
            this.minWebSocketMessageToCompress = j;
        }

        public final void setPingInterval$okhttp(int i) {
            this.pingInterval = i;
        }

        public final void setProtocols$okhttp(@m41 List<? extends Protocol> list) {
            Csuper.m30700throw(list, "<set-?>");
            this.protocols = list;
        }

        public final void setProxy$okhttp(@z41 Proxy proxy) {
            this.proxy = proxy;
        }

        public final void setProxyAuthenticator$okhttp(@m41 Authenticator authenticator) {
            Csuper.m30700throw(authenticator, "<set-?>");
            this.proxyAuthenticator = authenticator;
        }

        public final void setProxySelector$okhttp(@z41 ProxySelector proxySelector) {
            this.proxySelector = proxySelector;
        }

        public final void setReadTimeout$okhttp(int i) {
            this.readTimeout = i;
        }

        public final void setRetryOnConnectionFailure$okhttp(boolean z) {
            this.retryOnConnectionFailure = z;
        }

        public final void setRouteDatabase$okhttp(@z41 RouteDatabase routeDatabase) {
            this.routeDatabase = routeDatabase;
        }

        public final void setSocketFactory$okhttp(@m41 SocketFactory socketFactory) {
            Csuper.m30700throw(socketFactory, "<set-?>");
            this.socketFactory = socketFactory;
        }

        public final void setSslSocketFactoryOrNull$okhttp(@z41 SSLSocketFactory sSLSocketFactory) {
            this.sslSocketFactoryOrNull = sSLSocketFactory;
        }

        public final void setWriteTimeout$okhttp(int i) {
            this.writeTimeout = i;
        }

        public final void setX509TrustManagerOrNull$okhttp(@z41 X509TrustManager x509TrustManager) {
            this.x509TrustManagerOrNull = x509TrustManager;
        }

        @m41
        public final Builder socketFactory(@m41 SocketFactory socketFactory) {
            Csuper.m30700throw(socketFactory, "socketFactory");
            if (!(!(socketFactory instanceof SSLSocketFactory))) {
                throw new IllegalArgumentException("socketFactory instanceof SSLSocketFactory".toString());
            }
            if (!Csuper.m30676else(socketFactory, this.socketFactory)) {
                this.routeDatabase = null;
            }
            this.socketFactory = socketFactory;
            return this;
        }

        @m41
        @Cfor(level = Ctry.ERROR, message = "Use the sslSocketFactory overload that accepts a X509TrustManager.")
        public final Builder sslSocketFactory(@m41 SSLSocketFactory sslSocketFactory) throws ClassNotFoundException {
            Csuper.m30700throw(sslSocketFactory, "sslSocketFactory");
            if (!Csuper.m30676else(sslSocketFactory, this.sslSocketFactoryOrNull)) {
                this.routeDatabase = null;
            }
            this.sslSocketFactoryOrNull = sslSocketFactory;
            Platform.Companion companion = Platform.Companion;
            X509TrustManager x509TrustManagerTrustManager = companion.get().trustManager(sslSocketFactory);
            if (x509TrustManagerTrustManager != null) {
                this.x509TrustManagerOrNull = x509TrustManagerTrustManager;
                Platform platform = companion.get();
                X509TrustManager x509TrustManager = this.x509TrustManagerOrNull;
                Csuper.m30672const(x509TrustManager);
                this.certificateChainCleaner = platform.buildCertificateChainCleaner(x509TrustManager);
                return this;
            }
            throw new IllegalStateException("Unable to extract the trust manager on " + companion.get() + ", sslSocketFactory is " + sslSocketFactory.getClass());
        }

        @m41
        public final Builder writeTimeout(long j, @m41 TimeUnit unit) {
            Csuper.m30700throw(unit, "unit");
            this.writeTimeout = Util.checkDuration("timeout", j, unit);
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder callTimeout(@m41 Duration duration) {
            Csuper.m30700throw(duration, "duration");
            callTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder connectTimeout(@m41 Duration duration) {
            Csuper.m30700throw(duration, "duration");
            connectTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder pingInterval(@m41 Duration duration) {
            Csuper.m30700throw(duration, "duration");
            pingInterval(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder readTimeout(@m41 Duration duration) {
            Csuper.m30700throw(duration, "duration");
            readTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder writeTimeout(@m41 Duration duration) {
            Csuper.m30700throw(duration, "duration");
            writeTimeout(duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        @m41
        public final Builder sslSocketFactory(@m41 SSLSocketFactory sslSocketFactory, @m41 X509TrustManager trustManager) {
            Csuper.m30700throw(sslSocketFactory, "sslSocketFactory");
            Csuper.m30700throw(trustManager, "trustManager");
            if ((!Csuper.m30676else(sslSocketFactory, this.sslSocketFactoryOrNull)) || (!Csuper.m30676else(trustManager, this.x509TrustManagerOrNull))) {
                this.routeDatabase = null;
            }
            this.sslSocketFactoryOrNull = sslSocketFactory;
            this.certificateChainCleaner = CertificateChainCleaner.Companion.get(trustManager);
            this.x509TrustManagerOrNull = trustManager;
            return this;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@m41 OkHttpClient okHttpClient) {
            this();
            Csuper.m30700throw(okHttpClient, "okHttpClient");
            this.dispatcher = okHttpClient.dispatcher();
            this.connectionPool = okHttpClient.connectionPool();
            Creturn.D(this.interceptors, okHttpClient.interceptors());
            Creturn.D(this.networkInterceptors, okHttpClient.networkInterceptors());
            this.eventListenerFactory = okHttpClient.eventListenerFactory();
            this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure();
            this.authenticator = okHttpClient.authenticator();
            this.followRedirects = okHttpClient.followRedirects();
            this.followSslRedirects = okHttpClient.followSslRedirects();
            this.cookieJar = okHttpClient.cookieJar();
            this.cache = okHttpClient.cache();
            this.dns = okHttpClient.dns();
            this.proxy = okHttpClient.proxy();
            this.proxySelector = okHttpClient.proxySelector();
            this.proxyAuthenticator = okHttpClient.proxyAuthenticator();
            this.socketFactory = okHttpClient.socketFactory();
            this.sslSocketFactoryOrNull = okHttpClient.sslSocketFactoryOrNull;
            this.x509TrustManagerOrNull = okHttpClient.x509TrustManager();
            this.connectionSpecs = okHttpClient.connectionSpecs();
            this.protocols = okHttpClient.protocols();
            this.hostnameVerifier = okHttpClient.hostnameVerifier();
            this.certificatePinner = okHttpClient.certificatePinner();
            this.certificateChainCleaner = okHttpClient.certificateChainCleaner();
            this.callTimeout = okHttpClient.callTimeoutMillis();
            this.connectTimeout = okHttpClient.connectTimeoutMillis();
            this.readTimeout = okHttpClient.readTimeoutMillis();
            this.writeTimeout = okHttpClient.writeTimeoutMillis();
            this.pingInterval = okHttpClient.pingIntervalMillis();
            this.minWebSocketMessageToCompress = okHttpClient.minWebSocketMessageToCompress();
            this.routeDatabase = okHttpClient.getRouteDatabase();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00028\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\u0005\u001a\u0004\b\n\u0010\u0007¨\u0006\r"}, d2 = {"Lokhttp3/OkHttpClient$Companion;", "", "", "Lokhttp3/Protocol;", "DEFAULT_PROTOCOLS", "Ljava/util/List;", "getDEFAULT_PROTOCOLS$okhttp", "()Ljava/util/List;", "Lokhttp3/ConnectionSpec;", "DEFAULT_CONNECTION_SPECS", "getDEFAULT_CONNECTION_SPECS$okhttp", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        @m41
        public final List<ConnectionSpec> getDEFAULT_CONNECTION_SPECS$okhttp() {
            return OkHttpClient.DEFAULT_CONNECTION_SPECS;
        }

        @m41
        public final List<Protocol> getDEFAULT_PROTOCOLS$okhttp() {
            return OkHttpClient.DEFAULT_PROTOCOLS;
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    public OkHttpClient(@m41 Builder builder) throws NoSuchAlgorithmException, KeyStoreException {
        ProxySelector proxySelector$okhttp;
        Csuper.m30700throw(builder, "builder");
        this.dispatcher = builder.getDispatcher$okhttp();
        this.connectionPool = builder.getConnectionPool$okhttp();
        this.interceptors = Util.toImmutableList(builder.getInterceptors$okhttp());
        this.networkInterceptors = Util.toImmutableList(builder.getNetworkInterceptors$okhttp());
        this.eventListenerFactory = builder.getEventListenerFactory$okhttp();
        this.retryOnConnectionFailure = builder.getRetryOnConnectionFailure$okhttp();
        this.authenticator = builder.getAuthenticator$okhttp();
        this.followRedirects = builder.getFollowRedirects$okhttp();
        this.followSslRedirects = builder.getFollowSslRedirects$okhttp();
        this.cookieJar = builder.getCookieJar$okhttp();
        this.cache = builder.getCache$okhttp();
        this.dns = builder.getDns$okhttp();
        this.proxy = builder.getProxy$okhttp();
        if (builder.getProxy$okhttp() != null) {
            proxySelector$okhttp = NullProxySelector.INSTANCE;
        } else {
            proxySelector$okhttp = builder.getProxySelector$okhttp();
            proxySelector$okhttp = proxySelector$okhttp == null ? ProxySelector.getDefault() : proxySelector$okhttp;
            if (proxySelector$okhttp == null) {
                proxySelector$okhttp = NullProxySelector.INSTANCE;
            }
        }
        this.proxySelector = proxySelector$okhttp;
        this.proxyAuthenticator = builder.getProxyAuthenticator$okhttp();
        this.socketFactory = builder.getSocketFactory$okhttp();
        List<ConnectionSpec> connectionSpecs$okhttp = builder.getConnectionSpecs$okhttp();
        this.connectionSpecs = connectionSpecs$okhttp;
        this.protocols = builder.getProtocols$okhttp();
        this.hostnameVerifier = builder.getHostnameVerifier$okhttp();
        this.callTimeoutMillis = builder.getCallTimeout$okhttp();
        this.connectTimeoutMillis = builder.getConnectTimeout$okhttp();
        this.readTimeoutMillis = builder.getReadTimeout$okhttp();
        this.writeTimeoutMillis = builder.getWriteTimeout$okhttp();
        this.pingIntervalMillis = builder.getPingInterval$okhttp();
        this.minWebSocketMessageToCompress = builder.getMinWebSocketMessageToCompress$okhttp();
        RouteDatabase routeDatabase$okhttp = builder.getRouteDatabase$okhttp();
        this.routeDatabase = routeDatabase$okhttp == null ? new RouteDatabase() : routeDatabase$okhttp;
        boolean z = true;
        if (!(connectionSpecs$okhttp instanceof Collection) || !connectionSpecs$okhttp.isEmpty()) {
            Iterator<T> it = connectionSpecs$okhttp.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((ConnectionSpec) it.next()).isTls()) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            this.sslSocketFactoryOrNull = null;
            this.certificateChainCleaner = null;
            this.x509TrustManager = null;
            this.certificatePinner = CertificatePinner.DEFAULT;
        } else if (builder.getSslSocketFactoryOrNull$okhttp() != null) {
            this.sslSocketFactoryOrNull = builder.getSslSocketFactoryOrNull$okhttp();
            CertificateChainCleaner certificateChainCleaner$okhttp = builder.getCertificateChainCleaner$okhttp();
            Csuper.m30672const(certificateChainCleaner$okhttp);
            this.certificateChainCleaner = certificateChainCleaner$okhttp;
            X509TrustManager x509TrustManagerOrNull$okhttp = builder.getX509TrustManagerOrNull$okhttp();
            Csuper.m30672const(x509TrustManagerOrNull$okhttp);
            this.x509TrustManager = x509TrustManagerOrNull$okhttp;
            CertificatePinner certificatePinner$okhttp = builder.getCertificatePinner$okhttp();
            Csuper.m30672const(certificateChainCleaner$okhttp);
            this.certificatePinner = certificatePinner$okhttp.withCertificateChainCleaner$okhttp(certificateChainCleaner$okhttp);
        } else {
            Platform.Companion companion = Platform.Companion;
            X509TrustManager x509TrustManagerPlatformTrustManager = companion.get().platformTrustManager();
            this.x509TrustManager = x509TrustManagerPlatformTrustManager;
            Platform platform = companion.get();
            Csuper.m30672const(x509TrustManagerPlatformTrustManager);
            this.sslSocketFactoryOrNull = platform.newSslSocketFactory(x509TrustManagerPlatformTrustManager);
            CertificateChainCleaner.Companion companion2 = CertificateChainCleaner.Companion;
            Csuper.m30672const(x509TrustManagerPlatformTrustManager);
            CertificateChainCleaner certificateChainCleaner = companion2.get(x509TrustManagerPlatformTrustManager);
            this.certificateChainCleaner = certificateChainCleaner;
            CertificatePinner certificatePinner$okhttp2 = builder.getCertificatePinner$okhttp();
            Csuper.m30672const(certificateChainCleaner);
            this.certificatePinner = certificatePinner$okhttp2.withCertificateChainCleaner$okhttp(certificateChainCleaner);
        }
        verifyClientState();
    }

    private final void verifyClientState() {
        boolean z;
        Objects.requireNonNull(this.interceptors, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        if (!(!r0.contains(null))) {
            throw new IllegalStateException(("Null interceptor: " + this.interceptors).toString());
        }
        Objects.requireNonNull(this.networkInterceptors, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        if (!(!r0.contains(null))) {
            throw new IllegalStateException(("Null network interceptor: " + this.networkInterceptors).toString());
        }
        List<ConnectionSpec> list = this.connectionSpecs;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((ConnectionSpec) it.next()).isTls()) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        if (!z) {
            if (this.sslSocketFactoryOrNull == null) {
                throw new IllegalStateException("sslSocketFactory == null".toString());
            }
            if (this.certificateChainCleaner == null) {
                throw new IllegalStateException("certificateChainCleaner == null".toString());
            }
            if (this.x509TrustManager == null) {
                throw new IllegalStateException("x509TrustManager == null".toString());
            }
            return;
        }
        if (!(this.sslSocketFactoryOrNull == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(this.certificateChainCleaner == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(this.x509TrustManager == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!Csuper.m30676else(this.certificatePinner, CertificatePinner.DEFAULT)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    @m41
    @wp0(name = "-deprecated_authenticator")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "authenticator", imports = {}))
    public final Authenticator a() {
        return this.authenticator;
    }

    @m41
    @wp0(name = "authenticator")
    public final Authenticator authenticator() {
        return this.authenticator;
    }

    @wp0(name = "-deprecated_cache")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "cache", imports = {}))
    public final Cache b() {
        return this.cache;
    }

    @wp0(name = "-deprecated_callTimeoutMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "callTimeoutMillis", imports = {}))
    public final int c() {
        return this.callTimeoutMillis;
    }

    @wp0(name = "cache")
    @z41
    public final Cache cache() {
        return this.cache;
    }

    @wp0(name = "callTimeoutMillis")
    public final int callTimeoutMillis() {
        return this.callTimeoutMillis;
    }

    @wp0(name = "certificateChainCleaner")
    @z41
    public final CertificateChainCleaner certificateChainCleaner() {
        return this.certificateChainCleaner;
    }

    @m41
    @wp0(name = "certificatePinner")
    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    @m41
    public Object clone() {
        return super.clone();
    }

    @wp0(name = "connectTimeoutMillis")
    public final int connectTimeoutMillis() {
        return this.connectTimeoutMillis;
    }

    @m41
    @wp0(name = "connectionPool")
    public final ConnectionPool connectionPool() {
        return this.connectionPool;
    }

    @m41
    @wp0(name = "connectionSpecs")
    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    @m41
    @wp0(name = "cookieJar")
    public final CookieJar cookieJar() {
        return this.cookieJar;
    }

    @m41
    @wp0(name = "-deprecated_certificatePinner")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "certificatePinner", imports = {}))
    public final CertificatePinner d() {
        return this.certificatePinner;
    }

    @m41
    @wp0(name = "dispatcher")
    public final Dispatcher dispatcher() {
        return this.dispatcher;
    }

    @m41
    @wp0(name = "dns")
    public final Dns dns() {
        return this.dns;
    }

    @wp0(name = "-deprecated_connectTimeoutMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "connectTimeoutMillis", imports = {}))
    public final int e() {
        return this.connectTimeoutMillis;
    }

    @m41
    @wp0(name = "eventListenerFactory")
    public final EventListener.Factory eventListenerFactory() {
        return this.eventListenerFactory;
    }

    @m41
    @wp0(name = "-deprecated_connectionPool")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "connectionPool", imports = {}))
    public final ConnectionPool f() {
        return this.connectionPool;
    }

    @wp0(name = "followRedirects")
    public final boolean followRedirects() {
        return this.followRedirects;
    }

    @wp0(name = "followSslRedirects")
    public final boolean followSslRedirects() {
        return this.followSslRedirects;
    }

    @m41
    @wp0(name = "-deprecated_connectionSpecs")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "connectionSpecs", imports = {}))
    public final List<ConnectionSpec> g() {
        return this.connectionSpecs;
    }

    @m41
    public final RouteDatabase getRouteDatabase() {
        return this.routeDatabase;
    }

    @m41
    @wp0(name = "-deprecated_cookieJar")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "cookieJar", imports = {}))
    public final CookieJar h() {
        return this.cookieJar;
    }

    @m41
    @wp0(name = "hostnameVerifier")
    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @m41
    @wp0(name = "-deprecated_dispatcher")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "dispatcher", imports = {}))
    public final Dispatcher i() {
        return this.dispatcher;
    }

    @m41
    @wp0(name = "interceptors")
    public final List<Interceptor> interceptors() {
        return this.interceptors;
    }

    @m41
    @wp0(name = "-deprecated_dns")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "dns", imports = {}))
    public final Dns j() {
        return this.dns;
    }

    @m41
    @wp0(name = "-deprecated_eventListenerFactory")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "eventListenerFactory", imports = {}))
    public final EventListener.Factory k() {
        return this.eventListenerFactory;
    }

    @wp0(name = "-deprecated_followRedirects")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "followRedirects", imports = {}))
    public final boolean l() {
        return this.followRedirects;
    }

    @wp0(name = "-deprecated_followSslRedirects")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "followSslRedirects", imports = {}))
    public final boolean m() {
        return this.followSslRedirects;
    }

    @wp0(name = "minWebSocketMessageToCompress")
    public final long minWebSocketMessageToCompress() {
        return this.minWebSocketMessageToCompress;
    }

    @m41
    @wp0(name = "-deprecated_hostnameVerifier")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "hostnameVerifier", imports = {}))
    public final HostnameVerifier n() {
        return this.hostnameVerifier;
    }

    @m41
    @wp0(name = "networkInterceptors")
    public final List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    @m41
    public Builder newBuilder() {
        return new Builder(this);
    }

    @Override // okhttp3.Call.Factory
    @m41
    public Call newCall(@m41 Request request) {
        Csuper.m30700throw(request, "request");
        return new RealCall(this, request, false);
    }

    @Override // okhttp3.WebSocket.Factory
    @m41
    public WebSocket newWebSocket(@m41 Request request, @m41 WebSocketListener listener) {
        Csuper.m30700throw(request, "request");
        Csuper.m30700throw(listener, "listener");
        RealWebSocket realWebSocket = new RealWebSocket(TaskRunner.INSTANCE, request, listener, new Random(), this.pingIntervalMillis, null, this.minWebSocketMessageToCompress);
        realWebSocket.connect(this);
        return realWebSocket;
    }

    @m41
    @wp0(name = "-deprecated_interceptors")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "interceptors", imports = {}))
    public final List<Interceptor> o() {
        return this.interceptors;
    }

    @m41
    @wp0(name = "-deprecated_networkInterceptors")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "networkInterceptors", imports = {}))
    public final List<Interceptor> p() {
        return this.networkInterceptors;
    }

    @wp0(name = "pingIntervalMillis")
    public final int pingIntervalMillis() {
        return this.pingIntervalMillis;
    }

    @m41
    @wp0(name = "protocols")
    public final List<Protocol> protocols() {
        return this.protocols;
    }

    @wp0(name = "proxy")
    @z41
    public final Proxy proxy() {
        return this.proxy;
    }

    @m41
    @wp0(name = "proxyAuthenticator")
    public final Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @m41
    @wp0(name = "proxySelector")
    public final ProxySelector proxySelector() {
        return this.proxySelector;
    }

    @wp0(name = "-deprecated_pingIntervalMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "pingIntervalMillis", imports = {}))
    public final int q() {
        return this.pingIntervalMillis;
    }

    @m41
    @wp0(name = "-deprecated_protocols")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "protocols", imports = {}))
    public final List<Protocol> r() {
        return this.protocols;
    }

    @wp0(name = "readTimeoutMillis")
    public final int readTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    @wp0(name = "retryOnConnectionFailure")
    public final boolean retryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    @wp0(name = "-deprecated_proxy")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxy", imports = {}))
    public final Proxy s() {
        return this.proxy;
    }

    @m41
    @wp0(name = "socketFactory")
    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    @m41
    @wp0(name = "sslSocketFactory")
    public final SSLSocketFactory sslSocketFactory() {
        SSLSocketFactory sSLSocketFactory = this.sslSocketFactoryOrNull;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    @m41
    @wp0(name = "-deprecated_proxyAuthenticator")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxyAuthenticator", imports = {}))
    public final Authenticator t() {
        return this.proxyAuthenticator;
    }

    @m41
    @wp0(name = "-deprecated_proxySelector")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxySelector", imports = {}))
    public final ProxySelector u() {
        return this.proxySelector;
    }

    @wp0(name = "-deprecated_readTimeoutMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "readTimeoutMillis", imports = {}))
    public final int v() {
        return this.readTimeoutMillis;
    }

    @wp0(name = "-deprecated_retryOnConnectionFailure")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "retryOnConnectionFailure", imports = {}))
    public final boolean w() {
        return this.retryOnConnectionFailure;
    }

    @wp0(name = "writeTimeoutMillis")
    public final int writeTimeoutMillis() {
        return this.writeTimeoutMillis;
    }

    @m41
    @wp0(name = "-deprecated_socketFactory")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "socketFactory", imports = {}))
    public final SocketFactory x() {
        return this.socketFactory;
    }

    @wp0(name = "x509TrustManager")
    @z41
    public final X509TrustManager x509TrustManager() {
        return this.x509TrustManager;
    }

    @m41
    @wp0(name = "-deprecated_sslSocketFactory")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "sslSocketFactory", imports = {}))
    public final SSLSocketFactory y() {
        return sslSocketFactory();
    }

    @wp0(name = "-deprecated_writeTimeoutMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "writeTimeoutMillis", imports = {}))
    public final int z() {
        return this.writeTimeoutMillis;
    }

    public OkHttpClient() {
        this(new Builder());
    }
}
