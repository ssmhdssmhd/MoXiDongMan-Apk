package android.support.v4;

import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.bean.HistoryComicBean;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.dao.ChapterListBeanDao;
import com.wsw.cospa.dao.ComicContentBeanDao;
import com.wsw.cospa.dao.ComicContentImgBeanDao;
import com.wsw.cospa.dao.ComicInfoBeanDao;
import com.wsw.cospa.dao.ComicShelfBeanDao;
import com.wsw.cospa.dao.ComicShelfGroupBeanDao;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.CookieBeanDao;
import com.wsw.cospa.dao.HistoryComicBeanDao;
import com.wsw.cospa.dao.RipeFileDao;
import com.wsw.cospa.dao.SearchComicBeanDao;
import com.wsw.cospa.dao.TaskDao;
import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class hw extends AbstractDaoSession {

    /* renamed from: break, reason: not valid java name */
    private final DaoConfig f2518break;

    /* renamed from: case, reason: not valid java name */
    private final DaoConfig f2519case;

    /* renamed from: catch, reason: not valid java name */
    private final DaoConfig f2520catch;

    /* renamed from: class, reason: not valid java name */
    private final DaoConfig f2521class;

    /* renamed from: const, reason: not valid java name */
    private final ChapterListBeanDao f2522const;

    /* renamed from: do, reason: not valid java name */
    private final DaoConfig f2523do;

    /* renamed from: else, reason: not valid java name */
    private final DaoConfig f2524else;

    /* renamed from: final, reason: not valid java name */
    private final ComicContentBeanDao f2525final;

    /* renamed from: for, reason: not valid java name */
    private final DaoConfig f2526for;

    /* renamed from: goto, reason: not valid java name */
    private final DaoConfig f2527goto;

    /* renamed from: if, reason: not valid java name */
    private final DaoConfig f2528if;

    /* renamed from: import, reason: not valid java name */
    private final ComicShelfGroupBeanDao f2529import;

    /* renamed from: native, reason: not valid java name */
    private final ComicSourceBeanDao f2530native;

    /* renamed from: new, reason: not valid java name */
    private final DaoConfig f2531new;

    /* renamed from: public, reason: not valid java name */
    private final CookieBeanDao f2532public;

    /* renamed from: return, reason: not valid java name */
    private final HistoryComicBeanDao f2533return;

    /* renamed from: static, reason: not valid java name */
    private final RipeFileDao f2534static;

    /* renamed from: super, reason: not valid java name */
    private final ComicContentImgBeanDao f2535super;

    /* renamed from: switch, reason: not valid java name */
    private final SearchComicBeanDao f2536switch;

    /* renamed from: this, reason: not valid java name */
    private final DaoConfig f2537this;

    /* renamed from: throw, reason: not valid java name */
    private final ComicInfoBeanDao f2538throw;

    /* renamed from: throws, reason: not valid java name */
    private final TaskDao f2539throws;

    /* renamed from: try, reason: not valid java name */
    private final DaoConfig f2540try;

    /* renamed from: while, reason: not valid java name */
    private final ComicShelfBeanDao f2541while;

    public hw(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        DaoConfig daoConfigM37785clone = map.get(ChapterListBeanDao.class).clone();
        this.f2523do = daoConfigM37785clone;
        daoConfigM37785clone.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone2 = map.get(ComicContentBeanDao.class).clone();
        this.f2528if = daoConfigM37785clone2;
        daoConfigM37785clone2.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone3 = map.get(ComicContentImgBeanDao.class).clone();
        this.f2526for = daoConfigM37785clone3;
        daoConfigM37785clone3.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone4 = map.get(ComicInfoBeanDao.class).clone();
        this.f2531new = daoConfigM37785clone4;
        daoConfigM37785clone4.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone5 = map.get(ComicShelfBeanDao.class).clone();
        this.f2540try = daoConfigM37785clone5;
        daoConfigM37785clone5.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone6 = map.get(ComicShelfGroupBeanDao.class).clone();
        this.f2519case = daoConfigM37785clone6;
        daoConfigM37785clone6.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone7 = map.get(ComicSourceBeanDao.class).clone();
        this.f2524else = daoConfigM37785clone7;
        daoConfigM37785clone7.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone8 = map.get(CookieBeanDao.class).clone();
        this.f2527goto = daoConfigM37785clone8;
        daoConfigM37785clone8.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone9 = map.get(HistoryComicBeanDao.class).clone();
        this.f2537this = daoConfigM37785clone9;
        daoConfigM37785clone9.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone10 = map.get(RipeFileDao.class).clone();
        this.f2518break = daoConfigM37785clone10;
        daoConfigM37785clone10.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone11 = map.get(SearchComicBeanDao.class).clone();
        this.f2520catch = daoConfigM37785clone11;
        daoConfigM37785clone11.initIdentityScope(identityScopeType);
        DaoConfig daoConfigM37785clone12 = map.get(TaskDao.class).clone();
        this.f2521class = daoConfigM37785clone12;
        daoConfigM37785clone12.initIdentityScope(identityScopeType);
        ChapterListBeanDao chapterListBeanDao = new ChapterListBeanDao(daoConfigM37785clone, this);
        this.f2522const = chapterListBeanDao;
        ComicContentBeanDao comicContentBeanDao = new ComicContentBeanDao(daoConfigM37785clone2, this);
        this.f2525final = comicContentBeanDao;
        ComicContentImgBeanDao comicContentImgBeanDao = new ComicContentImgBeanDao(daoConfigM37785clone3, this);
        this.f2535super = comicContentImgBeanDao;
        ComicInfoBeanDao comicInfoBeanDao = new ComicInfoBeanDao(daoConfigM37785clone4, this);
        this.f2538throw = comicInfoBeanDao;
        ComicShelfBeanDao comicShelfBeanDao = new ComicShelfBeanDao(daoConfigM37785clone5, this);
        this.f2541while = comicShelfBeanDao;
        ComicShelfGroupBeanDao comicShelfGroupBeanDao = new ComicShelfGroupBeanDao(daoConfigM37785clone6, this);
        this.f2529import = comicShelfGroupBeanDao;
        ComicSourceBeanDao comicSourceBeanDao = new ComicSourceBeanDao(daoConfigM37785clone7, this);
        this.f2530native = comicSourceBeanDao;
        CookieBeanDao cookieBeanDao = new CookieBeanDao(daoConfigM37785clone8, this);
        this.f2532public = cookieBeanDao;
        HistoryComicBeanDao historyComicBeanDao = new HistoryComicBeanDao(daoConfigM37785clone9, this);
        this.f2533return = historyComicBeanDao;
        RipeFileDao ripeFileDao = new RipeFileDao(daoConfigM37785clone10, this);
        this.f2534static = ripeFileDao;
        SearchComicBeanDao searchComicBeanDao = new SearchComicBeanDao(daoConfigM37785clone11, this);
        this.f2536switch = searchComicBeanDao;
        TaskDao taskDao = new TaskDao(daoConfigM37785clone12, this);
        this.f2539throws = taskDao;
        registerDao(ChapterListBean.class, chapterListBeanDao);
        registerDao(ComicContentBean.class, comicContentBeanDao);
        registerDao(ComicContentImgBean.class, comicContentImgBeanDao);
        registerDao(ComicInfoBean.class, comicInfoBeanDao);
        registerDao(ComicShelfBean.class, comicShelfBeanDao);
        registerDao(ComicShelfGroupBean.class, comicShelfGroupBeanDao);
        registerDao(ComicSourceBean.class, comicSourceBeanDao);
        registerDao(CookieBean.class, cookieBeanDao);
        registerDao(HistoryComicBean.class, historyComicBeanDao);
        registerDao(RipeFile.class, ripeFileDao);
        registerDao(SearchComicBean.class, searchComicBeanDao);
        registerDao(Task.class, taskDao);
    }

    /* renamed from: break, reason: not valid java name */
    public HistoryComicBeanDao m3131break() {
        return this.f2533return;
    }

    /* renamed from: case, reason: not valid java name */
    public ComicShelfBeanDao m3132case() {
        return this.f2541while;
    }

    /* renamed from: catch, reason: not valid java name */
    public RipeFileDao m3133catch() {
        return this.f2534static;
    }

    /* renamed from: class, reason: not valid java name */
    public SearchComicBeanDao m3134class() {
        return this.f2536switch;
    }

    /* renamed from: const, reason: not valid java name */
    public TaskDao m3135const() {
        return this.f2539throws;
    }

    /* renamed from: do, reason: not valid java name */
    public void m3136do() {
        this.f2523do.clearIdentityScope();
        this.f2528if.clearIdentityScope();
        this.f2526for.clearIdentityScope();
        this.f2531new.clearIdentityScope();
        this.f2540try.clearIdentityScope();
        this.f2519case.clearIdentityScope();
        this.f2524else.clearIdentityScope();
        this.f2527goto.clearIdentityScope();
        this.f2537this.clearIdentityScope();
        this.f2518break.clearIdentityScope();
        this.f2520catch.clearIdentityScope();
        this.f2521class.clearIdentityScope();
    }

    /* renamed from: else, reason: not valid java name */
    public ComicShelfGroupBeanDao m3137else() {
        return this.f2529import;
    }

    /* renamed from: for, reason: not valid java name */
    public ComicContentBeanDao m3138for() {
        return this.f2525final;
    }

    /* renamed from: goto, reason: not valid java name */
    public ComicSourceBeanDao m3139goto() {
        return this.f2530native;
    }

    /* renamed from: if, reason: not valid java name */
    public ChapterListBeanDao m3140if() {
        return this.f2522const;
    }

    /* renamed from: new, reason: not valid java name */
    public ComicContentImgBeanDao m3141new() {
        return this.f2535super;
    }

    /* renamed from: this, reason: not valid java name */
    public CookieBeanDao m3142this() {
        return this.f2532public;
    }

    /* renamed from: try, reason: not valid java name */
    public ComicInfoBeanDao m3143try() {
        return this.f2538throw;
    }
}
