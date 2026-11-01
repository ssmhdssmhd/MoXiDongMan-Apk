package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.on0;
import android.text.TextUtils;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public class c {
    private String a = "10.0.0.172";
    private int b = 80;
    private Context c;

    public c(Context context) {
        this.c = context;
    }

    private void a() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.c, "sl_domain_p", "");
        if (TextUtils.isEmpty(strImprintProperty)) {
            return;
        }
        a.i = DataHelper.assembleStatelessURL(strImprintProperty);
    }

    private void b() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.c, "sl_domain_p", "");
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(this.c, "oversea_sl_domain_p", "");
        if (!TextUtils.isEmpty(strImprintProperty)) {
            a.h = DataHelper.assembleStatelessURL(strImprintProperty);
        }
        if (!TextUtils.isEmpty(strImprintProperty2)) {
            a.k = DataHelper.assembleStatelessURL(strImprintProperty2);
        }
        a.i = a.k;
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.b.startsWith("460") || com.umeng.commonsdk.statistics.b.b.startsWith("461")) {
            a.i = a.h;
        }
    }

    private boolean c() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        Context context = this.c;
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.c, "android.permission.ACCESS_NETWORK_STATE") && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.c, th);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010c A[EXC_TOP_SPLITTER, PHI: r2 r4 r13
      0x010c: PHI (r2v3 boolean) = (r2v0 boolean), (r2v0 boolean), (r2v4 boolean), (r2v4 boolean) binds: [B:37:0x0125, B:46:0x0136, B:59:0x010c, B:23:0x0109] A[DONT_GENERATE, DONT_INLINE]
      0x010c: PHI (r4v8 java.io.OutputStream) = (r4v5 java.io.OutputStream), (r4v6 java.io.OutputStream), (r4v11 java.io.OutputStream), (r4v11 java.io.OutputStream) binds: [B:37:0x0125, B:46:0x0136, B:59:0x010c, B:23:0x0109] A[DONT_GENERATE, DONT_INLINE]
      0x010c: PHI (r13v8 ??) = (r13v5 javax.net.ssl.HttpsURLConnection), (r13v6 javax.net.ssl.HttpsURLConnection), (r13v13 ??), (r13v13 ??) binds: [B:37:0x0125, B:46:0x0136, B:59:0x010c, B:23:0x0109] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0139 A[PHI: r2 r4 r13
      0x0139: PHI (r2v2 boolean) = (r2v0 boolean), (r2v0 boolean), (r2v3 boolean) binds: [B:37:0x0125, B:46:0x0136, B:24:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0139: PHI (r4v7 java.io.OutputStream) = (r4v5 java.io.OutputStream), (r4v6 java.io.OutputStream), (r4v8 java.io.OutputStream) binds: [B:37:0x0125, B:46:0x0136, B:24:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0139: PHI (r13v7 ??) = (r13v5 javax.net.ssl.HttpsURLConnection), (r13v6 javax.net.ssl.HttpsURLConnection), (r13v8 ??) binds: [B:37:0x0125, B:46:0x0136, B:24:0x010c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v13, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [javax.net.ssl.HttpsURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(byte[] bArr, String str, String str2, String str3) throws IOException {
        boolean z = false;
        if (bArr != null && str != null) {
            if (SdkVersion.SDK_TYPE == 0) {
                a();
            } else {
                a.h = a.k;
                b();
            }
            String str4 = a.i;
            boolean zIsEmpty = TextUtils.isEmpty(str2);
            HttpsURLConnection httpsURLConnection = str2;
            if (zIsEmpty) {
                httpsURLConnection = str4;
            }
            OutputStream outputStream = null;
            try {
                try {
                    if (c()) {
                        httpsURLConnection = (HttpsURLConnection) new URL(((String) httpsURLConnection) + File.separator + str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.a, this.b)));
                    } else {
                        httpsURLConnection = (HttpsURLConnection) new URL(((String) httpsURLConnection) + File.separator + str).openConnection();
                    }
                    try {
                        httpsURLConnection.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        sSLContext.init(null, null, new SecureRandom());
                        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                        httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                        httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                        httpsURLConnection.setRequestProperty("Content-Type", ak.aP + str3);
                        httpsURLConnection.setConnectTimeout(30000);
                        httpsURLConnection.setReadTimeout(30000);
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setUseCaches(false);
                        outputStream = httpsURLConnection.getOutputStream();
                        outputStream.write(bArr);
                        outputStream.flush();
                        httpsURLConnection.connect();
                        if (httpsURLConnection.getResponseCode() == 200) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send stateless message success : " + a.i + on0.f4694final + str);
                            z = true;
                        }
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                    } catch (SSLHandshakeException e) {
                        e = e;
                        MLog.e("SSLHandshakeException, Failed to send message.", e);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (httpsURLConnection != 0) {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> stateless: disconnect connection.");
                            httpsURLConnection.disconnect();
                        }
                        return z;
                    } catch (Throwable th) {
                        th = th;
                        MLog.e("Exception,Failed to send message.", th);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        if (httpsURLConnection != 0) {
                        }
                        return z;
                    }
                } finally {
                }
            } catch (SSLHandshakeException e2) {
                e = e2;
                httpsURLConnection = 0;
            } catch (Throwable th2) {
                th = th2;
                httpsURLConnection = 0;
            }
            try {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> stateless: disconnect connection.");
                httpsURLConnection.disconnect();
            } catch (Throwable unused4) {
            }
            return z;
        }
        ULog.i("walle", "[stateless] sendMessage, envelopeByte == null || path == null ");
        return false;
    }
}
