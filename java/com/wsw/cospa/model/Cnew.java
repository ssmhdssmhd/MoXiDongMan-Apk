package com.wsw.cospa.model;

import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.utils.Cfor;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeUrl;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import javax.script.ScriptException;
import retrofit2.Response;

/* renamed from: com.wsw.cospa.model.new, reason: invalid class name */
/* loaded from: classes2.dex */
class Cnew {

    /* renamed from: do, reason: not valid java name */
    private String f22392do;

    /* renamed from: for, reason: not valid java name */
    private AnalyzeRule f22393for;

    /* renamed from: if, reason: not valid java name */
    private ComicSourceBean f22394if;

    /* renamed from: com.wsw.cospa.model.new$if, reason: invalid class name */
    public class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        private T f22395do;

        /* renamed from: if, reason: not valid java name */
        private List<String> f22397if;

        private Cif(T t, List<String> list) {
            this.f22395do = t;
            this.f22397if = list;
        }
    }

    public Cnew(String str, ComicSourceBean comicSourceBean) {
        this.f22392do = str;
        this.f22394if = comicSourceBean;
    }

    /* renamed from: if, reason: not valid java name */
    private Cif<List<ChapterListBean>> m26453if(String str, String str2, String str3, String str4) throws ScriptException {
        int iIndexOf;
        ArrayList arrayList = new ArrayList();
        List<String> arrayList2 = new ArrayList<>();
        this.f22393for.setContent(str, str2, str3);
        if (!TextUtils.isEmpty(this.f22394if.getRuleChapterUrlNext()) && (iIndexOf = (arrayList2 = this.f22393for.getStringList(this.f22394if.getRuleChapterUrlNext(), true)).indexOf(str3)) != -1) {
            arrayList2.remove(iIndexOf);
        }
        Iterator<Object> it = this.f22393for.getElements(str4).iterator();
        while (true) {
            if (!it.hasNext()) {
                return new Cif<>(arrayList, arrayList2);
            }
            this.f22393for.setContent(str, it.next(), null);
            String string = this.f22393for.getString(this.f22394if.getRuleChapterParentId(), false);
            String string2 = this.f22393for.getString(this.f22394if.getRuleChapterParentName(), false);
            String string3 = this.f22393for.getString(this.f22394if.getRuleChapterName(), false);
            String string4 = this.f22393for.getString(this.f22394if.getRuleContentUrl(), true);
            String string5 = !TextUtils.isEmpty(this.f22394if.getRuleChapterId()) ? this.f22393for.getString(this.f22394if.getRuleChapterId(), false) : "";
            if (!TextUtils.isEmpty(string3) && !TextUtils.isEmpty(string4)) {
                ChapterListBean chapterListBean = new ChapterListBean();
                chapterListBean.setTag(this.f22392do);
                chapterListBean.setParentIdString(string);
                chapterListBean.setParentNameString(string2);
                chapterListBean.setDurChapterName(string3);
                chapterListBean.setDurChapterUrl(string4);
                if (TextUtils.isEmpty(string5)) {
                    chapterListBean.setChapterId(string4);
                } else {
                    chapterListBean.setChapterId(string5);
                }
                chapterListBean.setVariable(this.f22393for.getVariable());
                arrayList.add(chapterListBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public /* synthetic */ void m26454new(String str, ComicShelfBean comicShelfBean, String str2, Map map, ObservableEmitter observableEmitter) throws Exception {
        boolean z;
        if (TextUtils.isEmpty(str)) {
            observableEmitter.onError(new Throwable("目录获取失败"));
            return;
        }
        this.f22393for = new AnalyzeRule(comicShelfBean);
        comicShelfBean.setTag(this.f22392do);
        String strM26902for = Cfor.m26902for(this.f22394if.getRuleChapterList(), this.f22394if);
        this.f22393for.setContent(str2, str, comicShelfBean.getComicInfoBean().getChapterUrl());
        String strPreTreatSourceRule = this.f22393for.preTreatSourceRule(strM26902for);
        if (strPreTreatSourceRule == null || !strPreTreatSourceRule.startsWith("-")) {
            z = false;
        } else {
            strPreTreatSourceRule = strPreTreatSourceRule.substring(1);
            z = true;
        }
        Cif<List<ChapterListBean>> cifM26453if = m26453if(str2, str, comicShelfBean.getComicInfoBean().getChapterUrl(), strPreTreatSourceRule);
        List list = (List) ((Cif) cifM26453if).f22395do;
        if (((Cif) cifM26453if).f22397if.size() > 1) {
            ArrayList arrayList = new ArrayList(((Cif) cifM26453if).f22397if);
            for (int i = 0; i < arrayList.size(); i++) {
                try {
                    Response<String> responseBlockingFirst = com.wsw.cospa.model.impl.Cif.m26424break().m26439catch(new AnalyzeUrl((String) arrayList.get(i), null, null, map)).blockingFirst();
                    list.addAll((Collection) ((Cif) m26453if(new GsonBuilder().disableHtmlEscaping().create().toJson(responseBlockingFirst.headers().toMultimap()), responseBlockingFirst.body(), (String) arrayList.get(i), strPreTreatSourceRule)).f22395do);
                } catch (Exception e) {
                    if (!observableEmitter.isDisposed()) {
                        observableEmitter.onError(e);
                    }
                }
            }
        } else if (((Cif) cifM26453if).f22397if.size() == 1) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(comicShelfBean.getComicInfoBean().getChapterUrl());
            while (((Cif) cifM26453if).f22397if.size() > 0 && !arrayList2.contains(((Cif) cifM26453if).f22397if.get(0))) {
                arrayList2.add((String) ((Cif) cifM26453if).f22397if.get(0));
                try {
                    Response<String> responseBlockingFirst2 = com.wsw.cospa.model.impl.Cif.m26424break().m26439catch(new AnalyzeUrl((String) ((Cif) cifM26453if).f22397if.get(0), null, null, map)).blockingFirst();
                    cifM26453if = m26453if(new GsonBuilder().disableHtmlEscaping().create().toJson(responseBlockingFirst2.headers().toMultimap()), responseBlockingFirst2.body(), (String) ((Cif) cifM26453if).f22397if.get(0), strPreTreatSourceRule);
                    list.addAll((Collection) ((Cif) cifM26453if).f22395do);
                } catch (Exception e2) {
                    if (!observableEmitter.isDisposed()) {
                        observableEmitter.onError(e2);
                    }
                }
            }
        }
        if (!z) {
            Collections.reverse(list);
        }
        ArrayList arrayList3 = new ArrayList(new LinkedHashSet(list));
        Collections.reverse(arrayList3);
        observableEmitter.onNext(arrayList3);
        observableEmitter.onComplete();
    }

    /* renamed from: for, reason: not valid java name */
    public io.reactivex.Cnew<List<ChapterListBean>> m26455for(final String str, final String str2, final ComicShelfBean comicShelfBean, final Map<String, String> map) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: com.wsw.cospa.model.for
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f22350do.m26454new(str2, comicShelfBean, str, map, observableEmitter);
            }
        });
    }
}
