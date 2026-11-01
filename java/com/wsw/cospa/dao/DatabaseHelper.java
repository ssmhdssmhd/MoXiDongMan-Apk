package com.wsw.cospa.dao;

import android.database.SQLException;
import android.support.v4.v72;
import android.support.v4.wi0;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.HistoryComicBean;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.ChapterListBeanDao;
import com.wsw.cospa.dao.ComicContentBeanDao;
import com.wsw.cospa.dao.ComicContentImgBeanDao;
import com.wsw.cospa.dao.ComicInfoBeanDao;
import com.wsw.cospa.dao.ComicShelfBeanDao;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.dao.HistoryComicBeanDao;
import com.wsw.cospa.dao.RipeFileDao;
import com.wsw.cospa.dao.SearchComicBeanDao;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;
import rx.Observable;

/* loaded from: classes2.dex */
public class DatabaseHelper {

    /* renamed from: case, reason: not valid java name */
    private ChapterListBeanDao f22057case;

    /* renamed from: do, reason: not valid java name */
    private ComicSourceBeanDao f22058do;

    /* renamed from: else, reason: not valid java name */
    private ComicContentImgBeanDao f22059else;

    /* renamed from: for, reason: not valid java name */
    private ComicShelfBeanDao f22060for;

    /* renamed from: goto, reason: not valid java name */
    private RipeFileDao f22061goto;

    /* renamed from: if, reason: not valid java name */
    private SearchComicBeanDao f22062if;

    /* renamed from: new, reason: not valid java name */
    private ComicInfoBeanDao f22063new;

    /* renamed from: this, reason: not valid java name */
    private HistoryComicBeanDao f22064this;

    /* renamed from: try, reason: not valid java name */
    private ComicContentBeanDao f22065try;

    public interface OnUpgradeChangeListener {
        void onUpgradeChange();
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$case, reason: invalid class name */
    public class Ccase implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ArrayList f22066do;

        public Ccase(ArrayList arrayList) {
            this.f22066do = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.this.f22061goto.insertOrReplaceInTx(this.f22066do);
        }
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ SearchComicBean f22068do;

        public Cdo(SearchComicBean searchComicBean) {
            this.f22068do = searchComicBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.this.f22062if.insertOrReplaceInTx(this.f22068do);
        }
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: do, reason: not valid java name */
        private static final DatabaseHelper f22070do = new DatabaseHelper(null);

        private Celse() {
        }
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicContentImgBean f22071do;

        public Cfor(ComicContentImgBean comicContentImgBean) {
            this.f22071do = comicContentImgBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.this.f22059else.insertOrReplaceInTx(this.f22071do);
        }
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicContentBean f22073do;

        public Cif(ComicContentBean comicContentBean) {
            this.f22073do = comicContentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.this.f22065try.insertOrReplaceInTx(this.f22073do);
        }
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicContentImgBean f22075do;

        public Cnew(ComicContentImgBean comicContentImgBean) {
            this.f22075do = comicContentImgBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.this.f22059else.updateInTx(this.f22075do);
        }
    }

    /* renamed from: com.wsw.cospa.dao.DatabaseHelper$try, reason: invalid class name */
    public class Ctry implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RipeFile f22077do;

