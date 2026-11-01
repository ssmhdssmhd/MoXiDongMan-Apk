package com.wsw.cospa.utils.cronetUtils;

import android.content.Context;
import android.support.v4.e31;
import android.support.v4.rs;
import android.support.v4.vv0;
import androidx.annotation.RequiresApi;
import com.wsw.cospa.CartoonApplication;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import org.chromium.net.Ccase;
import org.chromium.net.Celse;
import org.chromium.net.Cfor;
import org.chromium.net.Cnative;
import org.chromium.net.Creturn;
import org.chromium.net.Cstatic;
import org.chromium.net.UploadDataProviders;
import org.chromium.net.urlconnection.Cnew;

/* renamed from: com.wsw.cospa.utils.cronetUtils.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: for, reason: not valid java name */
    private static final String f22572for = "CronetHelper";

    /* renamed from: new, reason: not valid java name */
    private static volatile Cif f22573new;

    /* renamed from: do, reason: not valid java name */
    private Ccase f22574do;

    /* renamed from: if, reason: not valid java name */
    private Executor f22575if = Executors.newSingleThreadExecutor();

    /* renamed from: com.wsw.cospa.utils.cronetUtils.if$do, reason: invalid class name */
    public class Cdo extends e31 {
        public Cdo(Executor executor) {
            super(executor);
        }

        @Override // android.support.v4.e31
        /* renamed from: if */
        public void mo1642if(int i, long j, int i2) {
            vv0.m8963do(Cif.f22572for, "Rtt info: i = " + i + " l = " + j + " i1 = " + i2);
            int iMo37443final = Cif.this.f22574do.mo37443final();
            StringBuilder sb = new StringBuilder();
            sb.append("kbps = ");
            sb.append(iMo37443final);
            vv0.m8963do(Cif.f22572for, sb.toString());
            vv0.m8963do(Cif.f22572for, "type = " + Cif.this.f22574do.mo37448super());
        }
    }

    /* renamed from: com.wsw.cospa.utils.cronetUtils.if$if, reason: invalid class name and collision with other inner class name */
    public class C0229if extends Cnative.Cdo {
        public C0229if(Executor executor) {
            super(executor);
        }

        @Override // org.chromium.net.Cnative.Cdo
        @RequiresApi(api = 24)
        /* renamed from: if, reason: not valid java name */
        public void mo26740if(Cnative cnative) {
            vv0.m8965if(Cif.f22572for, "Rtt info: i = " + Cif.this.f22574do.mo37450throw());
            Cif.this.m26731goto(cnative);
        }
    }

    private Cif() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 24)
    /* renamed from: goto, reason: not valid java name */
    public void m26731goto(Cnative cnative) {
        vv0.m8965if(f22572for, "############# url: " + cnative.mo974case() + " #############");
        StringBuilder sb = new StringBuilder();
        sb.append("onRequestFinished: ");
        sb.append(cnative.mo976for());
        vv0.m8965if(f22572for, sb.toString());
        Cnative.Cif cifMo978new = cnative.mo978new();
        if (cifMo978new != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RequestStart: ");
            sb2.append(cifMo978new.mo8123this() == null ? -1L : cifMo978new.mo8123this().getTime());
            vv0.m8965if(f22572for, sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("DnsStart: ");
            sb3.append(cifMo978new.mo8121new() == null ? -1L : cifMo978new.mo8121new().getTime());
            vv0.m8965if(f22572for, sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append("DnsEnd: ");
            sb4.append(cifMo978new.mo8117for() == null ? -1L : cifMo978new.mo8117for().getTime());
            vv0.m8965if(f22572for, sb4.toString());
            StringBuilder sb5 = new StringBuilder();
            sb5.append("ConnectStart: ");
            sb5.append(cifMo978new.mo8119if() == null ? -1L : cifMo978new.mo8119if().getTime());
            vv0.m8965if(f22572for, sb5.toString());
            StringBuilder sb6 = new StringBuilder();
            sb6.append("ConnectEnd: ");
            sb6.append(cifMo978new.mo8114do() == null ? -1L : cifMo978new.mo8114do().getTime());
            vv0.m8965if(f22572for, sb6.toString());
            StringBuilder sb7 = new StringBuilder();
            sb7.append("SslStart: ");
            sb7.append(cifMo978new.mo8124throw() == null ? -1L : cifMo978new.mo8124throw().getTime());
            vv0.m8965if(f22572for, sb7.toString());
            StringBuilder sb8 = new StringBuilder();
            sb8.append("SslEnd: ");
            sb8.append(cifMo978new.mo8122super() == null ? -1L : cifMo978new.mo8122super().getTime());
            vv0.m8965if(f22572for, sb8.toString());
            StringBuilder sb9 = new StringBuilder();
            sb9.append("SendingStart: ");
            sb9.append(cifMo978new.mo8112class() == null ? -1L : cifMo978new.mo8112class().getTime());
            vv0.m8965if(f22572for, sb9.toString());
            StringBuilder sb10 = new StringBuilder();
            sb10.append("SendingEnd: ");
            sb10.append(cifMo978new.mo8111catch() == null ? -1L : cifMo978new.mo8111catch().getTime());
            vv0.m8965if(f22572for, sb10.toString());
            StringBuilder sb11 = new StringBuilder();
            sb11.append("PushStart: ");
            sb11.append(cifMo978new.mo8110case() == null ? -1L : cifMo978new.mo8110case().getTime());
            vv0.m8965if(f22572for, sb11.toString());
            StringBuilder sb12 = new StringBuilder();
            sb12.append("PushEnd: ");
            sb12.append(cifMo978new.mo8125try() == null ? -1L : cifMo978new.mo8125try().getTime());
            vv0.m8965if(f22572for, sb12.toString());
            StringBuilder sb13 = new StringBuilder();
            sb13.append("ResponseStart: ");
            sb13.append(cifMo978new.mo8109break() == null ? -1L : cifMo978new.mo8109break().getTime());
            vv0.m8965if(f22572for, sb13.toString());
            StringBuilder sb14 = new StringBuilder();
            sb14.append("RequestEnd: ");
            sb14.append(cifMo978new.mo8118goto() != null ? cifMo978new.mo8118goto().getTime() : -1L);
            vv0.m8965if(f22572for, sb14.toString());
            vv0.m8965if(f22572for, "TotalTimeMs: " + cifMo978new.mo8126while());
            vv0.m8965if(f22572for, "RecvByteCount: " + cifMo978new.mo8115else());
            vv0.m8965if(f22572for, "SentByteCount: " + cifMo978new.mo8113const());
            vv0.m8965if(f22572for, "SocketReused: " + cifMo978new.mo8116final());
            vv0.m8965if(f22572for, "TtfbMs: " + cifMo978new.mo8120import());
        }
        rs rsVarMo977if = cnative.mo977if();
        if (rsVarMo977if != null) {
            vv0.m8965if(f22572for, "exception = " + rsVarMo977if.toString());
        }
        Cstatic cstaticMo979try = cnative.mo979try();
        if (cstaticMo979try != null) {
            vv0.m8965if(f22572for, "Cache: " + cstaticMo979try.mo37695break());
            vv0.m8965if(f22572for, "Protocol: " + cstaticMo979try.mo37705try());
            vv0.m8965if(f22572for, "HttpCode: " + cstaticMo979try.mo37700for());
            vv0.m8965if(f22572for, "ProxyServer: " + cstaticMo979try.mo37696case());
            for (Map.Entry<String, String> entry : cstaticMo979try.mo37702if()) {
                vv0.m8965if(f22572for, "=== " + entry.getKey() + " : " + entry.getValue() + " ===");
            }
        }
        vv0.m8965if(f22572for, "############# END #############");
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif m26733try() {
        if (f22573new == null) {
            synchronized (Cif.class) {
                if (f22573new == null) {
                    f22573new = new Cif();
                }
            }
        }
        return f22573new;
    }

    /* renamed from: break, reason: not valid java name */
    public String m26734break() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = URL.class.getDeclaredField("factory");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            declaredField.set(null, null);
            URL.setURLStreamHandlerFactory(null);
            return obj.getClass().getName();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m26735case(Context context) {
        Ccase.Cdo cdo = new Ccase.Cdo(context);
        cdo.mo37464goto(0, 102400L).mo37459else(true).mo37454break(true).mo37455catch(true).mo37465if("www.example.org", 32457, 32457).m37472static(true);
        Ccase ccaseMo37463for = cdo.mo37463for();
        this.f22574do = ccaseMo37463for;
        ccaseMo37463for.mo37440catch(new Cdo(this.f22575if));
        this.f22574do.mo37439break(new C0229if(this.f22575if));
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m26736else() {
        return this.f22574do != null;
    }

    /* renamed from: for, reason: not valid java name */
    public Creturn m26737for(Request request, Creturn.Cif cif) throws IOException {
        Celse.Cdo cdoMo6663try = this.f22574do.mo6663try(request.url().toString(), cif, this.f22575if);
        cdoMo6663try.mo1294try(request.method());
        Headers headers = request.headers();
        for (int i = 0; i < headers.size(); i++) {
            cdoMo6663try.mo1272do(headers.name(i), headers.value(i));
        }
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                cdoMo6663try.mo1272do("Content-Type", mediaTypeContentType.toString());
            }
            Buffer buffer = new Buffer();
            requestBodyBody.writeTo(buffer);
            cdoMo6663try.mo1273else(UploadDataProviders.m37417new(buffer.readByteArray()), this.f22575if);
        }
        return cdoMo6663try.mo1277for();
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m26738new() {
        if (!m26736else()) {
            m26735case(CartoonApplication.m24690do());
        }
        return this.f22574do;
    }

    /* renamed from: this, reason: not valid java name */
    public Cnew m26739this(URL url) {
        try {
            return (Cnew) this.f22574do.mo37499case(url);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
