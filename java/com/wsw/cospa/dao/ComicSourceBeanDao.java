package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import androidx.appcompat.widget.ActivityChooserModel;
import com.wsw.cospa.bean.ComicSourceBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class ComicSourceBeanDao extends AbstractDao<ComicSourceBean, String> {
    public static final String TABLENAME = "COMIC_SOURCE_BEAN";

    public static class Properties {
        public static final Property a;

        /* renamed from: abstract, reason: not valid java name */
        public static final Property f22016abstract;
        public static final Property b;

        /* renamed from: break, reason: not valid java name */
        public static final Property f22017break;
        public static final Property c;

        /* renamed from: catch, reason: not valid java name */
        public static final Property f22019catch;

        /* renamed from: class, reason: not valid java name */
        public static final Property f22020class;

        /* renamed from: const, reason: not valid java name */
        public static final Property f22021const;

        /* renamed from: continue, reason: not valid java name */
        public static final Property f22022continue;
        public static final Property d;

        /* renamed from: default, reason: not valid java name */
        public static final Property f22023default;

        /* renamed from: extends, reason: not valid java name */
        public static final Property f22026extends;

        /* renamed from: final, reason: not valid java name */
        public static final Property f22027final;

        /* renamed from: finally, reason: not valid java name */
        public static final Property f22028finally;

        /* renamed from: implements, reason: not valid java name */
        public static final Property f22032implements;

        /* renamed from: import, reason: not valid java name */
        public static final Property f22033import;

        /* renamed from: instanceof, reason: not valid java name */
        public static final Property f22034instanceof;

        /* renamed from: interface, reason: not valid java name */
        public static final Property f22035interface;

        /* renamed from: native, reason: not valid java name */
        public static final Property f22036native;

        /* renamed from: package, reason: not valid java name */
        public static final Property f22038package;

        /* renamed from: private, reason: not valid java name */
        public static final Property f22039private;

        /* renamed from: protected, reason: not valid java name */
        public static final Property f22040protected;

        /* renamed from: public, reason: not valid java name */
        public static final Property f22041public;

        /* renamed from: return, reason: not valid java name */
        public static final Property f22042return;

        /* renamed from: static, reason: not valid java name */
        public static final Property f22043static;

        /* renamed from: strictfp, reason: not valid java name */
        public static final Property f22044strictfp;

        /* renamed from: super, reason: not valid java name */
        public static final Property f22045super;

        /* renamed from: switch, reason: not valid java name */
        public static final Property f22046switch;

        /* renamed from: synchronized, reason: not valid java name */
        public static final Property f22047synchronized;

        /* renamed from: this, reason: not valid java name */
        public static final Property f22048this;

        /* renamed from: throw, reason: not valid java name */
        public static final Property f22049throw;

        /* renamed from: throws, reason: not valid java name */
        public static final Property f22050throws;

        /* renamed from: transient, reason: not valid java name */
        public static final Property f22051transient;

        /* renamed from: volatile, reason: not valid java name */
        public static final Property f22053volatile;

        /* renamed from: while, reason: not valid java name */
        public static final Property f22054while;

        /* renamed from: do, reason: not valid java name */
        public static final Property f22024do = new Property(0, String.class, "bookSourceType", false, "BOOK_SOURCE_TYPE");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22031if = new Property(1, String.class, "bookSingleThread", false, "BOOK_SINGLE_THREAD");

        /* renamed from: for, reason: not valid java name */
        public static final Property f22029for = new Property(2, String.class, "bookDelayTime", false, "BOOK_DELAY_TIME");

        /* renamed from: new, reason: not valid java name */
        public static final Property f22037new = new Property(3, String.class, "bookSourceUrl", true, "BOOK_SOURCE_URL");

        /* renamed from: try, reason: not valid java name */
        public static final Property f22052try = new Property(4, String.class, "bookSourceName", false, "BOOK_SOURCE_NAME");

        /* renamed from: case, reason: not valid java name */
        public static final Property f22018case = new Property(5, String.class, "bookSourceGroup", false, "BOOK_SOURCE_GROUP");

        /* renamed from: else, reason: not valid java name */
        public static final Property f22025else = new Property(6, String.class, "checkUrl", false, "CHECK_URL");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f22030goto = new Property(7, Long.class, "lastUpdateTime", false, "LAST_UPDATE_TIME");

        static {
            Class cls = Integer.TYPE;
            f22048this = new Property(8, cls, "serialNumber", false, "SERIAL_NUMBER");
            f22017break = new Property(9, cls, ActivityChooserModel.ATTRIBUTE_WEIGHT, false, "WEIGHT");
            f22019catch = new Property(10, Boolean.TYPE, "enable", false, "ENABLE");
            f22020class = new Property(11, String.class, "ruleFindUrl", false, "RULE_FIND_URL");
            f22021const = new Property(12, String.class, "ruleSearchUrl", false, "RULE_SEARCH_URL");
            f22027final = new Property(13, String.class, "ruleSearchList", false, "RULE_SEARCH_LIST");
            f22045super = new Property(14, String.class, "ruleSearchUrlNext", false, "RULE_SEARCH_URL_NEXT");
            f22049throw = new Property(15, String.class, "ruleSearchName", false, "RULE_SEARCH_NAME");
            f22054while = new Property(16, String.class, "ruleSearchAuthor", false, "RULE_SEARCH_AUTHOR");
            f22033import = new Property(17, String.class, "ruleSearchKind", false, "RULE_SEARCH_KIND");
            f22036native = new Property(18, String.class, "ruleSearchLastChapter", false, "RULE_SEARCH_LAST_CHAPTER");
            f22041public = new Property(19, String.class, "ruleSearchCoverUrl", false, "RULE_SEARCH_COVER_URL");
            f22042return = new Property(20, String.class, "ruleSearchNoteUrl", false, "RULE_SEARCH_NOTE_URL");
            f22043static = new Property(21, String.class, "ruleBookName", false, "RULE_BOOK_NAME");
            f22046switch = new Property(22, String.class, "ruleBookAuthor", false, "RULE_BOOK_AUTHOR");
            f22050throws = new Property(23, String.class, "ruleChapterId", false, "RULE_CHAPTER_ID");
            f22023default = new Property(24, String.class, "ruleChapterUrl", false, "RULE_CHAPTER_URL");
            f22026extends = new Property(25, String.class, "ruleChapterUrlNext", false, "RULE_CHAPTER_URL_NEXT");
            f22028finally = new Property(26, String.class, "ruleChapterParentId", false, "RULE_CHAPTER_PARENT_ID");
            f22038package = new Property(27, String.class, "ruleChapterParentName", false, "RULE_CHAPTER_PARENT_NAME");
            f22039private = new Property(28, String.class, "ruleCoverUrl", false, "RULE_COVER_URL");
            f22016abstract = new Property(29, String.class, "ruleIntroduce", false, "RULE_INTRODUCE");
            f22022continue = new Property(30, String.class, "ruleChapterList", false, "RULE_CHAPTER_LIST");
            f22044strictfp = new Property(31, String.class, "ruleChapterName", false, "RULE_CHAPTER_NAME");
            f22053volatile = new Property(32, String.class, "ruleContentUrl", false, "RULE_CONTENT_URL");
            f22035interface = new Property(33, String.class, "ruleContentUrlNext", false, "RULE_CONTENT_URL_NEXT");
            f22040protected = new Property(34, String.class, "ruleBookContent", false, "RULE_BOOK_CONTENT");
            f22051transient = new Property(35, String.class, "ruleBookContentDecoder", false, "RULE_BOOK_CONTENT_DECODER");
            f22032implements = new Property(36, String.class, "httpUserAgent", false, "HTTP_USER_AGENT");
            f22034instanceof = new Property(37, String.class, "ruleBookKind", false, "RULE_BOOK_KIND");
            f22047synchronized = new Property(38, String.class, "ruleBookLastChapter", false, "RULE_BOOK_LAST_CHAPTER");
            a = new Property(39, String.class, "ruleBookUrlPattern", false, "RULE_BOOK_URL_PATTERN");
            b = new Property(40, String.class, "loginUrl", false, "LOGIN_URL");
            c = new Property(41, String.class, "loginUrlResult", false, "LOGIN_URL_RESULT");
            d = new Property(42, String.class, "sourceRemark", false, "SOURCE_REMARK");
        }
    }

    public ComicSourceBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25988for(Database database, boolean z) throws SQLException {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"COMIC_SOURCE_BEAN\" (\"BOOK_SOURCE_TYPE\" TEXT,\"BOOK_SINGLE_THREAD\" TEXT,\"BOOK_DELAY_TIME\" TEXT,\"BOOK_SOURCE_URL\" TEXT PRIMARY KEY NOT NULL ,\"BOOK_SOURCE_NAME\" TEXT,\"BOOK_SOURCE_GROUP\" TEXT,\"CHECK_URL\" TEXT,\"LAST_UPDATE_TIME\" INTEGER,\"SERIAL_NUMBER\" INTEGER NOT NULL ,\"WEIGHT\" INTEGER NOT NULL ,\"ENABLE\" INTEGER NOT NULL ,\"RULE_FIND_URL\" TEXT,\"RULE_SEARCH_URL\" TEXT,\"RULE_SEARCH_LIST\" TEXT,\"RULE_SEARCH_URL_NEXT\" TEXT,\"RULE_SEARCH_NAME\" TEXT,\"RULE_SEARCH_AUTHOR\" TEXT,\"RULE_SEARCH_KIND\" TEXT,\"RULE_SEARCH_LAST_CHAPTER\" TEXT,\"RULE_SEARCH_COVER_URL\" TEXT,\"RULE_SEARCH_NOTE_URL\" TEXT,\"RULE_BOOK_NAME\" TEXT,\"RULE_BOOK_AUTHOR\" TEXT,\"RULE_CHAPTER_ID\" TEXT,\"RULE_CHAPTER_URL\" TEXT,\"RULE_CHAPTER_URL_NEXT\" TEXT,\"RULE_CHAPTER_PARENT_ID\" TEXT,\"RULE_CHAPTER_PARENT_NAME\" TEXT,\"RULE_COVER_URL\" TEXT,\"RULE_INTRODUCE\" TEXT,\"RULE_CHAPTER_LIST\" TEXT,\"RULE_CHAPTER_NAME\" TEXT,\"RULE_CONTENT_URL\" TEXT,\"RULE_CONTENT_URL_NEXT\" TEXT,\"RULE_BOOK_CONTENT\" TEXT,\"RULE_BOOK_CONTENT_DECODER\" TEXT,\"HTTP_USER_AGENT\" TEXT,\"RULE_BOOK_KIND\" TEXT,\"RULE_BOOK_LAST_CHAPTER\" TEXT,\"RULE_BOOK_URL_PATTERN\" TEXT,\"LOGIN_URL\" TEXT,\"LOGIN_URL_RESULT\" TEXT,\"SOURCE_REMARK\" TEXT);");
        database.execSQL("CREATE INDEX " + str + "IDX_COMIC_SOURCE_BEAN_BOOK_SOURCE_URL ON \"COMIC_SOURCE_BEAN\" (\"BOOK_SOURCE_URL\" ASC);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25989new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COMIC_SOURCE_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(ComicSourceBean comicSourceBean, long j) {
        return comicSourceBean.getBookSourceUrl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ComicSourceBean comicSourceBean) {
        return comicSourceBean.getBookSourceUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ComicSourceBean comicSourceBean) {
        sQLiteStatement.clearBindings();
        String bookSourceType = comicSourceBean.getBookSourceType();
        if (bookSourceType != null) {
            sQLiteStatement.bindString(1, bookSourceType);
        }
        String bookSingleThread = comicSourceBean.getBookSingleThread();
        if (bookSingleThread != null) {
            sQLiteStatement.bindString(2, bookSingleThread);
        }
        String bookDelayTime = comicSourceBean.getBookDelayTime();
        if (bookDelayTime != null) {
            sQLiteStatement.bindString(3, bookDelayTime);
        }
        String bookSourceUrl = comicSourceBean.getBookSourceUrl();
        if (bookSourceUrl != null) {
            sQLiteStatement.bindString(4, bookSourceUrl);
        }
        String bookSourceName = comicSourceBean.getBookSourceName();
        if (bookSourceName != null) {
            sQLiteStatement.bindString(5, bookSourceName);
        }
        String bookSourceGroup = comicSourceBean.getBookSourceGroup();
        if (bookSourceGroup != null) {
            sQLiteStatement.bindString(6, bookSourceGroup);
        }
        String checkUrl = comicSourceBean.getCheckUrl();
        if (checkUrl != null) {
            sQLiteStatement.bindString(7, checkUrl);
        }
        Long lastUpdateTime = comicSourceBean.getLastUpdateTime();
        if (lastUpdateTime != null) {
            sQLiteStatement.bindLong(8, lastUpdateTime.longValue());
        }
        sQLiteStatement.bindLong(9, comicSourceBean.getSerialNumber());
        sQLiteStatement.bindLong(10, comicSourceBean.getWeight());
        sQLiteStatement.bindLong(11, comicSourceBean.getEnable() ? 1L : 0L);
        String ruleFindUrl = comicSourceBean.getRuleFindUrl();
        if (ruleFindUrl != null) {
            sQLiteStatement.bindString(12, ruleFindUrl);
        }
        String ruleSearchUrl = comicSourceBean.getRuleSearchUrl();
        if (ruleSearchUrl != null) {
            sQLiteStatement.bindString(13, ruleSearchUrl);
        }
        String ruleSearchList = comicSourceBean.getRuleSearchList();
        if (ruleSearchList != null) {
            sQLiteStatement.bindString(14, ruleSearchList);
        }
        String ruleSearchUrlNext = comicSourceBean.getRuleSearchUrlNext();
        if (ruleSearchUrlNext != null) {
            sQLiteStatement.bindString(15, ruleSearchUrlNext);
        }
        String ruleSearchName = comicSourceBean.getRuleSearchName();
        if (ruleSearchName != null) {
            sQLiteStatement.bindString(16, ruleSearchName);
        }
        String ruleSearchAuthor = comicSourceBean.getRuleSearchAuthor();
        if (ruleSearchAuthor != null) {
            sQLiteStatement.bindString(17, ruleSearchAuthor);
        }
        String ruleSearchKind = comicSourceBean.getRuleSearchKind();
        if (ruleSearchKind != null) {
            sQLiteStatement.bindString(18, ruleSearchKind);
        }
        String ruleSearchLastChapter = comicSourceBean.getRuleSearchLastChapter();
        if (ruleSearchLastChapter != null) {
            sQLiteStatement.bindString(19, ruleSearchLastChapter);
        }
        String ruleSearchCoverUrl = comicSourceBean.getRuleSearchCoverUrl();
        if (ruleSearchCoverUrl != null) {
            sQLiteStatement.bindString(20, ruleSearchCoverUrl);
        }
        String ruleSearchNoteUrl = comicSourceBean.getRuleSearchNoteUrl();
        if (ruleSearchNoteUrl != null) {
            sQLiteStatement.bindString(21, ruleSearchNoteUrl);
        }
        String ruleBookName = comicSourceBean.getRuleBookName();
        if (ruleBookName != null) {
            sQLiteStatement.bindString(22, ruleBookName);
        }
        String ruleBookAuthor = comicSourceBean.getRuleBookAuthor();
        if (ruleBookAuthor != null) {
            sQLiteStatement.bindString(23, ruleBookAuthor);
        }
        String ruleChapterId = comicSourceBean.getRuleChapterId();
        if (ruleChapterId != null) {
            sQLiteStatement.bindString(24, ruleChapterId);
        }
        String ruleChapterUrl = comicSourceBean.getRuleChapterUrl();
        if (ruleChapterUrl != null) {
            sQLiteStatement.bindString(25, ruleChapterUrl);
        }
        String ruleChapterUrlNext = comicSourceBean.getRuleChapterUrlNext();
        if (ruleChapterUrlNext != null) {
            sQLiteStatement.bindString(26, ruleChapterUrlNext);
        }
        String ruleChapterParentId = comicSourceBean.getRuleChapterParentId();
        if (ruleChapterParentId != null) {
            sQLiteStatement.bindString(27, ruleChapterParentId);
        }
        String ruleChapterParentName = comicSourceBean.getRuleChapterParentName();
        if (ruleChapterParentName != null) {
            sQLiteStatement.bindString(28, ruleChapterParentName);
        }
        String ruleCoverUrl = comicSourceBean.getRuleCoverUrl();
        if (ruleCoverUrl != null) {
            sQLiteStatement.bindString(29, ruleCoverUrl);
        }
        String ruleIntroduce = comicSourceBean.getRuleIntroduce();
        if (ruleIntroduce != null) {
            sQLiteStatement.bindString(30, ruleIntroduce);
        }
        String ruleChapterList = comicSourceBean.getRuleChapterList();
        if (ruleChapterList != null) {
            sQLiteStatement.bindString(31, ruleChapterList);
        }
        String ruleChapterName = comicSourceBean.getRuleChapterName();
        if (ruleChapterName != null) {
            sQLiteStatement.bindString(32, ruleChapterName);
        }
        String ruleContentUrl = comicSourceBean.getRuleContentUrl();
        if (ruleContentUrl != null) {
            sQLiteStatement.bindString(33, ruleContentUrl);
        }
        String ruleContentUrlNext = comicSourceBean.getRuleContentUrlNext();
        if (ruleContentUrlNext != null) {
            sQLiteStatement.bindString(34, ruleContentUrlNext);
        }
        String ruleBookContent = comicSourceBean.getRuleBookContent();
        if (ruleBookContent != null) {
            sQLiteStatement.bindString(35, ruleBookContent);
        }
        String ruleBookContentDecoder = comicSourceBean.getRuleBookContentDecoder();
        if (ruleBookContentDecoder != null) {
            sQLiteStatement.bindString(36, ruleBookContentDecoder);
        }
        String httpUserAgent = comicSourceBean.getHttpUserAgent();
        if (httpUserAgent != null) {
            sQLiteStatement.bindString(37, httpUserAgent);
        }
        String ruleBookKind = comicSourceBean.getRuleBookKind();
        if (ruleBookKind != null) {
            sQLiteStatement.bindString(38, ruleBookKind);
        }
        String ruleBookLastChapter = comicSourceBean.getRuleBookLastChapter();
        if (ruleBookLastChapter != null) {
            sQLiteStatement.bindString(39, ruleBookLastChapter);
        }
        String ruleBookUrlPattern = comicSourceBean.getRuleBookUrlPattern();
        if (ruleBookUrlPattern != null) {
            sQLiteStatement.bindString(40, ruleBookUrlPattern);
        }
        String loginUrl = comicSourceBean.getLoginUrl();
        if (loginUrl != null) {
            sQLiteStatement.bindString(41, loginUrl);
        }
        String loginUrlResult = comicSourceBean.getLoginUrlResult();
        if (loginUrlResult != null) {
            sQLiteStatement.bindString(42, loginUrlResult);
        }
        String sourceRemark = comicSourceBean.getSourceRemark();
        if (sourceRemark != null) {
            sQLiteStatement.bindString(43, sourceRemark);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicSourceBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 1;
        String string2 = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        String string3 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string4 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 4;
        String string5 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i + 5;
        String string6 = cursor.isNull(i7) ? null : cursor.getString(i7);
        int i8 = i + 6;
        String string7 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = i + 7;
        Long lValueOf = cursor.isNull(i9) ? null : Long.valueOf(cursor.getLong(i9));
        int i10 = cursor.getInt(i + 8);
        int i11 = cursor.getInt(i + 9);
        boolean z = cursor.getShort(i + 10) != 0;
        int i12 = i + 11;
        String string8 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 12;
        String string9 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 13;
        String string10 = cursor.isNull(i14) ? null : cursor.getString(i14);
        int i15 = i + 14;
        String string11 = cursor.isNull(i15) ? null : cursor.getString(i15);
        int i16 = i + 15;
        String string12 = cursor.isNull(i16) ? null : cursor.getString(i16);
        int i17 = i + 16;
        String string13 = cursor.isNull(i17) ? null : cursor.getString(i17);
        int i18 = i + 17;
        String string14 = cursor.isNull(i18) ? null : cursor.getString(i18);
        int i19 = i + 18;
        String string15 = cursor.isNull(i19) ? null : cursor.getString(i19);
        int i20 = i + 19;
        String string16 = cursor.isNull(i20) ? null : cursor.getString(i20);
        int i21 = i + 20;
        String string17 = cursor.isNull(i21) ? null : cursor.getString(i21);
        int i22 = i + 21;
        String string18 = cursor.isNull(i22) ? null : cursor.getString(i22);
        int i23 = i + 22;
        String string19 = cursor.isNull(i23) ? null : cursor.getString(i23);
        int i24 = i + 23;
        String string20 = cursor.isNull(i24) ? null : cursor.getString(i24);
        int i25 = i + 24;
        String string21 = cursor.isNull(i25) ? null : cursor.getString(i25);
        int i26 = i + 25;
        String string22 = cursor.isNull(i26) ? null : cursor.getString(i26);
        int i27 = i + 26;
        String string23 = cursor.isNull(i27) ? null : cursor.getString(i27);
        int i28 = i + 27;
        String string24 = cursor.isNull(i28) ? null : cursor.getString(i28);
        int i29 = i + 28;
        String string25 = cursor.isNull(i29) ? null : cursor.getString(i29);
        int i30 = i + 29;
        String string26 = cursor.isNull(i30) ? null : cursor.getString(i30);
        int i31 = i + 30;
        String string27 = cursor.isNull(i31) ? null : cursor.getString(i31);
        int i32 = i + 31;
        String string28 = cursor.isNull(i32) ? null : cursor.getString(i32);
        int i33 = i + 32;
        String string29 = cursor.isNull(i33) ? null : cursor.getString(i33);
        int i34 = i + 33;
        String string30 = cursor.isNull(i34) ? null : cursor.getString(i34);
        int i35 = i + 34;
        String string31 = cursor.isNull(i35) ? null : cursor.getString(i35);
        int i36 = i + 35;
        String string32 = cursor.isNull(i36) ? null : cursor.getString(i36);
        int i37 = i + 36;
        String string33 = cursor.isNull(i37) ? null : cursor.getString(i37);
        int i38 = i + 37;
        String string34 = cursor.isNull(i38) ? null : cursor.getString(i38);
        int i39 = i + 38;
        String string35 = cursor.isNull(i39) ? null : cursor.getString(i39);
        int i40 = i + 39;
        String string36 = cursor.isNull(i40) ? null : cursor.getString(i40);
        int i41 = i + 40;
        String string37 = cursor.isNull(i41) ? null : cursor.getString(i41);
        int i42 = i + 41;
        String string38 = cursor.isNull(i42) ? null : cursor.getString(i42);
        int i43 = i + 42;
        return new ComicSourceBean(string, string2, string3, string4, string5, string6, string7, lValueOf, i10, i11, z, string8, string9, string10, string11, string12, string13, string14, string15, string16, string17, string18, string19, string20, string21, string22, string23, string24, string25, string26, string27, string28, string29, string30, string31, string32, string33, string34, string35, string36, string37, string38, cursor.isNull(i43) ? null : cursor.getString(i43));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ComicSourceBean comicSourceBean, int i) {
        int i2 = i + 0;
        comicSourceBean.setBookSourceType(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        comicSourceBean.setBookSingleThread(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        comicSourceBean.setBookDelayTime(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        comicSourceBean.setBookSourceUrl(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        comicSourceBean.setBookSourceName(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 5;
        comicSourceBean.setBookSourceGroup(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        comicSourceBean.setCheckUrl(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        comicSourceBean.setLastUpdateTime(cursor.isNull(i9) ? null : Long.valueOf(cursor.getLong(i9)));
        comicSourceBean.setSerialNumber(cursor.getInt(i + 8));
        comicSourceBean.setWeight(cursor.getInt(i + 9));
        comicSourceBean.setEnable(cursor.getShort(i + 10) != 0);
        int i10 = i + 11;
        comicSourceBean.setRuleFindUrl(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 12;
        comicSourceBean.setRuleSearchUrl(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 13;
        comicSourceBean.setRuleSearchList(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 14;
        comicSourceBean.setRuleSearchUrlNext(cursor.isNull(i13) ? null : cursor.getString(i13));
        int i14 = i + 15;
        comicSourceBean.setRuleSearchName(cursor.isNull(i14) ? null : cursor.getString(i14));
        int i15 = i + 16;
        comicSourceBean.setRuleSearchAuthor(cursor.isNull(i15) ? null : cursor.getString(i15));
        int i16 = i + 17;
        comicSourceBean.setRuleSearchKind(cursor.isNull(i16) ? null : cursor.getString(i16));
        int i17 = i + 18;
        comicSourceBean.setRuleSearchLastChapter(cursor.isNull(i17) ? null : cursor.getString(i17));
        int i18 = i + 19;
        comicSourceBean.setRuleSearchCoverUrl(cursor.isNull(i18) ? null : cursor.getString(i18));
        int i19 = i + 20;
        comicSourceBean.setRuleSearchNoteUrl(cursor.isNull(i19) ? null : cursor.getString(i19));
        int i20 = i + 21;
        comicSourceBean.setRuleBookName(cursor.isNull(i20) ? null : cursor.getString(i20));
        int i21 = i + 22;
        comicSourceBean.setRuleBookAuthor(cursor.isNull(i21) ? null : cursor.getString(i21));
        int i22 = i + 23;
        comicSourceBean.setRuleChapterId(cursor.isNull(i22) ? null : cursor.getString(i22));
        int i23 = i + 24;
        comicSourceBean.setRuleChapterUrl(cursor.isNull(i23) ? null : cursor.getString(i23));
        int i24 = i + 25;
        comicSourceBean.setRuleChapterUrlNext(cursor.isNull(i24) ? null : cursor.getString(i24));
        int i25 = i + 26;
        comicSourceBean.setRuleChapterParentId(cursor.isNull(i25) ? null : cursor.getString(i25));
        int i26 = i + 27;
        comicSourceBean.setRuleChapterParentName(cursor.isNull(i26) ? null : cursor.getString(i26));
        int i27 = i + 28;
        comicSourceBean.setRuleCoverUrl(cursor.isNull(i27) ? null : cursor.getString(i27));
        int i28 = i + 29;
        comicSourceBean.setRuleIntroduce(cursor.isNull(i28) ? null : cursor.getString(i28));
        int i29 = i + 30;
        comicSourceBean.setRuleChapterList(cursor.isNull(i29) ? null : cursor.getString(i29));
        int i30 = i + 31;
        comicSourceBean.setRuleChapterName(cursor.isNull(i30) ? null : cursor.getString(i30));
        int i31 = i + 32;
        comicSourceBean.setRuleContentUrl(cursor.isNull(i31) ? null : cursor.getString(i31));
        int i32 = i + 33;
        comicSourceBean.setRuleContentUrlNext(cursor.isNull(i32) ? null : cursor.getString(i32));
        int i33 = i + 34;
        comicSourceBean.setRuleBookContent(cursor.isNull(i33) ? null : cursor.getString(i33));
        int i34 = i + 35;
        comicSourceBean.setRuleBookContentDecoder(cursor.isNull(i34) ? null : cursor.getString(i34));
        int i35 = i + 36;
        comicSourceBean.setHttpUserAgent(cursor.isNull(i35) ? null : cursor.getString(i35));
        int i36 = i + 37;
        comicSourceBean.setRuleBookKind(cursor.isNull(i36) ? null : cursor.getString(i36));
        int i37 = i + 38;
        comicSourceBean.setRuleBookLastChapter(cursor.isNull(i37) ? null : cursor.getString(i37));
        int i38 = i + 39;
        comicSourceBean.setRuleBookUrlPattern(cursor.isNull(i38) ? null : cursor.getString(i38));
        int i39 = i + 40;
        comicSourceBean.setLoginUrl(cursor.isNull(i39) ? null : cursor.getString(i39));
        int i40 = i + 41;
        comicSourceBean.setLoginUrlResult(cursor.isNull(i40) ? null : cursor.getString(i40));
        int i41 = i + 42;
        comicSourceBean.setSourceRemark(cursor.isNull(i41) ? null : cursor.getString(i41));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ComicSourceBean comicSourceBean) {
        databaseStatement.clearBindings();
        String bookSourceType = comicSourceBean.getBookSourceType();
        if (bookSourceType != null) {
            databaseStatement.bindString(1, bookSourceType);
        }
        String bookSingleThread = comicSourceBean.getBookSingleThread();
        if (bookSingleThread != null) {
            databaseStatement.bindString(2, bookSingleThread);
        }
        String bookDelayTime = comicSourceBean.getBookDelayTime();
        if (bookDelayTime != null) {
            databaseStatement.bindString(3, bookDelayTime);
        }
        String bookSourceUrl = comicSourceBean.getBookSourceUrl();
        if (bookSourceUrl != null) {
            databaseStatement.bindString(4, bookSourceUrl);
        }
        String bookSourceName = comicSourceBean.getBookSourceName();
        if (bookSourceName != null) {
            databaseStatement.bindString(5, bookSourceName);
        }
        String bookSourceGroup = comicSourceBean.getBookSourceGroup();
        if (bookSourceGroup != null) {
            databaseStatement.bindString(6, bookSourceGroup);
        }
        String checkUrl = comicSourceBean.getCheckUrl();
        if (checkUrl != null) {
            databaseStatement.bindString(7, checkUrl);
        }
        Long lastUpdateTime = comicSourceBean.getLastUpdateTime();
        if (lastUpdateTime != null) {
            databaseStatement.bindLong(8, lastUpdateTime.longValue());
        }
        databaseStatement.bindLong(9, comicSourceBean.getSerialNumber());
        databaseStatement.bindLong(10, comicSourceBean.getWeight());
        databaseStatement.bindLong(11, comicSourceBean.getEnable() ? 1L : 0L);
        String ruleFindUrl = comicSourceBean.getRuleFindUrl();
        if (ruleFindUrl != null) {
            databaseStatement.bindString(12, ruleFindUrl);
        }
        String ruleSearchUrl = comicSourceBean.getRuleSearchUrl();
        if (ruleSearchUrl != null) {
            databaseStatement.bindString(13, ruleSearchUrl);
        }
        String ruleSearchList = comicSourceBean.getRuleSearchList();
        if (ruleSearchList != null) {
            databaseStatement.bindString(14, ruleSearchList);
        }
        String ruleSearchUrlNext = comicSourceBean.getRuleSearchUrlNext();
        if (ruleSearchUrlNext != null) {
            databaseStatement.bindString(15, ruleSearchUrlNext);
        }
        String ruleSearchName = comicSourceBean.getRuleSearchName();
        if (ruleSearchName != null) {
            databaseStatement.bindString(16, ruleSearchName);
        }
        String ruleSearchAuthor = comicSourceBean.getRuleSearchAuthor();
        if (ruleSearchAuthor != null) {
            databaseStatement.bindString(17, ruleSearchAuthor);
        }
        String ruleSearchKind = comicSourceBean.getRuleSearchKind();
        if (ruleSearchKind != null) {
            databaseStatement.bindString(18, ruleSearchKind);
        }
        String ruleSearchLastChapter = comicSourceBean.getRuleSearchLastChapter();
        if (ruleSearchLastChapter != null) {
            databaseStatement.bindString(19, ruleSearchLastChapter);
        }
        String ruleSearchCoverUrl = comicSourceBean.getRuleSearchCoverUrl();
        if (ruleSearchCoverUrl != null) {
            databaseStatement.bindString(20, ruleSearchCoverUrl);
        }
        String ruleSearchNoteUrl = comicSourceBean.getRuleSearchNoteUrl();
        if (ruleSearchNoteUrl != null) {
            databaseStatement.bindString(21, ruleSearchNoteUrl);
        }
        String ruleBookName = comicSourceBean.getRuleBookName();
        if (ruleBookName != null) {
            databaseStatement.bindString(22, ruleBookName);
        }
        String ruleBookAuthor = comicSourceBean.getRuleBookAuthor();
        if (ruleBookAuthor != null) {
            databaseStatement.bindString(23, ruleBookAuthor);
        }
        String ruleChapterId = comicSourceBean.getRuleChapterId();
        if (ruleChapterId != null) {
            databaseStatement.bindString(24, ruleChapterId);
        }
        String ruleChapterUrl = comicSourceBean.getRuleChapterUrl();
        if (ruleChapterUrl != null) {
            databaseStatement.bindString(25, ruleChapterUrl);
        }
        String ruleChapterUrlNext = comicSourceBean.getRuleChapterUrlNext();
        if (ruleChapterUrlNext != null) {
            databaseStatement.bindString(26, ruleChapterUrlNext);
        }
        String ruleChapterParentId = comicSourceBean.getRuleChapterParentId();
        if (ruleChapterParentId != null) {
            databaseStatement.bindString(27, ruleChapterParentId);
        }
        String ruleChapterParentName = comicSourceBean.getRuleChapterParentName();
        if (ruleChapterParentName != null) {
            databaseStatement.bindString(28, ruleChapterParentName);
        }
        String ruleCoverUrl = comicSourceBean.getRuleCoverUrl();
        if (ruleCoverUrl != null) {
            databaseStatement.bindString(29, ruleCoverUrl);
        }
        String ruleIntroduce = comicSourceBean.getRuleIntroduce();
        if (ruleIntroduce != null) {
            databaseStatement.bindString(30, ruleIntroduce);
        }
        String ruleChapterList = comicSourceBean.getRuleChapterList();
        if (ruleChapterList != null) {
            databaseStatement.bindString(31, ruleChapterList);
        }
        String ruleChapterName = comicSourceBean.getRuleChapterName();
        if (ruleChapterName != null) {
            databaseStatement.bindString(32, ruleChapterName);
        }
        String ruleContentUrl = comicSourceBean.getRuleContentUrl();
        if (ruleContentUrl != null) {
            databaseStatement.bindString(33, ruleContentUrl);
        }
        String ruleContentUrlNext = comicSourceBean.getRuleContentUrlNext();
        if (ruleContentUrlNext != null) {
            databaseStatement.bindString(34, ruleContentUrlNext);
        }
        String ruleBookContent = comicSourceBean.getRuleBookContent();
        if (ruleBookContent != null) {
            databaseStatement.bindString(35, ruleBookContent);
        }
        String ruleBookContentDecoder = comicSourceBean.getRuleBookContentDecoder();
        if (ruleBookContentDecoder != null) {
            databaseStatement.bindString(36, ruleBookContentDecoder);
        }
        String httpUserAgent = comicSourceBean.getHttpUserAgent();
        if (httpUserAgent != null) {
            databaseStatement.bindString(37, httpUserAgent);
        }
        String ruleBookKind = comicSourceBean.getRuleBookKind();
        if (ruleBookKind != null) {
            databaseStatement.bindString(38, ruleBookKind);
        }
        String ruleBookLastChapter = comicSourceBean.getRuleBookLastChapter();
        if (ruleBookLastChapter != null) {
            databaseStatement.bindString(39, ruleBookLastChapter);
        }
        String ruleBookUrlPattern = comicSourceBean.getRuleBookUrlPattern();
        if (ruleBookUrlPattern != null) {
            databaseStatement.bindString(40, ruleBookUrlPattern);
        }
        String loginUrl = comicSourceBean.getLoginUrl();
        if (loginUrl != null) {
            databaseStatement.bindString(41, loginUrl);
        }
        String loginUrlResult = comicSourceBean.getLoginUrlResult();
        if (loginUrlResult != null) {
            databaseStatement.bindString(42, loginUrlResult);
        }
        String sourceRemark = comicSourceBean.getSourceRemark();
        if (sourceRemark != null) {
            databaseStatement.bindString(43, sourceRemark);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 3;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(ComicSourceBean comicSourceBean) {
        if (comicSourceBean != null) {
            return comicSourceBean.getBookSourceUrl();
        }
        return null;
    }

    public ComicSourceBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
