package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.pk0;
import android.support.v4.wq;
import com.wsw.cospa.bean.ComicInfoBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class ComicInfoBeanDao extends AbstractDao<ComicInfoBean, String> {
    public static final String TABLENAME = "COMIC_INFO_BEAN";

    public static class Properties {

        /* renamed from: do, reason: not valid java name */
        public static final Property f21978do = new Property(0, String.class, "name", false, "NAME");

        /* renamed from: if, reason: not valid java name */
        public static final Property f21982if = new Property(1, String.class, p42.f4845if, false, "TAG");

        /* renamed from: for, reason: not valid java name */
        public static final Property f21980for = new Property(2, String.class, wq.Cdo.f7669try, true, "NOTE_URL");

        /* renamed from: new, reason: not valid java name */
        public static final Property f21983new = new Property(3, String.class, "chapterUrl", false, "CHAPTER_URL");

        /* renamed from: try, reason: not valid java name */
        public static final Property f21985try = new Property(4, Long.TYPE, "finalRefreshData", false, "FINAL_REFRESH_DATA");

        /* renamed from: case, reason: not valid java name */
        public static final Property f21976case = new Property(5, String.class, "coverUrl", false, "COVER_URL");

        /* renamed from: else, reason: not valid java name */
        public static final Property f21979else = new Property(6, String.class, "author", false, "AUTHOR");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f21981goto = new Property(7, String.class, "introduce", false, "INTRODUCE");

        /* renamed from: this, reason: not valid java name */
        public static final Property f21984this = new Property(8, String.class, pk0.Cdo.f5085new, false, "ORIGIN");

        /* renamed from: break, reason: not valid java name */
        public static final Property f21975break = new Property(9, String.class, "kind", false, "KIND");

        /* renamed from: catch, reason: not valid java name */
        public static final Property f21977catch = new Property(10, Long.class, "download", false, "DOWNLOAD");
    }

    public ComicInfoBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25951for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"COMIC_INFO_BEAN\" (\"NAME\" TEXT,\"TAG\" TEXT,\"NOTE_URL\" TEXT PRIMARY KEY NOT NULL ,\"CHAPTER_URL\" TEXT,\"FINAL_REFRESH_DATA\" INTEGER NOT NULL ,\"COVER_URL\" TEXT,\"AUTHOR\" TEXT,\"INTRODUCE\" TEXT,\"ORIGIN\" TEXT,\"KIND\" TEXT,\"DOWNLOAD\" INTEGER);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25952new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COMIC_INFO_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(ComicInfoBean comicInfoBean, long j) {
        return comicInfoBean.getNoteUrl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ComicInfoBean comicInfoBean) {
        return comicInfoBean.getNoteUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ComicInfoBean comicInfoBean) {
        sQLiteStatement.clearBindings();
        String name = comicInfoBean.getName();
        if (name != null) {
            sQLiteStatement.bindString(1, name);
        }
        String tag = comicInfoBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(2, tag);
        }
        String noteUrl = comicInfoBean.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(3, noteUrl);
        }
        String chapterUrl = comicInfoBean.getChapterUrl();
        if (chapterUrl != null) {
            sQLiteStatement.bindString(4, chapterUrl);
        }
        sQLiteStatement.bindLong(5, comicInfoBean.getFinalRefreshData());
        String coverUrl = comicInfoBean.getCoverUrl();
        if (coverUrl != null) {
            sQLiteStatement.bindString(6, coverUrl);
        }
        String author = comicInfoBean.getAuthor();
        if (author != null) {
            sQLiteStatement.bindString(7, author);
        }
        String introduce = comicInfoBean.getIntroduce();
        if (introduce != null) {
            sQLiteStatement.bindString(8, introduce);
        }
        String origin = comicInfoBean.getOrigin();
        if (origin != null) {
            sQLiteStatement.bindString(9, origin);
        }
        String kind = comicInfoBean.getKind();
        if (kind != null) {
            sQLiteStatement.bindString(10, kind);
        }
        Long download = comicInfoBean.getDownload();
        if (download != null) {
            sQLiteStatement.bindLong(11, download.longValue());
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicInfoBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 1;
        int i4 = i + 2;
        int i5 = i + 3;
        int i6 = i + 5;
        int i7 = i + 6;
        int i8 = i + 7;
        int i9 = i + 8;
        int i10 = i + 9;
        int i11 = i + 10;
        return new ComicInfoBean(cursor.isNull(i2) ? null : cursor.getString(i2), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : cursor.getString(i4), cursor.isNull(i5) ? null : cursor.getString(i5), cursor.getLong(i + 4), cursor.isNull(i6) ? null : cursor.getString(i6), cursor.isNull(i7) ? null : cursor.getString(i7), cursor.isNull(i8) ? null : cursor.getString(i8), cursor.isNull(i9) ? null : cursor.getString(i9), cursor.isNull(i10) ? null : cursor.getString(i10), cursor.isNull(i11) ? null : Long.valueOf(cursor.getLong(i11)));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ComicInfoBean comicInfoBean, int i) {
        int i2 = i + 0;
        comicInfoBean.setName(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        comicInfoBean.setTag(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        comicInfoBean.setNoteUrl(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        comicInfoBean.setChapterUrl(cursor.isNull(i5) ? null : cursor.getString(i5));
        comicInfoBean.setFinalRefreshData(cursor.getLong(i + 4));
        int i6 = i + 5;
        comicInfoBean.setCoverUrl(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 6;
        comicInfoBean.setAuthor(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 7;
        comicInfoBean.setIntroduce(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 8;
        comicInfoBean.setOrigin(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 9;
        comicInfoBean.setKind(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 10;
        comicInfoBean.setDownload(cursor.isNull(i11) ? null : Long.valueOf(cursor.getLong(i11)));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ComicInfoBean comicInfoBean) {
        databaseStatement.clearBindings();
        String name = comicInfoBean.getName();
        if (name != null) {
            databaseStatement.bindString(1, name);
        }
        String tag = comicInfoBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(2, tag);
        }
        String noteUrl = comicInfoBean.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(3, noteUrl);
        }
        String chapterUrl = comicInfoBean.getChapterUrl();
        if (chapterUrl != null) {
            databaseStatement.bindString(4, chapterUrl);
        }
        databaseStatement.bindLong(5, comicInfoBean.getFinalRefreshData());
        String coverUrl = comicInfoBean.getCoverUrl();
        if (coverUrl != null) {
            databaseStatement.bindString(6, coverUrl);
        }
        String author = comicInfoBean.getAuthor();
        if (author != null) {
            databaseStatement.bindString(7, author);
        }
        String introduce = comicInfoBean.getIntroduce();
        if (introduce != null) {
            databaseStatement.bindString(8, introduce);
        }
        String origin = comicInfoBean.getOrigin();
        if (origin != null) {
            databaseStatement.bindString(9, origin);
        }
        String kind = comicInfoBean.getKind();
        if (kind != null) {
            databaseStatement.bindString(10, kind);
        }
        Long download = comicInfoBean.getDownload();
        if (download != null) {
            databaseStatement.bindLong(11, download.longValue());
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 2;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(ComicInfoBean comicInfoBean) {
        if (comicInfoBean != null) {
            return comicInfoBean.getNoteUrl();
        }
        return null;
    }

    public ComicInfoBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
