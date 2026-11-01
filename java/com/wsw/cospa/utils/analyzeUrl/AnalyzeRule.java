package com.wsw.cospa.utils.analyzeUrl;

import android.support.v4.g31;
import android.support.v4.l22;
import android.support.v4.on0;
import android.support.v4.p32;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.util.Base64;
import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.google.protobuf.Message;
import com.google.protobuf.n;
import com.googlecode.protobuf.format.Ccase;
import com.sun.script.javascript.RhinoScriptEngine;
import com.uc.crashsdk.export.LogType;
import com.wsw.cospa.bean.BaseComicBean;
import com.wsw.cospa.model.impl.Cif;
import com.wsw.cospa.model.impl.Ctry;
import com.wsw.cospa.utils.Cvolatile;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.ChapterDetailResponseOuterClass;
import com.wsw.cospa.utils.analyzeUrl.Utils.protobuf.dmzj.comic.DetailResponse;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpGetApi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Security;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.script.ScriptEngine;
import javax.script.ScriptException;
import javax.script.SimpleBindings;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.jce.provider.Cdo;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.mozilla.javascript.ConsString;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.NativeObject;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

/* loaded from: classes2.dex */
public class AnalyzeRule {
    private static final String ECB_PADDING = "RSA/ECB/PKCS1Padding";
    private static final int ENCRYPT_BLOCK = 245;
    private static final int MAX_DECRYPT_BLOCK = 128;
    private static final int MAX_ENCRYPT_BLOCK = 117;
    private static final String RSA = "RSA";
    private Map<String, String> _map;
    private AnalyzeByJSonPath analyzeByJSonPath;
    private AnalyzeByJSoup analyzeByJSoup;
    private AnalyzeByXPath analyzeByXPath;
    private String baseUrl;
    private BaseComicBean book;
    private String bookContentVariable;
    private final String errorTag;
    private String headersJson;
    private int imgPage;
    private Boolean isJSON;
    private Object object;
    private boolean objectChangedJP;
    private boolean objectChangedJS;
    private boolean objectChangedXP;
    private static final Pattern putPattern = Pattern.compile("@put:\\{.+?\\}", 2);
    private static final Pattern getPattern = Pattern.compile("@get:\\{.+?\\}", 2);
    private static final Pattern jsPattern = Pattern.compile("(<js>[\\w\\W]*?</js>|@js:[\\w\\W]*$)", 2);
    private static final Pattern expPattern = Pattern.compile("\\{\\{([\\w\\W]*?)\\}\\}");
    private static final Pattern headerPattern = Pattern.compile("@Header:\\{.+?\\}", 2);
    private static final Scriptable jsArray = getJsArray();
    private static final Scriptable jsObject = getJsObject();
    private static int KEYSIZE = 2048;

