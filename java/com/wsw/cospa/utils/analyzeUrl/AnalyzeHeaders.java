package com.wsw.cospa.utils.analyzeUrl;

import android.support.v4.pk0;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.Cnew;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AnalyzeHeaders {
    private static final String HEADER_REFERER = "Referer";
    private static final String REFERER_HOST = "host";
    private static final String REFERER_PRE_PAGE = "prePage";
    private static final String REFERER_THIS_PAGE = "thisPage";

    public static Map<String, String> covertMap(String str, Object obj) {
        HashMap map = null;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap map2 = new HashMap();
            try {
                for (Map.Entry entry : ((Map) new Gson().fromJson(str, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders.1
                }.getType())).entrySet()) {
                    String str2 = (String) entry.getKey();
                    String str3 = (String) entry.getValue();
                    if (obj instanceof SearchComicBean) {
                        if (REFERER_HOST.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((SearchComicBean) obj).getTag());
                        } else if (REFERER_THIS_PAGE.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((SearchComicBean) obj).getSearchPage());
                        } else if (REFERER_PRE_PAGE.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((SearchComicBean) obj).getTag());
                        } else {
                            map2.put(str2, str3);
                        }
                    } else if (obj instanceof ComicShelfBean) {
                        if (REFERER_HOST.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((ComicShelfBean) obj).getTag());
                        } else if (REFERER_THIS_PAGE.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((ComicShelfBean) obj).getNoteUrl());
                        } else if (REFERER_PRE_PAGE.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((ComicShelfBean) obj).getTag());
                        } else {
                            map2.put(str2, str3);
                        }
                    } else if (obj instanceof ChapterListBean) {
                        if (REFERER_HOST.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((ChapterListBean) obj).getTag());
                        } else if (REFERER_THIS_PAGE.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((ChapterListBean) obj).getDurChapterUrl());
                        } else if (REFERER_PRE_PAGE.equalsIgnoreCase(str3)) {
                            map2.put(str2, ((ChapterListBean) obj).getNoteUrl());
                        } else {
                            map2.put(str2, str3);
                        }
                    }
                }
                return map2;
            } catch (Exception e) {
                e = e;
                map = map2;
                e.printStackTrace();
                return map;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static String getDefaultUserAgent() {
        return "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.2357.134 Safari/537.36";
    }

    public static String getDefaultUserAgent(ComicSourceBean comicSourceBean) {
        if (comicSourceBean == null || TextUtils.isEmpty(comicSourceBean.getHttpUserAgent())) {
            return null;
        }
        return comicSourceBean.getHttpUserAgent().equalsIgnoreCase("default") ? getDefaultUserAgent() : comicSourceBean.getHttpUserAgent();
    }

    public static Map<String, String> getMap(ComicSourceBean comicSourceBean) {
        String defaultUserAgent;
        HashMap map = new HashMap();
        if (comicSourceBean != null) {
            CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(comicSourceBean.getBookSourceUrl());
            if (cookieBeanLoad != null && cookieBeanLoad.getVariable() != null && !cookieBeanLoad.getVariable().isEmpty()) {
                map.putAll(cookieBeanLoad.getVariable());
            }
            if (!map.containsKey(pk0.b) && !map.containsKey("user-agent") && (defaultUserAgent = getDefaultUserAgent(comicSourceBean)) != null && !TextUtils.isEmpty(defaultUserAgent)) {
                map.put(pk0.b, defaultUserAgent);
            }
        }
        return map;
    }

    public static String getUserAgent(String str) {
        return TextUtils.isEmpty(str) ? getDefaultUserAgent() : str;
    }
}
