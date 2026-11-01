package okhttp3;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.slf4j.helpers.MessageFormatter;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016R\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0005\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\t\u0010\bR\u0019\u0010\r\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\r\u0010\f¨\u0006\u001b"}, d2 = {"Lokhttp3/Route;", "", "Lokhttp3/Address;", "-deprecated_address", "()Lokhttp3/Address;", "address", "Ljava/net/Proxy;", "-deprecated_proxy", "()Ljava/net/Proxy;", "proxy", "Ljava/net/InetSocketAddress;", "-deprecated_socketAddress", "()Ljava/net/InetSocketAddress;", "socketAddress", "", "requiresTunnel", "other", "equals", "", "hashCode", "", "toString", "Lokhttp3/Address;", "Ljava/net/Proxy;", "Ljava/net/InetSocketAddress;", "<init>", "(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Route {

    @m41
    private final Address address;

    @m41
    private final Proxy proxy;

    @m41
    private final InetSocketAddress socketAddress;

    public Route(@m41 Address address, @m41 Proxy proxy, @m41 InetSocketAddress socketAddress) {
        Csuper.m30700throw(address, "address");
        Csuper.m30700throw(proxy, "proxy");
        Csuper.m30700throw(socketAddress, "socketAddress");
        this.address = address;
        this.proxy = proxy;
        this.socketAddress = socketAddress;
    }

    @m41
    @wp0(name = "-deprecated_address")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "address", imports = {}))
    public final Address a() {
        return this.address;
    }

    @m41
    @wp0(name = "address")
    public final Address address() {
        return this.address;
    }

    @m41
    @wp0(name = "-deprecated_proxy")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "proxy", imports = {}))
    public final Proxy b() {
        return this.proxy;
    }

    @m41
    @wp0(name = "-deprecated_socketAddress")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "socketAddress", imports = {}))
    public final InetSocketAddress c() {
        return this.socketAddress;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (Csuper.m30676else(route.address, this.address) && Csuper.m30676else(route.proxy, this.proxy) && Csuper.m30676else(route.socketAddress, this.socketAddress)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.address.hashCode()) * 31) + this.proxy.hashCode()) * 31) + this.socketAddress.hashCode();
    }

    @m41
    @wp0(name = "proxy")
    public final Proxy proxy() {
        return this.proxy;
    }

    public final boolean requiresTunnel() {
        return this.address.sslSocketFactory() != null && this.proxy.type() == Proxy.Type.HTTP;
    }

    @m41
    @wp0(name = "socketAddress")
    public final InetSocketAddress socketAddress() {
        return this.socketAddress;
    }

    @m41
    public String toString() {
        return "Route{" + this.socketAddress + MessageFormatter.DELIM_STOP;
    }
}
