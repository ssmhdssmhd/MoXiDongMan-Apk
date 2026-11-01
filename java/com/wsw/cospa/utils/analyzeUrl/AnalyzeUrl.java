package com.wsw.cospa.utils.analyzeUrl;

import android.support.v4.fd2;
import android.support.v4.l22;
import android.support.v4.p32;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.sun.script.javascript.RhinoScriptEngine;
import com.uc.crashsdk.export.LogType;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.script.ScriptEngine;
import javax.script.SimpleBindings;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* loaded from: classes2.dex */
public class AnalyzeUrl {
    private static final String REFERER_HOST = "host";
    private static final String REFERER_PRE_PAGE = "prePage";
    private static final String REFERER_THIS_PAGE = "thisPage";
    private RequestBody body;
    private String charCode;
    private final String errorTag;
    private Map<String, String> headerMap;
    private String hostUrl;
    private Map<String, String> queryMap;
    private String queryStr;
    private String url;
    private UrlMode urlMode;
    private String urlPath;
    private Map<String, String> variableMap;
    private static final Pattern headerPattern = Pattern.compile("@Header:\\{.+?\\}", 2);
    private static final Pattern bodyPattern = Pattern.compile("@Body:\\{.+?\\}", 2);
    private static final String pageRegex = "\\{([^\"\\{\\}':]*)\\}";
    private static final Pattern pagePattern = Pattern.compile(pageRegex);
    private static final String expRegex = "\\{\\{([\\w\\W]*?)\\}\\}";
    private static final Pattern expPattern = Pattern.compile(expRegex);

    public static class EngineHelper {
        private static final ScriptEngine INSTANCE = new RhinoScriptEngine();

        private EngineHelper() {
        }
    }

    public enum UrlMode {
        GET,
        POST,
        DEFAULT
    }

    public AnalyzeUrl(String str) throws Exception {
        this(str, null, null, null);
    }

    private String analyzeHeader(String str, Map<String, String> map) {
        String str2;
        String str3;
        Iterator<Map.Entry<? extends String, ? extends String>> it;
        Iterator<Map.Entry<? extends String, ? extends String>> it2;
        String str4 = "&";
        String str5 = "#";
        this.headerMap.putAll(map);
        p32.Cdo cdoM5851do = p32.m5851do(str, "@Header:", "{", "}");
        if (cdoM5851do == null || l22.m4571return(cdoM5851do.m5856do())) {
            return str;
        }
        try {
            Map<? extends String, ? extends String> map2 = (Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(cdoM5851do.m5856do().substring(8), new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeUrl.2
            }.getType());
            Iterator<Map.Entry<? extends String, ? extends String>> it3 = map2.entrySet().iterator();
            while (it3.hasNext()) {
                Map.Entry<? extends String, ? extends String> next = it3.next();
                String key = next.getKey();
                String value = next.getValue();
                if (REFERER_HOST.equalsIgnoreCase(value)) {
                    map2.put(key, fd2.m2254if(str));
                    str2 = str4;
                    str3 = str5;
                    it = it3;
                } else if (REFERER_THIS_PAGE.equalsIgnoreCase(value)) {
                    String[] strArrSplit = cdoM5851do.m5859new("").split("@");
                    int i = 0;
                    if (!l22.m4571return(strArrSplit[0]) && strArrSplit[0].contains(str5)) {
                        strArrSplit[0] = strArrSplit[0].substring(0, strArrSplit[0].indexOf(str5));
                    }
                    String[] strArrSplit2 = strArrSplit[0].split("\\?");
                    if (strArrSplit2.length > 1) {
                        if (l22.m4571return(strArrSplit2[1])) {
                            str2 = str4;
                            str3 = str5;
                            it = it3;
                        } else {
                            String[] strArrSplit3 = strArrSplit2[1].split(str4);
                            StringBuilder sb = new StringBuilder("?");
                            int length = strArrSplit3.length;
                            boolean z = true;
                            while (i < length) {
                                String str6 = strArrSplit3[i];
                                if (!z) {
                                    sb.append(str4);
                                }
                                String[] strArrSplit4 = str6.split("=");
                                String str7 = str4;
                                String str8 = str5;
                                String str9 = strArrSplit4.length > 1 ? strArrSplit4[1] : "";
                                if (TextUtils.isEmpty(this.charCode)) {
                                    sb.append(strArrSplit4[0]);
                                    sb.append("=");
                                    sb.append(URLEncoder.encode(str9, "UTF-8"));
                                    it2 = it3;
                                } else {
                                    it2 = it3;
                                    if (this.charCode.equals("escape")) {
                                        sb.append(strArrSplit4[0]);
                                        sb.append("=");
                                        sb.append(l22.m4578try(str9));
                                    } else {
                                        sb.append(strArrSplit4[0]);
                                        sb.append("=");
                                        sb.append(URLEncoder.encode(str9, this.charCode));
                                    }
                                }
                                i++;
                                str4 = str7;
                                str5 = str8;
                                it3 = it2;
                                z = false;
                            }
                            str2 = str4;
                            str3 = str5;
                            it = it3;
                            strArrSplit2[1] = sb.toString();
                        }
                        map2.put(key, strArrSplit2[0] + strArrSplit2[1]);
                    } else {
                        str2 = str4;
                        str3 = str5;
                        it = it3;
                        map2.put(key, strArrSplit2[0]);
                    }
                } else {
                    str2 = str4;
                    str3 = str5;
                    it = it3;
                    if (REFERER_PRE_PAGE.equalsIgnoreCase(value)) {
                        map2.put(key, fd2.m2254if(str));
                    } else {
                        map2.put(key, value);
                    }
                }
                str4 = str2;
                str5 = str3;
                it3 = it;
            }
            this.headerMap.putAll(map2);
        } catch (Exception unused) {
        }
        return cdoM5851do.m5859new("");
    }

