package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.pk0;
import android.support.v4.wq;
import com.wsw.cospa.bean.SearchComicBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class SearchComicBeanDao extends AbstractDao<SearchComicBean, String> {
    public static final String TABLENAME = "SEARCH_COMIC_BEAN";

    public static class Properties {

        /* renamed from: do, reason: not valid java name */
        public static final Property f22114do = new Property(0, String.class, wq.Cdo.f7669try, true, "NOTE_URL");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22119if = new Property(1, String.class, "coverUrl", false, "COVER_URL");

        /* renamed from: for, reason: not valid java name */
        public static final Property f22117for = new Property(2, String.class, "name", false, "NAME");

        /* renamed from: new, reason: not valid java name */
        public static final Property f22120new = new Property(3, String.class, "author", false, "AUTHOR");

        /* renamed from: try, reason: not valid java name */
        public static final Property f22124try = new Property(4, String.class, p42.f4845if, false, "TAG");

        /* renamed from: case, reason: not valid java name */
        public static final Property f22110case = new Property(5, String.class, "kind", false, "KIND");

        /* renamed from: else, reason: not valid java name */
        public static final Property f22115else = new Property(6, String.class, pk0.Cdo.f5085new, false, "ORIGIN");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f22118goto = new Property(7, String.class, "desc", false, "DESC");

        /* renamed from: this, reason: not valid java name */
        public static final Property f22122this = new Property(8, String.class, "lastChapter", false, "LAST_CHAPTER");

        /* renamed from: break, reason: not valid java name */
        public static final Property f22109break = new Property(9, String.class, "introduce", false, "INTRODUCE");

        /* renamed from: catch, reason: not valid java name */
        public static final Property f22111catch = new Property(10, String.class, "chapterUrl", false, "CHAPTER_URL");

        /* renamed from: class, reason: not valid java name */
        public static final Property f22112class = new Property(11, Long.class, "addTime", false, "ADD_TIME");

        /* renamed from: const, reason: not valid java name */
        public static final Property f22113const = new Property(12, Long.class, "upTime", false, "UP_TIME");

        /* renamed from: final, reason: not valid java name */
        public static final Property f22116final = new Property(13, String.class, "variable", false, "VARIABLE");

        /* renamed from: super, reason: not valid java name */
        public static final Property f22121super = new Property(14, String.class, "searchPage", false, "SEARCH_PAGE");

        /* renamed from: throw, reason: not valid java name */
        public static final Property f22123throw = new Property(15, String.class, "searchCoverHeaders", false, "SEARCH_COVER_HEADERS");
    }

    public SearchComicBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26068for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"SEARCH_COMIC_BEAN\" (\"NOTE_URL\" TEXT PRIMARY KEY NOT NULL ,\"COVER_URL\" TEXT,\"NAME\" TEXT,\"AUTHOR\" TEXT,\"TAG\" TEXT,\"KIND\" TEXT,\"ORIGIN\" TEXT,\"DESC\" TEXT,\"LAST_CHAPTER\" TEXT,\"INTRODUCE\" TEXT,\"CHAPTER_URL\" TEXT,\"ADD_TIME\" INTEGER,\"UP_TIME\" INTEGER,\"VARIABLE\" TEXT,\"SEARCH_PAGE\" TEXT,\"SEARCH_COVER_HEADERS\" TEXT);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26069new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"SEARCH_COMIC_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(SearchComicBean searchComicBean, long j) {
        return searchComicBean.getNoteUrl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(SearchComicBean searchComicBean) {
        return searchComicBean.getNoteUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, SearchComicBean searchComicBean) {
        sQLiteStatement.clearBindings();
        String noteUrl = searchComicBean.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(1, noteUrl);
        }
        String coverUrl = searchComicBean.getCoverUrl();
        if (coverUrl != null) {
            sQLiteStatement.bindString(2, coverUrl);
        }
        String name = searchComicBean.getName();
        if (name != null) {
            sQLiteStatement.bindString(3, name);
        }
        String author = searchComicBean.getAuthor();
        if (author != null) {
            sQLiteStatement.bindString(4, author);
        }
        String tag = searchComicBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(5, tag);
        }
        String kind = searchComicBean.getKind();
        if (kind != null) {
            sQLiteStatement.bindString(6, kind);
        }
        String origin = searchComicBean.getOrigin();
        if (origin != null) {
            sQLiteStatement.bindString(7, origin);
        }
        String desc = searchComicBean.getDesc();
        if (desc != null) {
            sQLiteStatement.bindString(8, desc);
        }
        String lastChapter = searchComicBean.getLastChapter();
        if (lastChapter != null) {
            sQLiteStatement.bindString(9, lastChapter);
        }
        String introduce = searchComicBean.getIntroduce();
        if (introduce != null) {
            sQLiteStatement.bindString(10, introduce);
        }
        String chapterUrl = searchComicBean.getChapterUrl();
        if (chapterUrl != null) {
            sQLiteStatement.bindString(11, chapterUrl);
        }
        Long lValueOf = Long.valueOf(searchComicBean.getAddTime());
        if (lValueOf != null) {
            sQLiteStatement.bindLong(12, lValueOf.longValue());
        }
        Long upTime = searchComicBean.getUpTime();
        if (upTime != null) {
            sQLiteStatement.bindLong(13, upTime.longValue());
        }
        String variable = searchComicBean.getVariable();
        if (variable != null) {
            sQLiteStatement.bindString(14, variable);
        }
        String searchPage = searchComicBean.getSearchPage();
        if (searchPage != null) {
            sQLiteStatement.bindString(15, searchPage);
        }
        String searchCoverHeaders = searchComicBean.getSearchCoverHeaders();
        if (searchCoverHeaders != null) {
            sQLiteStatement.bindString(16, searchCoverHeaders);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public SearchComicBean readEntity(Cursor cursor, int i) {
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
        String string8 = cursor.isNull(i9) ? null : cursor.getString(i9);
        int i10 = i + 8;
        String string9 = cursor.isNull(i10) ? null : cursor.getString(i10);
        int i11 = i + 9;
        String string10 = cursor.isNull(i11) ? null : cursor.getString(i11);
        int i12 = i + 10;
        String string11 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 11;
        Long lValueOf = cursor.isNull(i13) ? null : Long.valueOf(cursor.getLong(i13));
        int i14 = i + 12;
        Long lValueOf2 = cursor.isNull(i14) ? null : Long.valueOf(cursor.getLong(i14));
        int i15 = i + 13;
        String string12 = cursor.isNull(i15) ? null : cursor.getString(i15);
        int i16 = i + 14;
        String string13 = cursor.isNull(i16) ? null : cursor.getString(i16);
        int i17 = i + 15;
        return new SearchComicBean(string, string2, string3, string4, string5, string6, string7, string8, string9, string10, string11, lValueOf, lValueOf2, string12, string13, cursor.isNull(i17) ? null : cursor.getString(i17));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, SearchComicBean searchComicBean, int i) {
        int i2 = i + 0;
        searchComicBean.setNoteUrl(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        searchComicBean.setCoverUrl(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        searchComicBean.setName(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        searchComicBean.setAuthor(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        searchComicBean.setTag(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 5;
        searchComicBean.setKind(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        searchComicBean.setOrigin(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        searchComicBean.setDesc(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 8;
        searchComicBean.setLastChapter(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 9;
        searchComicBean.setIntroduce(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 10;
        searchComicBean.setChapterUrl(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 11;
        searchComicBean.setAddTime(cursor.isNull(i13) ? null : Long.valueOf(cursor.getLong(i13)));
        int i14 = i + 12;
        searchComicBean.setUpTime(cursor.isNull(i14) ? null : Long.valueOf(cursor.getLong(i14)));
        int i15 = i + 13;
        searchComicBean.setVariable(cursor.isNull(i15) ? null : cursor.getString(i15));
        int i16 = i + 14;
        searchComicBean.setSearchPage(cursor.isNull(i16) ? null : cursor.getString(i16));
        int i17 = i + 15;
        searchComicBean.setSearchCoverHeaders(cursor.isNull(i17) ? null : cursor.getString(i17));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, SearchComicBean searchComicBean) {
        databaseStatement.clearBindings();
        String noteUrl = searchComicBean.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(1, noteUrl);
        }
        String coverUrl = searchComicBean.getCoverUrl();
        if (coverUrl != null) {
            databaseStatement.bindString(2, coverUrl);
        }
        String name = searchComicBean.getName();
        if (name != null) {
            databaseStatement.bindString(3, name);
        }
        String author = searchComicBean.getAuthor();
        if (author != null) {
            databaseStatement.bindString(4, author);
        }
        String tag = searchComicBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(5, tag);
        }
        String kind = searchComicBean.getKind();
        if (kind != null) {
            databaseStatement.bindString(6, kind);
        }
        String origin = searchComicBean.getOrigin();
        if (origin != null) {
            databaseStatement.bindString(7, origin);
        }
        String desc = searchComicBean.getDesc();
        if (desc != null) {
            databaseStatement.bindString(8, desc);
        }
        String lastChapter = searchComicBean.getLastChapter();
        if (lastChapter != null) {
            databaseStatement.bindString(9, lastChapter);
        }
        String introduce = searchComicBean.getIntroduce();
        if (introduce != null) {
            databaseStatement.bindString(10, introduce);
        }
        String chapterUrl = searchComicBean.getChapterUrl();
        if (chapterUrl != null) {
            databaseStatement.bindString(11, chapterUrl);
        }
        Long lValueOf = Long.valueOf(searchComicBean.getAddTime());
        if (lValueOf != null) {
            databaseStatement.bindLong(12, lValueOf.longValue());
        }
        Long upTime = searchComicBean.getUpTime();
        if (upTime != null) {
            databaseStatement.bindLong(13, upTime.longValue());
        }
        String variable = searchComicBean.getVariable();
        if (variable != null) {
            databaseStatement.bindString(14, variable);
        }
        String searchPage = searchComicBean.getSearchPage();
        if (searchPage != null) {
            databaseStatement.bindString(15, searchPage);
        }
        String searchCoverHeaders = searchComicBean.getSearchCoverHeaders();
        if (searchCoverHeaders != null) {
            databaseStatement.bindString(16, searchCoverHeaders);
        }
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
    public String getKey(SearchComicBean searchComicBean) {
        if (searchComicBean != null) {
            return searchComicBean.getNoteUrl();
        }
        return null;
    }

    public SearchComicBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
