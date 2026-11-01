package com.wsw.cospa.model;

import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.utils.Cfor;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeUrl;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.script.ScriptException;
import retrofit2.Response;

/* renamed from: com.wsw.cospa.model.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry {

    /* renamed from: new, reason: not valid java name */
    private static String f22415new;

    /* renamed from: try, reason: not valid java name */
    private static Ctry f22416try;

    /* renamed from: do, reason: not valid java name */
    private ComicSourceBean f22417do;

    /* renamed from: for, reason: not valid java name */
    private String f22418for = null;

    /* renamed from: if, reason: not valid java name */
    private String f22419if;

    /* renamed from: com.wsw.cospa.model.try$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        private List<ComicContentImgBean> f22420do;

        /* renamed from: for, reason: not valid java name */
        private String f22421for;

        /* renamed from: if, reason: not valid java name */
        private String f22422if;

        private Cif() {
        }
    }

    private Ctry() {
    }

    /* renamed from: case, reason: not valid java name */
    public static Ctry m26489case(String str, ComicSourceBean comicSourceBean) {
        if (f22416try == null) {
            synchronized (Ctry.class) {
                if (f22416try == null) {
                    f22416try = new Ctry(str, comicSourceBean);
                }
            }
        } else if (!f22415new.equals(str)) {
            f22416try = new Ctry(str, comicSourceBean);
        }
        return f22416try;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public /* synthetic */ void m26491else(String str, ChapterListBean chapterListBean, String str2, Map map, ObservableEmitter observableEmitter) throws Exception {
        try {
            if (TextUtils.isEmpty(str)) {
                observableEmitter.tryOnError(new Throwable("漫画获取失败"));
                observableEmitter.onComplete();
                return;
            }
            ComicContentBean comicContentBean = new ComicContentBean();
            comicContentBean.setDurChapterIndex(chapterListBean.getDurChapterIndex());
            comicContentBean.setDurChapterUrl(chapterListBean.getDurChapterUrl());
            comicContentBean.setTag(f22415new);
            String variable = chapterListBean.getVariable();
            Cif cifM26492if = m26492if(str2, str, chapterListBean.getDurChapterUrl(), variable);
            String str3 = this.f22418for;
            if (str3 != null && !str3.isEmpty() && !this.f22418for.equals("null") && !this.f22418for.equals(variable)) {
                chapterListBean.setVariable(this.f22418for);
                Cnew.m26132case().m26138try().m3140if().insertOrReplace(chapterListBean);
                variable = this.f22418for;
            }
            String strM26493new = m26493new(chapterListBean, cifM26492if.f22421for);
            List<ComicContentImgBean> list = cifM26492if.f22420do;
            if (!TextUtils.isEmpty(cifM26492if.f22422if)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(chapterListBean.getDurChapterUrl());
                System.out.println(chapterListBean.getNextChapterUrl() + "-->" + chapterListBean.getDurChapterName());
                while (!TextUtils.isEmpty(cifM26492if.f22422if) && !arrayList.contains(cifM26492if.f22422if)) {
                    arrayList.add(cifM26492if.f22422if);
                    if (cifM26492if.f22422if.equals(chapterListBean.getNextChapterUrl())) {
                        break;
                    }
                    try {
                        Response<String> responseBlockingFirst = com.wsw.cospa.model.impl.Cif.m26424break().m26439catch(new AnalyzeUrl(cifM26492if.f22422if, null, null, map)).blockingFirst();
                        cifM26492if = m26492if(new GsonBuilder().disableHtmlEscaping().create().toJson(responseBlockingFirst.headers().toMultimap()), responseBlockingFirst.body(), cifM26492if.f22422if, chapterListBean.getVariable());
                        list.addAll(cifM26492if.f22420do);
                    } catch (Exception unused) {
                    }
                }
            }
            int i = 0;
            while (i < list.size()) {
                int i2 = i + 1;
                list.get(i).setIndexPape(i2);
                list.get(i).setMaxPage(list.size());
                list.get(i).setChapterContentUrl(chapterListBean.getDurChapterUrl());
                list.get(i).setChapterIndex(chapterListBean.getDurChapterIndex());
                list.get(i).setChapterText(chapterListBean.getDurChapterName());
                list.get(i).setVariable(strM26493new);
                list.get(i).setCustomVariable(variable);
                i = i2;
            }
            comicContentBean.setDurContentUrl(list);
            observableEmitter.onNext(comicContentBean);
            observableEmitter.onComplete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Cif m26492if(String str, String str2, String str3, String str4) throws ScriptException {
        Cif cif = new Cif();
        AnalyzeRule analyzeRule = new AnalyzeRule(str4);
        analyzeRule.setContent(str, str2, str3);
        analyzeRule.setBookContentVariable("ruleBookContent");
        List<String> stringList = analyzeRule.getStringList(this.f22419if, true);
        cif.f22421for = analyzeRule.getBookContentVariable();
        ArrayList arrayList = new ArrayList();
        for (String str5 : stringList) {
            ComicContentImgBean comicContentImgBean = new ComicContentImgBean();
            comicContentImgBean.setImgurl(String.valueOf(str5));
            arrayList.add(comicContentImgBean);
        }
        cif.f22420do = arrayList;
        if (!TextUtils.isEmpty(this.f22417do.getRuleContentUrlNext())) {
            cif.f22422if = analyzeRule.getString(this.f22417do.getRuleContentUrlNext(), true);
        }
        this.f22418for = analyzeRule.getVariable();
        return cif;
    }

    /* renamed from: new, reason: not valid java name */
    private String m26493new(ChapterListBean chapterListBean, String str) {
        if (str == null || str.equals("ruleBookContent")) {
            return null;
        }
        try {
            return JSON.toJSONString(AnalyzeHeaders.covertMap(str, chapterListBean));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public io.reactivex.Cnew<ComicContentBean> m26494for(final String str, final String str2, final ChapterListBean chapterListBean, final Map<String, String> map) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.zm
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f8604do.m26491else(str2, chapterListBean, str, map, observableEmitter);
            }
        });
    }

    /* renamed from: try, reason: not valid java name */
    public void m26495try() {
        if (f22416try != null) {
            f22416try = null;
        }
    }

    private Ctry(String str, ComicSourceBean comicSourceBean) {
        f22415new = str;
        this.f22417do = comicSourceBean;
        String ruleBookContent = comicSourceBean.getRuleBookContent();
        this.f22419if = ruleBookContent;
        String strM26902for = Cfor.m26902for(ruleBookContent, comicSourceBean);
        this.f22419if = strM26902for;
        if (strM26902for.startsWith("$")) {
            this.f22419if = "@js:html=result;JsEngine=java;window=JsEngine;" + this.f22419if.substring(1) + ";getImgList()";
        }
    }
}
