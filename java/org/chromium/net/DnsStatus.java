package org.chromium.net;

import android.support.v4.lo0;
import java.net.InetAddress;
import java.util.List;
import org.chromium.base.annotations.CalledByNative;

@lo0("net::android")
/* loaded from: classes3.dex */
public class DnsStatus {

    /* renamed from: do, reason: not valid java name */
    private final List<InetAddress> f33307do;

    /* renamed from: for, reason: not valid java name */
    private final String f33308for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f33309if;

    /* renamed from: new, reason: not valid java name */
    private final String f33310new;

    public DnsStatus(List<InetAddress> list, boolean z, String str, String str2) {
        this.f33307do = list;
        this.f33309if = z;
        this.f33308for = str == null ? "" : str;
        this.f33310new = str2 == null ? "" : str2;
    }

    @CalledByNative
    public byte[][] getDnsServers() {
        byte[][] bArr = new byte[this.f33307do.size()][];
        for (int i = 0; i < this.f33307do.size(); i++) {
            bArr[i] = this.f33307do.get(i).getAddress();
        }
        return bArr;
    }

    @CalledByNative
    public boolean getPrivateDnsActive() {
        return this.f33309if;
    }

    @CalledByNative
    public String getPrivateDnsServerName() {
        return this.f33308for;
    }

    @CalledByNative
    public String getSearchDomains() {
        return this.f33310new;
    }
}
