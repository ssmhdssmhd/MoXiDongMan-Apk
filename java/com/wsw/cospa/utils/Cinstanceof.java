package com.wsw.cospa.utils;

import android.os.Build;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: com.wsw.cospa.utils.instanceof, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cinstanceof extends SSLSocketFactory {

    /* renamed from: if, reason: not valid java name */
    private static String[] f22665if;

    /* renamed from: do, reason: not valid java name */
    public final SSLSocketFactory f22666do;

    static {
        f22665if = new String[]{"TLSv1", "TLSv1.1", "TLSv1.2", "TLSv1.3", "SSLv3"};
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            f22665if = new String[]{"TLSv1", "TLSv1.1", "TLSv1.2"};
        } else if (i >= 16) {
            f22665if = new String[]{"SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"};
        } else {
            f22665if = new String[]{"SSLv3", "TLSv1"};
        }
    }

    public Cinstanceof(SSLSocketFactory sSLSocketFactory) {
        this.f22666do = sSLSocketFactory;
    }

    /* renamed from: do, reason: not valid java name */
    private Socket m26947do(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(f22665if);
        }
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return m26947do(this.f22666do.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f22666do.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f22666do.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return m26947do(this.f22666do.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return m26947do(this.f22666do.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return m26947do(this.f22666do.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return m26947do(this.f22666do.createSocket(inetAddress, i, inetAddress2, i2));
    }
}