    /* renamed from: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {
        public static final /* synthetic */ int[] $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode = iArr;
            try {
                iArr[Mode.Js.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[Mode.WebView.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[Mode.WebViewMobile.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[Mode.JSon.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[Mode.XPath.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[Mode.Default.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static class EngineHelper {
        private static final ScriptEngine INSTANCE = new RhinoScriptEngine();

        private EngineHelper() {
        }
    }

    public enum Mode {
        XPath,
        JSon,
        Default,
        Js,
        WebView,
        WebViewMobile
    }

    public class SourceRule {
        public Mode mode;
        public String rule;

        public SourceRule(String str, Mode mode) {
            this.mode = mode;
            if (mode == Mode.Js) {
                if (str.startsWith("<js>")) {
                    this.rule = str.substring(4, str.lastIndexOf("<"));
                    return;
                } else {
                    this.rule = str.substring(4);
                    return;
                }
            }
            if (l22.m4557default(str, "@web:")) {
                this.mode = Mode.WebView;
                this.rule = str.substring(5);
                return;
            }
            if (l22.m4557default(str, "@webm:")) {
                this.mode = Mode.WebViewMobile;
                this.rule = str.substring(5);
                return;
            }
            if (l22.m4557default(str, "@XPath:")) {
                this.mode = Mode.XPath;
                this.rule = str.substring(7);
                return;
            }
            if (l22.m4557default(str, "//")) {
                this.mode = Mode.XPath;
                this.rule = str;
            } else if (l22.m4557default(str, "@JSon:")) {
                this.mode = Mode.JSon;
                this.rule = str.substring(6);
            } else if (!str.startsWith("$.")) {
                this.rule = str;
            } else {
                this.mode = Mode.JSon;
                this.rule = str;
            }
        }
    }

    public AnalyzeRule(BaseComicBean baseComicBean) {
        this.errorTag = "JS_CODE_ERROR: ";
        this.baseUrl = null;
        this.imgPage = -1;
        this.analyzeByXPath = null;
        this.analyzeByJSoup = null;
        this.analyzeByJSonPath = null;
        this.objectChangedXP = false;
        this.objectChangedJS = false;
        this.objectChangedJP = false;
        this._map = null;
        this.bookContentVariable = null;
        this.book = baseComicBean;
    }

    private byte[] ByteBufferToBytes(ByteBuffer byteBuffer) {
        byteBuffer.rewind();
        byte[] bArr = new byte[byteBuffer.limit() - byteBuffer.position()];
        byteBuffer.get(bArr);
        return bArr;
    }

    private Object UnWrapFromJS(Object obj) {
        if (obj instanceof ConsString) {
            return String.valueOf(obj);
        }
        if (obj instanceof Double) {
            Double d = (Double) obj;
            if (d.doubleValue() % 1.0d == 0.0d) {
                return Integer.valueOf(d.intValue());
            }
        }
        if (obj instanceof NativeObject) {
            NativeObject nativeObject = (NativeObject) obj;
            HashMap map = new HashMap();
            for (Object obj2 : nativeObject.keySet()) {
                map.put((String) obj2, UnWrapFromJS(nativeObject.get(obj2)));
            }
            return map;
        }
        int i = 0;
        if (obj instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) obj;
            ArrayList arrayList = new ArrayList();
            while (i < nativeArray.size()) {
                arrayList.add(UnWrapFromJS(nativeArray.get(i)));
                i++;
            }
            return arrayList;
        }
        if (!(obj instanceof Object[])) {
            return obj;
        }
        Object[] objArr = (Object[]) obj;
        ArrayList arrayList2 = new ArrayList();
        int length = objArr.length;
        while (i < length) {
            arrayList2.add(UnWrapFromJS(objArr[i]));
            i++;
        }
        return arrayList2;
    }

    private Object WrapForJS(Object obj) {
        if ((obj instanceof Elements) || (obj instanceof Element)) {
            return String.valueOf(obj);
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            NativeObject nativeObject = new NativeObject();
            nativeObject.setPrototype(jsObject);
            for (Object obj2 : map.keySet()) {
                ScriptableObject.putProperty(nativeObject, (String) obj2, WrapForJS(map.get(obj2)));
            }
            return nativeObject;
        }
        if (!(obj instanceof List)) {
            return obj;
        }
        List list = (List) obj;
        NativeArray nativeArray = new NativeArray(list.size());
        nativeArray.setPrototype(jsArray);
        for (int i = 0; i < list.size(); i++) {
            ScriptableObject.putProperty(nativeArray, i, WrapForJS(list.get(i)));
        }
        return nativeArray;
    }

    public static String[] aJaxUrls(final String[] strArr, int i) throws InterruptedException {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i);
        final String[] strArr2 = new String[strArr.length];
        for (final int i2 = 0; i2 < strArr.length; i2++) {
            executorServiceNewFixedThreadPool.execute(new Runnable() { // from class: android.support.v4.n1
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyzeRule.lambda$aJaxUrls$0(strArr2, i2, strArr);
                }
            });
        }
        executorServiceNewFixedThreadPool.shutdown();
        while (!executorServiceNewFixedThreadPool.isTerminated()) {
            try {
                Thread.sleep(50L);
            } catch (Exception unused) {
            }
        }
        return strArr2;
    }

    private void analyzeVariable(Map<String, String> map) throws ScriptException {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            BaseComicBean baseComicBean = this.book;
            if (baseComicBean != null) {
                baseComicBean.putVariable(entry.getKey(), getString(entry.getValue(), false));
            }
            Map<String, String> map2 = this._map;
            if (map2 != null) {
                map2.put(entry.getKey(), getString(entry.getValue(), false));
            }
        }
    }

    public static byte[] decryptRSAWithPrivateKey(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException {
        try {
            if (str.contains(Cclass.f28652do)) {
                str = str.replaceAll(Cclass.f28652do, "+");
            }
            int i = 0;
            byte[] bArrDecode = Base64.decode(str, 0);
            byte[] bArrDecode2 = Base64.decode(str2, 0);
            Cipher cipher = Cipher.getInstance(str3);
            cipher.init(2, getPrivateKey(bArrDecode2));
            int length = bArrDecode.length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i2 = 0;
            while (true) {
                int i3 = length - i;
                if (i3 <= 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(i3 > 128 ? cipher.doFinal(bArrDecode, i, 128) : cipher.doFinal(bArrDecode, i, i3));
                i2++;
                i = i2 * 128;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private Object evalJS(String str, Object obj) {
        if (l22.m4571return(str)) {
            return obj;
        }
        SimpleBindings simpleBindings = new SimpleBindings();
        simpleBindings.put(LogType.JAVA_TYPE, (Object) this);
        simpleBindings.put("headers", (Object) this.headersJson);
        simpleBindings.put("result", WrapForJS(obj));
        simpleBindings.put("baseUrl", (Object) this.baseUrl);
        new AnalyzeYCYJS().setBindings(simpleBindings);
        int i = this.imgPage;
        if (-1 != i) {
            simpleBindings.put("imgPage", (Object) Integer.valueOf(i));
        }
        try {
            return UnWrapFromJS(EngineHelper.INSTANCE.eval(str, simpleBindings));
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    private AnalyzeByJSonPath getAnalyzeByJSonPath(Object obj) {
        return obj != null ? obj instanceof String ? new AnalyzeByJSonPath().parse(obj.toString()) : new AnalyzeByJSonPath().parse(obj) : getAnalyzeByJSonPath();
    }

    private AnalyzeByJSoup getAnalyzeByJSoup(Object obj) {
        return obj != null ? new AnalyzeByJSoup().parse(obj.toString()) : getAnalyzeByJSoup();
    }

    private AnalyzeByXPath getAnalyzeByXPath(Object obj) {
        return obj != null ? new AnalyzeByXPath().parse(obj.toString()) : getAnalyzeByXPath();
    }

    public static String getDMZJChapterResponse(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException {
        try {
            return new Ccase().m22577break((Message) ChapterDetailResponseOuterClass.ChapterDetailResponse.parseFrom(decryptRSAWithPrivateKey(str, str2, str3)).getDataOrBuilder());
        } catch (n e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getDMZJDetailResponse(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException {
        try {
            return new Ccase().m22577break((Message) DetailResponse.ComicDetailResponse.parseFrom(decryptRSAWithPrivateKey(str, str2, str3)).getDataOrBuilder());
        } catch (n e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Scriptable getJsArray() throws RuntimeException {
        Scriptable arrayPrototype = ScriptableObject.getArrayPrototype(Context.enter().initStandardObjects());
        Context.exit();
        return arrayPrototype;
    }

    private static Scriptable getJsObject() throws RuntimeException {
        Scriptable objectPrototype = ScriptableObject.getObjectPrototype(Context.enter().initStandardObjects());
        Context.exit();
        return objectPrototype;
    }

    public static PrivateKey getPrivateKey(byte[] bArr) throws Exception {
        return KeyFactory.getInstance(RSA).generatePrivate(new PKCS8EncodedKeySpec(bArr));
    }

    public static PublicKey getPublicKey(byte[] bArr) throws Exception {
        return KeyFactory.getInstance(RSA).generatePublic(new X509EncodedKeySpec(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$aJaxUrls$0(String[] strArr, int i, String[] strArr2) {
        try {
            strArr[i] = Cvolatile.m27161else().build().newCall(new Request.Builder().url(strArr2[i]).build()).execute().body().string();
        } catch (Exception unused) {
            strArr[i] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$aJaxUrls$1(String[] strArr, int i, String[] strArr2, String[] strArr3) {
        try {
            vv0.m8963do("AnalyzeRule", strArr[i] + "-- " + strArr2[i]);
            Map map = (Map) JSON.parse(strArr2[i]);
            Map map2 = (Map) JSON.parse(map.get("headers").toString());
            vv0.m8963do("AnalyzeRule", "-- " + map);
            Request.Builder builderUrl = new Request.Builder().url(strArr[i]);
            if (map2 != null) {
                builderUrl = builderUrl.headers(Headers.of((Map<String, String>) map2));
            }
            String str = (String) map.get("body");
            String str2 = (String) map.get("content-type");
            String str3 = (String) map.get("method");
            if (str != null) {
                if (str3 == null || !str3.equalsIgnoreCase("POST")) {
                    if (str3.equalsIgnoreCase("DELETE")) {
                        if (str2 != null && str2.equals("application/json")) {
                            builderUrl = builderUrl.delete(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str));
                        } else if (str2 == null || !str2.equals("text/xml")) {
                            FormBody.Builder builder = new FormBody.Builder();
                            for (String str4 : str.split("&")) {
                                int iIndexOf = str4.indexOf("=");
                                builder.add(str4.substring(0, iIndexOf), str4.substring(iIndexOf + 1));
                            }
                            builderUrl = builderUrl.delete(builder.build());
                        } else {
                            builderUrl = builderUrl.delete(RequestBody.create(MediaType.parse("text/xml; charset=utf-8"), str));
                        }
                    } else if (str3.equalsIgnoreCase("PATCH")) {
                        if (str2 != null && str2.equals("application/json")) {
                            builderUrl = builderUrl.patch(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str));
                        } else if (str2 == null || !str2.equals("text/xml")) {
                            FormBody.Builder builder2 = new FormBody.Builder();
                            for (String str5 : str.split("&")) {
                                int iIndexOf2 = str5.indexOf("=");
                                builder2.add(str5.substring(0, iIndexOf2), str5.substring(iIndexOf2 + 1));
                            }
                            builderUrl = builderUrl.patch(builder2.build());
                        } else {
                            builderUrl = builderUrl.patch(RequestBody.create(MediaType.parse("text/xml; charset=utf-8"), str));
                        }
                    } else if (str3.equalsIgnoreCase("PUT")) {
                        if (str2 != null && str2.equals("application/json")) {
                            builderUrl = builderUrl.put(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str));
                        } else if (str2 == null || !str2.equals("text/xml")) {
                            FormBody.Builder builder3 = new FormBody.Builder();
                            for (String str6 : str.split("&")) {
                                int iIndexOf3 = str6.indexOf("=");
                                builder3.add(str6.substring(0, iIndexOf3), str6.substring(iIndexOf3 + 1));
                            }
                            builderUrl = builderUrl.put(builder3.build());
                        } else {
                            builderUrl = builderUrl.put(RequestBody.create(MediaType.parse("text/xml; charset=utf-8"), str));
                        }
                    }
                } else if (str2 != null && str2.equals("application/json")) {
                    builderUrl = builderUrl.post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str));
                } else if (str2 == null || !str2.equals("text/xml")) {
                    FormBody.Builder builder4 = new FormBody.Builder();
                    for (String str7 : str.split("&")) {
                        int iIndexOf4 = str7.indexOf("=");
                        builder4.add(str7.substring(0, iIndexOf4), str7.substring(iIndexOf4 + 1));
                    }
                    builderUrl = builderUrl.post(builder4.build()).headers(Headers.of((Map<String, String>) map2));
                } else {
                    builderUrl = builderUrl.post(RequestBody.create(MediaType.parse("text/xml; charset=utf-8"), str));
                }
            } else if (str3.equalsIgnoreCase("GET")) {
                builderUrl = builderUrl.get();
            } else if (str3.equalsIgnoreCase("HEAD")) {
                builderUrl = builderUrl.head();
            }
            strArr3[i] = Cvolatile.m27161else().build().newCall(builderUrl.build()).execute().body().string();
        } catch (Exception unused) {
            strArr3[i] = null;
        }
    }

    private List<SourceRule> splitCoverSourceRule(String str) throws ScriptException {
        Mode mode;
        String str2;
        ArrayList arrayList = new ArrayList();
        if (l22.m4571return(str)) {
            return arrayList;
        }
        int iEnd = 0;
        if (str.contains("{{") && str.contains("}}")) {
            SimpleBindings simpleBindings = new SimpleBindings();
            simpleBindings.put(LogType.JAVA_TYPE, (Object) this);
            simpleBindings.put("headers", (Object) this.headersJson);
            simpleBindings.put("result", WrapForJS(this.object));
            simpleBindings.put("baseUrl", (Object) this.baseUrl);
            new AnalyzeYCYJS().setBindings(simpleBindings);
            int i = this.imgPage;
            if (-1 != i) {
                simpleBindings.put("imgPage", (Object) Integer.valueOf(i));
            }
            p32.Cdo cdoM5851do = p32.m5851do(str, "", "{{", "}}");
            while (cdoM5851do != null) {
                try {
                    if (l22.m4571return(cdoM5851do.m5856do())) {
                        break;
                    }
                    Object objEval = EngineHelper.INSTANCE.eval(cdoM5851do.m5856do().substring(2, cdoM5851do.m5856do().length() - 2), simpleBindings);
                    str = objEval instanceof String ? cdoM5851do.m5859new((String) objEval) : ((objEval instanceof Double) && ((Double) objEval).doubleValue() % 1.0d == 0.0d) ? cdoM5851do.m5859new(String.format("%.0f", (Double) objEval)) : cdoM5851do.m5859new(String.valueOf(objEval));
                    cdoM5851do = p32.m5851do(str, "", "{{", "}}");
                } catch (Exception e) {
                    str = "JS_CODE_ERROR: " + e.getMessage();
                }
            }
        }
        if (l22.m4557default(str, "@XPath:")) {
            mode = Mode.XPath;
            str = str.substring(7);
        } else if (l22.m4557default(str, "@JSon:")) {
            mode = Mode.JSon;
            str = str.substring(6);
        } else {
            mode = this.isJSON.booleanValue() ? Mode.JSon : Mode.Default;
        }
        p32.Cdo cdoM5851do2 = p32.m5851do(str, "@put:", "{", "}");
        while (cdoM5851do2 != null && !l22.m4571return(cdoM5851do2.m5856do())) {
            try {
                analyzeVariable((Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(cdoM5851do2.m5856do().substring(5), new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.4
                }.getType()));
            } catch (Exception unused) {
            }
            str = cdoM5851do2.m5859new("");
            cdoM5851do2 = p32.m5851do(str, "@put:", "{", "}");
        }
        p32.Cdo cdoM5851do3 = p32.m5851do(str, "@get:", "{", "}");
        while (cdoM5851do3 != null && !l22.m4571return(cdoM5851do3.m5856do())) {
            BaseComicBean baseComicBean = this.book;
            if (baseComicBean == null || baseComicBean.getVariableMap() == null) {
                Map<String, String> map = this._map;
                str2 = map != null ? map.get(cdoM5851do3.m5856do().substring(6, cdoM5851do3.m5856do().length() - 1)) : "";
            } else {
                str2 = this.book.getVariableMap().get(cdoM5851do3.m5856do().substring(6, cdoM5851do3.m5856do().length() - 1));
            }
            if (str2 == null) {
                str2 = "";
            }
            str = cdoM5851do3.m5859new(str2);
            cdoM5851do3 = p32.m5851do(str, "@get:", "{", "}");
        }
        p32.Cdo cdoM5851do4 = p32.m5851do(str, "@Header:", "{", "}");
        if (cdoM5851do4 != null && !l22.m4571return(cdoM5851do4.m5856do())) {
            String strSubstring = cdoM5851do4.m5856do().substring(8);
            try {
                if (this.book != null) {
                    this.book.putVariable(wq.l0, new GsonBuilder().disableHtmlEscaping().create().toJson(AnalyzeHeaders.covertMap(strSubstring, this.book)));
                } else if (this.bookContentVariable != null) {
                    this.bookContentVariable = strSubstring;
                }
            } catch (Exception unused2) {
            }
            str = cdoM5851do4.m5859new("");
        }
        Matcher matcher = jsPattern.matcher(str);
        while (matcher.find()) {
            if (matcher.start() > iEnd) {
                String strTrim = str.substring(iEnd, matcher.start()).replaceAll("\n", "").trim();
                if (!l22.m4571return(strTrim)) {
                    arrayList.add(new SourceRule(strTrim, mode));
                }
            }
            arrayList.add(new SourceRule(matcher.group(), Mode.Js));
            iEnd = matcher.end();
        }
        if (str.length() > iEnd) {
            String strTrim2 = str.substring(iEnd).replaceAll("\n", "").trim();
            if (!l22.m4571return(strTrim2)) {
                arrayList.add(new SourceRule(strTrim2, mode));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<SourceRule> splitSourceRule(String str) throws ScriptException {
        Mode mode;
        String str2;
        ArrayList arrayList = new ArrayList();
        if (l22.m4571return(str)) {
            return arrayList;
        }
        int iEnd = 0;
        if (str.contains("{{") && str.contains("}}")) {
            SimpleBindings simpleBindings = new SimpleBindings();
            simpleBindings.put(LogType.JAVA_TYPE, (Object) this);
            simpleBindings.put("headers", (Object) this.headersJson);
            simpleBindings.put("result", WrapForJS(this.object));
            simpleBindings.put("baseUrl", (Object) this.baseUrl);
            new AnalyzeYCYJS().setBindings(simpleBindings);
            int i = this.imgPage;
            if (-1 != i) {
                simpleBindings.put("imgPage", (Object) Integer.valueOf(i));
            }
            p32.Cdo cdoM5851do = p32.m5851do(str, "", "{{", "}}");
            while (cdoM5851do != null && !l22.m4571return(cdoM5851do.m5856do())) {
                Object objEval = EngineHelper.INSTANCE.eval(cdoM5851do.m5856do().substring(2, cdoM5851do.m5856do().length() - 2), simpleBindings);
                if (objEval instanceof String) {
                    str = cdoM5851do.m5859new((String) objEval);
                } else if (objEval instanceof Double) {
                    Double d = (Double) objEval;
                    str = d.doubleValue() % 1.0d == 0.0d ? cdoM5851do.m5859new(String.format("%.0f", d)) : cdoM5851do.m5859new(String.valueOf(objEval));
                }
                cdoM5851do = p32.m5851do(str, "", "{{", "}}");
            }
        }
        if (l22.m4557default(str, "@XPath:")) {
            mode = Mode.XPath;
            str = str.substring(7);
        } else if (l22.m4557default(str, "@JSon:")) {
            mode = Mode.JSon;
            str = str.substring(6);
        } else {
            mode = this.isJSON.booleanValue() ? Mode.JSon : Mode.Default;
        }
        p32.Cdo cdoM5851do2 = p32.m5851do(str, "@put:", "{", "}");
        while (cdoM5851do2 != null && !l22.m4571return(cdoM5851do2.m5856do())) {
            try {
                analyzeVariable((Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(cdoM5851do2.m5856do().substring(5), new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.3
                }.getType()));
            } catch (Exception unused) {
            }
            str = cdoM5851do2.m5859new("");
            cdoM5851do2 = p32.m5851do(str, "@put:", "{", "}");
        }
        p32.Cdo cdoM5851do3 = p32.m5851do(str, "@get:", "{", "}");
        while (cdoM5851do3 != null && !l22.m4571return(cdoM5851do3.m5856do())) {
            BaseComicBean baseComicBean = this.book;
            if (baseComicBean == null || baseComicBean.getVariableMap() == null) {
                Map<String, String> map = this._map;
                str2 = map != null ? map.get(cdoM5851do3.m5856do().substring(6, cdoM5851do3.m5856do().length() - 1)) : "";
            } else {
                str2 = this.book.getVariableMap().get(cdoM5851do3.m5856do().substring(6, cdoM5851do3.m5856do().length() - 1));
            }
            if (str2 == null) {
                str2 = "";
            }
            str = cdoM5851do3.m5859new(str2);
            cdoM5851do3 = p32.m5851do(str, "@get:", "{", "}");
        }
        p32.Cdo cdoM5851do4 = p32.m5851do(str, "@Header:", "{", "}");
        if (cdoM5851do4 != null && !l22.m4571return(cdoM5851do4.m5856do())) {
            String strSubstring = cdoM5851do4.m5856do().substring(8);
            try {
                if (this.book != null) {
                    this.book.putVariable(wq.n0, new GsonBuilder().disableHtmlEscaping().create().toJson(AnalyzeHeaders.covertMap(strSubstring, this.book)));
                } else if (this.bookContentVariable != null) {
                    this.bookContentVariable = strSubstring;
                }
            } catch (Exception unused2) {
            }
            str = cdoM5851do4.m5859new("");
        }
        Matcher matcher = jsPattern.matcher(str);
        while (matcher.find()) {
            if (matcher.start() > iEnd) {
                String strTrim = str.substring(iEnd, matcher.start()).replaceAll("\n", "").trim();
                if (!l22.m4571return(strTrim)) {
                    arrayList.add(new SourceRule(strTrim, mode));
                }
            }
            arrayList.add(new SourceRule(matcher.group(), Mode.Js));
            iEnd = matcher.end();
        }
        if (str.length() > iEnd) {
            String strTrim2 = str.substring(iEnd).replaceAll("\n", "").trim();
            if (!l22.m4571return(strTrim2)) {
                arrayList.add(new SourceRule(strTrim2, mode));
            }
        }
        return arrayList;
    }

    public String aJax(String str) {
        try {
            return ((IHttpGetApi) Cif.m26424break().m26440class(l22.m4564goto(str)).create(IHttpGetApi.class)).getWebContentCall(str, new HashMap()).execute().body();
        } catch (Exception unused) {
            return null;
        }
    }

    public String analyzeByWebView(Object obj, String str, String str2, String str3) {
        return AnalyzeByWeb.parse(obj, str, str2).getString(str3);
    }

    public String analyzeByWebViewMobile(Object obj, String str, String str2) {
        return AnalyzeByWeb.parse(obj, str, AnalyzeByWeb.UAMobile).getString(str2);
    }

    public String analyzeByWebViewPC(Object obj, String str, String str2) {
        return AnalyzeByWeb.parse(obj, str, AnalyzeByWeb.UA).getString(str2);
    }

    public String atob(String str) {
        return base64Decoder(str);
    }

    public String base64Decoder(String str) {
        return new String(Base64.decode(str.getBytes(), 0));
    }

    public byte[] base64DecoderByte(String str) {
        return Base64.decode(str, 0);
    }

    public String base64Encoder(String str) {
        return new String(Base64.encode(str.getBytes(), 0));
    }

    public String base64EncoderByte(Object obj) {
        return new String(Base64.encode((byte[]) obj, 0));
    }

    public String btoa(String str) {
        return base64Encoder(str);
    }

    public String bytesToString(byte[] bArr) {
        return new String(bArr);
    }

    public String crawl(String str, String str2, String str3, int i) {
        if (i == 0) {
            return str;
        }
        try {
            new HashMap();
            Connection connectionConnect = Jsoup.connect(str);
            if (l22.m4579while(str2)) {
                connectionConnect = connectionConnect.headers((Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.7
                }.getType()));
            }
            if (!l22.m4571return(str3)) {
                connectionConnect = connectionConnect.requestBody(str3);
            }
            Connection.Response responseExecute = connectionConnect.sslSocketFactory(Ctry.m26450new()).followRedirects(false).execute();
            return responseExecute.hasHeader("location") ? crawl(responseExecute.header("location"), responseExecute.headers(), responseExecute.body(), i - 1) : str;
        } catch (IOException unused) {
            return str;
        }
    }

    public String decrypt3DES(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            byte[] bArrDecode = Base64.decode(str, 2);
            Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
            DESedeKeySpec dESedeKeySpec = new DESedeKeySpec(str2.getBytes("UTF-8"));
            cipher.init(2, SecretKeyFactory.getInstance("DESede").generateSecret(dESedeKeySpec), new IvParameterSpec(str3.getBytes("UTF-8")));
            return new String(cipher.doFinal(bArrDecode), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String decryptAES(String str, String str2, String str3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str3.getBytes());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(Base64.decode(str, 2)));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public byte[] decryptESBytes(String str, String str2, Object obj, String str3, String str4) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(str2), str.split(on0.f4694final)[0]);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str4.getBytes(str2));
            Security.addProvider(new Cdo());
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            if (!(obj instanceof byte[]) && !(obj instanceof Byte[])) {
                return cipher.doFinal(com.google.common.primitives.Cif.m17625super((List) UnWrapFromJS(obj)));
            }
            return cipher.doFinal((byte[]) obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Response fetch(String str, Object obj) {
        String str2;
        try {
            Request.Builder builderUrl = new Request.Builder().url(str);
            if (obj != null) {
                Map map = (Map) UnWrapFromJS(obj);
                Map map2 = (Map) map.get("headers");
                if (map2 != null) {
                    str2 = (String) map2.get("content-type");
                    builderUrl = builderUrl.headers(Headers.of((Map<String, String>) map2));
                } else {
                    str2 = null;
                }
                String str3 = (String) map.get("body");
                String str4 = (String) map.get("method");
                if (str3 != null && str4 != null && str4.equalsIgnoreCase("POST")) {
                    if (str2 != null && str2.equals("application/json")) {
                        builderUrl = builderUrl.post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str3));
                    } else if (str2 == null || !str2.equals("text/xml")) {
                        FormBody.Builder builder = new FormBody.Builder();
                        for (String str5 : str3.split("&")) {
                            int iIndexOf = str5.indexOf("=");
                            builder.add(str5.substring(0, iIndexOf), str5.substring(iIndexOf + 1));
                        }
                        builderUrl = builderUrl.post(builder.build());
                    } else {
                        builderUrl = builderUrl.post(RequestBody.create(MediaType.parse("text/xml; charset=utf-8"), str3));
                    }
                }
            }
            return Cvolatile.m27161else().build().newCall(builderUrl.build()).execute();
        } catch (Exception unused) {
            return null;
        }
    }

    public String get(String str) {
        BaseComicBean baseComicBean = this.book;
        if (baseComicBean != null && baseComicBean.getVariableMap() != null) {
            return this.book.getVariableMap().get(str);
        }
        Map<String, String> map = this._map;
        return map != null ? map.get(str) : "";
    }

    public String getBookContentVariable() {
        return this.bookContentVariable;
    }

    public byte[] getBytes(String str, boolean z) throws Exception {
        if (l22.m4571return(str)) {
            return null;
        }
        Object string0 = null;
        for (SourceRule sourceRule : splitSourceRule(str)) {
            if (!l22.m4571return(sourceRule.rule)) {
                int i = AnonymousClass8.$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[sourceRule.mode.ordinal()];
                if (i == 1) {
                    if (string0 == null) {
                        string0 = this.object;
                    }
                    string0 = evalJS(sourceRule.rule, string0);
                } else if (i == 4) {
                    string0 = getAnalyzeByJSonPath(string0).getString(sourceRule.rule);
                } else if (i == 5) {
                    string0 = getAnalyzeByXPath(string0).getString(sourceRule.rule);
                } else if (i == 6) {
                    string0 = z ? getAnalyzeByJSoup(string0).getString0(sourceRule.rule) : getAnalyzeByJSoup(string0).getString(sourceRule.rule);
                }
            }
        }
        if (string0 == null) {
            return null;
        }
        if (!(string0 instanceof String)) {
            return ((string0 instanceof byte[]) || (string0 instanceof Byte[])) ? (byte[]) string0 : string0 instanceof ByteBuffer ? ByteBufferToBytes((ByteBuffer) string0) : com.google.common.primitives.Cif.m17625super((List) string0);
        }
        try {
            throw new Exception(String.valueOf(string0));
        } catch (Exception e) {
            e.printStackTrace();
            return (byte[]) string0;
        }
    }

    public String getCoverString(String str, boolean z) throws ScriptException {
        if (l22.m4571return(str)) {
            return null;
        }
        Object string0 = null;
        for (SourceRule sourceRule : splitCoverSourceRule(str)) {
            if (!l22.m4571return(sourceRule.rule)) {
                int i = AnonymousClass8.$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[sourceRule.mode.ordinal()];
                if (i == 1) {
                    if (string0 == null) {
                        string0 = this.object;
                    }
                    string0 = evalJS(sourceRule.rule, string0);
                } else if (i == 4) {
                    string0 = getAnalyzeByJSonPath(string0).getString(sourceRule.rule);
                } else if (i == 5) {
                    string0 = getAnalyzeByXPath(string0).getString(sourceRule.rule);
                } else if (i == 6) {
                    string0 = z ? getAnalyzeByJSoup(string0).getString0(sourceRule.rule) : getAnalyzeByJSoup(string0).getString(sourceRule.rule);
                }
            }
        }
        if (string0 == null) {
            return null;
        }
        String strValueOf = String.valueOf(string0);
        return (!z || l22.m4571return(this.baseUrl) || l22.m4557default(strValueOf, "JS_CODE_ERROR: ")) ? strValueOf : g31.m2566do(this.baseUrl, strValueOf);
    }

    public List<Object> getElements(String str) throws ScriptException {
        Object elements = null;
        for (SourceRule sourceRule : splitSourceRule(str)) {
            int i = AnonymousClass8.$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[sourceRule.mode.ordinal()];
            if (i == 1) {
                if (elements == null) {
                    elements = this.object;
                }
                elements = evalJS(sourceRule.rule, elements);
            } else if (i == 2) {
                if (elements == null) {
                    elements = this.object;
                }
                elements = new AnalyzeByWeb(elements, this.baseUrl, AnalyzeByWeb.UA).getString(sourceRule.rule);
            } else if (i != 3) {
                elements = i != 4 ? i != 5 ? getAnalyzeByJSoup(elements).getElements(sourceRule.rule) : getAnalyzeByXPath(elements).getElements(sourceRule.rule) : getAnalyzeByJSonPath(elements).getList(sourceRule.rule);
            } else {
                if (elements == null) {
                    elements = this.object;
                }
                elements = new AnalyzeByWeb(elements, this.baseUrl, AnalyzeByWeb.UAMobile).getString(sourceRule.rule);
            }
        }
        if (elements instanceof List) {
            return (List) elements;
        }
        if (elements instanceof String) {
            String str2 = (String) elements;
            if (l22.m4570public(str2)) {
                return (List) new GsonBuilder().disableHtmlEscaping().create().fromJson(str2, new TypeToken<List<Object>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.2
                }.getType());
            }
        }
        return Arrays.asList(elements);
    }

    public String getString(String str, boolean z) throws ScriptException {
        if (l22.m4571return(str)) {
            return null;
        }
        Object objEvalJS = null;
        for (SourceRule sourceRule : splitSourceRule(str)) {
            if (!l22.m4571return(sourceRule.rule)) {
                switch (AnonymousClass8.$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[sourceRule.mode.ordinal()]) {
                    case 1:
                        if (objEvalJS == null) {
                            objEvalJS = this.object;
                        }
                        objEvalJS = evalJS(sourceRule.rule, objEvalJS);
                        break;
                    case 2:
                        if (objEvalJS == null) {
                            objEvalJS = this.object;
                        }
                        objEvalJS = new AnalyzeByWeb(objEvalJS, this.baseUrl, AnalyzeByWeb.UA).getString(sourceRule.rule);
                        break;
                    case 3:
                        if (objEvalJS == null) {
                            objEvalJS = this.object;
                        }
                        objEvalJS = new AnalyzeByWeb(objEvalJS, this.baseUrl, AnalyzeByWeb.UAMobile).getString(sourceRule.rule);
                        break;
                    case 4:
                        objEvalJS = getAnalyzeByJSonPath(objEvalJS).getString(sourceRule.rule);
                        break;
                    case 5:
                        objEvalJS = getAnalyzeByXPath(objEvalJS).getString(sourceRule.rule);
                        break;
                    case 6:
                        if (z) {
                            objEvalJS = getAnalyzeByJSoup(objEvalJS).getString0(sourceRule.rule);
                            break;
                        } else {
                            objEvalJS = getAnalyzeByJSoup(objEvalJS).getString(sourceRule.rule);
                            break;
                        }
                }
            }
        }
        if (objEvalJS == null) {
            return null;
        }
        String strValueOf = String.valueOf(objEvalJS);
        return (!z || l22.m4571return(this.baseUrl)) ? strValueOf : g31.m2566do(this.baseUrl, strValueOf);
    }

    public List<String> getStringList(String str, boolean z) throws ScriptException {
        Object objAsList = null;
        for (SourceRule sourceRule : splitSourceRule(str)) {
            int i = AnonymousClass8.$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode[sourceRule.mode.ordinal()];
            if (i == 1) {
                if (objAsList == null) {
                    objAsList = this.object;
                }
                objAsList = evalJS(sourceRule.rule, objAsList);
            } else if (i == 2) {
                if (objAsList == null) {
                    objAsList = this.object;
                }
                objAsList = new AnalyzeByWeb(objAsList, this.baseUrl, AnalyzeByWeb.UA).getString(sourceRule.rule);
            } else if (i != 3) {
                objAsList = i != 4 ? i != 5 ? getAnalyzeByJSoup(objAsList).getStringList(sourceRule.rule) : getAnalyzeByXPath(objAsList).getStringList(sourceRule.rule) : getAnalyzeByJSonPath(objAsList).getStringList(sourceRule.rule);
            } else {
                if (objAsList == null) {
                    objAsList = this.object;
                }
                objAsList = new AnalyzeByWeb(objAsList, this.baseUrl, AnalyzeByWeb.UAMobile).getString(sourceRule.rule);
            }
        }
        if (objAsList == null) {
            return new ArrayList();
        }
        if (objAsList instanceof String) {
            if (z) {
                return Arrays.asList((String) objAsList);
            }
            objAsList = Arrays.asList(((String) objAsList).split("\\s+"));
        }
        if (!z || l22.m4571return(this.baseUrl)) {
            return (List) objAsList;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) objAsList).iterator();
        while (it.hasNext()) {
            String strM2566do = g31.m2566do(this.baseUrl, String.valueOf(it.next()));
            if (!arrayList.contains(strM2566do)) {
                arrayList.add(strM2566do);
            }
        }
        return arrayList;
    }

    public String getVariable() {
        Gson gsonCreate = new GsonBuilder().disableHtmlEscaping().create();
        BaseComicBean baseComicBean = this.book;
        return baseComicBean == null ? gsonCreate.toJson(this._map) : baseComicBean.getVariable();
    }

    public String getWebViewFinalResult(String str) {
        return WebViewAnalysis.getInstance().getFinalResult(str);
    }

    public String getWebViewResult(String str) {
        return WebViewAnalysis.getInstance().getResult(str);
    }

    public void log(String str) {
    }

    public Connection.Response post(String str, String str2, Map<String, String> map) throws IOException {
        return Jsoup.connect(str).sslSocketFactory(Ctry.m26450new()).ignoreContentType(true).followRedirects(false).requestBody(str2).headers(map).method(Connection.Method.POST).execute();
    }

    public String postForm(String str, String str2) {
        try {
            FormBody.Builder builder = new FormBody.Builder();
            for (String str3 : str2.split("&")) {
                builder.add(str3.split("=")[0], str3.split("=")[1]);
            }
            return Cvolatile.m27161else().build().newCall(new Request.Builder().url(str).post(builder.build()).build()).execute().body().string();
        } catch (Exception unused) {
            return null;
        }
    }

    public String postJson(String str, String str2) {
        try {
            return Cvolatile.m27161else().build().newCall(new Request.Builder().url(str).post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str2)).build()).execute().body().string();
        } catch (Exception unused) {
            return null;
        }
    }

    public String preTreatSourceRule(String str) throws ScriptException {
        if (l22.m4571return(str)) {
            return null;
        }
        if (!str.contains("{{") || !str.contains("}}")) {
            return str;
        }
        SimpleBindings simpleBindings = new SimpleBindings();
        simpleBindings.put(LogType.JAVA_TYPE, (Object) this);
        simpleBindings.put("headers", (Object) this.headersJson);
        simpleBindings.put("result", WrapForJS(this.object));
        simpleBindings.put("baseUrl", (Object) this.baseUrl);
        new AnalyzeYCYJS().setBindings(simpleBindings);
        int i = this.imgPage;
        if (-1 != i) {
            simpleBindings.put("imgPage", (Object) Integer.valueOf(i));
        }
        p32.Cdo cdoM5851do = p32.m5851do(str, "", "{{", "}}");
        while (cdoM5851do != null) {
            try {
                if (l22.m4571return(cdoM5851do.m5856do())) {
                    return str;
                }
                Object objEval = EngineHelper.INSTANCE.eval(cdoM5851do.m5856do().substring(2, cdoM5851do.m5856do().length() - 2), simpleBindings);
                str = objEval instanceof String ? cdoM5851do.m5859new((String) objEval) : ((objEval instanceof Double) && ((Double) objEval).doubleValue() % 1.0d == 0.0d) ? cdoM5851do.m5859new(String.format("%.0f", (Double) objEval)) : cdoM5851do.m5859new(String.valueOf(objEval));
                cdoM5851do = p32.m5851do(str, "", "{{", "}}");
            } catch (Exception e) {
                return "JS_CODE_ERROR: " + e.getMessage();
            }
        }
        return str;
    }

    public String put(String str, String str2) {
        BaseComicBean baseComicBean = this.book;
        if (baseComicBean != null) {
            baseComicBean.putVariable(str, str2);
        } else {
            Map<String, String> map = this._map;
            if (map != null) {
                map.put(str, str2);
            }
        }
        return str2;
    }

    public void setBook(BaseComicBean baseComicBean) {
        this.book = baseComicBean;
    }

    public void setBookContentVariable(String str) {
        this.bookContentVariable = str;
    }

    public void setContent(String str, Object obj, String str2) {
        if (obj == null) {
            throw new AssertionError("Content cannot be null");
        }
        this.headersJson = str;
        this.isJSON = Boolean.valueOf(l22.m4570public(String.valueOf(obj)));
        this.object = obj;
        if (str2 != null) {
            this.baseUrl = str2;
        }
        this.objectChangedXP = true;
        this.objectChangedJS = true;
        this.objectChangedJP = true;
    }

    public void setImgPage(int i) {
        this.imgPage = i;
    }

    public byte[] base64DecoderByte(Object obj) {
        return Base64.decode((byte[]) obj, 0);
    }

    public String getWebViewFinalResult(String str, String str2) {
        return WebViewAnalysis.getInstance().getFinalResult(str, str2);
    }

    public String getWebViewResult(String str, String str2) {
        return WebViewAnalysis.getInstance().getResult(str, str2);
    }

    private AnalyzeByJSoup getAnalyzeByJSoup() {
        if (this.analyzeByJSoup == null || this.objectChangedJS) {
            AnalyzeByJSoup analyzeByJSoup = new AnalyzeByJSoup();
            this.analyzeByJSoup = analyzeByJSoup;
            analyzeByJSoup.parse(this.object);
            this.objectChangedJS = false;
        }
        return this.analyzeByJSoup;
    }

    private AnalyzeByXPath getAnalyzeByXPath() {
        if (this.analyzeByXPath == null || this.objectChangedXP) {
            AnalyzeByXPath analyzeByXPath = new AnalyzeByXPath();
            this.analyzeByXPath = analyzeByXPath;
            analyzeByXPath.parse(this.object.toString());
            this.objectChangedXP = false;
        }
        return this.analyzeByXPath;
    }

    public byte[] base64EncoderByte(byte[] bArr) {
        return Base64.encode(bArr, 0);
    }

    public String getWebViewFinalResult(String str, String str2, String str3) {
        return WebViewAnalysis.getInstance().getFinalResult(str, str2, str3);
    }

    public String getWebViewResult(String str, String str2, String str3) {
        return WebViewAnalysis.getInstance().getResult(str, str2, str3);
    }

    public byte[] base64DecoderByte(byte[] bArr) {
        return Base64.decode(bArr, 0);
    }

    public String getWebViewFinalResult(String str, String str2, String str3, int i, int i2) {
        return WebViewAnalysis.getInstance().getFinalResult(str, str2, str3, i, i2);
    }

    public String getWebViewResult(String str, String str2, String str3, int i, int i2) {
        return WebViewAnalysis.getInstance().getResult(str, str2, str3, i, i2);
    }

    private AnalyzeByJSonPath getAnalyzeByJSonPath() {
        if (this.analyzeByJSonPath == null || this.objectChangedJP) {
            AnalyzeByJSonPath analyzeByJSonPath = new AnalyzeByJSonPath();
            this.analyzeByJSonPath = analyzeByJSonPath;
            Object obj = this.object;
            if (obj instanceof String) {
                analyzeByJSonPath.parse(String.valueOf(obj));
            } else {
                analyzeByJSonPath.parse(obj);
            }
            this.objectChangedJP = false;
        }
        return this.analyzeByJSonPath;
    }

    public Connection.Response get(String str, Map<String, String> map) throws IOException {
        return Jsoup.connect(str).sslSocketFactory(Ctry.m26450new()).ignoreContentType(true).followRedirects(false).headers(map).method(Connection.Method.GET).execute();
    }

    public String postJson(String str, String str2, String str3) {
        try {
            return Cvolatile.m27161else().build().newCall(new Request.Builder().url(str).headers(Headers.of((Map<String, String>) new Gson().fromJson(str3, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.6
            }.getType()))).post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str2)).build()).execute().body().string();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String[] aJaxUrls(final String[] strArr, final String[] strArr2, int i) throws InterruptedException {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i);
        final String[] strArr3 = new String[strArr.length];
        for (final int i2 = 0; i2 < strArr.length; i2++) {
            executorServiceNewFixedThreadPool.execute(new Runnable() { // from class: android.support.v4.o1
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyzeRule.lambda$aJaxUrls$1(strArr, i2, strArr2, strArr3);
                }
            });
        }
        executorServiceNewFixedThreadPool.shutdown();
        while (!executorServiceNewFixedThreadPool.isTerminated()) {
            try {
                Thread.sleep(50L);
            } catch (Exception unused) {
            }
        }
        return strArr3;
    }

    public byte[] decryptESBytes(String str, String str2, byte[] bArr, String str3, String str4) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(str2), str.split(on0.f4694final)[0]);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str4.getBytes(str2));
            Security.addProvider(new Cdo());
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public AnalyzeRule() {
        this.errorTag = "JS_CODE_ERROR: ";
        this.baseUrl = null;
        this.imgPage = -1;
        this.analyzeByXPath = null;
        this.analyzeByJSoup = null;
        this.analyzeByJSonPath = null;
        this.objectChangedXP = false;
        this.objectChangedJS = false;
        this.objectChangedJP = false;
        this._map = null;
        this.bookContentVariable = null;
    }

    private String crawl(String str, Map<String, String> map, String str2, int i) {
        if (i == 0) {
            return str;
        }
        try {
            Connection connectionConnect = Jsoup.connect(str);
            if (map != null && !map.isEmpty()) {
                connectionConnect = connectionConnect.headers(map);
            }
            if (!l22.m4571return(str2)) {
                connectionConnect = connectionConnect.requestBody(str2);
            }
            Connection.Response responseExecute = connectionConnect.sslSocketFactory(Ctry.m26450new()).followRedirects(false).execute();
            return responseExecute.hasHeader("location") ? crawl(responseExecute.header("location"), responseExecute.headers(), responseExecute.body(), i - 1) : str;
        } catch (IOException unused) {
            return str;
        }
    }

    public String getString(String str) {
        try {
            return Cvolatile.m27161else().build().newCall(new Request.Builder().url(str).build()).execute().body().string();
        } catch (Exception unused) {
            return null;
        }
    }

    public byte[] getBytes(String str) {
        try {
            return Cvolatile.m27161else().build().newCall(new Request.Builder().url(str).build()).execute().body().bytes();
        } catch (Exception unused) {
            return null;
        }
    }

    public String getString(String str, String str2) {
        try {
            return Cvolatile.m27161else().build().newCall(new Request.Builder().url(str).headers(Headers.of((Map<String, String>) new Gson().fromJson(str2, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.5
            }.getType()))).build()).execute().body().string();
        } catch (Exception unused) {
            return null;
        }
    }

    public AnalyzeRule(String str) {
        this.errorTag = "JS_CODE_ERROR: ";
        this.baseUrl = null;
        this.imgPage = -1;
        this.analyzeByXPath = null;
        this.analyzeByJSoup = null;
        this.analyzeByJSonPath = null;
        this.objectChangedXP = false;
        this.objectChangedJS = false;
        this.objectChangedJP = false;
        this._map = null;
        this.bookContentVariable = null;
        if (!l22.m4571return(str)) {
            this._map = (Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(str, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeRule.1
            }.getType());
        } else {
            this._map = new HashMap();
        }
    }
}
