package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.wq;
import com.wsw.cospa.bean.ChapterListBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class ChapterListBeanDao extends AbstractDao<ChapterListBean, String> {
    public static final String TABLENAME = "CHAPTER_LIST_BEAN";

    public static class Properties {

        /* renamed from: final, reason: not valid java name */
        public static final Property f21950final;

        /* renamed from: super, reason: not valid java name */
        public static final Property f21955super;

        /* renamed from: throw, reason: not valid java name */
        public static final Property f21957throw;

        /* renamed from: do, reason: not valid java name */
        public static final Property f21948do = new Property(0, String.class, wq.Cdo.f7669try, false, "NOTE_URL");

        /* renamed from: if, reason: not valid java name */
        public static final Property f21953if = new Property(1, Integer.TYPE, "durChapterIndex", false, "DUR_CHAPTER_INDEX");

        /* renamed from: for, reason: not valid java name */
        public static final Property f21951for = new Property(2, String.class, "parentIdString", false, "PARENT_ID_STRING");

        /* renamed from: new, reason: not valid java name */
        public static final Property f21954new = new Property(3, String.class, "parentNameString", false, "PARENT_NAME_STRING");

        /* renamed from: try, reason: not valid java name */
        public static final Property f21958try = new Property(4, String.class, "chapterId", true, "CHAPTER_ID");

        /* renamed from: case, reason: not valid java name */
        public static final Property f21944case = new Property(5, String.class, "durChapterUrl", false, "DUR_CHAPTER_URL");

        /* renamed from: else, reason: not valid java name */
        public static final Property f21949else = new Property(6, String.class, "durChapterName", false, "DUR_CHAPTER_NAME");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f21952goto = new Property(7, String.class, "nextChapterUrl", false, "NEXT_CHAPTER_URL");

        /* renamed from: this, reason: not valid java name */
        public static final Property f21956this = new Property(8, String.class, "variable", false, "VARIABLE");

        /* renamed from: break, reason: not valid java name */
        public static final Property f21943break = new Property(9, String.class, p42.f4845if, false, "TAG");

        /* renamed from: catch, reason: not valid java name */
        public static final Property f21945catch = new Property(10, Long.class, "start", false, "START");

        /* renamed from: class, reason: not valid java name */
        public static final Property f21946class = new Property(11, Long.class, "end", false, "END");

        /* renamed from: const, reason: not valid java name */
        public static final Property f21947const = new Property(12, String.class, "comicInfoUrl", false, "COMIC_INFO_URL");

        static {
            Class cls = Boolean.TYPE;
            f21950final = new Property(13, cls, "complete", false, "COMPLETE");
            f21955super = new Property(14, cls, "download", false, "DOWNLOAD");
            f21957throw = new Property(15, Long.TYPE, "tid", false, "TID");
        }
    }

    public ChapterListBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25921for(Database database, boolean z) throws SQLException {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"CHAPTER_LIST_BEAN\" (\"NOTE_URL\" TEXT,\"DUR_CHAPTER_INDEX\" INTEGER NOT NULL ,\"PARENT_ID_STRING\" TEXT,\"PARENT_NAME_STRING\" TEXT,\"CHAPTER_ID\" TEXT PRIMARY KEY NOT NULL ,\"DUR_CHAPTER_URL\" TEXT,\"DUR_CHAPTER_NAME\" TEXT,\"NEXT_CHAPTER_URL\" TEXT,\"VARIABLE\" TEXT,\"TAG\" TEXT,\"START\" INTEGER,\"END\" INTEGER,\"COMIC_INFO_URL\" TEXT,\"COMPLETE\" INTEGER NOT NULL ,\"DOWNLOAD\" INTEGER NOT NULL ,\"TID\" INTEGER NOT NULL );");
        database.execSQL("CREATE UNIQUE INDEX " + str + "IDX_CHAPTER_LIST_BEAN_CHAPTER_ID_DESC_DUR_CHAPTER_URL_DESC ON \"CHAPTER_LIST_BEAN\" (\"CHAPTER_ID\" DESC,\"DUR_CHAPTER_URL\" DESC);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25922new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"CHAPTER_LIST_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(ChapterListBean chapterListBean, long j) {
        return chapterListBean.getChapterId();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ChapterListBean chapterListBean) {
        return chapterListBean.getChapterId() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ChapterListBean chapterListBean) {
        sQLiteStatement.clearBindings();
        String noteUrl = chapterListBean.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(1, noteUrl);
        }
        sQLiteStatement.bindLong(2, chapterListBean.getDurChapterIndex());
        String parentIdString = chapterListBean.getParentIdString();
        if (parentIdString != null) {
            sQLiteStatement.bindString(3, parentIdString);
        }
        String parentNameString = chapterListBean.getParentNameString();
        if (parentNameString != null) {
            sQLiteStatement.bindString(4, parentNameString);
        }
        String chapterId = chapterListBean.getChapterId();
        if (chapterId != null) {
            sQLiteStatement.bindString(5, chapterId);
        }
        String durChapterUrl = chapterListBean.getDurChapterUrl();
        if (durChapterUrl != null) {
            sQLiteStatement.bindString(6, durChapterUrl);
        }
        String durChapterName = chapterListBean.getDurChapterName();
        if (durChapterName != null) {
            sQLiteStatement.bindString(7, durChapterName);
        }
        String nextChapterUrl = chapterListBean.getNextChapterUrl();
        if (nextChapterUrl != null) {
            sQLiteStatement.bindString(8, nextChapterUrl);
        }
        String variable = chapterListBean.getVariable();
        if (variable != null) {
            sQLiteStatement.bindString(9, variable);
        }
        String tag = chapterListBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(10, tag);
        }
        Long start = chapterListBean.getStart();
        if (start != null) {
            sQLiteStatement.bindLong(11, start.longValue());
        }
        Long end = chapterListBean.getEnd();
        if (end != null) {
            sQLiteStatement.bindLong(12, end.longValue());
        }
        String comicInfoUrl = chapterListBean.getComicInfoUrl();
        if (comicInfoUrl != null) {
            sQLiteStatement.bindString(13, comicInfoUrl);
        }
        sQLiteStatement.bindLong(14, chapterListBean.getComplete() ? 1L : 0L);
        sQLiteStatement.bindLong(15, chapterListBean.getDownload() ? 1L : 0L);
        sQLiteStatement.bindLong(16, chapterListBean.getTid());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ChapterListBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 2;
        int i4 = i + 3;
        int i5 = i + 4;
        int i6 = i + 5;
        int i7 = i + 6;
        int i8 = i + 7;
        int i9 = i + 8;
        int i10 = i + 9;
        int i11 = i + 10;
        int i12 = i + 11;
        int i13 = i + 12;
        return new ChapterListBean(cursor.isNull(i2) ? null : cursor.getString(i2), cursor.getInt(i + 1), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : cursor.getString(i4), cursor.isNull(i5) ? null : cursor.getString(i5), cursor.isNull(i6) ? null : cursor.getString(i6), cursor.isNull(i7) ? null : cursor.getString(i7), cursor.isNull(i8) ? null : cursor.getString(i8), cursor.isNull(i9) ? null : cursor.getString(i9), cursor.isNull(i10) ? null : cursor.getString(i10), cursor.isNull(i11) ? null : Long.valueOf(cursor.getLong(i11)), cursor.isNull(i12) ? null : Long.valueOf(cursor.getLong(i12)), cursor.isNull(i13) ? null : cursor.getString(i13), cursor.getShort(i + 13) != 0, cursor.getShort(i + 14) != 0, cursor.getLong(i + 15));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ChapterListBean chapterListBean, int i) {
        int i2 = i + 0;
        chapterListBean.setNoteUrl(cursor.isNull(i2) ? null : cursor.getString(i2));
        chapterListBean.setDurChapterIndex(cursor.getInt(i + 1));
        int i3 = i + 2;
        chapterListBean.setParentIdString(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 3;
        chapterListBean.setParentNameString(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 4;
        chapterListBean.setChapterId(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 5;
        chapterListBean.setDurChapterUrl(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 6;
        chapterListBean.setDurChapterName(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 7;
        chapterListBean.setNextChapterUrl(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 8;
        chapterListBean.setVariable(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 9;
        chapterListBean.setTag(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 10;
        chapterListBean.setStart(cursor.isNull(i11) ? null : Long.valueOf(cursor.getLong(i11)));
        int i12 = i + 11;
        chapterListBean.setEnd(cursor.isNull(i12) ? null : Long.valueOf(cursor.getLong(i12)));
        int i13 = i + 12;
        chapterListBean.setComicInfoUrl(cursor.isNull(i13) ? null : cursor.getString(i13));
        chapterListBean.setComplete(cursor.getShort(i + 13) != 0);
        chapterListBean.setDownload(cursor.getShort(i + 14) != 0);
        chapterListBean.setTid(cursor.getLong(i + 15));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ChapterListBean chapterListBean) {
        databaseStatement.clearBindings();
        String noteUrl = chapterListBean.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(1, noteUrl);
        }
        databaseStatement.bindLong(2, chapterListBean.getDurChapterIndex());
        String parentIdString = chapterListBean.getParentIdString();
        if (parentIdString != null) {
            databaseStatement.bindString(3, parentIdString);
        }
        String parentNameString = chapterListBean.getParentNameString();
        if (parentNameString != null) {
            databaseStatement.bindString(4, parentNameString);
        }
        String chapterId = chapterListBean.getChapterId();
        if (chapterId != null) {
            databaseStatement.bindString(5, chapterId);
        }
        String durChapterUrl = chapterListBean.getDurChapterUrl();
        if (durChapterUrl != null) {
            databaseStatement.bindString(6, durChapterUrl);
        }
        String durChapterName = chapterListBean.getDurChapterName();
        if (durChapterName != null) {
            databaseStatement.bindString(7, durChapterName);
        }
        String nextChapterUrl = chapterListBean.getNextChapterUrl();
        if (nextChapterUrl != null) {
            databaseStatement.bindString(8, nextChapterUrl);
        }
        String variable = chapterListBean.getVariable();
        if (variable != null) {
            databaseStatement.bindString(9, variable);
        }
        String tag = chapterListBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(10, tag);
        }
        Long start = chapterListBean.getStart();
        if (start != null) {
            databaseStatement.bindLong(11, start.longValue());
        }
        Long end = chapterListBean.getEnd();
        if (end != null) {
            databaseStatement.bindLong(12, end.longValue());
        }
        String comicInfoUrl = chapterListBean.getComicInfoUrl();
        if (comicInfoUrl != null) {
            databaseStatement.bindString(13, comicInfoUrl);
        }
        databaseStatement.bindLong(14, chapterListBean.getComplete() ? 1L : 0L);
        databaseStatement.bindLong(15, chapterListBean.getDownload() ? 1L : 0L);
        databaseStatement.bindLong(16, chapterListBean.getTid());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 4;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(ChapterListBean chapterListBean) {
        if (chapterListBean != null) {
            return chapterListBean.getChapterId();
        }
        return null;
    }

    public ChapterListBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
