package com.wsw.cospa.model;

import android.support.v4.od0;
import android.text.TextUtils;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;

/* renamed from: com.wsw.cospa.model.case, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccase {

    /* renamed from: do, reason: not valid java name */
    private String f22306do;

    /* renamed from: for, reason: not valid java name */
    private ComicSourceBean f22307for;

    /* renamed from: if, reason: not valid java name */
    private String f22308if;

    public Ccase(String str, String str2, ComicSourceBean comicSourceBean) {
        this.f22306do = str;
        this.f22308if = str2;
        this.f22307for = comicSourceBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public /* synthetic */ void m26338for(String str, ComicShelfBean comicShelfBean, String str2, ObservableEmitter observableEmitter) throws Exception {
        if (TextUtils.isEmpty(str)) {
            observableEmitter.tryOnError(new Throwable("书籍信息获取失败"));
            return;
        }
        comicShelfBean.setTag(this.f22306do);
        ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
        if (comicInfoBean == null) {
            comicInfoBean = new ComicInfoBean();
        }
        String noteUrl = comicShelfBean.getNoteUrl();
        comicInfoBean.setNoteUrl(noteUrl);
        comicInfoBean.setTag(this.f22306do);
        AnalyzeRule analyzeRule = new AnalyzeRule(comicShelfBean);
        analyzeRule.setContent(str2, str, noteUrl);
        String string = analyzeRule.getString(this.f22307for.getRuleBookName(), false);
        if (!TextUtils.isEmpty(string)) {
            comicInfoBean.setName(string);
        }
        String string2 = analyzeRule.getString(this.f22307for.getRuleBookAuthor(), false);
        if (!TextUtils.isEmpty(string2)) {
            comicInfoBean.setAuthor(od0.m5566if(string2));
        }
        String strJoin = TextUtils.join(",", analyzeRule.getStringList(this.f22307for.getRuleBookKind(), false));
        if (!TextUtils.isEmpty(strJoin)) {
            comicInfoBean.setKind(od0.m5564do(strJoin));
        }
        String coverString = analyzeRule.getCoverString(this.f22307for.getRuleCoverUrl(), true);
        if (!TextUtils.isEmpty(coverString)) {
            comicInfoBean.setCoverUrl(coverString);
        }
        String string3 = analyzeRule.getString(this.f22307for.getRuleIntroduce(), false);
        if (!TextUtils.isEmpty(string3)) {
            comicInfoBean.setIntroduce(od0.m5565for(string3));
        }
        String string4 = analyzeRule.getString(this.f22307for.getRuleBookLastChapter(), false);
        if (!TextUtils.isEmpty(string4)) {
            comicShelfBean.setLastChapterName(od0.m5564do(string4));
        }
        String string5 = analyzeRule.getString(this.f22307for.getRuleChapterUrl(), true);
        if (TextUtils.isEmpty(string5)) {
            comicInfoBean.setChapterUrl(comicShelfBean.getNoteUrl());
        } else {
            comicInfoBean.setChapterUrl(string5);
        }
        comicInfoBean.setOrigin(this.f22308if);
        comicShelfBean.setComicInfoBean(comicInfoBean);
        observableEmitter.onNext(comicShelfBean);
        observableEmitter.onComplete();
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew<ComicShelfBean> m26339if(final String str, final String str2, final ComicShelfBean comicShelfBean) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.qn
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f5492do.m26338for(str2, comicShelfBean, str, observableEmitter);
            }
        });
    }
}
