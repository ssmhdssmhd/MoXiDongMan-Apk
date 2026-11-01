package com.wsw.cospa.utils;

import android.support.v4.vv0;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
import okhttp3.Dns;

/* renamed from: com.wsw.cospa.utils.continue, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccontinue implements Dns {

    /* renamed from: do, reason: not valid java name */
    private static final Dns f22569do = Dns.SYSTEM;

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        vv0.m8965if("HttpDns", "lookup:" + str);
        if ("119.29.29.29".equals(str)) {
            return f22569do.lookup(str);
        }
        String strM27156case = Cvolatile.m27156case(str);
        if (strM27156case == null || strM27156case.equals("")) {
            return f22569do.lookup(str);
        }
        List<InetAddress> listAsList = Arrays.asList(InetAddress.getAllByName(strM27156case));
        vv0.m8965if("HttpDns", "inetAddresses: " + listAsList);
        return listAsList;
    }
}
