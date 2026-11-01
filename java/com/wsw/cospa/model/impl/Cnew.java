package com.wsw.cospa.model.impl;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* renamed from: com.wsw.cospa.model.impl.new, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnew implements Interceptor {

    /* renamed from: do, reason: not valid java name */
    private int f22390do;

    /* renamed from: if, reason: not valid java name */
    private int f22391if = 0;

    public Cnew(int i) {
        this.f22390do = i;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        int i;
        Request request = chain.request();
        Response responseProceed = chain.proceed(request);
        while (!responseProceed.isSuccessful() && (i = this.f22391if) < this.f22390do) {
            this.f22391if = i + 1;
            responseProceed.close();
            responseProceed = chain.proceed(request);
        }
        return responseProceed;
    }
}
