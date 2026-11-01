package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.pk0;
import android.support.v4.wq;
import com.wsw.cospa.bean.HistoryComicBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class HistoryComicBeanDao extends AbstractDao<HistoryComicBean, String> {
    public static final String TABLENAME = "HISTORY_COMIC_BEAN";

    public static class Properties {

        /* renamed from: do, reason: not valid java name */
        public static final Property f22084do = new Property(0, String.class, wq.Cdo.f7669try, true, "NOTE_URL");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22089if = new Property(1, String.class, "coverUrl", false, "COVER_URL");

        /* renamed from: for, reason: not valid java name */
        public static final Property f22087for = new Property(2, String.class, "name", false, "NAME");

        /* renamed from: new, reason: not valid java name */
        public static final Property f22090new = new Property(3, String.class, "author", false, "AUTHOR");

        /* renamed from: try, reason: not valid java name */
        public static final Property f22094try = new Property(4, String.class, p42.f4845if, false, "TAG");

        /* renamed from: case, reason: not valid java name */
        public static final Property f22080case = new Property(5, String.class, "kind", false, "KIND");

        /* renamed from: else, reason: not valid java name */
        public static final Property f22085else = new Property(6, String.class, pk0.Cdo.f5085new, false, "ORIGIN");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f22088goto = new Property(7, String.class, "desc", false, "DESC");

        /* renamed from: this, reason: not valid java name */
        public static final Property f22092this = new Property(8, String.class, "lastChapter", false, "LAST_CHAPTER");

        /* renamed from: break, reason: not valid java name */
        public static final Property f22079break = new Property(9, String.class, "introduce", false, "INTRODUCE");

        /* renamed from: catch, reason: not valid java name */
        public static final Property f22081catch = new Property(10, String.class, "chapterUrl", false, "CHAPTER_URL");

        /* renamed from: class, reason: not valid java name */
        public static final Property f22082class = new Property(11, Long.class, "upTime", false, "UP_TIME");

        /* renamed from: const, reason: not valid java name */
        public static final Property f22083const = new Property(12, String.class, "variable", false, "VARIABLE");

        /* renamed from: final, reason: not valid java name */
        public static final Property f22086final = new Property(13, String.class, "searchPage", false, "SEARCH_PAGE");

        /* renamed from: super, reason: not valid java name */
        public static final Property f22091super = new Property(14, String.class, "searchCoverHeaders", false, "SEARCH_COVER_HEADERS");

        /* renamed from: throw, reason: not valid java name */
        public static final Property f22093throw = new Property(15, Boolean.TYPE, "isChecked", false, "IS_CHECKED");
    }

    public HistoryComicBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26048for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"HISTORY_COMIC_BEAN\" (\"NOTE_URL\" TEXT PRIMARY KEY NOT NULL ,\"COVER_URL\" TEXT,\"NAME\" TEXT,\"AUTHOR\" TEXT,\"TAG\" TEXT,\"KIND\" TEXT,\"ORIGIN\" TEXT,\"DESC\" TEXT,\"LAST_CHAPTER\" TEXT,\"INTRODUCE\" TEXT,\"CHAPTER_URL\" TEXT,\"UP_TIME\" INTEGER,\"VARIABLE\" TEXT,\"SEARCH_PAGE\" TEXT,\"SEARCH_COVER_HEADERS\" TEXT,\"IS_CHECKED\" INTEGER NOT NULL );");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26049new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"HISTORY_COMIC_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(HistoryComicBean historyComicBean, long j) {
        return historyComicBean.getNoteUrl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(HistoryComicBean historyComicBean) {
        return historyComicBean.getNoteUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, HistoryComicBean historyComicBean) {
        sQLiteStatement.clearBindings();
        String noteUrl = historyComicBean.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(1, noteUrl);
        }
        String coverUrl = historyComicBean.getCoverUrl();
        if (coverUrl != null) {
            sQLiteStatement.bindString(2, coverUrl);
        }
        String name = historyComicBean.getName();
        if (name != null) {
            sQLiteStatement.bindString(3, name);
        }
        String author = historyComicBean.getAuthor();
        if (author != null) {
            sQLiteStatement.bindString(4, author);
        }
        String tag = historyComicBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(5, tag);
        }
        String kind = historyComicBean.getKind();
        if (kind != null) {
            sQLiteStatement.bindString(6, kind);
        }
        String origin = historyComicBean.getOrigin();
        if (origin != null) {
            sQLiteStatement.bindString(7, origin);
        }
        String desc = historyComicBean.getDesc();
        if (desc != null) {
            sQLiteStatement.bindString(8, desc);
        }
        String lastChapter = historyComicBean.getLastChapter();
        if (lastChapter != null) {
            sQLiteStatement.bindString(9, lastChapter);
        }
        String introduce = historyComicBean.getIntroduce();
        if (introduce != null) {
            sQLiteStatement.bindString(10, introduce);
        }
        String chapterUrl = historyComicBean.getChapterUrl();
        if (chapterUrl != null) {
            sQLiteStatement.bindString(11, chapterUrl);
        }
        Long upTime = historyComicBean.getUpTime();
        if (upTime != null) {
            sQLiteStatement.bindLong(12, upTime.longValue());
        }
        String variable = historyComicBean.getVariable();
        if (variable != null) {
            sQLiteStatement.bindString(13, variable);
        }
        String searchPage = historyComicBean.getSearchPage();
        if (searchPage != null) {
            sQLiteStatement.bindString(14, searchPage);
        }
        String searchCoverHeaders = historyComicBean.getSearchCoverHeaders();
        if (searchCoverHeaders != null) {
            sQLiteStatement.bindString(15, searchCoverHeaders);
        }
        sQLiteStatement.bindLong(16, historyComicBean.getIsChecked() ? 1L : 0L);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public HistoryComicBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 1;
        int i4 = i + 2;
        int i5 = i + 3;
        int i6 = i + 4;
        int i7 = i + 5;
        int i8 = i + 6;
        int i9 = i + 7;
        int i10 = i + 8;
        int i11 = i + 9;
        int i12 = i + 10;
        int i13 = i + 11;
        int i14 = i + 12;
        int i15 = i + 13;
        int i16 = i + 14;
        return new HistoryComicBean(cursor.isNull(i2) ? null : cursor.getString(i2), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : cursor.getString(i4), cursor.isNull(i5) ? null : cursor.getString(i5), cursor.isNull(i6) ? null : cursor.getString(i6), cursor.isNull(i7) ? null : cursor.getString(i7), cursor.isNull(i8) ? null : cursor.getString(i8), cursor.isNull(i9) ? null : cursor.getString(i9), cursor.isNull(i10) ? null : cursor.getString(i10), cursor.isNull(i11) ? null : cursor.getString(i11), cursor.isNull(i12) ? null : cursor.getString(i12), cursor.isNull(i13) ? null : Long.valueOf(cursor.getLong(i13)), cursor.isNull(i14) ? null : cursor.getString(i14), cursor.isNull(i15) ? null : cursor.getString(i15), cursor.isNull(i16) ? null : cursor.getString(i16), cursor.getShort(i + 15) != 0);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, HistoryComicBean historyComicBean, int i) {
        int i2 = i + 0;
        historyComicBean.setNoteUrl(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        historyComicBean.setCoverUrl(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        historyComicBean.setName(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        historyComicBean.setAuthor(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        historyComicBean.setTag(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 5;
        historyComicBean.setKind(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        historyComicBean.setOrigin(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        historyComicBean.setDesc(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 8;
        historyComicBean.setLastChapter(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 9;
        historyComicBean.setIntroduce(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 10;
        historyComicBean.setChapterUrl(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 11;
        historyComicBean.setUpTime(cursor.isNull(i13) ? null : Long.valueOf(cursor.getLong(i13)));
        int i14 = i + 12;
        historyComicBean.setVariable(cursor.isNull(i14) ? null : cursor.getString(i14));
        int i15 = i + 13;
        historyComicBean.setSearchPage(cursor.isNull(i15) ? null : cursor.getString(i15));
        int i16 = i + 14;
        historyComicBean.setSearchCoverHeaders(cursor.isNull(i16) ? null : cursor.getString(i16));
        historyComicBean.setIsChecked(cursor.getShort(i + 15) != 0);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, HistoryComicBean historyComicBean) {
        databaseStatement.clearBindings();
        String noteUrl = historyComicBean.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(1, noteUrl);
        }
        String coverUrl = historyComicBean.getCoverUrl();
        if (coverUrl != null) {
            databaseStatement.bindString(2, coverUrl);
        }
        String name = historyComicBean.getName();
        if (name != null) {
            databaseStatement.bindString(3, name);
        }
        String author = historyComicBean.getAuthor();
        if (author != null) {
            databaseStatement.bindString(4, author);
        }
        String tag = historyComicBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(5, tag);
        }
        String kind = historyComicBean.getKind();
        if (kind != null) {
            databaseStatement.bindString(6, kind);
        }
        String origin = historyComicBean.getOrigin();
        if (origin != null) {
            databaseStatement.bindString(7, origin);
        }
        String desc = historyComicBean.getDesc();
        if (desc != null) {
            databaseStatement.bindString(8, desc);
        }
        String lastChapter = historyComicBean.getLastChapter();
        if (lastChapter != null) {
            databaseStatement.bindString(9, lastChapter);
        }
        String introduce = historyComicBean.getIntroduce();
        if (introduce != null) {
            databaseStatement.bindString(10, introduce);
        }
        String chapterUrl = historyComicBean.getChapterUrl();
        if (chapterUrl != null) {
            databaseStatement.bindString(11, chapterUrl);
        }
        Long upTime = historyComicBean.getUpTime();
        if (upTime != null) {
            databaseStatement.bindLong(12, upTime.longValue());
        }
        String variable = historyComicBean.getVariable();
        if (variable != null) {
            databaseStatement.bindString(13, variable);
        }
        String searchPage = historyComicBean.getSearchPage();
        if (searchPage != null) {
            databaseStatement.bindString(14, searchPage);
        }
        String searchCoverHeaders = historyComicBean.getSearchCoverHeaders();
        if (searchCoverHeaders != null) {
            databaseStatement.bindString(15, searchCoverHeaders);
        }
        databaseStatement.bindLong(16, historyComicBean.getIsChecked() ? 1L : 0L);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 0;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(HistoryComicBean historyComicBean) {
        if (historyComicBean != null) {
            return historyComicBean.getNoteUrl();
        }
        return null;
    }

    public HistoryComicBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
