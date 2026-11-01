package android.support.v4;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.dnsoverhttps.DnsOverHttps;

/* loaded from: classes2.dex */
public class y10 {
    /* renamed from: break, reason: not valid java name */
    private static InetAddress m9702break(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static DnsOverHttps m9703case(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://cloudflare-dns.com/dns-query")).bootstrapDnsHosts(m9702break("1.1.1.1"), m9702break("1.0.0.1")).includeIPv6(false).post(true).build();
    }

    /* renamed from: catch, reason: not valid java name */
    public static List<DnsOverHttps> m9704catch(OkHttpClient okHttpClient, boolean z, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m9708goto(okHttpClient));
        if (!z3) {
            arrayList.add(m9711this(okHttpClient));
        }
        arrayList.add(m9710new(okHttpClient));
        arrayList.add(m9712try(okHttpClient));
        if (!z3) {
            arrayList.add(m9703case(okHttpClient));
        }
        if (!z2) {
            arrayList.add(m9706else(okHttpClient));
        }
        arrayList.add(m9709if(okHttpClient));
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public static DnsOverHttps m9705do(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://dns-unfiltered.adguard.com/dns-query")).bootstrapDnsHosts(m9702break("94.140.14.140"), m9702break("94.140.14.141"), m9702break("2a10:50c0::1:ff"), m9702break("2a10:50c0::2:ff")).build();
    }

    /* renamed from: else, reason: not valid java name */
    public static DnsOverHttps m9706else(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://doh.crypto.sx/dns-query")).includeIPv6(false).build();
    }

    /* renamed from: for, reason: not valid java name */
    public static DnsOverHttps m9707for(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://doh.cleanbrowsing.org/doh/family-filter/")).includeIPv6(false).build();
    }

    /* renamed from: goto, reason: not valid java name */
    public static DnsOverHttps m9708goto(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://dns.google/dns-query")).bootstrapDnsHosts(m9702break("8.8.4.4"), m9702break("8.8.8.8")).build();
    }

    /* renamed from: if, reason: not valid java name */
    public static DnsOverHttps m9709if(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://dns.dnsoverhttps.net/dns-query")).includeIPv6(false).build();
    }

    /* renamed from: new, reason: not valid java name */
    public static DnsOverHttps m9710new(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://cloudflare-dns.com/dns-query")).bootstrapDnsHosts(m9702break("162.159.36.1"), m9702break("162.159.46.1"), m9702break("1.1.1.1"), m9702break("1.0.0.1"), m9702break("162.159.132.53"), m9702break("2606:4700:4700::1111"), m9702break("2606:4700:4700::1001"), m9702break("2606:4700:4700::0064"), m9702break("2606:4700:4700::6400")).includeIPv6(false).build();
    }

    /* renamed from: this, reason: not valid java name */
    public static DnsOverHttps m9711this(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://dns.google/dns-query")).bootstrapDnsHosts(m9702break("8.8.4.4"), m9702break("8.8.8.8")).post(true).build();
    }

    /* renamed from: try, reason: not valid java name */
    public static DnsOverHttps m9712try(OkHttpClient okHttpClient) {
        return new DnsOverHttps.Builder().client(okHttpClient).url(HttpUrl.get("https://1.1.1.1/dns-query")).bootstrapDnsHosts(new InetAddress[0]).includeIPv6(false).build();
    }
}
