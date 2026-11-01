package org.chromium.net.urlconnection;

import java.io.IOException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import org.chromium.net.Ccase;

/* renamed from: org.chromium.net.urlconnection.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry extends URLStreamHandler {

    /* renamed from: do, reason: not valid java name */
    private final Ccase f33795do;

    public Ctry(Ccase ccase) {
        this.f33795do = ccase;
    }

    @Override // java.net.URLStreamHandler
    public URLConnection openConnection(URL url) throws IOException {
        return this.f33795do.mo37499case(url);
    }

    @Override // java.net.URLStreamHandler
    public URLConnection openConnection(URL url, Proxy proxy) throws IOException {
        return this.f33795do.mo37445public(url, proxy);
    }
}
