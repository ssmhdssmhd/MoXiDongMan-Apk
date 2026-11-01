package com.wsw.cospa.utils.download;

import com.wsw.cospa.utils.Cvolatile;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* renamed from: com.wsw.cospa.utils.download.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: com.wsw.cospa.utils.download.do$do, reason: invalid class name and collision with other inner class name */
    public class C0232do implements Interceptor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ProgressResponseListener f22610do;

        public C0232do(ProgressResponseListener progressResponseListener) {
            this.f22610do = progressResponseListener;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Response responseProceed = chain.proceed(chain.request());
            return responseProceed.newBuilder().body(new Cfor(responseProceed.body(), this.f22610do)).build();
        }
    }

    /* renamed from: com.wsw.cospa.utils.download.do$if, reason: invalid class name */
    public class Cif implements Interceptor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ProgressRequestListener f22611do;

        public Cif(ProgressRequestListener progressRequestListener) {
            this.f22611do = progressRequestListener;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            return chain.proceed(request.newBuilder().method(request.method(), new com.wsw.cospa.utils.download.Cif(request.body(), this.f22611do)).build());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static OkHttpClient m26855do(ProgressRequestListener progressRequestListener) {
        OkHttpClient.Builder builderM27161else = Cvolatile.m27161else();
        builderM27161else.addInterceptor(new Cif(progressRequestListener));
        return builderM27161else.build();
    }

    /* renamed from: if, reason: not valid java name */
    public static OkHttpClient m26856if(ProgressResponseListener progressResponseListener) {
        OkHttpClient.Builder builderM27161else = Cvolatile.m27161else();
        builderM27161else.addInterceptor(new C0232do(progressResponseListener));
        return builderM27161else.build();
    }
}