    private void analyzeOther(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : str.split("&")) {
            String[] strArrSplit = str2.split("=");
            if (strArrSplit[0].equals("char")) {
                this.charCode = strArrSplit[1];
            }
        }
    }

    private void analyzeQuery(String str) throws Exception {
        if (TextUtils.isEmpty(this.charCode)) {
            this.queryStr = URLEncoder.encode(str, "UTF-8");
        } else {
            this.queryStr = URLEncoder.encode(str, this.charCode);
        }
        if (l22.m4579while(str)) {
            this.body = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str);
            return;
        }
        for (String str2 : str.split("&")) {
            String[] strArrSplit = str2.split("=");
            String str3 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            if (TextUtils.isEmpty(this.charCode)) {
                this.queryMap.put(strArrSplit[0], str3);
            } else if (this.charCode.equals("escape")) {
                this.queryMap.put(strArrSplit[0], l22.m4578try(str3));
            } else {
                this.queryMap.put(strArrSplit[0], URLEncoder.encode(str3, this.charCode));
            }
        }
    }

    private void generateUrlPath(String str) {
        this.url = str;
        String strM4564goto = l22.m4564goto(str);
        this.hostUrl = strM4564goto;
        this.urlPath = str.substring(strM4564goto.length());
    }

    private void setPage(String[] strArr, int i) {
        Matcher matcher = pagePattern.matcher(strArr[0]);
        if (matcher.find()) {
            String[] strArrSplit = matcher.group(1).split(",");
            if (i <= strArrSplit.length) {
                strArr[0] = strArr[0].replaceAll(pageRegex, strArrSplit[i - 1].trim());
            } else {
                strArr[0] = strArr[0].replaceAll(pageRegex, strArrSplit[strArrSplit.length - 1].trim());
            }
        }
        strArr[0] = strArr[0].replace("searchPage-1", String.valueOf(i - 1)).replace("searchPage+1", String.valueOf(i + 1)).replace("searchPage", String.valueOf(i));
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

    public String get(String str) {
        Map<String, String> map = this.variableMap;
        return map != null ? map.get(str) : "";
    }

    public RequestBody getBody() {
        return this.body;
    }

    public Map<String, String> getHeaderMap() {
        return this.headerMap;
    }

    public String getHost() {
        return this.hostUrl;
    }

    public String getPath() {
        return this.urlPath;
    }

    public Map<String, String> getQueryMap() {
        return this.queryMap;
    }

    public String getQueryStr() {
        return this.queryStr;
    }

    public String getUrl() {
        return this.url;
    }

    public UrlMode getUrlMode() {
        return this.urlMode;
    }

    public Map<String, String> getVariableMap() {
        return this.variableMap;
    }

    public String getWebViewFinalResult(String str) {
        return WebViewAnalysis.getInstance().getFinalResult(str);
    }

    public String getWebViewResult(String str) {
        return WebViewAnalysis.getInstance().getResult(str);
    }

    public String put(String str, String str2) {
        Map<String, String> map = this.variableMap;
        if (map != null) {
            map.put(str, str2);
        }
        return str2;
    }

    public void setVariableMap(Map<String, String> map) {
        this.variableMap = map;
    }

    public AnalyzeUrl(String str, Map<String, String> map) throws Exception {
        this(str, null, null, map);
    }

    public String getWebViewFinalResult(String str, String str2) {
        return WebViewAnalysis.getInstance().getFinalResult(str, str2);
    }

    public String getWebViewResult(String str, String str2) {
        return WebViewAnalysis.getInstance().getResult(str, str2);
    }

    public AnalyzeUrl(String str, String str2, Integer num, Map<String, String> map) throws Exception {
        this(str, str2, num, map, null);
    }

    public String getWebViewFinalResult(String str, String str2, String str3) {
        return WebViewAnalysis.getInstance().getFinalResult(str, str2, str3);
    }

    public String getWebViewResult(String str, String str2, String str3) {
        return WebViewAnalysis.getInstance().getResult(str, str2, str3);
    }

    public AnalyzeUrl(String str, String str2, Integer num, Map<String, String> map, Map<String, String> map2) throws Exception {
        String strM5859new = str;
        this.errorTag = "JS_CODE_ERROR: ";
        this.queryMap = new LinkedHashMap();
        this.headerMap = new ArrayMap();
        this.variableMap = new ArrayMap();
        this.urlMode = UrlMode.DEFAULT;
        if (strM5859new == null) {
            return;
        }
        if (map2 != null) {
            setVariableMap(map2);
        }
        if (strM5859new.contains("{{") && strM5859new.contains("}}")) {
            new StringBuffer(str.length());
            SimpleBindings simpleBindings = new SimpleBindings(str2, num) { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeUrl.1
                public final /* synthetic */ String val$key;
                public final /* synthetic */ Integer val$page;

                {
                    this.val$key = str2;
                    this.val$page = num;
                    put("searchKey", (Object) str2);
                    put("searchPage", (Object) num);
                    put(LogType.JAVA_TYPE, (Object) AnalyzeUrl.this);
                }
            };
            new AnalyzeYCYJS().setBindings(simpleBindings);
            p32.Cdo cdoM5851do = p32.m5851do(strM5859new, "", "{{", "}}");
            while (cdoM5851do != null) {
                try {
                    if (l22.m4571return(cdoM5851do.m5856do())) {
                        break;
                    }
                    Object objEval = EngineHelper.INSTANCE.eval(cdoM5851do.m5856do().substring(2, cdoM5851do.m5856do().length() - 2), simpleBindings);
                    if (objEval instanceof String) {
                        strM5859new = cdoM5851do.m5859new((String) objEval);
                    } else {
                        strM5859new = ((objEval instanceof Double) && ((Double) objEval).doubleValue() % 1.0d == 0.0d) ? cdoM5851do.m5859new(String.format("%.0f", (Double) objEval)) : cdoM5851do.m5859new(String.valueOf(objEval));
                    }
                    cdoM5851do = p32.m5851do(strM5859new, "", "{{", "}}");
                } catch (Exception e) {
                    strM5859new = "JS_CODE_ERROR: " + e.getMessage();
                }
            }
        }
        String[] strArrSplit = (l22.m4571return(str2) ? strM5859new : strM5859new.replaceAll("searchKey", str2)).split("\\|");
        if (strArrSplit.length > 1) {
            analyzeOther(strArrSplit[1]);
        }
        if (num != null) {
            setPage(strArrSplit, num.intValue());
        }
        strArrSplit[0] = analyzeHeader(strArrSplit[0], map);
        String[] strArrSplit2 = strArrSplit[0].split("@");
        if (strArrSplit2.length > 1) {
            this.urlMode = UrlMode.POST;
            if (!l22.m4571return(strArrSplit2[1]) && strArrSplit2[1].contains("#")) {
                int iIndexOf = strArrSplit2[1].indexOf("#");
                strArrSplit2[0] = strArrSplit2[0] + strArrSplit2[1].substring(iIndexOf);
                strArrSplit2[1] = strArrSplit2[1].substring(0, iIndexOf);
            }
        } else {
            strArrSplit2 = strArrSplit2[0].split("\\?");
            if (strArrSplit2.length > 1) {
                this.urlMode = UrlMode.GET;
                if (!l22.m4571return(strArrSplit2[1]) && strArrSplit2[1].contains("#")) {
                    int iIndexOf2 = strArrSplit2[1].indexOf("#");
                    strArrSplit2[0] = strArrSplit2[0] + strArrSplit2[1].substring(iIndexOf2);
                    strArrSplit2[1] = strArrSplit2[1].substring(0, iIndexOf2);
                }
            }
        }
        generateUrlPath(strArrSplit2[0]);
        if (this.urlMode != UrlMode.DEFAULT) {
            analyzeQuery(strArrSplit2[1]);
        }
    }

    public String getWebViewFinalResult(String str, String str2, String str3, int i, int i2) {
        return WebViewAnalysis.getInstance().getFinalResult(str, str2, str3, i, i2);
    }

    public String getWebViewResult(String str, String str2, String str3, int i, int i2) {
        return WebViewAnalysis.getInstance().getResult(str, str2, str3, i, i2);
    }
}
