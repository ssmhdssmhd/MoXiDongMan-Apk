package okhttp3.dnsoverhttps;

import android.support.v4.m41;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okhttp3.Dns;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lokhttp3/dnsoverhttps/BootstrapDns;", "Lokhttp3/Dns;", "", "hostname", "", "Ljava/net/InetAddress;", "lookup", "dnsHostname", "Ljava/lang/String;", "dnsServers", "Ljava/util/List;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "okhttp-dnsoverhttps"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class BootstrapDns implements Dns {
    private final String dnsHostname;
    private final List<InetAddress> dnsServers;

    /* JADX WARN: Multi-variable type inference failed */
    public BootstrapDns(@m41 String dnsHostname, @m41 List<? extends InetAddress> dnsServers) {
        Csuper.m30700throw(dnsHostname, "dnsHostname");
        Csuper.m30700throw(dnsServers, "dnsServers");
        this.dnsHostname = dnsHostname;
        this.dnsServers = dnsServers;
    }

    @Override // okhttp3.Dns
    @m41
    public List<InetAddress> lookup(@m41 String hostname) throws UnknownHostException {
        Csuper.m30700throw(hostname, "hostname");
        if (!(!Csuper.m30676else(this.dnsHostname, hostname))) {
            return this.dnsServers;
        }
        throw new UnknownHostException("BootstrapDns called for " + hostname + " instead of " + this.dnsHostname);
    }
}
