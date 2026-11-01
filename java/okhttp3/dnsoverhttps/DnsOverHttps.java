package okhttp3.dnsoverhttps;

import android.support.v4.m41;
import android.support.v4.pk0;
import android.support.v4.qm;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.ByteString;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u0000 .2\u00020\u0001:\u0002/.B9\b\u0000\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010)\u001a\u00020%\u0012\u0006\u0010*\u001a\u00020%\u0012\u0006\u0010+\u001a\u00020%¢\u0006\u0004\b,\u0010-J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002JF\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0010\u0010\r\u001a\f\u0012\b\u0012\u00060\u000bj\u0002`\f0\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J>\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0010\u0010\r\u001a\f\u0012\b\u0012\u00060\u000bj\u0002`\f0\u0007H\u0002J8\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0010\u0010\r\u001a\f\u0012\b\u0012\u00060\u000bj\u0002`\f0\u0007H\u0002J(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\r\u001a\f\u0012\b\u0012\u00060\u000bj\u0002`\f0\u0004H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u001e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u0011\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\u001e\u001a\u00020\u001d8\u0007@\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001e\u0010 R\u0019\u0010\"\u001a\u00020!8\u0007@\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b\"\u0010$R\u0019\u0010&\u001a\u00020%8\u0007@\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b&\u0010(R\u0019\u0010)\u001a\u00020%8\u0007@\u0006¢\u0006\f\n\u0004\b)\u0010'\u001a\u0004\b)\u0010(R\u0019\u0010*\u001a\u00020%8\u0007@\u0006¢\u0006\f\n\u0004\b*\u0010'\u001a\u0004\b*\u0010(R\u0019\u0010+\u001a\u00020%8\u0007@\u0006¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b+\u0010(¨\u00060"}, d2 = {"Lokhttp3/dnsoverhttps/DnsOverHttps;", "Lokhttp3/Dns;", "", "hostname", "", "Ljava/net/InetAddress;", "lookupHttps", "", "Lokhttp3/Call;", "networkRequests", "results", "Ljava/lang/Exception;", "Lkotlin/Exception;", "failures", "", "type", "Landroid/support/v4/ub2;", "buildRequest", "responses", "executeRequests", "Lokhttp3/Response;", "response", "processResponse", "throwBestFailure", "Lokhttp3/Request;", "request", "getCacheOnlyResponse", "readResponse", "lookup", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/OkHttpClient;", "()Lokhttp3/OkHttpClient;", "Lokhttp3/HttpUrl;", "url", "Lokhttp3/HttpUrl;", "()Lokhttp3/HttpUrl;", "", "includeIPv6", "Z", "()Z", "post", "resolvePrivateAddresses", "resolvePublicAddresses", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;ZZZZ)V", "Companion", "Builder", "okhttp-dnsoverhttps"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class DnsOverHttps implements Dns {
    public static final Companion Companion = new Companion(null);

    @m41
    private static final MediaType DNS_MESSAGE = MediaType.Companion.get("application/dns-message");
    public static final int MAX_RESPONSE_SIZE = 65536;

    @m41
    private final OkHttpClient client;
    private final boolean includeIPv6;
    private final boolean post;
    private final boolean resolvePrivateAddresses;
    private final boolean resolvePublicAddresses;

    @m41
    private final HttpUrl url;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b#\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b3\u00104J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\bJ\u0016\u0010\u000f\u001a\u00020\u00002\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ!\u0010\u000f\u001a\u00020\u00002\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0010\"\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0011J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\t\u001a\u00020\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010\n\u001a\u00020\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u001e\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\"\u0010\u0013\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R*\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010\u000b\u001a\u00020\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b/\u0010 \"\u0004\b0\u0010\"R\"\u0010\f\u001a\u00020\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u001e\u001a\u0004\b1\u0010 \"\u0004\b2\u0010\"¨\u00065"}, d2 = {"Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;", "", "Lokhttp3/dnsoverhttps/DnsOverHttps;", "build", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/HttpUrl;", "url", "", "includeIPv6", "post", "resolvePrivateAddresses", "resolvePublicAddresses", "", "Ljava/net/InetAddress;", "bootstrapDnsHosts", "", "([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;", "Lokhttp3/Dns;", "systemDns", "Lokhttp3/OkHttpClient;", "getClient$okhttp_dnsoverhttps", "()Lokhttp3/OkHttpClient;", "setClient$okhttp_dnsoverhttps", "(Lokhttp3/OkHttpClient;)V", "Lokhttp3/HttpUrl;", "getUrl$okhttp_dnsoverhttps", "()Lokhttp3/HttpUrl;", "setUrl$okhttp_dnsoverhttps", "(Lokhttp3/HttpUrl;)V", "Z", "getIncludeIPv6$okhttp_dnsoverhttps", "()Z", "setIncludeIPv6$okhttp_dnsoverhttps", "(Z)V", "getPost$okhttp_dnsoverhttps", "setPost$okhttp_dnsoverhttps", "Lokhttp3/Dns;", "getSystemDns$okhttp_dnsoverhttps", "()Lokhttp3/Dns;", "setSystemDns$okhttp_dnsoverhttps", "(Lokhttp3/Dns;)V", "Ljava/util/List;", "getBootstrapDnsHosts$okhttp_dnsoverhttps", "()Ljava/util/List;", "setBootstrapDnsHosts$okhttp_dnsoverhttps", "(Ljava/util/List;)V", "getResolvePrivateAddresses$okhttp_dnsoverhttps", "setResolvePrivateAddresses$okhttp_dnsoverhttps", "getResolvePublicAddresses$okhttp_dnsoverhttps", "setResolvePublicAddresses$okhttp_dnsoverhttps", "<init>", "()V", "okhttp-dnsoverhttps"}, k = 1, mv = {1, 4, 0})
    public static final class Builder {

        @z41
        private List<? extends InetAddress> bootstrapDnsHosts;

        @z41
        private OkHttpClient client;
        private boolean post;
        private boolean resolvePrivateAddresses;

        @z41
        private HttpUrl url;
        private boolean includeIPv6 = true;

        @m41
        private Dns systemDns = Dns.SYSTEM;
        private boolean resolvePublicAddresses = true;

        @m41
        public final Builder bootstrapDnsHosts(@z41 List<? extends InetAddress> list) {
            this.bootstrapDnsHosts = list;
            return this;
        }

        @m41
        public final DnsOverHttps build() {
            OkHttpClient okHttpClient = this.client;
            Objects.requireNonNull(okHttpClient, "client not set");
            OkHttpClient okHttpClientBuild = okHttpClient.newBuilder().dns(DnsOverHttps.Companion.buildBootstrapClient(this)).build();
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new DnsOverHttps(okHttpClientBuild, httpUrl, this.includeIPv6, this.post, this.resolvePrivateAddresses, this.resolvePublicAddresses);
            }
            throw new IllegalStateException("url not set".toString());
        }

        @m41
        public final Builder client(@m41 OkHttpClient client) {
            Csuper.m30700throw(client, "client");
            this.client = client;
            return this;
        }

        @z41
        public final List<InetAddress> getBootstrapDnsHosts$okhttp_dnsoverhttps() {
            return this.bootstrapDnsHosts;
        }

        @z41
        public final OkHttpClient getClient$okhttp_dnsoverhttps() {
            return this.client;
        }

        public final boolean getIncludeIPv6$okhttp_dnsoverhttps() {
            return this.includeIPv6;
        }

        public final boolean getPost$okhttp_dnsoverhttps() {
            return this.post;
        }

        public final boolean getResolvePrivateAddresses$okhttp_dnsoverhttps() {
            return this.resolvePrivateAddresses;
        }

        public final boolean getResolvePublicAddresses$okhttp_dnsoverhttps() {
            return this.resolvePublicAddresses;
        }

        @m41
        public final Dns getSystemDns$okhttp_dnsoverhttps() {
            return this.systemDns;
        }

        @z41
        public final HttpUrl getUrl$okhttp_dnsoverhttps() {
            return this.url;
        }

        @m41
        public final Builder includeIPv6(boolean z) {
            this.includeIPv6 = z;
            return this;
        }

        @m41
        public final Builder post(boolean z) {
            this.post = z;
            return this;
        }

        @m41
        public final Builder resolvePrivateAddresses(boolean z) {
            this.resolvePrivateAddresses = z;
            return this;
        }

        @m41
        public final Builder resolvePublicAddresses(boolean z) {
            this.resolvePublicAddresses = z;
            return this;
        }

        public final void setBootstrapDnsHosts$okhttp_dnsoverhttps(@z41 List<? extends InetAddress> list) {
            this.bootstrapDnsHosts = list;
        }

        public final void setClient$okhttp_dnsoverhttps(@z41 OkHttpClient okHttpClient) {
            this.client = okHttpClient;
        }

        public final void setIncludeIPv6$okhttp_dnsoverhttps(boolean z) {
            this.includeIPv6 = z;
        }

        public final void setPost$okhttp_dnsoverhttps(boolean z) {
            this.post = z;
        }

        public final void setResolvePrivateAddresses$okhttp_dnsoverhttps(boolean z) {
            this.resolvePrivateAddresses = z;
        }

        public final void setResolvePublicAddresses$okhttp_dnsoverhttps(boolean z) {
            this.resolvePublicAddresses = z;
        }

        public final void setSystemDns$okhttp_dnsoverhttps(@m41 Dns dns) {
            Csuper.m30700throw(dns, "<set-?>");
            this.systemDns = dns;
        }

        public final void setUrl$okhttp_dnsoverhttps(@z41 HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        @m41
        public final Builder systemDns(@m41 Dns systemDns) {
            Csuper.m30700throw(systemDns, "systemDns");
            this.systemDns = systemDns;
            return this;
        }

        @m41
        public final Builder url(@m41 HttpUrl url) {
            Csuper.m30700throw(url, "url");
            this.url = url;
            return this;
        }

        @m41
        public final Builder bootstrapDnsHosts(@m41 InetAddress... bootstrapDnsHosts) {
            Csuper.m30700throw(bootstrapDnsHosts, "bootstrapDnsHosts");
            return bootstrapDnsHosts(Cclass.tx(bootstrapDnsHosts));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;", "", "Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;", "builder", "Lokhttp3/Dns;", "buildBootstrapClient", "", "host", "", "isPrivateHost$okhttp_dnsoverhttps", "(Ljava/lang/String;)Z", "isPrivateHost", "Lokhttp3/MediaType;", "DNS_MESSAGE", "Lokhttp3/MediaType;", "getDNS_MESSAGE", "()Lokhttp3/MediaType;", "", "MAX_RESPONSE_SIZE", OptRuntime.GeneratorState.resumptionPoint_TYPE, "<init>", "()V", "okhttp-dnsoverhttps"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Dns buildBootstrapClient(Builder builder) {
            List<InetAddress> bootstrapDnsHosts$okhttp_dnsoverhttps = builder.getBootstrapDnsHosts$okhttp_dnsoverhttps();
            if (bootstrapDnsHosts$okhttp_dnsoverhttps == null) {
                return builder.getSystemDns$okhttp_dnsoverhttps();
            }
            HttpUrl url$okhttp_dnsoverhttps = builder.getUrl$okhttp_dnsoverhttps();
            Csuper.m30672const(url$okhttp_dnsoverhttps);
            return new BootstrapDns(url$okhttp_dnsoverhttps.host(), bootstrapDnsHosts$okhttp_dnsoverhttps);
        }

        @m41
        public final MediaType getDNS_MESSAGE() {
            return DnsOverHttps.DNS_MESSAGE;
        }

        public final boolean isPrivateHost$okhttp_dnsoverhttps(@m41 String host) {
            Csuper.m30700throw(host, "host");
            return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(host) == null;
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    public DnsOverHttps(@m41 OkHttpClient client, @m41 HttpUrl url, boolean z, boolean z2, boolean z3, boolean z4) {
        Csuper.m30700throw(client, "client");
        Csuper.m30700throw(url, "url");
        this.client = client;
        this.url = url;
        this.includeIPv6 = z;
        this.post = z2;
        this.resolvePrivateAddresses = z3;
        this.resolvePublicAddresses = z4;
    }

    private final void buildRequest(String str, List<Call> list, List<InetAddress> list2, List<Exception> list3, int i) {
        Request requestBuildRequest = buildRequest(str, i);
        Response cacheOnlyResponse = getCacheOnlyResponse(requestBuildRequest);
        if (cacheOnlyResponse != null) {
            processResponse(cacheOnlyResponse, str, list2, list3);
        } else {
            list.add(this.client.newCall(requestBuildRequest));
        }
    }

    private final void executeRequests(final String str, List<? extends Call> list, final List<InetAddress> list2, final List<Exception> list3) throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        Iterator<? extends Call> it = list.iterator();
        while (it.hasNext()) {
            it.next().enqueue(new Callback() { // from class: okhttp3.dnsoverhttps.DnsOverHttps.executeRequests.1
                @Override // okhttp3.Callback
                public void onFailure(@m41 Call call, @m41 IOException e) {
                    Csuper.m30700throw(call, "call");
                    Csuper.m30700throw(e, "e");
                    synchronized (list3) {
                        list3.add(e);
                    }
                    countDownLatch.countDown();
                }

                @Override // okhttp3.Callback
                public void onResponse(@m41 Call call, @m41 Response response) {
                    Csuper.m30700throw(call, "call");
                    Csuper.m30700throw(response, "response");
                    DnsOverHttps.this.processResponse(response, str, list2, list3);
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            list3.add(e);
        }
    }

    private final Response getCacheOnlyResponse(Request request) {
        if (this.post || this.client.cache() == null) {
            return null;
        }
        try {
            Response responseExecute = this.client.newCall(request.newBuilder().cacheControl(new CacheControl.Builder().onlyIfCached().build()).build()).execute();
            if (responseExecute.code() != 504) {
                return responseExecute;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    private final List<InetAddress> lookupHttps(String str) throws InterruptedException, UnknownHostException {
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(2);
        ArrayList arrayList3 = new ArrayList(5);
        buildRequest(str, arrayList, arrayList3, arrayList2, 1);
        if (this.includeIPv6) {
            buildRequest(str, arrayList, arrayList3, arrayList2, 28);
        }
        executeRequests(str, arrayList, arrayList3, arrayList2);
        return arrayList3.isEmpty() ^ true ? arrayList3 : throwBestFailure(str, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processResponse(Response response, String str, List<InetAddress> list, List<Exception> list2) {
        try {
            List<InetAddress> response2 = readResponse(str, response);
            synchronized (list) {
                list.addAll(response2);
            }
        } catch (Exception e) {
            synchronized (list2) {
                list2.add(e);
            }
        }
    }

    private final List<InetAddress> readResponse(String str, Response response) throws Exception {
        if (response.cacheResponse() == null && response.protocol() != Protocol.HTTP_2) {
            Platform.log$default(Platform.Companion.get(), "Incorrect protocol: " + response.protocol(), 5, null, 4, null);
        }
        try {
            if (!response.isSuccessful()) {
                throw new IOException("response: " + response.code() + org.apache.commons.lang3.Cclass.f28652do + response.message());
            }
            ResponseBody responseBodyBody = response.body();
            Csuper.m30672const(responseBodyBody);
            if (responseBodyBody.contentLength() <= 65536) {
                List<InetAddress> listDecodeAnswers = DnsRecordCodec.INSTANCE.decodeAnswers(str, responseBodyBody.source().readByteString());
                qm.m6624do(response, null);
                return listDecodeAnswers;
            }
            throw new IOException("response size exceeds limit (65536 bytes): " + responseBodyBody.contentLength() + " bytes");
        } finally {
        }
    }

    private final List<InetAddress> throwBestFailure(String str, List<? extends Exception> list) throws Exception {
        if (list.isEmpty()) {
            throw new UnknownHostException(str);
        }
        Exception exc = list.get(0);
        if (exc instanceof UnknownHostException) {
            throw exc;
        }
        UnknownHostException unknownHostException = new UnknownHostException(str);
        unknownHostException.initCause(exc);
        int size = list.size();
        for (int i = 1; i < size; i++) {
            Celse.m30428do(unknownHostException, list.get(i));
        }
        throw unknownHostException;
    }

    @m41
    @wp0(name = "client")
    public final OkHttpClient client() {
        return this.client;
    }

    @wp0(name = "includeIPv6")
    public final boolean includeIPv6() {
        return this.includeIPv6;
    }

    @Override // okhttp3.Dns
    @m41
    public List<InetAddress> lookup(@m41 String hostname) throws UnknownHostException {
        Csuper.m30700throw(hostname, "hostname");
        if (!this.resolvePrivateAddresses || !this.resolvePublicAddresses) {
            boolean zIsPrivateHost$okhttp_dnsoverhttps = Companion.isPrivateHost$okhttp_dnsoverhttps(hostname);
            if (zIsPrivateHost$okhttp_dnsoverhttps && !this.resolvePrivateAddresses) {
                throw new UnknownHostException("private hosts not resolved");
            }
            if (!zIsPrivateHost$okhttp_dnsoverhttps && !this.resolvePublicAddresses) {
                throw new UnknownHostException("public hosts not resolved");
            }
        }
        return lookupHttps(hostname);
    }

    @wp0(name = "post")
    public final boolean post() {
        return this.post;
    }

    @wp0(name = "resolvePrivateAddresses")
    public final boolean resolvePrivateAddresses() {
        return this.resolvePrivateAddresses;
    }

    @wp0(name = "resolvePublicAddresses")
    public final boolean resolvePublicAddresses() {
        return this.resolvePublicAddresses;
    }

    @m41
    @wp0(name = "url")
    public final HttpUrl url() {
        return this.url;
    }

    private final Request buildRequest(String str, int i) {
        Request.Builder builder = new Request.Builder();
        MediaType mediaType = DNS_MESSAGE;
        Request.Builder builderHeader = builder.header(pk0.f5054goto, mediaType.toString());
        ByteString byteStringEncodeQuery = DnsRecordCodec.INSTANCE.encodeQuery(str, i);
        if (this.post) {
            builderHeader.url(this.url).post(RequestBody.Companion.create(byteStringEncodeQuery, mediaType));
        } else {
            builderHeader.url(this.url.newBuilder().addQueryParameter("dns", Creturn.x1(byteStringEncodeQuery.base64Url(), "=", "", false, 4, null)).build());
        }
        return builderHeader.build();
    }
}
