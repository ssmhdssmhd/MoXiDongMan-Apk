package com.wsw.cospa.utils.analyzeUrl.impl;

import io.reactivex.Cnew;
import java.util.Map;
import okhttp3.RequestBody;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.HeaderMap;
import retrofit2.http.POST;
import retrofit2.http.Url;

/* loaded from: classes2.dex */
public interface IHttpPostApi {
    @FormUrlEncoded
    @POST
    Cnew<Response<String>> searchBook(@Url String str, @FieldMap(encoded = true) Map<String, String> map, @HeaderMap Map<String, String> map2);

    @POST
    Cnew<Response<String>> searchBookBody(@Url String str, @Body RequestBody requestBody, @HeaderMap Map<String, String> map);
}
