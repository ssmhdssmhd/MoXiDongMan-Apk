package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import com.wsw.cospa.bean.ComicContentImgBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class ComicContentImgBeanDao extends AbstractDao<ComicContentImgBean, String> {
    public static final String TABLENAME = "COMIC_CONTENT_IMG_BEAN";

    public static class Properties {

        /* renamed from: break, reason: not valid java name */
        public static final Property f21963break;

        /* renamed from: case, reason: not valid java name */
        public static final Property f21964case;

        /* renamed from: catch, reason: not valid java name */
        public static final Property f21965catch;

        /* renamed from: class, reason: not valid java name */
        public static final Property f21966class;

        /* renamed from: do, reason: not valid java name */
        public static final Property f21967do = new Property(0, String.class, "imgurl", true, "IMGURL");

        /* renamed from: else, reason: not valid java name */
        public static final Property f21968else;

        /* renamed from: for, reason: not valid java name */
        public static final Property f21969for;

        /* renamed from: goto, reason: not valid java name */
        public static final Property f21970goto;

        /* renamed from: if, reason: not valid java name */
        public static final Property f21971if;

        /* renamed from: new, reason: not valid java name */
        public static final Property f21972new;

        /* renamed from: this, reason: not valid java name */
        public static final Property f21973this;

        /* renamed from: try, reason: not valid java name */
        public static final Property f21974try;

        static {
            Class cls = Integer.TYPE;
            f21971if = new Property(1, cls, "indexPape", false, "INDEX_PAPE");
            f21969for = new Property(2, cls, "maxPage", false, "MAX_PAGE");
            f21972new = new Property(3, cls, "chapterIndex", false, "CHAPTER_INDEX");
            f21974try = new Property(4, String.class, "chapterContentUrl", false, "CHAPTER_CONTENT_URL");
            f21964case = new Property(5, String.class, "chapterText", false, "CHAPTER_TEXT");
            f21968else = new Property(6, String.class, "variable", false, "VARIABLE");
            f21970goto = new Property(7, String.class, "customVariable", false, "CUSTOM_VARIABLE");
            f21973this = new Property(8, String.class, p42.f4845if, false, "TAG");
            f21963break = new Property(9, Boolean.TYPE, "isDownload", false, "IS_DOWNLOAD");
            f21965catch = new Property(10, String.class, "localPath", false, "LOCAL_PATH");
            f21966class = new Property(11, cls, "state", false, "STATE");
        }
    }

    public ComicContentImgBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25941for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"COMIC_CONTENT_IMG_BEAN\" (\"IMGURL\" TEXT PRIMARY KEY NOT NULL ,\"INDEX_PAPE\" INTEGER NOT NULL ,\"MAX_PAGE\" INTEGER NOT NULL ,\"CHAPTER_INDEX\" INTEGER NOT NULL ,\"CHAPTER_CONTENT_URL\" TEXT,\"CHAPTER_TEXT\" TEXT,\"VARIABLE\" TEXT,\"CUSTOM_VARIABLE\" TEXT,\"TAG\" TEXT,\"IS_DOWNLOAD\" INTEGER NOT NULL ,\"LOCAL_PATH\" TEXT,\"STATE\" INTEGER NOT NULL );");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25942new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COMIC_CONTENT_IMG_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(ComicContentImgBean comicContentImgBean, long j) {
        return comicContentImgBean.getImgurl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ComicContentImgBean comicContentImgBean) {
        return comicContentImgBean.getImgurl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ComicContentImgBean comicContentImgBean) {
        sQLiteStatement.clearBindings();
        String imgurl = comicContentImgBean.getImgurl();
        if (imgurl != null) {
            sQLiteStatement.bindString(1, imgurl);
        }
        sQLiteStatement.bindLong(2, comicContentImgBean.getIndexPape());
        sQLiteStatement.bindLong(3, comicContentImgBean.getMaxPage());
        sQLiteStatement.bindLong(4, comicContentImgBean.getChapterIndex());
        String chapterContentUrl = comicContentImgBean.getChapterContentUrl();
        if (chapterContentUrl != null) {
            sQLiteStatement.bindString(5, chapterContentUrl);
        }
        String chapterText = comicContentImgBean.getChapterText();
        if (chapterText != null) {
            sQLiteStatement.bindString(6, chapterText);
        }
        String variable = comicContentImgBean.getVariable();
        if (variable != null) {
            sQLiteStatement.bindString(7, variable);
        }
        String customVariable = comicContentImgBean.getCustomVariable();
        if (customVariable != null) {
            sQLiteStatement.bindString(8, customVariable);
        }
        String tag = comicContentImgBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(9, tag);
        }
        sQLiteStatement.bindLong(10, comicContentImgBean.getIsDownload() ? 1L : 0L);
        String localPath = comicContentImgBean.getLocalPath();
        if (localPath != null) {
            sQLiteStatement.bindString(11, localPath);
        }
        sQLiteStatement.bindLong(12, comicContentImgBean.getState());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicContentImgBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 4;
        int i4 = i + 5;
        int i5 = i + 6;
        int i6 = i + 7;
        int i7 = i + 8;
        int i8 = i + 10;
        return new ComicContentImgBean(cursor.isNull(i2) ? null : cursor.getString(i2), cursor.getInt(i + 1), cursor.getInt(i + 2), cursor.getInt(i + 3), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : cursor.getString(i4), cursor.isNull(i5) ? null : cursor.getString(i5), cursor.isNull(i6) ? null : cursor.getString(i6), cursor.isNull(i7) ? null : cursor.getString(i7), cursor.getShort(i + 9) != 0, cursor.isNull(i8) ? null : cursor.getString(i8), cursor.getInt(i + 11));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ComicContentImgBean comicContentImgBean, int i) {
        int i2 = i + 0;
        comicContentImgBean.setImgurl(cursor.isNull(i2) ? null : cursor.getString(i2));
        comicContentImgBean.setIndexPape(cursor.getInt(i + 1));
        comicContentImgBean.setMaxPage(cursor.getInt(i + 2));
        comicContentImgBean.setChapterIndex(cursor.getInt(i + 3));
        int i3 = i + 4;
        comicContentImgBean.setChapterContentUrl(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 5;
        comicContentImgBean.setChapterText(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 6;
        comicContentImgBean.setVariable(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 7;
        comicContentImgBean.setCustomVariable(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 8;
        comicContentImgBean.setTag(cursor.isNull(i7) ? null : cursor.getString(i7));
        comicContentImgBean.setIsDownload(cursor.getShort(i + 9) != 0);
        int i8 = i + 10;
        comicContentImgBean.setLocalPath(cursor.isNull(i8) ? null : cursor.getString(i8));
        comicContentImgBean.setState(cursor.getInt(i + 11));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ComicContentImgBean comicContentImgBean) {
        databaseStatement.clearBindings();
        String imgurl = comicContentImgBean.getImgurl();
        if (imgurl != null) {
            databaseStatement.bindString(1, imgurl);
        }
        databaseStatement.bindLong(2, comicContentImgBean.getIndexPape());
        databaseStatement.bindLong(3, comicContentImgBean.getMaxPage());
        databaseStatement.bindLong(4, comicContentImgBean.getChapterIndex());
        String chapterContentUrl = comicContentImgBean.getChapterContentUrl();
        if (chapterContentUrl != null) {
            databaseStatement.bindString(5, chapterContentUrl);
        }
        String chapterText = comicContentImgBean.getChapterText();
        if (chapterText != null) {
            databaseStatement.bindString(6, chapterText);
        }
        String variable = comicContentImgBean.getVariable();
        if (variable != null) {
            databaseStatement.bindString(7, variable);
        }
        String customVariable = comicContentImgBean.getCustomVariable();
        if (customVariable != null) {
            databaseStatement.bindString(8, customVariable);
        }
        String tag = comicContentImgBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(9, tag);
        }
        databaseStatement.bindLong(10, comicContentImgBean.getIsDownload() ? 1L : 0L);
        String localPath = comicContentImgBean.getLocalPath();
        if (localPath != null) {
            databaseStatement.bindString(11, localPath);
        }
        databaseStatement.bindLong(12, comicContentImgBean.getState());
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
    public String getKey(ComicContentImgBean comicContentImgBean) {
        if (comicContentImgBean != null) {
            return comicContentImgBean.getImgurl();
        }
        return null;
    }

    public ComicContentImgBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
