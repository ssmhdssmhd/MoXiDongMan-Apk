package com.wsw.cospa.utils.analyzeUrl.impl;

import io.reactivex.Cnew;
import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

/* loaded from: classes2.dex */
public interface IHttpGetApi {
    @GET
    Call<ResponseBody> getJson(@Url String str);

    @GET
    Cnew<Response<String>> getWebContent(@Url String str, @HeaderMap Map<String, String> map);

    @GET
    Call<String> getWebContentCall(@Url String str, @HeaderMap Map<String, String> map);

    @GET
    Cnew<Response<String>> searchBook(@Url String str, @QueryMap(encoded = true) Map<String, String> map, @HeaderMap Map<String, String> map2);
}
