package com.wsw.cospa.model.impl;

import com.wsw.cospa.model.impl.Ctry;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.wsw.cospa.model.impl.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry {

    /* renamed from: com.wsw.cospa.model.impl.try$do, reason: invalid class name */
    public class Cdo implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static HostnameVerifier m26448for() {
        return new HostnameVerifier() { // from class: android.support.v4.nr1
            @Override // javax.net.ssl.HostnameVerifier
            public final boolean verify(String str, SSLSession sSLSession) {
                return Ctry.m26451try(str, sSLSession);
            }
        };
    }

    /* renamed from: if, reason: not valid java name */
    public static X509TrustManager m26449if() {
        try {
            return new Cdo();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static SSLSocketFactory m26450new() throws NoSuchAlgorithmException, KeyManagementException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{m26449if()}, new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ boolean m26451try(String str, SSLSession sSLSession) {
        return true;
    }
}
