package com.efs.sdk.base.core.a;

import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.http.AbsHttpListener;
import com.efs.sdk.base.http.HttpResponse;
import freemarker.core.b2;
import java.util.Map;

/* loaded from: classes.dex */
public final class d extends AbsHttpListener {

    public static class a {
        private static final d a = new d(0);
    }

    public /* synthetic */ d(byte b) {
        this();
    }

    private static void b(HttpResponse httpResponse) {
        f.a.a.a(String.valueOf(httpResponse.getHttpCode()), httpResponse.getBizCode(), httpResponse.getReqUrl());
    }

    private static void c(HttpResponse httpResponse) {
        int i;
        if (((Map) httpResponse.extra).containsKey("cver")) {
            String str = (String) ((Map) httpResponse.extra).get("cver");
            if (!TextUtils.isEmpty(str) && (i = Integer.parseInt(str)) > com.efs.sdk.base.core.config.a.c.a().d.a) {
                com.efs.sdk.base.core.config.a.c.a().a(i);
            }
        }
    }

    @Override // com.efs.sdk.base.core.util.a.b
    public final /* synthetic */ void a(@NonNull com.efs.sdk.base.core.util.a.c<HttpResponse> cVar, @Nullable HttpResponse httpResponse) {
        HttpResponse httpResponse2 = httpResponse;
        if (httpResponse2 != null) {
            com.efs.sdk.base.core.util.b.b bVar = (com.efs.sdk.base.core.util.b.b) cVar;
            ((Map) httpResponse2.extra).putAll(bVar.f);
            bVar.f.clear();
            com.efs.sdk.base.core.a.a.a();
            com.efs.sdk.base.core.a.a.a(httpResponse2);
        }
    }

    @Override // com.efs.sdk.base.http.AbsHttpListener
    public final void onError(@Nullable HttpResponse httpResponse) {
        a(httpResponse);
        if (httpResponse == null) {
            return;
        }
        b(httpResponse);
        c(httpResponse);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005b  */
    @Override // com.efs.sdk.base.http.AbsHttpListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onSuccess(@NonNull HttpResponse httpResponse) {
        if (!((Map) httpResponse.extra).containsKey("flow_limit") || !Boolean.FALSE.toString().equals(((Map) httpResponse.extra).get("flow_limit"))) {
            String str = ((Map) httpResponse.extra).containsKey("type") ? (String) ((Map) httpResponse.extra).get("type") : "";
            if (((Map) httpResponse.extra).containsKey("size")) {
                String str2 = (String) ((Map) httpResponse.extra).get("size");
                int i = !TextUtils.isEmpty(str2) ? Integer.parseInt(str2) : 0;
                com.efs.sdk.base.core.c.b bVarA = com.efs.sdk.base.core.c.b.a();
                Message messageObtain = Message.obtain();
                messageObtain.what = 0;
                messageObtain.obj = str;
                messageObtain.arg1 = i;
                bVarA.sendMessage(messageObtain);
            }
        }
        b(httpResponse);
        f.a.a.c.b.incrementAndGet();
        c(httpResponse);
        a(httpResponse);
    }

    private d() {
    }

    public static d a() {
        return a.a;
    }

    private static void a(@Nullable HttpResponse httpResponse) {
        String str;
        if (ControllerCenter.getGlobalEnvStruct().isDebug()) {
            if (httpResponse == null) {
                str = "upload result : " + b2.f23510do;
            } else {
                str = "upload result : " + httpResponse.succ + ", resp is " + httpResponse.toString();
            }
            com.efs.sdk.base.core.util.d.a("efs.px.api", str);
        }
    }
}
