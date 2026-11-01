package com.wsw.cospa.dao;

import android.database.SQLException;
import android.support.v4.dp0;
import android.support.v4.hm1;
import android.support.v4.i22;
import android.support.v4.l22;
import android.support.v4.v72;
import android.support.v4.wi0;
import android.text.TextUtils;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.Cdo;
import com.wsw.cospa.dao.ChapterListBeanDao;
import com.wsw.cospa.dao.ComicInfoBeanDao;
import com.wsw.cospa.dao.ComicShelfBeanDao;
import com.wsw.cospa.dao.ComicShelfGroupBeanDao;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.model.Cthrow;
import com.wsw.cospa.utils.Ccase;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;

/* renamed from: com.wsw.cospa.dao.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static Pattern f22148do = Pattern.compile("^(.*?第([\\d零〇一二两三四五六七八九十百千万０-９\\s]+)[章节篇回集])[、，。\u3000：:.\\s]*");

    /* renamed from: com.wsw.cospa.dao.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0220do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicShelfGroupBean f22149do;

        public RunnableC0220do(ComicShelfGroupBean comicShelfGroupBean) {
            this.f22149do = comicShelfGroupBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cnew.m26132case().m26138try().m3137else().updateInTx(this.f22149do);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(ComicShelfBean comicShelfBean, ComicShelfBean comicShelfBean2) {
        if (comicShelfBean.getFinalRefreshData() - comicShelfBean2.getFinalRefreshData() > 0) {
            return -1;
        }
        return comicShelfBean.getFinalRefreshData() - comicShelfBean2.getFinalRefreshData() < 0 ? 1 : 0;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static ComicSourceBean m26088abstract(String str) {
        if (str == null) {
            return null;
        }
        return Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(str), new WhereCondition[0]).unique();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(ComicShelfBean comicShelfBean, ComicShelfBean comicShelfBean2) {
        return comicShelfBean.getSerialNumber() - comicShelfBean2.getSerialNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(ComicShelfBean comicShelfBean) throws SQLException {
        if (comicShelfBean == null || comicShelfBean.getComicInfoBean() == null) {
            return;
        }
        Cnew.m26132case().m26138try().m3132case().deleteByKey(comicShelfBean.getNoteUrl());
        ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
        if (comicInfoBean != null && comicInfoBean.getDownload() != null) {
            Cthrow.m26474else().m26484new(comicInfoBean.getNoteUrl());
        }
        String noteUrl = comicShelfBean.getComicInfoBean().getNoteUrl();
        if (!TextUtils.isEmpty(noteUrl)) {
            Cnew.m26132case().m26138try().m3143try().deleteByKey(noteUrl);
        }
        ArrayList arrayList = new ArrayList();
        ComicInfoBean comicInfoBean2 = comicShelfBean.getComicInfoBean();
        if (comicInfoBean2 != null && comicInfoBean2.getChapterList().size() > 0) {
            List<ChapterListBean> chapterList = comicInfoBean2.getChapterList();
            for (int i = 0; i < chapterList.size(); i++) {
                ChapterListBean chapterListBean = chapterList.get(i);
                if (chapterListBean != null && !TextUtils.isEmpty(chapterListBean.getDurChapterUrl())) {
                    arrayList.add(chapterListBean.getDurChapterUrl());
                }
            }
        }
        if (arrayList.size() > 0) {
            Cnew.m26132case().m26138try().m3138for().deleteByKeyInTx(arrayList);
        }
        List<ChapterListBean> chapterList2 = comicShelfBean.getChapterList();
        if (chapterList2 == null || chapterList2.size() <= 0) {
            return;
        }
        Cnew.m26132case().m26138try().m3140if().deleteInTx(chapterList2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m26093const(ComicShelfGroupBean comicShelfGroupBean, boolean z) {
        if (z) {
            if (comicShelfGroupBean != null) {
                Cnew.m26132case().m26138try().m3137else().insertInTx(comicShelfGroupBean);
            }
        } else if (comicShelfGroupBean != null) {
            Cnew.m26132case().m26138try().m3137else().updateInTx(comicShelfGroupBean);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m26094continue(ComicShelfBean comicShelfBean, ComicShelfBean comicShelfBean2) {
        int i;
        int i2;
        int iIntValue = comicShelfBean.getChapterListSize().intValue();
        if (iIntValue == 0) {
            return 0;
        }
        int durChapter = comicShelfBean.getDurChapter();
        int chapterNum = comicShelfBean.getChapter(comicShelfBean.getDurChapter()).getChapterNum();
        String pureChapterName = comicShelfBean.getChapter(comicShelfBean.getDurChapter()).getPureChapterName();
        int iIntValue2 = comicShelfBean2.getChapterListSize().intValue();
        int iMax = Math.max(0, Math.min(durChapter, r0) - 10);
        int iMin = Math.min(iIntValue2 - 1, Math.max(durChapter, (durChapter - iIntValue) + iIntValue2) + 10);
        double d = 0.0d;
        if (pureChapterName.isEmpty()) {
            i = 0;
        } else {
            i22 i22Var = new i22(new dp0());
            i = 0;
            for (int i3 = iMax; i3 <= iMin; i3++) {
                double dScore = i22Var.score(pureChapterName, comicShelfBean2.getChapter(i3).getPureChapterName());
                if (dScore > d) {
                    i = i3;
                    d = dScore;
                }
            }
        }
        if (d >= 0.96d || chapterNum <= 0) {
            i2 = 0;
        } else {
            i2 = 0;
            while (true) {
                if (iMax > iMin) {
                    break;
                }
                int chapterNum2 = comicShelfBean2.getChapter(iMax).getChapterNum();
                if (chapterNum2 == chapterNum) {
                    i2 = chapterNum2;
                    i = iMax;
                    break;
                }
                if (Math.abs(chapterNum2 - chapterNum) < Math.abs(i2 - chapterNum)) {
                    i2 = chapterNum2;
                    i = iMax;
                }
                iMax++;
            }
        }
        return (d > 0.96d || Math.abs(i2 - chapterNum) < 1) ? i : Math.min(Math.max(0, comicShelfBean2.getChapterListSize().intValue() - 1), durChapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Exception exc) {
        v72.m8769if("删除漫画失败！----" + exc.getMessage());
    }

    /* renamed from: default, reason: not valid java name */
    public static Cnew<List<ComicShelfBean>> m26095default(final long j, final int i) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.pb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.m26104implements(j, i, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(ComicShelfBean comicShelfBean) {
        if (comicShelfBean.getErrorMsg() == null) {
            List<ChapterListBean> chapterList = comicShelfBean.getChapterList();
            Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(comicShelfBean.getNoteUrl()), new WhereCondition[0]).list();
            if (chapterList != null && !chapterList.isEmpty()) {
                Cnew.m26132case().m26138try().m3140if().insertOrReplaceInTx(chapterList);
            }
            ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
            if (comicInfoBean != null) {
                Cnew.m26132case().m26138try().m3143try().insertOrReplaceInTx(comicInfoBean);
            } else {
                Cnew.m26132case().m26138try().m3143try().insertOrReplaceInTx(DatabaseHelper.m26016switch().m26036protected(comicShelfBean.getNoteUrl()));
            }
            Cnew.m26132case().m26138try().m3132case().insertOrReplaceInTx(comicShelfBean);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static Cnew<ComicShelfBean> m26098extends(final String str) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.qb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.m26106instanceof(str, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f() {
        List<ComicShelfBean> list = Cnew.m26132case().m26138try().m3132case().queryBuilder().orderDesc(ComicShelfBeanDao.Properties.f22000new).list();
        for (int i = 0; i < list.size(); i++) {
            ComicShelfBean comicShelfBean = list.get(i);
            comicShelfBean.setGroupId(1L);
            Cnew.m26132case().m26138try().m3132case().updateInTx(comicShelfBean);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m26099final(String str) {
        return Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21978do.eq(str), new WhereCondition[0]).buildCount().count() > 0;
    }

    /* renamed from: finally, reason: not valid java name */
    public static ComicShelfBean m26100finally(String str) {
        ComicInfoBean comicInfoBeanUnique;
        Cnew.m26132case().m26138try().m3136do();
        ComicShelfBean comicShelfBeanUnique = Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f21993do.eq(str), new WhereCondition[0]).build().unique();
        if (comicShelfBeanUnique != null && (comicInfoBeanUnique = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(comicShelfBeanUnique.getNoteUrl()), new WhereCondition[0]).limit(1).build().unique()) != null) {
            List<ChapterListBean> list = Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(comicShelfBeanUnique.getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list();
            if (list != null && !list.isEmpty()) {
                Cnew.m26132case().m26138try().m3140if().insertOrReplaceInTx(list);
            }
            comicInfoBeanUnique.setChapterList(list);
            comicShelfBeanUnique.setComicInfoBean(comicInfoBeanUnique);
        }
        return comicShelfBeanUnique;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(ComicShelfBean comicShelfBean, ComicShelfGroupBean comicShelfGroupBean) {
        ComicShelfBeanDao comicShelfBeanDaoM3132case = Cnew.m26132case().m26138try().m3132case();
        if (comicShelfBean != null) {
            comicShelfBean.setGroupId(comicShelfGroupBean.getId().longValue());
            comicShelfBean.setGroupBean(comicShelfGroupBean);
            comicShelfBeanDaoM3132case.updateInTx(comicShelfBean);
            hm1.m3062case().mo970if(new Object[0]);
        }
    }

    public static List<ComicShelfGroupBean> h() {
        return Cnew.m26132case().m26138try().m3137else().queryBuilder().orderAsc(ComicShelfGroupBeanDao.Properties.f22006break).list();
    }

    public static ComicShelfGroupBean i(ComicShelfBean comicShelfBean) {
        if (comicShelfBean == null) {
            return null;
        }
        return Cnew.m26132case().m26138try().m3137else().load(Long.valueOf(comicShelfBean.getGroupId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: implements, reason: not valid java name */
    public static /* synthetic */ void m26104implements(long j, int i, ObservableEmitter observableEmitter) throws Exception {
        List<ComicShelfBean> list = j > 0 ? i == 1 ? Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f22005while.eq(Long.valueOf(j)), new WhereCondition[0]).orderDesc(ComicShelfBeanDao.Properties.f22000new).list() : Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f22005while.eq(Long.valueOf(j)), new WhereCondition[0]).orderAsc(ComicShelfBeanDao.Properties.f21997goto).list() : Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f22005while.eq(0), new WhereCondition[0]).orderDesc(ComicShelfBeanDao.Properties.f22000new).list();
        int i2 = 0;
        while (i2 < list.size()) {
            List<ComicInfoBean> list2 = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(list.get(i2).getNoteUrl()), new WhereCondition[0]).limit(1).build().list();
            if (list2 == null || list2.size() <= 0) {
                Cnew.m26132case().m26138try().m3132case().delete(list.get(i2));
                list.remove(i2);
                i2--;
            } else {
                ComicInfoBean comicInfoBean = list2.get(0);
                List<ChapterListBean> list3 = Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(list.get(i2).getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list();
                if (list3 != null && list3.size() > 0) {
                    comicInfoBean.setChapterList(list3);
                }
                list.get(i2).setComicInfoBean(comicInfoBean);
            }
            i2++;
        }
        observableEmitter.onNext(list);
        observableEmitter.onComplete();
    }

    /* renamed from: import, reason: not valid java name */
    public static void m26105import() throws SQLException {
        Cnew.m26132case().m26138try().m3137else().deleteAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public static /* synthetic */ void m26106instanceof(String str, ObservableEmitter observableEmitter) throws Exception {
        Cnew.m26132case().m26138try().m3136do();
        ComicShelfBean comicShelfBeanUnique = Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f21993do.eq(str), new WhereCondition[0]).build().unique();
        if (comicShelfBeanUnique == null) {
            observableEmitter.onError(new Throwable("没有本地记录"));
            return;
        }
        ComicInfoBean comicInfoBeanUnique = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(comicShelfBeanUnique.getNoteUrl()), new WhereCondition[0]).limit(1).build().unique();
        if (comicInfoBeanUnique == null) {
            observableEmitter.onError(new Throwable("没有本地记录"));
            return;
        }
        List<ChapterListBean> list = Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(comicShelfBeanUnique.getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list();
        if (list != null && !list.isEmpty()) {
            Cnew.m26132case().m26138try().m3140if().insertOrReplaceInTx(list);
        }
        comicInfoBeanUnique.setChapterList(list);
        comicShelfBeanUnique.setComicInfoBean(comicInfoBeanUnique);
        observableEmitter.onNext(comicShelfBeanUnique);
        observableEmitter.onComplete();
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m26107interface(String str) {
        return str != null && Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f21993do.eq(str), new WhereCondition[0]).count() > 0;
    }

    public static void j(List<ComicShelfBean> list, String str) {
        if (list == null || list.size() == 0) {
            return;
        }
        str.hashCode();
        switch (str) {
            case "0":
                Collections.sort(list, new Comparator() { // from class: android.support.v4.xb
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Cdo.m26119synchronized((ComicShelfBean) obj, (ComicShelfBean) obj2);
                    }
                });
                break;
            case "1":
                Collections.sort(list, new Comparator() { // from class: android.support.v4.nb
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Cdo.a((ComicShelfBean) obj, (ComicShelfBean) obj2);
                    }
                });
                break;
            case "2":
                Collections.sort(list, new Comparator() { // from class: android.support.v4.ob
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Cdo.b((ComicShelfBean) obj, (ComicShelfBean) obj2);
                    }
                });
                break;
        }
    }

    public static void k(final ComicShelfBean comicShelfBean) {
        try {
            Cnew.m26132case().m26138try().runInTx(new Runnable() { // from class: android.support.v4.sb
                @Override // java.lang.Runnable
                public final void run() throws SQLException {
                    Cdo.c(comicShelfBean);
                }
            });
        } catch (Exception e) {
            wi0.m9165try(new Runnable() { // from class: android.support.v4.vb
                @Override // java.lang.Runnable
                public final void run() {
                    Cdo.d(e);
                }
            });
            e.printStackTrace();
        }
    }

    public static void l(ComicShelfBean comicShelfBean, boolean z) throws SQLException {
        Cnew.m26132case().m26138try().m3132case().deleteByKeyInTx(comicShelfBean.getNoteUrl());
        Cnew.m26132case().m26138try().m3143try().deleteByKeyInTx(comicShelfBean.getComicInfoBean().getNoteUrl());
        m26126while(comicShelfBean.getNoteUrl());
    }

    public static void m(ComicSourceBean comicSourceBean) {
        if (comicSourceBean != null) {
            Cnew.m26132case().m26138try().m3139goto().insertOrReplace(comicSourceBean);
        }
    }

    public static void n(final ComicShelfBean comicShelfBean) {
        Cnew.m26132case().m26138try().runInTx(new Runnable() { // from class: android.support.v4.tb
            @Override // java.lang.Runnable
            public final void run() {
                Cdo.e(comicShelfBean);
            }
        });
    }

    /* renamed from: native, reason: not valid java name */
    public static void m26108native(Long l) {
        Cnew.m26132case().m26138try().m3137else().deleteByKey(l);
    }

    public static List<ComicInfoBean> o(String str) {
        QueryBuilder<ComicInfoBean> queryBuilder = Cnew.m26132case().m26138try().m3143try().queryBuilder();
        Property property = ComicInfoBeanDao.Properties.f21978do;
        return queryBuilder.where(property.like("%" + str + "%"), new WhereCondition[0]).orderAsc(property).list();
    }

    public static void p() {
        Cnew.m26132case().m26138try().runInTx(new Runnable() { // from class: android.support.v4.wb
            @Override // java.lang.Runnable
            public final void run() {
                Cdo.f();
            }
        });
    }

    /* renamed from: package, reason: not valid java name */
    public static ComicShelfBean m26110package(SearchComicBean searchComicBean) {
        ComicShelfBean comicShelfBean = new ComicShelfBean();
        comicShelfBean.setTag(searchComicBean.getTag());
        comicShelfBean.setNoteUrl(searchComicBean.getNoteUrl());
        comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        comicShelfBean.setLastChapterName(searchComicBean.getLastChapter());
        comicShelfBean.setDurChapter(0);
        comicShelfBean.setDurChapterPage(0);
        comicShelfBean.setVariable(searchComicBean.getVariable());
        ComicInfoBean comicInfoBean = new ComicInfoBean();
        comicInfoBean.setNoteUrl(searchComicBean.getNoteUrl());
        comicInfoBean.setAuthor(searchComicBean.getAuthor());
        comicInfoBean.setCoverUrl(searchComicBean.getCoverUrl());
        comicInfoBean.setName(searchComicBean.getName());
        comicInfoBean.setTag(searchComicBean.getTag());
        comicInfoBean.setOrigin(searchComicBean.getOrigin());
        comicInfoBean.setIntroduce(searchComicBean.getIntroduce());
        comicShelfBean.setComicInfoBean(comicInfoBean);
        return comicShelfBean;
    }

    /* renamed from: private, reason: not valid java name */
    public static List<ChapterListBean> m26111private(String str) {
        return Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(str), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public static /* synthetic */ void m26112protected(ObservableEmitter observableEmitter) throws Exception {
        List<ComicShelfBean> list = Cnew.m26132case().m26138try().m3132case().queryBuilder().orderDesc(ComicShelfBeanDao.Properties.f22000new).list();
        int i = 0;
        while (i < list.size()) {
            List<ComicInfoBean> list2 = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(list.get(i).getNoteUrl()), new WhereCondition[0]).limit(1).build().list();
            if (list2 == null || list2.size() <= 0) {
                Cnew.m26132case().m26138try().m3132case().delete(list.get(i));
                list.remove(i);
                i--;
            } else {
                ComicInfoBean comicInfoBean = list2.get(0);
                List<ChapterListBean> list3 = Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(list.get(i).getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list();
                if (list3 != null && list3.size() > 0) {
                    comicInfoBean.setChapterList(list3);
                }
                list.get(i).setComicInfoBean(comicInfoBean);
            }
            i++;
        }
        observableEmitter.onNext(list);
        observableEmitter.onComplete();
    }

    /* renamed from: public, reason: not valid java name */
    public static ComicShelfGroupBean m26113public(Long l) {
        return Cnew.m26132case().m26138try().m3137else().load(l);
    }

    public static void q(final ComicShelfBean comicShelfBean, final ComicShelfGroupBean comicShelfGroupBean) {
        Cnew.m26132case().m26138try().runInTx(new Runnable() { // from class: android.support.v4.ub
            @Override // java.lang.Runnable
            public final void run() {
                Cdo.g(comicShelfBean, comicShelfGroupBean);
            }
        });
    }

    public static void r(ComicShelfGroupBean comicShelfGroupBean) {
        Ccase.m26722this().m26725else().submit(new RunnableC0220do(comicShelfGroupBean));
    }

    /* renamed from: return, reason: not valid java name */
    public static ComicInfoBean m26114return(String str) {
        return Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21978do.eq(str), new WhereCondition[0]).unique();
    }

    /* renamed from: static, reason: not valid java name */
    public static List<ComicShelfBean> m26115static() {
        List<ComicShelfBean> list = Cnew.m26132case().m26138try().m3132case().queryBuilder().orderDesc(ComicShelfBeanDao.Properties.f22000new).list();
        Iterator<ComicShelfBean> it = list.iterator();
        while (it.hasNext()) {
            ComicShelfBean next = it.next();
            List<ComicInfoBean> list2 = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(next.getNoteUrl()), new WhereCondition[0]).limit(1).build().list();
            if (list2 == null || list2.size() <= 0) {
                Cnew.m26132case().m26138try().m3132case().delete(next);
                it.remove();
            } else {
                ComicInfoBean comicInfoBean = list2.get(0);
                comicInfoBean.setChapterList(Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(next.getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list());
                next.setComicInfoBean(comicInfoBean);
            }
        }
        return list;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m26116strictfp(String str) {
        if (!TextUtils.isEmpty(str) && !str.matches("第.*?卷.*?第.*[章节回]")) {
            Matcher matcher = f22148do.matcher(str);
            if (matcher.find()) {
                return l22.m4560extends(matcher.group(2));
            }
        }
        return -1;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m26117super(String str) {
        try {
            Iterator<ComicShelfBean> it = Cnew.m26132case().m26138try().m3132case().queryBuilder().orderDesc(ComicShelfBeanDao.Properties.f22000new).list().iterator();
            while (it.hasNext()) {
                ComicShelfBean next = it.next();
                List<ComicInfoBean> list = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(next.getNoteUrl()), new WhereCondition[0]).limit(1).build().list();
                if (list == null || list.size() <= 0) {
                    Cnew.m26132case().m26138try().m3132case().delete(next);
                    it.remove();
                } else {
                    ComicInfoBean comicInfoBean = list.get(0);
                    comicInfoBean.setChapterList(Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(next.getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list());
                    if (comicInfoBean.getName().contains(str)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* renamed from: switch, reason: not valid java name */
    public static Cnew<List<ComicShelfBean>> m26118switch() {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.rb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.m26112protected(observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public static /* synthetic */ int m26119synchronized(ComicShelfBean comicShelfBean, ComicShelfBean comicShelfBean2) {
        if (comicShelfBean.getFinalDate() - comicShelfBean2.getFinalDate() > 0) {
            return -1;
        }
        return comicShelfBean.getFinalDate() - comicShelfBean2.getFinalDate() < 0 ? 1 : 0;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m26121throw() throws SQLException {
        Cnew.m26132case().m26138try().m3132case().deleteAll();
        Cnew.m26132case().m26138try().m3143try().deleteAll();
        Cnew.m26132case().m26138try().m3140if().deleteAll();
        Cnew.m26132case().m26138try().m3138for().deleteAll();
        Cnew.m26132case().m26138try().m3141new().deleteAll();
    }

    /* renamed from: throws, reason: not valid java name */
    public static Cnew<List<ComicShelfBean>> m26122throws(final long j) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.mb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.m26123transient(j, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public static /* synthetic */ void m26123transient(long j, ObservableEmitter observableEmitter) throws Exception {
        List<ComicShelfBean> list = j > 0 ? Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f22005while.eq(Long.valueOf(j)), new WhereCondition[0]).orderDesc(ComicShelfBeanDao.Properties.f22000new).list() : Cnew.m26132case().m26138try().m3132case().queryBuilder().orderDesc(ComicShelfBeanDao.Properties.f22000new).list();
        int i = 0;
        while (i < list.size()) {
            List<ComicInfoBean> list2 = Cnew.m26132case().m26138try().m3143try().queryBuilder().where(ComicInfoBeanDao.Properties.f21980for.eq(list.get(i).getNoteUrl()), new WhereCondition[0]).limit(1).build().list();
            if (list2 == null || list2.size() <= 0) {
                Cnew.m26132case().m26138try().m3132case().delete(list.get(i));
                list.remove(i);
                i--;
            } else {
                ComicInfoBean comicInfoBean = list2.get(0);
                List<ChapterListBean> list3 = Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(list.get(i).getNoteUrl()), new WhereCondition[0]).orderAsc(ChapterListBeanDao.Properties.f21953if).build().list();
                if (list3 != null && list3.size() > 0) {
                    comicInfoBean.setChapterList(list3);
                }
                list.get(i).setComicInfoBean(comicInfoBean);
            }
            i++;
        }
        observableEmitter.onNext(list);
        observableEmitter.onComplete();
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m26125volatile(ComicShelfGroupBean comicShelfGroupBean) {
        Cnew.m26132case().m26138try().m3137else().insertOrReplaceInTx(comicShelfGroupBean);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m26126while(String str) throws SQLException {
        Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(str), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
    }
}
