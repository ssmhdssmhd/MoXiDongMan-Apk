package com.wsw.cospa.presenter;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.ep1;
import android.support.v4.g31;
import android.support.v4.gp1;
import android.support.v4.mm1;
import android.support.v4.pk0;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.support.v4.y8;
import androidx.appcompat.app.AppCompatActivity;
import com.bumptech.glide.Glide;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.HistoryComicBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.contract.ChapterBrowseContract;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.presenter.Cdo;
import com.wsw.cospa.utils.Cstrictfp;
import com.wsw.cospa.utils.Cwhile;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.wsw.cospa.presenter.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends ChapterBrowseContract.Cdo {

    /* renamed from: catch, reason: not valid java name */
    public static final String f22426catch = "do";

    /* renamed from: break, reason: not valid java name */
    private int f22427break;

    /* renamed from: case, reason: not valid java name */
    private ChapterListBean f22428case;

    /* renamed from: else, reason: not valid java name */
    private ComicShelfBean f22429else;

    /* renamed from: for, reason: not valid java name */
    private AppCompatActivity f22430for;

    /* renamed from: goto, reason: not valid java name */
    private ComicSourceBean f22431goto;

    /* renamed from: new, reason: not valid java name */
    private ChapterListBean f22432new;

    /* renamed from: this, reason: not valid java name */
    private int f22433this;

    /* renamed from: try, reason: not valid java name */
    private ChapterListBean f22434try;

    /* renamed from: com.wsw.cospa.presenter.do$break, reason: invalid class name */
    public class Cbreak extends bz1<List<ComicContentImgBean>> {
        public Cbreak() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicContentImgBean> list) {
            Cdo.this.m4860for().hideProgress();
            Cdo.this.m4860for().skipNextChapter(list);
            Cdo.this.m4860for().updatePageSeekBar(1, list.get(0).getMaxPage());
            Cdo.this.m4860for().updateComicBook(Cdo.this.f22434try);
            Cdo.this.m4860for().updateTitle(list.get(0).getChapterContentUrl());
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$case, reason: invalid class name */
    public class Ccase extends bz1<ComicContentBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f22436do;

        public Ccase(ChapterListBean chapterListBean) {
            this.f22436do = chapterListBean;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicContentBean comicContentBean) {
            List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
            Cdo.this.m4860for().hideProgress();
            if (durContentUrl == null || durContentUrl.size() <= 0) {
                Cdo.this.m4860for().updateComicBook(this.f22436do);
                Cdo.this.m4860for().updateTitle(comicContentBean.getDurChapterUrl());
                Cdo.this.m4860for().showToast("漫画图片获取失败！请点击刷新按钮");
                return;
            }
            Cdo.this.m4860for().loadChapter(durContentUrl);
            ComicContentImgBean comicContentImgBean = durContentUrl.get(0);
            if (Cdo.this.f22427break != 0) {
                Cdo.this.m4860for().moveToPosition(Cdo.this.f22427break);
                Cdo.this.m4860for().updatePageSeekBar(Cdo.this.f22427break, comicContentImgBean.getMaxPage());
                Cdo.this.m4860for().updateButtomRight(Cdo.this.f22427break, comicContentImgBean.getMaxPage());
            } else {
                Cdo.this.m4860for().updatePageSeekBar(comicContentImgBean.getIndexPape(), comicContentImgBean.getMaxPage());
                Cdo.this.m4860for().updateButtomRight(comicContentImgBean.getIndexPape(), comicContentImgBean.getMaxPage());
            }
            Cdo.this.m4860for().initComicName(Cdo.this.f22429else.getComicInfoBean().getName());
            Cdo.this.m4860for().updateComicBook(this.f22436do);
            Cdo.this.m4860for().updateTitle(comicContentImgBean.getChapterContentUrl());
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$catch, reason: invalid class name */
    public class Ccatch extends bz1<List<ComicContentImgBean>> {
        public Ccatch() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicContentImgBean> list) {
            Cdo.this.m4860for().hideProgress();
            Cdo.this.m4860for().skipPreChapter(list);
            Cdo.this.m4860for().updatePageSeekBar(1, list.get(0).getMaxPage());
            Cdo.this.m4860for().updateComicBook(Cdo.this.f22428case);
            Cdo.this.m4860for().updateTitle(list.get(0).getChapterContentUrl());
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0226do implements Runnable {

        /* renamed from: com.wsw.cospa.presenter.do$do$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0227do implements Runnable {
            public RunnableC0227do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                mm1.m4950case().mo970if(new Object[0]);
            }
        }

        /* renamed from: com.wsw.cospa.presenter.do$do$if, reason: invalid class name */
        public class Cif implements Runnable {
            public Cif() {
            }

            @Override // java.lang.Runnable
            public void run() {
                mm1.m4950case().mo970if(new Object[0]);
            }
        }

        public RunnableC0226do() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchComicBean searchComicBeanM26038return = DatabaseHelper.m26016switch().m26038return(Cdo.this.f22429else.getNoteUrl());
            if (searchComicBeanM26038return != null) {
                HistoryComicBean historyComicBean = new HistoryComicBean();
                historyComicBean.setNoteUrl(searchComicBeanM26038return.getNoteUrl());
                historyComicBean.setCoverUrl(searchComicBeanM26038return.getCoverUrl());
                historyComicBean.setName(searchComicBeanM26038return.getName());
                historyComicBean.setAuthor(searchComicBeanM26038return.getAuthor());
                historyComicBean.setTag(searchComicBeanM26038return.getTag());
                historyComicBean.setKind(searchComicBeanM26038return.getKind());
                historyComicBean.setOrigin(searchComicBeanM26038return.getOrigin());
                historyComicBean.setDesc(searchComicBeanM26038return.getDesc());
                historyComicBean.setLastChapter(searchComicBeanM26038return.getLastChapter());
                historyComicBean.setIntroduce(searchComicBeanM26038return.getIntroduce());
                historyComicBean.setChapterUrl(searchComicBeanM26038return.getChapterUrl());
                historyComicBean.setUpTime(Long.valueOf(System.currentTimeMillis()));
                historyComicBean.setVariable(searchComicBeanM26038return.getVariable());
                historyComicBean.setSearchPage(searchComicBeanM26038return.getSearchPage());
                historyComicBean.setSearchCoverHeaders(searchComicBeanM26038return.getSearchCoverHeaders());
                DatabaseHelper.m26016switch().a(historyComicBean);
                wi0.m9159case(new RunnableC0227do(), 200L);
                return;
            }
            HistoryComicBean historyComicBean2 = new HistoryComicBean();
            ComicInfoBean comicInfoBean = Cdo.this.f22429else.getComicInfoBean();
            if (comicInfoBean != null) {
                historyComicBean2.setCoverUrl(comicInfoBean.getCoverUrl());
                historyComicBean2.setName(comicInfoBean.getName());
                historyComicBean2.setAuthor(comicInfoBean.getAuthor());
                historyComicBean2.setTag(comicInfoBean.getTag());
                historyComicBean2.setKind(comicInfoBean.getKind());
                historyComicBean2.setOrigin(comicInfoBean.getOrigin());
                historyComicBean2.setIntroduce(comicInfoBean.getIntroduce());
                historyComicBean2.setChapterUrl(comicInfoBean.getChapterUrl());
                historyComicBean2.setUpTime(Long.valueOf(System.currentTimeMillis()));
                SearchComicBean searchComicBean = new SearchComicBean();
                searchComicBean.setAuthor(comicInfoBean.getAuthor());
                searchComicBean.setCoverUrl(comicInfoBean.getCoverUrl());
                searchComicBean.setIntroduce(comicInfoBean.getIntroduce());
                searchComicBean.setName(comicInfoBean.getName());
                searchComicBean.setKind(comicInfoBean.getKind());
                searchComicBean.setNoteUrl(comicInfoBean.getNoteUrl());
                searchComicBean.setOrigin(comicInfoBean.getOrigin());
                searchComicBean.setTag(comicInfoBean.getTag());
                searchComicBean.setUpTime(Long.valueOf(System.currentTimeMillis()));
                searchComicBean.setLastChapter(Cdo.this.f22429else.getLastChapterName());
                searchComicBean.setChapterUrl(comicInfoBean.getChapterUrl());
                DatabaseHelper.m26016switch().o(searchComicBean);
            }
            historyComicBean2.setNoteUrl(Cdo.this.f22429else.getNoteUrl());
            historyComicBean2.setLastChapter(Cdo.this.f22429else.getLastChapterName());
            historyComicBean2.setVariable(Cdo.this.f22429else.getVariable());
            DatabaseHelper.m26016switch().a(historyComicBean2);
            wi0.m9159case(new Cif(), 200L);
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$else, reason: invalid class name */
    public class Celse extends bz1<List<ComicContentImgBean>> {
        public Celse() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicContentImgBean> list) {
            Cdo.this.m4860for().hideProgress();
            Cdo.this.m4860for().loadChapter(list);
            ComicContentImgBean comicContentImgBean = list.get(0);
            if (Cdo.this.f22427break != 0) {
                Cdo.this.m4860for().moveToPosition(Cdo.this.f22427break);
                Cdo.this.m4860for().updatePageSeekBar(Cdo.this.f22427break, comicContentImgBean.getMaxPage());
                Cdo.this.m4860for().updateButtomRight(Cdo.this.f22427break, comicContentImgBean.getMaxPage());
            } else {
                Cdo.this.m4860for().updatePageSeekBar(1, comicContentImgBean.getMaxPage());
                Cdo.this.m4860for().updateButtomRight(comicContentImgBean.getIndexPape(), comicContentImgBean.getMaxPage());
            }
            Cdo.this.m4860for().initComicName(Cdo.this.f22429else.getComicInfoBean().getName());
            Cdo.this.m4860for().updateComicBook(Cdo.this.f22432new);
            Cdo.this.m4860for().updateTitle(comicContentImgBean.getChapterContentUrl());
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$for, reason: invalid class name */
    public class Cfor extends bz1<ComicContentBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f22443do;

        /* renamed from: com.wsw.cospa.presenter.do$for$do, reason: invalid class name and collision with other inner class name */
        public class C0228do implements DatabaseHelper.OnUpgradeChangeListener {
            public C0228do() {
            }

            @Override // com.wsw.cospa.dao.DatabaseHelper.OnUpgradeChangeListener
            public void onUpgradeChange() {
                Cdo.this.m4860for().hideProgress();
                Cfor cfor = Cfor.this;
                Cdo.this.mo25916final(cfor.f22443do);
            }
        }

        public Cfor(ChapterListBean chapterListBean) {
            this.f22443do = chapterListBean;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicContentBean comicContentBean) {
            if (comicContentBean != null) {
                List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
                if (durContentUrl != null && durContentUrl.size() > 0) {
                    DatabaseHelper.m26016switch().m26041synchronized(comicContentBean, new C0228do());
                }
                for (ComicContentImgBean comicContentImgBean : durContentUrl) {
                    vv0.m8965if("onRefreshComicRule", " 正文规则请求头 variable ： " + comicContentImgBean.getVariable() + ", customVariable :" + comicContentImgBean.getCustomVariable() + " 图片地址：" + comicContentImgBean.getImgurl());
                }
            }
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$goto, reason: invalid class name */
    public class Cgoto extends bz1<List<ComicContentImgBean>> {
        public Cgoto() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicContentImgBean> list) {
            Cdo.this.m4860for().hideProgress();
            Cdo.this.m4860for().loadNextChapter(list);
            Cdo.this.m4860for().updatePageSeekBar(1, list.get(0).getMaxPage());
            Cdo.this.m4860for().updateComicBook(Cdo.this.f22434try);
            Cdo.this.m4860for().updateTitle(list.get(0).getChapterContentUrl());
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$if, reason: invalid class name */
    public class Cif extends bz1<List<ComicContentImgBean>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f22447do;

        public Cif(ChapterListBean chapterListBean) {
            this.f22447do = chapterListBean;
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicContentImgBean> list) {
            Cdo.this.m4860for().hideProgress();
            Cdo.this.m4860for().loadChapter(list);
            Cdo.this.m4860for().updatePageSeekBar(Cdo.this.f22429else.getDurChapterPage(), list.get(0).getMaxPage());
            if (Cdo.this.f22429else.getDurChapterPage() > 1) {
                Cdo.this.m4860for().moveToPosition(Cdo.this.f22429else.getDurChapterPage());
            }
            Cdo.this.m4860for().updateComicBook(this.f22447do);
            Cdo.this.m4860for().initComicName(Cdo.this.f22429else.getComicInfoBean().getName());
            Cdo.this.m4860for().updateTitle(list.get(0).getChapterContentUrl());
            Cdo.this.m4860for().updateButtomRight(Cdo.this.f22429else.getDurChapterPage(), list.get(0).getMaxPage());
            Cdo.this.m4860for().updateChapterName(this.f22447do.getDurChapterName());
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$new, reason: invalid class name */
    public class Cnew extends bz1<ComicContentBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f22449do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f22451if;

        public Cnew(boolean z, ChapterListBean chapterListBean) {
            this.f22449do = z;
            this.f22451if = chapterListBean;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicContentBean comicContentBean) {
            Cdo.this.m4860for().hideProgress();
            List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
            if (durContentUrl == null || durContentUrl.size() <= 0) {
                Cdo.this.m4860for().updateComicBook(this.f22451if);
                Cdo.this.m4860for().updateTitle(comicContentBean.getDurChapterUrl());
                Cdo.this.m4860for().showToast("漫画图片获取失败！请点击刷新按钮");
            } else {
                if (this.f22449do) {
                    Cdo.this.m4860for().loadPreChapter(durContentUrl);
                } else {
                    Cdo.this.m4860for().loadNextChapter(durContentUrl);
                }
                Cdo.this.m4860for().updatePageSeekBar(durContentUrl.get(0).getIndexPape(), durContentUrl.get(0).getMaxPage());
                Cdo.this.m4860for().updateComicBook(this.f22451if);
                Cdo.this.m4860for().updateTitle(durContentUrl.get(0).getChapterContentUrl());
            }
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$this, reason: invalid class name */
    public class Cthis extends bz1<List<ComicContentImgBean>> {
        public Cthis() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicContentImgBean> list) {
            Cdo.this.m4860for().hideProgress();
            Cdo.this.m4860for().loadPreChapter(list);
            Cdo.this.m4860for().updatePageSeekBar(1, list.get(0).getMaxPage());
            Cdo.this.m4860for().updateComicBook(Cdo.this.f22428case);
            Cdo.this.m4860for().updateTitle(list.get(0).getChapterContentUrl());
        }
    }

    /* renamed from: com.wsw.cospa.presenter.do$try, reason: invalid class name */
    public class Ctry extends bz1<ComicContentBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f22453do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f22455if;

        public Ctry(boolean z, ChapterListBean chapterListBean) {
            this.f22453do = z;
            this.f22455if = chapterListBean;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicContentBean comicContentBean) {
            List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
            Cdo.this.m4860for().hideProgress();
            if (durContentUrl == null || durContentUrl.size() <= 0) {
                Cdo.this.m4860for().updateComicBook(this.f22455if);
                Cdo.this.m4860for().updateTitle(comicContentBean.getDurChapterUrl());
                Cdo.this.m4860for().showToast("漫画图片获取失败！请点击刷新按钮");
            } else {
                if (this.f22453do) {
                    Cdo.this.m4860for().skipPreChapter(durContentUrl);
                } else {
                    Cdo.this.m4860for().skipNextChapter(durContentUrl);
                }
                Cdo.this.m4860for().updatePageSeekBar(1, durContentUrl.get(0).getMaxPage());
                Cdo.this.m4860for().updateComicBook(this.f22455if);
                Cdo.this.m4860for().updateTitle(durContentUrl.get(0).getChapterContentUrl());
            }
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            Cdo.this.m4860for().showToast(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            Cdo.this.f3851if.add(disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBean = this.f22434try;
        if (chapterListBean != null) {
            observableEmitter.onNext(chapterListBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBeanM26043throw = DatabaseHelper.m26016switch().m26043throw(chapterListBean);
        if (chapterListBeanM26043throw == null) {
            M(chapterListBean, false);
            return;
        }
        List<ComicContentBean> listF = DatabaseHelper.m26016switch().f(chapterListBeanM26043throw.getDurChapterUrl());
        if (listF == null || listF.size() <= 0) {
            M(chapterListBeanM26043throw, false);
            return;
        }
        ComicContentBean comicContentBean = listF.get(0);
        if (comicContentBean == null) {
            M(chapterListBeanM26043throw, false);
            return;
        }
        List<ComicContentImgBean> listM26033native = DatabaseHelper.m26016switch().m26033native(comicContentBean);
        if (listM26033native == null || listM26033native.size() <= 0) {
            M(chapterListBeanM26043throw, false);
        } else {
            observableEmitter.onNext(listM26033native);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBean = this.f22428case;
        if (chapterListBean != null) {
            observableEmitter.onNext(chapterListBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBeanM26043throw = DatabaseHelper.m26016switch().m26043throw(chapterListBean);
        if (chapterListBeanM26043throw == null) {
            M(chapterListBean, true);
            return;
        }
        List<ComicContentBean> listF = DatabaseHelper.m26016switch().f(chapterListBeanM26043throw.getDurChapterUrl());
        if (listF == null || listF.size() <= 0) {
            M(chapterListBeanM26043throw, true);
            return;
        }
        ComicContentBean comicContentBean = listF.get(0);
        if (comicContentBean == null) {
            M(chapterListBeanM26043throw, true);
            return;
        }
        List<ComicContentImgBean> listM26033native = DatabaseHelper.m26016switch().m26033native(comicContentBean);
        if (listM26033native == null || listM26033native.size() <= 0) {
            M(chapterListBeanM26043throw, true);
        } else {
            observableEmitter.onNext(listM26033native);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(ComicContentImgBean comicContentImgBean) {
        String defaultUserAgent;
        if (this.f22430for.isDestroyed()) {
            return;
        }
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        Map<String, String> variableMap = comicContentImgBean.getVariableMap();
        boolean z = false;
        if (variableMap != null && !variableMap.isEmpty()) {
            for (String str : variableMap.keySet()) {
                boolean zEqualsIgnoreCase = str.toString().equalsIgnoreCase(pk0.b);
                String string = str.toString();
                String str2 = variableMap.get(str);
                Objects.requireNonNull(str2);
                cif.m27075if(string, str2);
                z = zEqualsIgnoreCase;
            }
        }
        ComicSourceBean comicSourceBeanM27177goto = Cwhile.m27177goto(this.f22429else.getTag());
        if (!z && (defaultUserAgent = AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM27177goto)) != null && !defaultUserAgent.isEmpty()) {
            cif.m27075if(pk0.b, defaultUserAgent);
        }
        Glide.m11048volatile(this.f22430for).mo6022catch().load(new com.bumptech.glide.load.model.Cif(comicContentImgBean.getImgurl(), cif.m27073for())).C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(ComicContentBean comicContentBean) throws Exception {
        List<ComicContentImgBean> durContentUrl;
        if (comicContentBean == null || (durContentUrl = comicContentBean.getDurContentUrl()) == null || durContentUrl.size() <= 0) {
            return;
        }
        for (final ComicContentImgBean comicContentImgBean : durContentUrl) {
            wi0.m9159case(new Runnable() { // from class: android.support.v4.wj
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7538do.E(comicContentImgBean);
                }
            }, 300L);
        }
        DatabaseHelper.m26016switch().m26041synchronized(comicContentBean, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(ComicContentImgBean comicContentImgBean) {
        String defaultUserAgent;
        if (this.f22430for.isDestroyed()) {
            return;
        }
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        Map<String, String> variableMap = comicContentImgBean.getVariableMap();
        boolean z = false;
        if (variableMap != null && !variableMap.isEmpty()) {
            for (String str : variableMap.keySet()) {
                boolean zEqualsIgnoreCase = str.toString().equalsIgnoreCase(pk0.b);
                String string = str.toString();
                String str2 = variableMap.get(str);
                Objects.requireNonNull(str2);
                cif.m27075if(string, str2);
                z = zEqualsIgnoreCase;
            }
        }
        ComicSourceBean comicSourceBeanM27177goto = Cwhile.m27177goto(this.f22429else.getTag());
        if (!z && (defaultUserAgent = AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM27177goto)) != null && !defaultUserAgent.isEmpty()) {
            cif.m27075if(pk0.b, defaultUserAgent);
        }
        Glide.m11048volatile(this.f22430for).mo6022catch().load(new com.bumptech.glide.load.model.Cif(comicContentImgBean.getImgurl(), cif.m27073for())).C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(ComicContentBean comicContentBean) throws Exception {
        List<ComicContentImgBean> durContentUrl;
        if (comicContentBean == null || (durContentUrl = comicContentBean.getDurContentUrl()) == null || durContentUrl.size() <= 0) {
            return;
        }
        for (final ComicContentImgBean comicContentImgBean : durContentUrl) {
            wi0.m9159case(new Runnable() { // from class: android.support.v4.uj
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6898do.n(comicContentImgBean);
                }
            }, 300L);
        }
        DatabaseHelper.m26016switch().m26041synchronized(comicContentBean, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        List<ComicContentBean> listF = DatabaseHelper.m26016switch().f(chapterListBean.getDurChapterUrl());
        if (listF == null || listF.size() <= 0) {
            G(chapterListBean);
            return;
        }
        ComicContentBean comicContentBean = listF.get(0);
        if (comicContentBean == null) {
            G(chapterListBean);
            return;
        }
        List<ComicContentImgBean> listM26033native = DatabaseHelper.m26016switch().m26033native(comicContentBean);
        if (listM26033native == null || listM26033native.size() <= 0) {
            G(chapterListBean);
        } else {
            observableEmitter.onNext(listM26033native);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBean = this.f22432new;
        if (chapterListBean != null) {
            observableEmitter.onNext(chapterListBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(ComicContentImgBean comicContentImgBean) {
        String defaultUserAgent;
        if (this.f22430for.isDestroyed()) {
            return;
        }
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        Map<String, String> variableMap = comicContentImgBean.getVariableMap();
        boolean z = false;
        if (variableMap != null && !variableMap.isEmpty()) {
            for (String str : variableMap.keySet()) {
                boolean zEqualsIgnoreCase = str.toString().equalsIgnoreCase(pk0.b);
                String string = str.toString();
                String str2 = variableMap.get(str);
                Objects.requireNonNull(str2);
                cif.m27075if(string, str2);
                z = zEqualsIgnoreCase;
            }
        }
        ComicSourceBean comicSourceBeanM27177goto = Cwhile.m27177goto(this.f22429else.getTag());
        if (!z && (defaultUserAgent = AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM27177goto)) != null && !defaultUserAgent.isEmpty()) {
            cif.m27075if(pk0.b, defaultUserAgent);
        }
        Glide.m11048volatile(this.f22430for).mo6022catch().load(new com.bumptech.glide.load.model.Cif(comicContentImgBean.getImgurl(), cif.m27073for())).C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(ComicContentBean comicContentBean) throws Exception {
        List<ComicContentImgBean> durContentUrl;
        if (comicContentBean == null || (durContentUrl = comicContentBean.getDurContentUrl()) == null || durContentUrl.size() <= 0) {
            return;
        }
        for (final ComicContentImgBean comicContentImgBean : durContentUrl) {
            wi0.m9159case(new Runnable() { // from class: android.support.v4.vj
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7224do.r(comicContentImgBean);
                }
            }, 300L);
        }
        DatabaseHelper.m26016switch().m26041synchronized(comicContentBean, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBean = this.f22434try;
        if (chapterListBean != null) {
            observableEmitter.onNext(chapterListBean);
        } else {
            vv0.m8965if(f22426catch, "没有下一章了！");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        List<ComicContentBean> listF = DatabaseHelper.m26016switch().f(chapterListBean.getDurChapterUrl());
        if (listF == null || listF.size() <= 0) {
            l(chapterListBean, false);
            return;
        }
        ComicContentBean comicContentBean = listF.get(0);
        if (comicContentBean == null) {
            l(chapterListBean, false);
            return;
        }
        List<ComicContentImgBean> listM26033native = DatabaseHelper.m26016switch().m26033native(comicContentBean);
        if (listM26033native == null || listM26033native.size() <= 0) {
            l(chapterListBean, false);
        } else {
            observableEmitter.onNext(listM26033native);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(ObservableEmitter observableEmitter) throws Exception {
        ChapterListBean chapterListBean = this.f22428case;
        if (chapterListBean != null) {
            observableEmitter.onNext(chapterListBean);
        } else {
            vv0.m8965if(f22426catch, "没有上一章了！");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        List<ComicContentBean> listF = DatabaseHelper.m26016switch().f(chapterListBean.getDurChapterUrl());
        if (listF == null || listF.size() <= 0) {
            l(chapterListBean, true);
            return;
        }
        ComicContentBean comicContentBean = listF.get(0);
        if (comicContentBean == null) {
            l(chapterListBean, true);
            return;
        }
        List<ComicContentImgBean> listM26033native = DatabaseHelper.m26016switch().m26033native(comicContentBean);
        if (listM26033native == null || listM26033native.size() <= 0) {
            l(chapterListBean, true);
        } else {
            observableEmitter.onNext(listM26033native);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(gp1 gp1Var) throws Exception {
        if (gp1Var.m2766for() == 121) {
            m4860for().onPicturePaging((ComicContentImgBean) gp1Var.m2765do());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        if (chapterListBean != null) {
            observableEmitter.onNext(chapterListBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(ChapterListBean chapterListBean, ObservableEmitter observableEmitter) throws Exception {
        if (g31.m2570try(CartoonApplication.m24690do())) {
            l(this.f22432new, false);
            return;
        }
        ChapterListBean chapterListBeanM26043throw = DatabaseHelper.m26016switch().m26043throw(chapterListBean);
        if (chapterListBeanM26043throw == null) {
            l(this.f22432new, false);
            return;
        }
        List<ComicContentBean> listF = DatabaseHelper.m26016switch().f(chapterListBeanM26043throw.getDurChapterUrl());
        if (listF == null || listF.size() <= 0) {
            l(chapterListBeanM26043throw, false);
            return;
        }
        ComicContentBean comicContentBean = listF.get(0);
        if (comicContentBean == null) {
            l(chapterListBeanM26043throw, false);
            return;
        }
        List<ComicContentImgBean> listM26033native = DatabaseHelper.m26016switch().m26033native(comicContentBean);
        if (listM26033native == null || listM26033native.size() <= 0) {
            return;
        }
        observableEmitter.onNext(listM26033native);
    }

    public void G(ChapterListBean chapterListBean) {
        if (chapterListBean == null || !g31.m2570try(CartoonApplication.m24690do())) {
            return;
        }
        com.wsw.cospa.model.Cwhile.m26502catch().m26512break(chapterListBean).doOnNext(new Consumer() { // from class: android.support.v4.lj
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3668do.s((ComicContentBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Ccase(chapterListBean));
    }

    public io.reactivex.Cnew<List<ComicContentImgBean>> H(final ChapterListBean chapterListBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.dk
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f1069do.u(chapterListBean, observableEmitter);
            }
        });
    }

    public io.reactivex.Cnew<List<ComicContentImgBean>> I(final ChapterListBean chapterListBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ek
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f1513do.w(chapterListBean, observableEmitter);
            }
        });
    }

    public io.reactivex.Cnew<List<ComicContentImgBean>> J(final ChapterListBean chapterListBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.hj
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f2420do.z(chapterListBean, observableEmitter);
            }
        });
    }

    public io.reactivex.Cnew<List<ComicContentImgBean>> K(final ChapterListBean chapterListBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.bk
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f462do.B(chapterListBean, observableEmitter);
            }
        });
    }

    public io.reactivex.Cnew<List<ComicContentImgBean>> L(final ChapterListBean chapterListBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ck
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f811do.D(chapterListBean, observableEmitter);
            }
        });
    }

    public void M(ChapterListBean chapterListBean, boolean z) {
        if (chapterListBean == null || !g31.m2570try(CartoonApplication.m24690do())) {
            return;
        }
        com.wsw.cospa.model.Cwhile.m26502catch().m26512break(chapterListBean).doOnNext(new Consumer() { // from class: android.support.v4.kj
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3395do.F((ComicContentBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Ctry(z, chapterListBean));
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: break */
    public void mo25911break() {
        m4860for().showProgress();
        if (this.f22432new == null) {
            return;
        }
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.xj
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f7968do.q(observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.nj
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f4241do.m((ChapterListBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Celse());
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: catch */
    public void mo25912catch(ChapterListBean chapterListBean) {
        if (chapterListBean == null) {
            return;
        }
        this.f22434try = this.f22429else.getChapterList(chapterListBean.getDurChapterIndex() + 1);
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.rj
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f5831do.t(observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.oj
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f4645do.H((ChapterListBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Cgoto());
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: class */
    public void mo25913class(ChapterListBean chapterListBean) {
        if (chapterListBean == null) {
            return;
        }
        this.f22428case = this.f22429else.getChapterList(chapterListBean.getDurChapterIndex() - 1);
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.yj
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f8245do.v(observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.pj
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f4990do.I((ChapterListBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Cthis());
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    @SuppressLint({"CheckResult"})
    /* renamed from: const */
    public void mo25914const(ComicShelfBean comicShelfBean, ChapterListBean chapterListBean) {
        if (g31.m2570try(CartoonApplication.m24690do())) {
            m4860for().showProgress();
            com.wsw.cospa.model.Cwhile.m26502catch().m26512break(chapterListBean).compose(b0.f302do).subscribe(new Cfor(chapterListBean));
        }
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: else */
    public void mo25915else() {
        com.wsw.cospa.model.Cwhile.m26502catch().m26517try();
        if (this.f22432new != null) {
            this.f22432new = null;
        }
        if (this.f22428case != null) {
            this.f22428case = null;
        }
        if (this.f22434try != null) {
            this.f22434try = null;
        }
        if (this.f22429else != null) {
            this.f22429else = null;
        }
        if (this.f22431goto != null) {
            this.f22431goto = null;
        }
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: final */
    public void mo25916final(final ChapterListBean chapterListBean) {
        m4860for().showProgress();
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.gj
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.y(chapterListBean, observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.qj
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f5436do.J((ChapterListBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Cif(chapterListBean));
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: goto */
    public ComicSourceBean mo25917goto() {
        return this.f22431goto;
    }

    public void l(ChapterListBean chapterListBean, boolean z) {
        if (chapterListBean == null || !g31.m2570try(CartoonApplication.m24690do())) {
            return;
        }
        com.wsw.cospa.model.Cwhile.m26502catch().m26512break(chapterListBean).doOnNext(new Consumer() { // from class: android.support.v4.jj
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3117do.o((ComicContentBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Cnew(z, chapterListBean));
    }

    public io.reactivex.Cnew<List<ComicContentImgBean>> m(final ChapterListBean chapterListBean) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ij
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f2788do.p(chapterListBean, observableEmitter);
            }
        });
    }

    @Override // android.support.v4.m7
    /* renamed from: new */
    public void mo4862new() {
        this.f3851if.add(ep1.m1972do().m1976try(gp1.class).compose(b0.f302do).subscribe(new Consumer() { // from class: android.support.v4.mj
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3924do.x((gp1) obj);
            }
        }));
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: super */
    public void mo25918super(ChapterListBean chapterListBean) {
        if (chapterListBean == null) {
            return;
        }
        this.f22434try = this.f22429else.getChapterList(chapterListBean.getDurChapterIndex() + 1);
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ak
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f184do.A(observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.sj
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f6160do.K((ChapterListBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Cbreak());
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: this */
    public void mo25919this(AppCompatActivity appCompatActivity, Intent intent) {
        ComicShelfBean comicShelfBean;
        this.f22430for = appCompatActivity;
        ComicShelfBean comicShelfBean2 = (ComicShelfBean) y8.m9768for().m9770if(intent.getStringExtra(wq.Cdo.f7652if));
        this.f22429else = comicShelfBean2;
        this.f22432new = comicShelfBean2.getChapterList(comicShelfBean2.getDurChapter());
        ComicShelfBean comicShelfBean3 = this.f22429else;
        if (comicShelfBean3 != null) {
            this.f22433this = comicShelfBean3.getDurChapter();
            int durChapterPage = this.f22429else.getDurChapterPage();
            this.f22427break = durChapterPage;
            this.f22427break = durChapterPage & 4095;
        }
        if (this.f22432new != null) {
            m4860for().updateChapterName(this.f22432new.getDurChapterName());
        }
        if (this.f22432new == null || (comicShelfBean = this.f22429else) == null) {
            return;
        }
        this.f22431goto = com.wsw.cospa.model.Cdo.m26358abstract(comicShelfBean.getTag());
        m4860for().initComicName(this.f22429else.getComicInfoBean().getName());
        m4860for().initComicBook(this.f22432new, this.f22429else);
        m4860for().updateCatalog(this.f22429else, this.f22432new.getDurChapterIndex());
        com.wsw.cospa.dao.Cnew.m26132case().m26138try().runInTx(new RunnableC0226do());
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.Cdo
    /* renamed from: throw */
    public void mo25920throw(ChapterListBean chapterListBean) {
        if (chapterListBean == null) {
            return;
        }
        this.f22428case = this.f22429else.getChapterList(chapterListBean.getDurChapterIndex() - 1);
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.zj
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f8573do.C(observableEmitter);
            }
        }).flatMap(new Function() { // from class: android.support.v4.tj
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f6579do.L((ChapterListBean) obj);
            }
        }).compose(b0.f302do).subscribe(new Ccatch());
    }
}
