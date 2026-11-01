package com.wsw.cospa.utils;

import android.support.v4.om0;
import android.support.v4.v02;
import android.text.TextUtils;
import com.wsw.cospa.CartoonApplication;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;

/* renamed from: com.wsw.cospa.utils.final, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfinal extends ProxySelector {

    /* renamed from: break, reason: not valid java name */
    private static final String f22634break = null;

    /* renamed from: case, reason: not valid java name */
    public static final int f22635case = 3;

    /* renamed from: catch, reason: not valid java name */
    private static final String f22636catch = "proxy_port";

    /* renamed from: class, reason: not valid java name */
    private static final int f22637class = -1;

    /* renamed from: else, reason: not valid java name */
    private static final String f22638else = "proxy_type";

    /* renamed from: for, reason: not valid java name */
    public static final int f22639for = 0;

    /* renamed from: goto, reason: not valid java name */
    private static final int f22640goto = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f22641new = 1;

    /* renamed from: this, reason: not valid java name */
    private static final String f22642this = "proxy_ip";

    /* renamed from: try, reason: not valid java name */
    public static final int f22643try = 2;

    /* renamed from: do, reason: not valid java name */
    private ProxySelector f22644do;

    /* renamed from: if, reason: not valid java name */
    private ProxySelector f22645if;

    /* renamed from: com.wsw.cospa.utils.final$if, reason: invalid class name */
    public static class Cif extends ProxySelector {
        private Cif() {
        }

        @Override // java.net.ProxySelector
        public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        }

        @Override // java.net.ProxySelector
        public List<Proxy> select(URI uri) {
            return Collections.singletonList(Proxy.NO_PROXY);
        }
    }

    public Cfinal() {
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.f22645if = proxySelector;
        if (proxySelector == null) {
            this.f22645if = new Cif();
        }
        m26883do();
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        ProxySelector proxySelector = this.f22644do;
        if (proxySelector != null) {
            proxySelector.select(uri);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m26883do() {
        int iM8715for = v02.m8711if(CartoonApplication.m24690do()).m8715for(f22638else, 1);
        if (iM8715for == 0) {
            this.f22644do = new Cif();
        } else if (iM8715for == 2 || iM8715for == 3) {
            this.f22644do = null;
        } else {
            this.f22644do = this.f22645if;
        }
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        int iM8715for = v02.m8711if(CartoonApplication.m24690do()).m8715for(f22638else, 1);
        if (iM8715for == 2 || iM8715for == 3) {
            try {
                String strM8719try = v02.m8711if(CartoonApplication.m24690do()).m8719try(f22642this, f22634break);
                int iM8715for2 = v02.m8711if(CartoonApplication.m24690do()).m8715for(f22636catch, -1);
                if (!TextUtils.isEmpty(strM8719try) && om0.m5716if(iM8715for2)) {
                    return Collections.singletonList(new Proxy(iM8715for == 2 ? Proxy.Type.HTTP : Proxy.Type.SOCKS, new InetSocketAddress(InetAddress.getByName(strM8719try), iM8715for2)));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        ProxySelector proxySelector = this.f22644do;
        return proxySelector != null ? proxySelector.select(uri) : this.f22645if.select(uri);
    }
}
