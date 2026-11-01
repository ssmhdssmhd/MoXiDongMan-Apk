package com.wsw.cospa.utils.cronetUtils;

import android.support.v4.pk0;
import android.support.v4.us;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.BufferedSink;
import okio.Okio;
import org.chromium.net.urlconnection.Cnew;

/* renamed from: com.wsw.cospa.utils.cronetUtils.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor implements Interceptor {

    /* renamed from: do, reason: not valid java name */
    private static final String f22570do = "utf-8";

    /* renamed from: if, reason: not valid java name */
    private static final Charset f22571if = StandardCharsets.UTF_8;

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        String strDecode = URLDecoder.decode(request.url().toString(), f22570do);
        String strMethod = request.method();
        RequestBody requestBodyBody = request.body();
        OutputStream outputStream = null;
        try {
            try {
                Cnew cnewM26739this = Cif.m26733try().m26739this(new URL(strDecode));
                cnewM26739this.setRequestMethod(strMethod);
                for (String str : request.headers().names()) {
                    cnewM26739this.addRequestProperty(str, request.headers().get(str));
                }
                if (requestBodyBody != null) {
                    if (requestBodyBody.contentType() != null) {
                        cnewM26739this.setRequestProperty("Content-Type", requestBodyBody.contentType().toString());
                    }
                    cnewM26739this.setDoOutput(true);
                    try {
                        outputStream = cnewM26739this.getOutputStream();
                        BufferedSink bufferedSinkBuffer = Okio.buffer(Okio.sink(outputStream));
                        request.body().writeTo(bufferedSinkBuffer);
                        bufferedSinkBuffer.flush();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                int responseCode = cnewM26739this.getResponseCode();
                String responseMessage = cnewM26739this.getResponseMessage();
                cnewM26739this.getContentLength();
                InputStream errorStream = (responseCode < 200 || responseCode > 399) ? cnewM26739this.getErrorStream() : cnewM26739this.getInputStream();
                Map<String, List<String>> headerFields = cnewM26739this.getHeaderFields();
                List<String> list = headerFields.get("Content-Type");
                List<String> list2 = headerFields.get(pk0.f5055if);
                String str2 = "";
                long j = 0;
                if (list != null && list.size() > 0) {
                    str2 = list.get(list.size() - 1);
                }
                if (list2 != null && list2.size() > 0) {
                    j = Long.parseLong(list2.get(list2.size() - 1));
                }
                us usVar = new us(cnewM26739this, MediaType.parse(str2), j, errorStream);
                Response.Builder builder = new Response.Builder();
                for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
                    for (String str3 : entry.getValue()) {
                        if (entry.getKey() != null) {
                            builder.addHeader(entry.getKey(), str3);
                        }
                    }
                }
                return builder.body(usVar).code(responseCode).request(request).protocol(Protocol.HTTP_1_1).message(responseMessage).build();
            } finally {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            throw e3;
        }
    }
}
