package okhttp3;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0010\u0018\u00002\u00020\u0001B{\u0012\u0006\u0010C\u001a\u000207\u0012\u0006\u0010D\u001a\u000201\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\u0010%\u001a\u0004\u0018\u00010\"\u0012\b\u0010)\u001a\u0004\u0018\u00010&\u0012\b\u0010-\u001a\u0004\u0018\u00010*\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\b\u0010!\u001a\u0004\u0018\u00010\u001e\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\bE\u0010FJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012H\u0007¢\u0006\u0004\b\u0018\u0010\u0015J\u000f\u0010\u001d\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010!\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010%\u001a\u0004\u0018\u00010\"H\u0007¢\u0006\u0004\b#\u0010$J\u0011\u0010)\u001a\u0004\u0018\u00010&H\u0007¢\u0006\u0004\b'\u0010(J\u0011\u0010-\u001a\u0004\u0018\u00010*H\u0007¢\u0006\u0004\b+\u0010,J\u0013\u00100\u001a\u00020/2\b\u0010.\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u00102\u001a\u000201H\u0016J\u0017\u00106\u001a\u00020/2\u0006\u00103\u001a\u00020\u0000H\u0000¢\u0006\u0004\b4\u00105J\b\u00108\u001a\u000207H\u0016R\u0019\u0010\u0005\u001a\u00020\u00028G@\u0006¢\u0006\f\n\u0004\b\u0005\u00109\u001a\u0004\b\u0005\u0010\u0004R\u001f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128G@\u0006¢\u0006\f\n\u0004\b\u0016\u0010:\u001a\u0004\b\u0016\u0010\u0015R\u001f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u00128G@\u0006¢\u0006\f\n\u0004\b\u0019\u0010:\u001a\u0004\b\u0019\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\f\n\u0004\b\t\u0010;\u001a\u0004\b\t\u0010\bR\u0019\u0010\r\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\r\u0010<\u001a\u0004\b\r\u0010\fR\u001b\u0010%\u001a\u0004\u0018\u00010\"8\u0007@\u0006¢\u0006\f\n\u0004\b%\u0010=\u001a\u0004\b%\u0010$R\u001b\u0010)\u001a\u0004\u0018\u00010&8\u0007@\u0006¢\u0006\f\n\u0004\b)\u0010>\u001a\u0004\b)\u0010(R\u001b\u0010-\u001a\u0004\u0018\u00010*8\u0007@\u0006¢\u0006\f\n\u0004\b-\u0010?\u001a\u0004\b-\u0010,R\u0019\u0010\u0011\u001a\u00020\u000e8\u0007@\u0006¢\u0006\f\n\u0004\b\u0011\u0010@\u001a\u0004\b\u0011\u0010\u0010R\u001b\u0010!\u001a\u0004\u0018\u00010\u001e8\u0007@\u0006¢\u0006\f\n\u0004\b!\u0010A\u001a\u0004\b!\u0010 R\u0019\u0010\u001d\u001a\u00020\u001a8\u0007@\u0006¢\u0006\f\n\u0004\b\u001d\u0010B\u001a\u0004\b\u001d\u0010\u001c¨\u0006G"}, d2 = {"Lokhttp3/Address;", "", "Lokhttp3/HttpUrl;", "-deprecated_url", "()Lokhttp3/HttpUrl;", "url", "Lokhttp3/Dns;", "-deprecated_dns", "()Lokhttp3/Dns;", "dns", "Ljavax/net/SocketFactory;", "-deprecated_socketFactory", "()Ljavax/net/SocketFactory;", "socketFactory", "Lokhttp3/Authenticator;", "-deprecated_proxyAuthenticator", "()Lokhttp3/Authenticator;", "proxyAuthenticator", "", "Lokhttp3/Protocol;", "-deprecated_protocols", "()Ljava/util/List;", "protocols", "Lokhttp3/ConnectionSpec;", "-deprecated_connectionSpecs", "connectionSpecs", "Ljava/net/ProxySelector;", "-deprecated_proxySelector", "()Ljava/net/ProxySelector;", "proxySelector", "Ljava/net/Proxy;", "-deprecated_proxy", "()Ljava/net/Proxy;", "proxy", "Ljavax/net/ssl/SSLSocketFactory;", "-deprecated_sslSocketFactory", "()Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/HostnameVerifier;", "-deprecated_hostnameVerifier", "()Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/CertificatePinner;", "-deprecated_certificatePinner", "()Lokhttp3/CertificatePinner;", "certificatePinner", "other", "", "equals", "", "hashCode", "that", "equalsNonHost$okhttp", "(Lokhttp3/Address;)Z", "equalsNonHost", "", "toString", "Lokhttp3/HttpUrl;", "Ljava/util/List;", "Lokhttp3/Dns;", "Ljavax/net/SocketFactory;", "Ljavax/net/ssl/SSLSocketFactory;", "Ljavax/net/ssl/HostnameVerifier;", "Lokhttp3/CertificatePinner;", "Lokhttp3/Authenticator;", "Ljava/net/Proxy;", "Ljava/net/ProxySelector;", "uriHost", "uriPort", "<init>", "(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Address {

    @z41
    private final CertificatePinner certificatePinner;

    @m41
    private final List<ConnectionSpec> connectionSpecs;

    @m41
    private final Dns dns;

    @z41
    private final HostnameVerifier hostnameVerifier;

    @m41
    private final List<Protocol> protocols;

    @z41
    private final Proxy proxy;

    @m41
    private final Authenticator proxyAuthenticator;

    @m41
    private final ProxySelector proxySelector;

    @m41
    private final SocketFactory socketFactory;

    @z41
    private final SSLSocketFactory sslSocketFactory;

    @m41
    private final HttpUrl url;

    public Address(@m41 String uriHost, int i, @m41 Dns dns, @m41 SocketFactory socketFactory, @z41 SSLSocketFactory sSLSocketFactory, @z41 HostnameVerifier hostnameVerifier, @z41 CertificatePinner certificatePinner, @m41 Authenticator proxyAuthenticator, @z41 Proxy proxy, @m41 List<? extends Protocol> protocols, @m41 List<ConnectionSpec> connectionSpecs, @m41 ProxySelector proxySelector) {
        Csuper.m30700throw(uriHost, "uriHost");
        Csuper.m30700throw(dns, "dns");
        Csuper.m30700throw(socketFactory, "socketFactory");
        Csuper.m30700throw(proxyAuthenticator, "proxyAuthenticator");
        Csuper.m30700throw(protocols, "protocols");
        Csuper.m30700throw(connectionSpecs, "connectionSpecs");
        Csuper.m30700throw(proxySelector, "proxySelector");
        this.dns = dns;
        this.socketFactory = socketFactory;
        this.sslSocketFactory = sSLSocketFactory;
        this.hostnameVerifier = hostnameVerifier;
        this.certificatePinner = certificatePinner;
        this.proxyAuthenticator = proxyAuthenticator;
        this.proxy = proxy;
        this.proxySelector = proxySelector;
        this.url = new HttpUrl.Builder().scheme(sSLSocketFactory != null ? "https" : "http").host(uriHost).port(i).build();
        this.protocols = Util.toImmutableList(protocols);
        this.connectionSpecs = Util.toImmutableList(connectionSpecs);
    }

    @wp0(name = "-deprecated_certificatePinner")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "certificatePinner", imports = {}))
    public final CertificatePinner a() {
        return this.certificatePinner;
    }

    @m41
    @wp0(name = "-deprecated_connectionSpecs")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "connectionSpecs", imports = {}))
    public final List<ConnectionSpec> b() {
        return this.connectionSpecs;
    }

    @m41
    @wp0(name = "-deprecated_dns")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "dns", imports = {}))
    public final Dns c() {
        return this.dns;
    }

    @wp0(name = "certificatePinner")
    @z41
    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    @m41
    @wp0(name = "connectionSpecs")
    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    @wp0(name = "-deprecated_hostnameVerifier")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "hostnameVerifier", imports = {}))
    public final HostnameVerifier d() {
        return this.hostnameVerifier;
    }

    @m41
    @wp0(name = "dns")
    public final Dns dns() {
        return this.dns;
    }

    @m41
    @wp0(name = "-deprecated_protocols")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "protocols", imports = {}))
    public final List<Protocol> e() {
        return this.protocols;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (Csuper.m30676else(this.url, address.url) && equalsNonHost$okhttp(address)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equalsNonHost$okhttp(@m41 Address that) {
        Csuper.m30700throw(that, "that");
        return Csuper.m30676else(this.dns, that.dns) && Csuper.m30676else(this.proxyAuthenticator, that.proxyAuthenticator) && Csuper.m30676else(this.protocols, that.protocols) && Csuper.m30676else(this.connectionSpecs, that.connectionSpecs) && Csuper.m30676else(this.proxySelector, that.proxySelector) && Csuper.m30676else(this.proxy, that.proxy) && Csuper.m30676else(this.sslSocketFactory, that.sslSocketFactory) && Csuper.m30676else(this.hostnameVerifier, that.hostnameVerifier) && Csuper.m30676else(this.certificatePinner, that.certificatePinner) && this.url.port() == that.url.port();
    }

    @wp0(name = "-deprecated_proxy")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxy", imports = {}))
    public final Proxy f() {
        return this.proxy;
    }

    @m41
    @wp0(name = "-deprecated_proxyAuthenticator")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxyAuthenticator", imports = {}))
    public final Authenticator g() {
        return this.proxyAuthenticator;
    }

    @m41
    @wp0(name = "-deprecated_proxySelector")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxySelector", imports = {}))
    public final ProxySelector h() {
        return this.proxySelector;
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.url.hashCode()) * 31) + this.dns.hashCode()) * 31) + this.proxyAuthenticator.hashCode()) * 31) + this.protocols.hashCode()) * 31) + this.connectionSpecs.hashCode()) * 31) + this.proxySelector.hashCode()) * 31) + Objects.hashCode(this.proxy)) * 31) + Objects.hashCode(this.sslSocketFactory)) * 31) + Objects.hashCode(this.hostnameVerifier)) * 31) + Objects.hashCode(this.certificatePinner);
    }

    @wp0(name = "hostnameVerifier")
    @z41
    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @m41
    @wp0(name = "-deprecated_socketFactory")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "socketFactory", imports = {}))
    public final SocketFactory i() {
        return this.socketFactory;
    }

    @wp0(name = "-deprecated_sslSocketFactory")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "sslSocketFactory", imports = {}))
    public final SSLSocketFactory j() {
        return this.sslSocketFactory;
    }

    @m41
    @wp0(name = "-deprecated_url")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "url", imports = {}))
    public final HttpUrl k() {
        return this.url;
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

    @m41
    @wp0(name = "socketFactory")
    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    @wp0(name = "sslSocketFactory")
    @z41
    public final SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    @m41
    public String toString() {
        StringBuilder sb;
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.url.host());
        sb2.append(':');
        sb2.append(this.url.port());
        sb2.append(", ");
        if (this.proxy != null) {
            sb = new StringBuilder();
            sb.append("proxy=");
            obj = this.proxy;
        } else {
            sb = new StringBuilder();
            sb.append("proxySelector=");
            obj = this.proxySelector;
        }
        sb.append(obj);
        sb2.append(sb.toString());
        sb2.append("}");
        return sb2.toString();
    }

    @m41
    @wp0(name = "url")
    public final HttpUrl url() {
        return this.url;
    }
}
