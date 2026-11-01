package com.wsw.cospa.utils;

import android.support.v4.vv0;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import okhttp3.Dns;

/* renamed from: com.wsw.cospa.utils.abstract, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cabstract implements Dns {

    /* renamed from: do, reason: not valid java name */
    private static final Dns f22535do = Dns.SYSTEM;

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        vv0.m8965if("HttpDefaultDns", "lookup:" + str);
        return f22535do.lookup(str);
    }
}
