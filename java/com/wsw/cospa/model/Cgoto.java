package com.wsw.cospa.model;

import android.support.v4.l22;
import android.support.v4.od0;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.script.ScriptException;
import retrofit2.Response;

/* renamed from: com.wsw.cospa.model.goto, reason: invalid class name */
/* loaded from: classes2.dex */
class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private String f22355do;

    /* renamed from: for, reason: not valid java name */
    private ComicSourceBean f22356for;

    /* renamed from: if, reason: not valid java name */
    private String f22357if;

    /* renamed from: new, reason: not valid java name */
    private String f22358new;

    /* renamed from: com.wsw.cospa.model.goto$do, reason: invalid class name */
    public class Cdo extends TypeToken<Map<String, String>> {
        public Cdo() {
        }
    }

    public Cgoto(String str, String str2, ComicSourceBean comicSourceBean) {
        this.f22355do = str;
        this.f22357if = str2;
        this.f22356for = comicSourceBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ void m26398case(Response response, Map map, Map map2, ObservableEmitter observableEmitter) throws Exception {
        boolean z;
        okhttp3.Response responseNetworkResponse = response.raw().networkResponse();
        String string = responseNetworkResponse != null ? responseNetworkResponse.request().url().toString() : response.raw().request().url().toString();
        if (TextUtils.isEmpty((CharSequence) response.body())) {
            observableEmitter.onError(new Throwable("访问网站失败:" + string + " 错误信息： " + response.code() + "  " + response.message()));
            return;
        }
        ArrayList arrayList = new ArrayList();
        AnalyzeRule analyzeRule = new AnalyzeRule(new Gson().toJson(map));
        String json = new GsonBuilder().disableHtmlEscaping().create().toJson(response.headers().toMultimap());
        analyzeRule.setContent(json, response.body(), string);
        String ruleBookUrlPattern = this.f22356for.getRuleBookUrlPattern();
        if (!TextUtils.isEmpty(ruleBookUrlPattern) && !ruleBookUrlPattern.endsWith(".*")) {
            ruleBookUrlPattern = ruleBookUrlPattern + ".*";
        }
        if (TextUtils.isEmpty(ruleBookUrlPattern) || !string.matches(ruleBookUrlPattern) || TextUtils.isEmpty(this.f22356for.getRuleBookName()) || TextUtils.isEmpty(this.f22356for.getRuleBookLastChapter())) {
            String ruleSearchUrlNext = this.f22356for.getRuleSearchUrlNext();
            if (ruleSearchUrlNext == null || ruleSearchUrlNext.trim().isEmpty()) {
                this.f22358new = null;
            } else {
                this.f22358new = analyzeRule.getString(ruleSearchUrlNext, true);
            }
            String strPreTreatSourceRule = analyzeRule.preTreatSourceRule(this.f22356for.getRuleSearchList());
            if (this.f22356for.getRuleSearchList().startsWith("-")) {
                strPreTreatSourceRule = strPreTreatSourceRule.substring(1);
                z = true;
            } else {
                z = false;
            }
            List<Object> elements = analyzeRule.getElements(strPreTreatSourceRule);
            if (elements != null) {
                map.putAll((Map) new Gson().fromJson(analyzeRule.getVariable(), new Cdo().getType()));
                if (elements.size() == 0) {
                    SearchComicBean searchComicBeanM26400for = m26400for(analyzeRule, string, map, map2);
                    if (searchComicBeanM26400for != null) {
                        searchComicBeanM26400for.setUrlNext(this.f22358new);
                        arrayList.add(searchComicBeanM26400for);
                    }
                } else {
                    Iterator<Object> it = elements.iterator();
                    while (it.hasNext()) {
                        analyzeRule.setContent(json, it.next(), string);
                        SearchComicBean searchComicBeanM26401new = m26401new(analyzeRule, string, map, map2);
                        if (searchComicBeanM26401new != null) {
                            searchComicBeanM26401new.setUrlNext(this.f22358new);
                            arrayList.add(searchComicBeanM26401new);
                        }
                    }
                    if (arrayList.size() > 1 && z) {
                        Collections.reverse(arrayList);
                    }
                }
            } else {
                observableEmitter.onError(new Throwable("列表获取失败:" + string));
            }
        } else {
            SearchComicBean searchComicBeanM26400for2 = m26400for(analyzeRule, string, map, map2);
            if (searchComicBeanM26400for2 != null) {
                arrayList.add(searchComicBeanM26400for2);
            }
        }
        if (!arrayList.isEmpty()) {
            observableEmitter.onNext(arrayList);
            observableEmitter.onComplete();
        } else {
            if (observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onError(new Throwable("未获取到该漫画！"));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private SearchComicBean m26400for(AnalyzeRule analyzeRule, String str, Map<String, String> map, Map<String, String> map2) throws ScriptException {
        SearchComicBean searchComicBean = new SearchComicBean();
        searchComicBean.setSearchPage(str);
        searchComicBean.setHeadersMap(map2);
        searchComicBean.mergeVariable(map);
        analyzeRule.setBook(searchComicBean);
        String string = analyzeRule.getString(this.f22356for.getRuleBookName(), false);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        searchComicBean.setNoteUrl(str);
        searchComicBean.setTag(this.f22355do);
        searchComicBean.setOrigin(this.f22357if);
        searchComicBean.setName(string);
        searchComicBean.setCoverUrl(analyzeRule.getCoverString(this.f22356for.getRuleCoverUrl(), true));
        searchComicBean.setIntroduce(od0.m5565for(analyzeRule.getString(this.f22356for.getRuleIntroduce(), false)));
        searchComicBean.setAuthor(od0.m5566if(analyzeRule.getString(this.f22356for.getRuleBookAuthor(), false)));
        searchComicBean.setKind(od0.m5564do(l22.m4572static(",", analyzeRule.getStringList(this.f22356for.getRuleBookKind(), false))));
        searchComicBean.setLastChapter(od0.m5564do(analyzeRule.getString(this.f22356for.getRuleBookLastChapter(), false)));
        return searchComicBean;
    }

    /* renamed from: new, reason: not valid java name */
    private SearchComicBean m26401new(AnalyzeRule analyzeRule, String str, Map<String, String> map, Map<String, String> map2) throws ScriptException {
        SearchComicBean searchComicBean = new SearchComicBean();
        searchComicBean.setSearchPage(str);
        searchComicBean.setHeadersMap(map2);
        searchComicBean.mergeVariable(map);
        analyzeRule.setBook(searchComicBean);
        String string = analyzeRule.getString(this.f22356for.getRuleSearchName(), false);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        searchComicBean.setTag(this.f22355do);
        searchComicBean.setOrigin(this.f22357if);
        searchComicBean.setName(string);
        searchComicBean.setAuthor(od0.m5566if(analyzeRule.getString(this.f22356for.getRuleSearchAuthor(), false)));
        searchComicBean.setKind(od0.m5564do(l22.m4572static(",", analyzeRule.getStringList(this.f22356for.getRuleSearchKind(), false))));
        searchComicBean.setLastChapter(od0.m5564do(analyzeRule.getString(this.f22356for.getRuleSearchLastChapter(), false)));
        searchComicBean.setCoverUrl(analyzeRule.getCoverString(this.f22356for.getRuleSearchCoverUrl(), true));
        searchComicBean.setIntroduce(od0.m5565for(analyzeRule.getString(this.f22356for.getRuleIntroduce(), false)));
        String string2 = analyzeRule.getString(this.f22356for.getRuleSearchNoteUrl(), true);
        if (!l22.m4571return(string2)) {
            str = string2;
        }
        searchComicBean.setNoteUrl(str);
        return searchComicBean;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew<List<SearchComicBean>> m26402if(final Response<String> response, final Map<String, String> map, final Map<String, String> map2) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: com.wsw.cospa.model.else
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f22326do.m26398case(response, map, map2, observableEmitter);
            }
        });
    }

    /* renamed from: try, reason: not valid java name */
    public String m26403try() {
        return this.f22358new;
    }
}
