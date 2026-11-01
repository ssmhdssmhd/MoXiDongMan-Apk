package com.wsw.cospa.model;

import android.annotation.SuppressLint;
import android.support.v4.cq;
import android.support.v4.fd2;
import android.support.v4.fp1;
import android.support.v4.l22;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.hwangjr.rxbus.RxBus;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.SearchComicBean;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class Debug {

    /* renamed from: for, reason: not valid java name */
    public static String f22270for;

    /* renamed from: new, reason: not valid java name */
    private static final DateFormat f22271new = new SimpleDateFormat("[mm:ss.SSS]", Locale.getDefault());

    /* renamed from: try, reason: not valid java name */
    private static long f22272try;

    /* renamed from: do, reason: not valid java name */
    private CallBack f22273do;

    /* renamed from: if, reason: not valid java name */
    private cq f22274if;

    public interface CallBack {
        void finish();

        void printError(String str);

        void printLog(String str);
    }

    /* renamed from: com.wsw.cospa.model.Debug$do, reason: invalid class name */
    public class Cdo implements Observer<List<SearchComicBean>> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        @SuppressLint({"DefaultLocale"})
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(List<SearchComicBean> list) {
            if (list.isEmpty()) {
                Debug.this.m26285super("搜索列表为空");
                Debug.this.m26289throw(String.format("★%s 搜索结束", Debug.m26277const()));
                return;
            }
            Debug.this.m26289throw("●成功获取搜索结果» 共" + list.size() + "个结果");
            SearchComicBean searchComicBean = list.get(0);
            String urlNext = searchComicBean.getUrlNext();
            if (urlNext != null && !urlNext.isEmpty()) {
                Debug.this.m26289throw("●下一页地址» " + urlNext);
            }
            Debug.this.m26289throw("●搜索地址»" + searchComicBean.getSearchPage());
            Debug.this.m26289throw("●地址请求头»" + searchComicBean.getHeadersMap());
            Debug.this.m26289throw("●书籍名称» " + searchComicBean.getName());
            Debug.this.m26289throw("●书籍作者» " + searchComicBean.getAuthor());
            Debug.this.m26289throw("●书籍分类» " + searchComicBean.getKind());
            Debug.this.m26289throw("●书籍简介» " + searchComicBean.getIntroduce());
            Debug.this.m26289throw("●最新章节» " + searchComicBean.getLastChapter());
            Debug.this.m26289throw("●书籍封面» " + searchComicBean.getCoverUrl());
            Debug.this.m26289throw("●封面请求头» " + searchComicBean.getCoverHeader());
            Debug.this.m26289throw("●书籍网址» " + searchComicBean.getNoteUrl());
            Debug.this.m26289throw("●网址请求头»" + searchComicBean.getUrlHeader());
            Debug.this.m26289throw(String.format("★%s 搜索结束", Debug.m26277const()));
            if (!TextUtils.isEmpty(searchComicBean.getNoteUrl())) {
                Debug.this.m26273break(com.wsw.cospa.dao.Cdo.m26110package(searchComicBean), false);
            } else {
                Debug.this.m26285super("详情网址获取失败");
                Debug.this.m26289throw(String.format("★%s 搜索结束", Debug.m26277const()));
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Debug.this.m26285super(th.getMessage());
            Debug.this.m26289throw(String.format("★%s 目录结束", Debug.m26277const()));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Debug.this.f22274if.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.model.Debug$for, reason: invalid class name */
    public class Cfor implements Observer<ComicShelfBean> {
        public Cfor() {
        }

        @Override // io.reactivex.Observer
        @SuppressLint({"DefaultLocale"})
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            int size = comicShelfBean.getChapterList().size();
            if (size <= 0) {
                Debug.this.m26285super("获取到的目录为空");
                Debug.this.m26289throw(String.format("★%s 目录结束", Debug.m26277const()));
                return;
            }
            Debug.this.m26289throw("●成功获取目录列表» 共" + size + "个章节");
            ChapterListBean chapter = comicShelfBean.getChapter(0);
            Debug.this.m26289throw("●章节分级标识» " + chapter.getParentIdString());
            Debug.this.m26289throw("●章节分级名称» " + chapter.getParentNameString());
            Debug.this.m26289throw("●章节名称» " + chapter.getDurChapterName());
            Debug.this.m26289throw("●章节网址» " + fd2.m2252do(comicShelfBean.getComicInfoBean().getChapterUrl(), chapter.getDurChapterUrl()));
            Debug.this.m26289throw("●章节ID» " + chapter.getChapterId());
            Debug.this.m26289throw("●所有变量数据» " + chapter.getVariable());
            Debug.this.m26289throw(String.format("★%s 目录结束", Debug.m26277const()));
            Debug.this.m26286this(chapter);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            th.printStackTrace();
            Debug.this.m26285super(th.getMessage());
            Debug.this.m26289throw(String.format("★%s 目录结束", Debug.m26277const()));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Debug.this.f22274if.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.model.Debug$if, reason: invalid class name */
    public class Cif implements Observer<ComicShelfBean> {
        public Cif() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
            Debug.this.m26289throw("●成功获取详情页» " + comicInfoBean.getNoteUrl());
            Debug.this.m26289throw("●书籍名称» " + comicInfoBean.getName());
            Debug.this.m26289throw("●书籍作者» " + comicInfoBean.getAuthor());
            Debug.this.m26289throw("●书籍简介» " + comicInfoBean.getIntroduce());
            Debug.this.m26289throw("●书籍分类» " + comicShelfBean.getComicInfoBean().getKind());
            Debug.this.m26289throw("●最新章节» " + comicShelfBean.getLastChapterName());
            Debug.this.m26289throw("●书籍封面» " + comicInfoBean.getCoverUrl());
            Debug.this.m26289throw("●封面请求头»" + comicShelfBean.getCoverHeader());
            Debug.this.m26289throw("●目录网址» " + comicShelfBean.getComicInfoBean().getChapterUrl());
            Debug.this.m26289throw("●网址请求头» " + comicShelfBean.getUrlHeader());
            Debug.this.m26289throw(String.format("★%s 详情结束", Debug.m26277const()));
            Debug.this.m26282goto(comicShelfBean);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            th.printStackTrace();
            Debug.this.m26285super(th.getMessage());
            Debug.this.m26289throw(String.format("★%s 详情结束", Debug.m26277const()));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Debug.this.f22274if.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.model.Debug$new, reason: invalid class name */
    public class Cnew implements Observer<ComicContentBean> {
        public Cnew() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicContentBean comicContentBean) {
            if (comicContentBean == null || comicContentBean.getDurContentUrl().size() <= 0) {
                return;
            }
            List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
            Debug.this.m26289throw("●正文图片请求头» " + durContentUrl.get(0).getVariable());
            Debug.this.m26289throw("●章节内容» ");
            for (int i = 0; i < durContentUrl.size(); i++) {
                ComicContentImgBean comicContentImgBean = durContentUrl.get(i);
                Debug.this.m26289throw("\n" + fd2.m2252do(comicContentBean.getDurChapterUrl(), comicContentImgBean.getImgurl()));
            }
            Debug.this.m26289throw(String.format("★%s 正文结束", Debug.m26277const()));
            Debug.this.m26289throw("");
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Debug.this.m26276class();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Debug.this.m26285super(th.getMessage());
            Debug.this.m26289throw(String.format("★%s 正文结束", Debug.m26277const()));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Debug.this.f22274if.add(disposable);
        }
    }

    private Debug(String str, String str2, cq cqVar, CallBack callBack) {
        f22272try = System.currentTimeMillis();
        f22270for = str;
        this.f22273do = callBack;
        this.f22274if = cqVar;
        if (!fd2.m2255new(str2)) {
            m26288while(str2);
            return;
        }
        ComicShelfBean comicShelfBean = new ComicShelfBean();
        comicShelfBean.setTag(f22270for);
        comicShelfBean.setNoteUrl(str2);
        comicShelfBean.setDurChapter(0);
        comicShelfBean.setGroup(0);
        comicShelfBean.setDurChapterPage(0);
        comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        m26273break(comicShelfBean, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public void m26273break(ComicShelfBean comicShelfBean, boolean z) {
        if (!z) {
            m26289throw("\n");
        }
        m26289throw(String.format("★%s 详情开始", m26277const()));
        Cwhile.m26502catch().m26514else(comicShelfBean).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Cif());
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m26275catch() {
        Cwhile.m26502catch().m26517try();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m26276class() {
        CallBack callBack = this.f22273do;
        if (callBack != null) {
            callBack.finish();
        }
        RxBus.get().post(fp1.f1933extends, "finish");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static String m26277const() {
        return f22271new.format(new Date(System.currentTimeMillis() - f22272try));
    }

    /* renamed from: final, reason: not valid java name */
    public static void m26280final(String str, String str2, @NonNull cq cqVar, @NonNull CallBack callBack) {
        if (TextUtils.isEmpty(str)) {
            callBack.printError("图源url不能为空");
            return;
        }
        String strM4569package = l22.m4569package(str2);
        if (TextUtils.isEmpty(strM4569package)) {
            callBack.printError("关键字不能为空");
        } else {
            new Debug(str, strM4569package, cqVar, callBack);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public void m26282goto(ComicShelfBean comicShelfBean) {
        m26289throw("\n");
        m26289throw(String.format("★%s 目录开始", m26277const()));
        Cwhile.m26502catch().m26515goto(comicShelfBean).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Cfor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public void m26285super(String str) {
        CallBack callBack = this.f22273do;
        if (callBack != null) {
            callBack.printError(String.format("%s%s", "●", str));
        }
        RxBus.get().post(fp1.f1933extends, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public void m26286this(ChapterListBean chapterListBean) {
        m26289throw("\n");
        m26289throw(String.format("★%s 正文开始", m26277const()));
        Cwhile.m26502catch().m26512break(chapterListBean).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).timeout(30L, TimeUnit.SECONDS).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Cnew());
    }

    /* renamed from: while, reason: not valid java name */
    private void m26288while(String str) {
        m26289throw(String.format("★%s 搜索开始", m26277const()));
        Cwhile.m26502catch().m26518while(str, 1, f22270for, null, null).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Cdo());
    }

    /* renamed from: throw, reason: not valid java name */
    public void m26289throw(String str) {
        CallBack callBack = this.f22273do;
        if (callBack != null) {
            callBack.printLog(str);
        }
        RxBus.get().post(fp1.f1933extends, str);
    }
}
