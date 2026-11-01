package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.wq;
import com.wsw.cospa.bean.ComicContentBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class ComicContentBeanDao extends AbstractDao<ComicContentBean, String> {
    public static final String TABLENAME = "COMIC_CONTENT_BEAN";

    public static class Properties {

        /* renamed from: do, reason: not valid java name */
        public static final Property f21959do = new Property(0, String.class, wq.Cdo.f7669try, false, "NOTE_URL");

        /* renamed from: if, reason: not valid java name */
        public static final Property f21961if = new Property(1, String.class, "durChapterUrl", true, "DUR_CHAPTER_URL");

        /* renamed from: for, reason: not valid java name */
        public static final Property f21960for = new Property(2, Integer.TYPE, "durChapterIndex", false, "DUR_CHAPTER_INDEX");

        /* renamed from: new, reason: not valid java name */
        public static final Property f21962new = new Property(3, String.class, p42.f4845if, false, "TAG");
    }

    public ComicContentBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25931for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"COMIC_CONTENT_BEAN\" (\"NOTE_URL\" TEXT,\"DUR_CHAPTER_URL\" TEXT PRIMARY KEY NOT NULL ,\"DUR_CHAPTER_INDEX\" INTEGER NOT NULL ,\"TAG\" TEXT);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25932new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COMIC_CONTENT_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(ComicContentBean comicContentBean, long j) {
        return comicContentBean.getDurChapterUrl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ComicContentBean comicContentBean) {
        return comicContentBean.getDurChapterUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ComicContentBean comicContentBean) {
        sQLiteStatement.clearBindings();
        String noteUrl = comicContentBean.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(1, noteUrl);
        }
        String durChapterUrl = comicContentBean.getDurChapterUrl();
        if (durChapterUrl != null) {
            sQLiteStatement.bindString(2, durChapterUrl);
        }
        sQLiteStatement.bindLong(3, comicContentBean.getDurChapterIndex());
        String tag = comicContentBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(4, tag);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicContentBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 1;
        String string2 = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = cursor.getInt(i + 2);
        int i5 = i + 3;
        return new ComicContentBean(string, string2, i4, cursor.isNull(i5) ? null : cursor.getString(i5));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ComicContentBean comicContentBean, int i) {
        int i2 = i + 0;
        comicContentBean.setNoteUrl(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        comicContentBean.setDurChapterUrl(cursor.isNull(i3) ? null : cursor.getString(i3));
        comicContentBean.setDurChapterIndex(cursor.getInt(i + 2));
        int i4 = i + 3;
        comicContentBean.setTag(cursor.isNull(i4) ? null : cursor.getString(i4));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ComicContentBean comicContentBean) {
        databaseStatement.clearBindings();
        String noteUrl = comicContentBean.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(1, noteUrl);
        }
        String durChapterUrl = comicContentBean.getDurChapterUrl();
        if (durChapterUrl != null) {
            databaseStatement.bindString(2, durChapterUrl);
        }
        databaseStatement.bindLong(3, comicContentBean.getDurChapterIndex());
        String tag = comicContentBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(4, tag);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 1;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(ComicContentBean comicContentBean) {
        if (comicContentBean != null) {
            return comicContentBean.getDurChapterUrl();
        }
        return null;
    }

    public ComicContentBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
