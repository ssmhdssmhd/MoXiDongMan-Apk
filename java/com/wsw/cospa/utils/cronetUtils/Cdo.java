package com.wsw.cospa.utils.cronetUtils;

import android.support.v4.vv0;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* renamed from: com.wsw.cospa.utils.cronetUtils.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo implements Interceptor {
    /* renamed from: do, reason: not valid java name */
    private Response m26729do(Request request, Call call) throws IOException {
        Cnew cnew = new Cnew(request, call);
        Cif.m26733try().m26737for(request, cnew).mo37609case();
        return cnew.m26744break();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        if (!Cif.m26733try().m26736else()) {
            return chain.proceed(chain.request());
        }
        try {
            vv0.m8965if("CronetTip", "Cronet Cannel");
            return m26729do(chain.request(), chain.call());
        } catch (Exception e) {
            vv0.m8965if("CronetError", e.getMessage());
            return chain.proceed(chain.request());
        }
    }
}
