package com.wsw.cospa.model.impl;

import android.support.v4.zk;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* renamed from: com.wsw.cospa.model.impl.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor extends Converter.Factory {

    /* renamed from: do, reason: not valid java name */
    private String f22373do;

    private Cfor() {
    }

    /* renamed from: for, reason: not valid java name */
    public static Cfor m26421for(String str) {
        return new Cfor(str);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfor m26422if() {
        return new Cfor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public /* synthetic */ String m26423new(ResponseBody responseBody) throws IOException {
        Charset charset;
        if (!TextUtils.isEmpty(this.f22373do)) {
            return new String(responseBody.bytes(), this.f22373do);
        }
        MediaType mediaTypeContentType = responseBody.contentType();
        byte[] bArrBytes = responseBody.bytes();
        if (mediaTypeContentType != null && (charset = mediaTypeContentType.charset()) != null) {
            String strDisplayName = charset.displayName();
            if (!TextUtils.isEmpty(strDisplayName)) {
                return new String(bArrBytes, Charset.forName(strDisplayName));
            }
        }
        Iterator<Element> it = Jsoup.parse(new String(Arrays.copyOfRange(bArrBytes, 0, 1024), "utf-8")).getElementsByTag("meta").iterator();
        while (it.hasNext()) {
            Element next = it.next();
            String strAttr = next.attr("content");
            String strAttr2 = next.attr("http-equiv");
            String strAttr3 = next.attr("charset");
            if (!strAttr3.isEmpty() && !TextUtils.isEmpty(strAttr3)) {
                return new String(bArrBytes, Charset.forName(strAttr3));
            }
            if (strAttr2.toLowerCase().equals("content-type")) {
                String strSubstring = strAttr.toLowerCase().contains("charset") ? strAttr.substring(strAttr.toLowerCase().indexOf("charset") + 8) : strAttr.substring(strAttr.toLowerCase().indexOf(";") + 1);
                if (TextUtils.isEmpty(strSubstring)) {
                    continue;
                } else {
                    try {
                        return new String(bArrBytes, Charset.forName(strSubstring));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return new String(bArrBytes, Charset.forName(zk.m10223for(new ByteArrayInputStream(bArrBytes))));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, String> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new Converter() { // from class: android.support.v4.d70
            @Override // retrofit2.Converter
            public final Object convert(Object obj) {
                return this.f945do.m26423new((ResponseBody) obj);
            }
        };
    }

    private Cfor(String str) {
        this.f22373do = str;
    }
}