        public Ctry(RipeFile ripeFile) {
            this.f22077do = ripeFile;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.this.f22061goto.insertOrReplaceInTx(this.f22077do);
        }
    }

    public /* synthetic */ DatabaseHelper(Cdo cdo) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public static /* synthetic */ void m26009continue(ComicShelfBean comicShelfBean) {
        QueryBuilder<ComicContentImgBean> queryBuilderWhere = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3141new().queryBuilder().where(ComicContentImgBeanDao.Properties.f21963break.eq(Boolean.FALSE), new WhereCondition[0]);
        queryBuilderWhere.join(ComicContentImgBeanDao.Properties.f21974try, ChapterListBean.class, ChapterListBeanDao.Properties.f21944case).where(ChapterListBeanDao.Properties.f21947const.eq(comicShelfBean.getNoteUrl()), new WhereCondition[0]);
        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3141new().deleteInTx(queryBuilderWhere.build().list());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public static /* synthetic */ void m26015strictfp(final ComicShelfBean comicShelfBean) {
        if (comicShelfBean == null || comicShelfBean.getComicInfoBean() == null) {
            return;
        }
        wi0.m9161else(new Runnable() { // from class: android.support.v4.xw
            @Override // java.lang.Runnable
            public final void run() {
                DatabaseHelper.m26009continue(comicShelfBean);
            }
        });
    }

    /* renamed from: switch, reason: not valid java name */
    public static DatabaseHelper m26016switch() {
        return Celse.f22070do;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public /* synthetic */ void m26018volatile(ObservableEmitter observableEmitter) throws Exception {
        this.f22061goto.queryBuilder().where(RipeFileDao.Properties.f22096case.isNotNull(), new WhereCondition[0]).list();
    }

    public void a(HistoryComicBean historyComicBean) {
        this.f22064this.insertOrReplaceInTx(historyComicBean);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m26019abstract(ComicSourceBean comicSourceBean) {
        this.f22058do.insertOrReplaceInTx(comicSourceBean);
    }

    public void b(List<HistoryComicBean> list) {
        this.f22064this.insertOrReplaceInTx(list);
    }

    /* renamed from: break, reason: not valid java name */
    public void m26020break(ComicSourceBean comicSourceBean) {
        this.f22058do.deleteInTx(comicSourceBean);
    }

    public void c(RipeFile ripeFile) {
        com.wsw.cospa.utils.Ccase.m26722this().m26725else().execute(new Ctry(ripeFile));
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m26021catch() {
        List<ComicSourceBean> list = this.f22058do.queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.eq(0), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).list();
        return list == null || list.size() == 0;
    }

    /* renamed from: class, reason: not valid java name */
    public List<ComicSourceBean> m26022class() {
        return this.f22058do.queryBuilder().orderDesc(ComicSourceBeanDao.Properties.f22017break).list();
    }

    /* renamed from: const, reason: not valid java name */
    public List<ComicSourceBean> m26023const(boolean z) {
        return z ? this.f22058do.queryBuilder().where(ComicSourceBeanDao.Properties.f22020class.notEq(""), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).list() : this.f22058do.queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE), ComicSourceBeanDao.Properties.f22020class.notEq("")).orderDesc(ComicSourceBeanDao.Properties.f22017break).list();
    }

    public void d(ArrayList<RipeFile> arrayList) {
        com.wsw.cospa.utils.Ccase.m26722this().m26725else().execute(new Ccase(arrayList));
    }

    /* renamed from: default, reason: not valid java name */
    public SearchComicBean m26024default(String str) {
        return this.f22062if.queryBuilder().where(SearchComicBeanDao.Properties.f22114do.eq(str), new WhereCondition[0]).unique();
    }

    public List<ComicSourceBean> e() {
        return this.f22058do.queryRaw(" where enable > ? order by weight desc ", "0");
    }

    /* renamed from: extends, reason: not valid java name */
    public List<SearchComicBean> m26025extends(SearchComicBean searchComicBean) {
        return this.f22062if.queryBuilder().where(SearchComicBeanDao.Properties.f22117for.eq(searchComicBean.getName()), SearchComicBeanDao.Properties.f22114do.notEq(searchComicBean.getNoteUrl())).list();
    }

    public List<ComicContentBean> f(String str) {
        return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3138for().queryBuilder().where(ComicContentBeanDao.Properties.f21961if.eq(str), new WhereCondition[0]).list();
    }

    /* renamed from: final, reason: not valid java name */
    public List<ComicSourceBean> m26026final() {
        return this.f22058do.queryBuilder().preferLocalizedStringOrder().orderAsc(ComicSourceBeanDao.Properties.f22052try).list();
    }

    /* renamed from: finally, reason: not valid java name */
    public void m26027finally(ComicContentBean comicContentBean) {
        com.wsw.cospa.utils.Ccase.m26722this().m26725else().execute(new Cif(comicContentBean));
    }

    public List<ComicContentImgBean> g(int i, String str) {
        return this.f22059else.queryBuilder().where(ComicContentImgBeanDao.Properties.f21971if.eq(Integer.valueOf(i)), ComicContentImgBeanDao.Properties.f21974try.eq(str)).list();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m26028goto(List<ComicSourceBean> list) {
        this.f22058do.deleteInTx(list);
    }

    public List<ComicContentImgBean> h(String str) {
        return this.f22059else.queryBuilder().where(ComicContentImgBeanDao.Properties.f21974try.eq(str), new WhereCondition[0]).list();
    }

    public List<ComicContentImgBean> i(String str) {
        return this.f22059else.queryBuilder().where(ComicContentImgBeanDao.Properties.f21974try.eq(str), new WhereCondition[0]).where(ComicContentImgBeanDao.Properties.f21963break.eq(Boolean.TRUE), new WhereCondition[0]).list();
    }

    /* renamed from: implements, reason: not valid java name */
    public void m26029implements(List<HistoryComicBean> list) {
        this.f22064this.deleteInTx(list);
    }

    /* renamed from: import, reason: not valid java name */
    public ComicShelfBean m26030import(String str) {
        return this.f22060for.queryBuilder().where(ComicShelfBeanDao.Properties.f21993do.eq(str), new WhereCondition[0]).unique();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m26031instanceof(Runnable runnable) {
        this.f22063new.getSession().runInTx(runnable);
    }

    /* renamed from: interface, reason: not valid java name */
    public List<ComicInfoBean> m26032interface() {
        QueryBuilder<ComicInfoBean> queryBuilder = this.f22063new.queryBuilder();
        Property property = ComicInfoBeanDao.Properties.f21977catch;
        return queryBuilder.where(property.isNotNull(), new WhereCondition[0]).orderDesc(property).list();
    }

    public void j(boolean z) throws SQLException {
        this.f22058do.getSession().getDatabase().execSQL("update comic_source_bean set enable =" + (z ? 1 : 0) + "");
    }

    public void k(ComicContentImgBean comicContentImgBean) {
        com.wsw.cospa.utils.Ccase.m26722this().m26725else().execute(new Cnew(comicContentImgBean));
    }

    public void l(ComicShelfBean comicShelfBean) {
        this.f22060for.insertOrReplaceInTx(comicShelfBean);
    }

    public void m(ComicInfoBean comicInfoBean) {
        this.f22063new.updateInTx(comicInfoBean);
    }

    public void n(ComicInfoBean comicInfoBean) {
        this.f22063new.insertOrReplaceInTx(comicInfoBean);
    }

    /* renamed from: native, reason: not valid java name */
    public List<ComicContentImgBean> m26033native(ComicContentBean comicContentBean) {
        return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3141new().queryBuilder().where(ComicContentImgBeanDao.Properties.f21974try.eq(comicContentBean.getDurChapterUrl()), new WhereCondition[0]).orderAsc(ComicContentImgBeanDao.Properties.f21971if).distinct().list();
    }

    public void o(SearchComicBean searchComicBean) {
        com.wsw.cospa.utils.Ccase.m26722this().m26725else().execute(new Cdo(searchComicBean));
    }

    /* renamed from: package, reason: not valid java name */
    public void m26034package(ComicContentImgBean comicContentImgBean) {
        com.wsw.cospa.utils.Ccase.m26722this().m26725else().execute(new Cfor(comicContentImgBean));
    }

    /* renamed from: private, reason: not valid java name */
    public void m26035private(List<SearchComicBean> list) {
        this.f22062if.insertOrReplaceInTx(list);
    }

    /* renamed from: protected, reason: not valid java name */
    public ComicInfoBean m26036protected(String str) {
        return this.f22063new.load(str);
    }

    /* renamed from: public, reason: not valid java name */
    public List<ComicSourceBean> m26037public() {
        return this.f22058do.queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).list();
    }

    /* renamed from: return, reason: not valid java name */
    public SearchComicBean m26038return(String str) {
        return this.f22062if.queryBuilder().where(SearchComicBeanDao.Properties.f22114do.eq(str), new WhereCondition[0]).unique();
    }

    /* renamed from: static, reason: not valid java name */
    public Observable<List<HistoryComicBean>> m26039static() {
        return this.f22064this.queryBuilder().orderDesc(HistoryComicBeanDao.Properties.f22082class).rx().list();
    }

    /* renamed from: super, reason: not valid java name */
    public List<ComicSourceBean> m26040super(boolean z) {
        return z ? this.f22058do.queryBuilder().where(ComicSourceBeanDao.Properties.f22020class.notEq(""), new WhereCondition[0]).preferLocalizedStringOrder().orderAsc(ComicSourceBeanDao.Properties.f22052try).list() : this.f22058do.queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE), ComicSourceBeanDao.Properties.f22020class.notEq("")).preferLocalizedStringOrder().orderAsc(ComicSourceBeanDao.Properties.f22052try).list();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m26041synchronized(ComicContentBean comicContentBean, OnUpgradeChangeListener onUpgradeChangeListener) {
        if (comicContentBean != null) {
            List<ComicContentImgBean> listM26033native = m26033native(comicContentBean);
            ArrayList arrayList = new ArrayList();
            Iterator<ComicContentImgBean> it = listM26033native.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getImgurl());
            }
            this.f22059else.deleteByKeyInTx(arrayList);
            this.f22065try.insertOrReplaceInTx(comicContentBean);
            List<ComicContentImgBean> durContentUrl = comicContentBean.getDurContentUrl();
            if (durContentUrl != null && durContentUrl.size() > 0) {
                this.f22059else.insertOrReplaceInTx(durContentUrl);
            }
            if (onUpgradeChangeListener != null) {
                onUpgradeChangeListener.onUpgradeChange();
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m26042this(final ComicShelfBean comicShelfBean) {
        try {
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().runInTx(new Runnable() { // from class: android.support.v4.yw
                @Override // java.lang.Runnable
                public final void run() {
                    DatabaseHelper.m26015strictfp(comicShelfBean);
                }
            });
        } catch (Exception e) {
            v72.m8769if("删除漫画失败！----" + e.getMessage());
            e.printStackTrace();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public ChapterListBean m26043throw(ChapterListBean chapterListBean) {
        return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3140if().queryBuilder().where(ChapterListBeanDao.Properties.f21944case.eq(chapterListBean.getDurChapterUrl()), new WhereCondition[0]).unique();
    }

    /* renamed from: throws, reason: not valid java name */
    public io.reactivex.Cnew<List<RipeFile>> m26044throws() {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ww
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f7708do.m26018volatile(observableEmitter);
            }
        });
    }

    /* renamed from: transient, reason: not valid java name */
    public void m26045transient(String str) {
        this.f22064this.deleteInTx(this.f22064this.queryBuilder().where(HistoryComicBeanDao.Properties.f22084do.eq(str), new WhereCondition[0]).unique());
    }

    /* renamed from: while, reason: not valid java name */
    public List<ChapterListBean> m26046while(String str) {
        return this.f22057case.queryBuilder().where(ChapterListBeanDao.Properties.f21948do.eq(str), new WhereCondition[0]).list();
    }

    private DatabaseHelper() {
        this.f22058do = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto();
        this.f22062if = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3134class();
        this.f22060for = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3132case();
        this.f22063new = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3143try();
        this.f22057case = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3140if();
        this.f22065try = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3138for();
        this.f22059else = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3141new();
        this.f22061goto = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3133catch();
        this.f22064this = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3131break();
    }
}
