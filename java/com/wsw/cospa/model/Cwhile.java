package com.wsw.cospa.model;

import android.support.v4.l22;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.model.Cwhile;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.wsw.cospa.model.while, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cwhile {

    /* renamed from: if, reason: not valid java name */
    private static volatile Cwhile f22424if;

    /* renamed from: do, reason: not valid java name */
    private Cconst f22425do;

    private Cwhile() {
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cwhile m26502catch() {
        if (f22424if == null) {
            synchronized (Cwhile.class) {
                if (f22424if == null) {
                    f22424if = new Cwhile();
                }
            }
        }
        return f22424if;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ void m26503class(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ void m26506final(List list, ComicShelfBean comicShelfBean, ObservableEmitter observableEmitter) throws Exception {
        for (int i = 0; i < list.size(); i++) {
            ChapterListBean chapterListBean = (ChapterListBean) list.get(i);
            chapterListBean.setDurChapterIndex(i);
            chapterListBean.setTag(comicShelfBean.getTag());
            chapterListBean.setNoteUrl(comicShelfBean.getNoteUrl());
            chapterListBean.setComicInfoUrl(comicShelfBean.getComicInfoBean().getChapterUrl());
            if (i > 0) {
                ((ChapterListBean) list.get(i - 1)).setNextChapterUrl(chapterListBean.getDurChapterUrl());
            }
        }
        if (comicShelfBean.getChapterListSize().intValue() < list.size()) {
            comicShelfBean.setHasUpdate(Boolean.TRUE);
            comicShelfBean.setFinalRefreshData(Long.valueOf(System.currentTimeMillis()));
            comicShelfBean.getComicInfoBean().setFinalRefreshData(System.currentTimeMillis());
        }
        comicShelfBean.setChapterListSize(Integer.valueOf(list.size()));
        comicShelfBean.setDurChapter(Integer.valueOf(Math.min(comicShelfBean.getDurChapter(), comicShelfBean.getChapterListSize().intValue() - 1)));
        comicShelfBean.getComicInfoBean().setChapterList(list);
        comicShelfBean.upDurChapterName();
        comicShelfBean.upLastChapterName();
        ComicSourceBean comicSourceBeanM27177goto = com.wsw.cospa.utils.Cwhile.m27177goto(comicShelfBean.getTag());
        if (comicSourceBeanM27177goto != null && l22.m4571return(comicSourceBeanM27177goto.getRuleBookLastChapter())) {
            comicShelfBean.upLastChapterName();
        }
        observableEmitter.onNext(comicShelfBean);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ void m26510super(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cnew<ComicShelfBean> m26504const(final ComicShelfBean comicShelfBean, final List<ChapterListBean> list) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.jf2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cwhile.m26506final(list, comicShelfBean, observableEmitter);
            }
        });
    }

    /* renamed from: break, reason: not valid java name */
    public Cnew<ComicContentBean> m26512break(ChapterListBean chapterListBean) {
        Cconst cconstG = Cconst.g(chapterListBean.getTag());
        this.f22425do = cconstG;
        if (cconstG != null) {
            return cconstG.getBookContent(chapterListBean);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cnew<List<SearchComicBean>> m26513case(String str, int i, String str2, Map<String, String> map, String str3) {
        Cconst cconstG = Cconst.g(str2);
        this.f22425do = cconstG;
        return cconstG != null ? cconstG.findBook(str, i, map, str3) : Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.lf2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cwhile.m26503class(observableEmitter);
            }
        });
    }

    /* renamed from: else, reason: not valid java name */
    public Cnew<ComicShelfBean> m26514else(ComicShelfBean comicShelfBean) {
        Cconst cconstG = Cconst.g(comicShelfBean.getTag());
        this.f22425do = cconstG;
        if (cconstG != null) {
            return cconstG.getBookInfo(comicShelfBean);
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cnew<ComicShelfBean> m26515goto(final ComicShelfBean comicShelfBean) {
        Cconst cconstG = Cconst.g(comicShelfBean.getTag());
        this.f22425do = cconstG;
        if (cconstG != null) {
            return cconstG.getChapterList(comicShelfBean).flatMap(new Function() { // from class: android.support.v4.mf2
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f3909do.m26504const(comicShelfBean, (List) obj);
                }
            });
        }
        return Cnew.error(new Throwable(comicShelfBean.getComicInfoBean().getName() + "没有图源"));
    }

    /* renamed from: throw, reason: not valid java name */
    public Cnew<Boolean> m26516throw(ComicSourceBean comicSourceBean) {
        Cconst cconstG = Cconst.g(comicSourceBean.getBookSourceUrl());
        this.f22425do = cconstG;
        return cconstG.AppSourcelogin(comicSourceBean);
    }

    /* renamed from: try, reason: not valid java name */
    public void m26517try() {
        Cconst cconst = this.f22425do;
        if (cconst != null) {
            cconst.f();
            this.f22425do = null;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public Cnew<List<SearchComicBean>> m26518while(String str, int i, String str2, Map<String, String> map, String str3) {
        Cconst cconstG = Cconst.g(str2);
        this.f22425do = cconstG;
        return cconstG != null ? cconstG.searchBook(str, i, map, str3) : Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.kf2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cwhile.m26510super(observableEmitter);
            }
        });
    }
}
