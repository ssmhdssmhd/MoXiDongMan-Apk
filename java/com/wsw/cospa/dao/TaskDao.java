package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.sz0;
import android.support.v4.wq;
import com.wsw.cospa.bean.Task;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class TaskDao extends AbstractDao<Task, Long> {
    public static final String TABLENAME = "TASK";

    public static class Properties {

        /* renamed from: break, reason: not valid java name */
        public static final Property f22125break;

        /* renamed from: case, reason: not valid java name */
        public static final Property f22126case;

        /* renamed from: catch, reason: not valid java name */
        public static final Property f22127catch;

        /* renamed from: class, reason: not valid java name */
        public static final Property f22128class;

        /* renamed from: const, reason: not valid java name */
        public static final Property f22129const;

        /* renamed from: else, reason: not valid java name */
        public static final Property f22131else;

        /* renamed from: final, reason: not valid java name */
        public static final Property f22132final;

        /* renamed from: goto, reason: not valid java name */
        public static final Property f22134goto;

        /* renamed from: import, reason: not valid java name */
        public static final Property f22136import;

        /* renamed from: native, reason: not valid java name */
        public static final Property f22137native;

        /* renamed from: public, reason: not valid java name */
        public static final Property f22139public;

        /* renamed from: return, reason: not valid java name */
        public static final Property f22140return;

        /* renamed from: static, reason: not valid java name */
        public static final Property f22141static;

        /* renamed from: super, reason: not valid java name */
        public static final Property f22142super;

        /* renamed from: switch, reason: not valid java name */
        public static final Property f22143switch;

        /* renamed from: this, reason: not valid java name */
        public static final Property f22144this;

        /* renamed from: throw, reason: not valid java name */
        public static final Property f22145throw;

        /* renamed from: try, reason: not valid java name */
        public static final Property f22146try;

        /* renamed from: while, reason: not valid java name */
        public static final Property f22147while;

        /* renamed from: do, reason: not valid java name */
        public static final Property f22130do = new Property(0, Long.class, "id", true, "_id");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22135if = new Property(1, String.class, "key", false, "KEY");

        /* renamed from: for, reason: not valid java name */
        public static final Property f22133for = new Property(2, String.class, "path", false, "PATH");

        /* renamed from: new, reason: not valid java name */
        public static final Property f22138new = new Property(3, String.class, sz0.f6342break, false, "TITLE");

        static {
            Class cls = Integer.TYPE;
            f22146try = new Property(4, cls, "progress", false, "PROGRESS");
            f22126case = new Property(5, cls, "max", false, "MAX");
            f22131else = new Property(6, String.class, "source", false, "SOURCE");
            f22134goto = new Property(7, String.class, wq.Cdo.f7669try, false, "NOTE_URL");
            f22144this = new Property(8, cls, "state", false, "STATE");
            f22125break = new Property(9, String.class, "name", false, "NAME");
            f22127catch = new Property(10, cls, "durChapterIndex", false, "DUR_CHAPTER_INDEX");
            f22128class = new Property(11, String.class, "parentIdString", false, "PARENT_ID_STRING");
            f22129const = new Property(12, String.class, "parentNameString", false, "PARENT_NAME_STRING");
            f22132final = new Property(13, String.class, "chapterId", false, "CHAPTER_ID");
            f22142super = new Property(14, String.class, "durChapterUrl", false, "DUR_CHAPTER_URL");
            f22145throw = new Property(15, String.class, "durChapterName", false, "DUR_CHAPTER_NAME");
            f22147while = new Property(16, String.class, "nextChapterUrl", false, "NEXT_CHAPTER_URL");
            f22136import = new Property(17, String.class, "variable", false, "VARIABLE");
            f22137native = new Property(18, String.class, p42.f4845if, false, "TAG");
            f22139public = new Property(19, Long.class, "start", false, "START");
            f22140return = new Property(20, Long.class, "end", false, "END");
            f22141static = new Property(21, String.class, "comicInfoUrl", false, "COMIC_INFO_URL");
            f22143switch = new Property(22, String.class, "errorMessage", false, "ERROR_MESSAGE");
        }
    }

    public TaskDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26078for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"TASK\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"KEY\" TEXT NOT NULL ,\"PATH\" TEXT NOT NULL ,\"TITLE\" TEXT NOT NULL ,\"PROGRESS\" INTEGER NOT NULL ,\"MAX\" INTEGER NOT NULL ,\"SOURCE\" TEXT,\"NOTE_URL\" TEXT,\"STATE\" INTEGER NOT NULL ,\"NAME\" TEXT,\"DUR_CHAPTER_INDEX\" INTEGER NOT NULL ,\"PARENT_ID_STRING\" TEXT,\"PARENT_NAME_STRING\" TEXT,\"CHAPTER_ID\" TEXT,\"DUR_CHAPTER_URL\" TEXT,\"DUR_CHAPTER_NAME\" TEXT,\"NEXT_CHAPTER_URL\" TEXT,\"VARIABLE\" TEXT,\"TAG\" TEXT,\"START\" INTEGER,\"END\" INTEGER,\"COMIC_INFO_URL\" TEXT,\"ERROR_MESSAGE\" TEXT);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26079new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"TASK\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Long updateKeyAfterInsert(Task task, long j) {
        task.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(Task task) {
        return task.getId() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, Task task) {
        sQLiteStatement.clearBindings();
        Long id = task.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindString(2, task.getKey());
        sQLiteStatement.bindString(3, task.getPath());
        sQLiteStatement.bindString(4, task.getTitle());
        sQLiteStatement.bindLong(5, task.getProgress());
        sQLiteStatement.bindLong(6, task.getMax());
        String source = task.getSource();
        if (source != null) {
            sQLiteStatement.bindString(7, source);
        }
        String noteUrl = task.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(8, noteUrl);
        }
        sQLiteStatement.bindLong(9, task.getState());
        String name = task.getName();
        if (name != null) {
            sQLiteStatement.bindString(10, name);
        }
        sQLiteStatement.bindLong(11, task.getDurChapterIndex());
        String parentIdString = task.getParentIdString();
        if (parentIdString != null) {
            sQLiteStatement.bindString(12, parentIdString);
        }
        String parentNameString = task.getParentNameString();
        if (parentNameString != null) {
            sQLiteStatement.bindString(13, parentNameString);
        }
        String chapterId = task.getChapterId();
        if (chapterId != null) {
            sQLiteStatement.bindString(14, chapterId);
        }
        String durChapterUrl = task.getDurChapterUrl();
        if (durChapterUrl != null) {
            sQLiteStatement.bindString(15, durChapterUrl);
        }
        String durChapterName = task.getDurChapterName();
        if (durChapterName != null) {
            sQLiteStatement.bindString(16, durChapterName);
        }
        String nextChapterUrl = task.getNextChapterUrl();
        if (nextChapterUrl != null) {
            sQLiteStatement.bindString(17, nextChapterUrl);
        }
        String variable = task.getVariable();
        if (variable != null) {
            sQLiteStatement.bindString(18, variable);
        }
        String tag = task.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(19, tag);
        }
        Long start = task.getStart();
        if (start != null) {
            sQLiteStatement.bindLong(20, start.longValue());
        }
        Long end = task.getEnd();
        if (end != null) {
            sQLiteStatement.bindLong(21, end.longValue());
        }
        String comicInfoUrl = task.getComicInfoUrl();
        if (comicInfoUrl != null) {
            sQLiteStatement.bindString(22, comicInfoUrl);
        }
        String errorMessage = task.getErrorMessage();
        if (errorMessage != null) {
            sQLiteStatement.bindString(23, errorMessage);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Task readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        String string = cursor.getString(i + 1);
        String string2 = cursor.getString(i + 2);
        String string3 = cursor.getString(i + 3);
        int i3 = cursor.getInt(i + 4);
        int i4 = cursor.getInt(i + 5);
        int i5 = i + 6;
        String string4 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 7;
        String string5 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = cursor.getInt(i + 8);
        int i8 = i + 9;
        String string6 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = cursor.getInt(i + 10);
        int i10 = i + 11;
        String string7 = cursor.isNull(i10) ? null : cursor.getString(i10);
        int i11 = i + 12;
        String string8 = cursor.isNull(i11) ? null : cursor.getString(i11);
        int i12 = i + 13;
        String string9 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 14;
        String string10 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 15;
        String string11 = cursor.isNull(i14) ? null : cursor.getString(i14);
        int i15 = i + 16;
        String string12 = cursor.isNull(i15) ? null : cursor.getString(i15);
        int i16 = i + 17;
        String string13 = cursor.isNull(i16) ? null : cursor.getString(i16);
        int i17 = i + 18;
        String string14 = cursor.isNull(i17) ? null : cursor.getString(i17);
        int i18 = i + 19;
        Long lValueOf2 = cursor.isNull(i18) ? null : Long.valueOf(cursor.getLong(i18));
        int i19 = i + 20;
        Long lValueOf3 = cursor.isNull(i19) ? null : Long.valueOf(cursor.getLong(i19));
        int i20 = i + 21;
        String string15 = cursor.isNull(i20) ? null : cursor.getString(i20);
        int i21 = i + 22;
        return new Task(lValueOf, string, string2, string3, i3, i4, string4, string5, i7, string6, i9, string7, string8, string9, string10, string11, string12, string13, string14, lValueOf2, lValueOf3, string15, cursor.isNull(i21) ? null : cursor.getString(i21));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, Task task, int i) {
        int i2 = i + 0;
        task.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        task.setKey(cursor.getString(i + 1));
        task.setPath(cursor.getString(i + 2));
        task.setTitle(cursor.getString(i + 3));
        task.setProgress(cursor.getInt(i + 4));
        task.setMax(cursor.getInt(i + 5));
        int i3 = i + 6;
        task.setSource(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 7;
        task.setNoteUrl(cursor.isNull(i4) ? null : cursor.getString(i4));
        task.setState(cursor.getInt(i + 8));
        int i5 = i + 9;
        task.setName(cursor.isNull(i5) ? null : cursor.getString(i5));
        task.setDurChapterIndex(cursor.getInt(i + 10));
        int i6 = i + 11;
        task.setParentIdString(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 12;
        task.setParentNameString(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 13;
        task.setChapterId(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 14;
        task.setDurChapterUrl(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 15;
        task.setDurChapterName(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 16;
        task.setNextChapterUrl(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 17;
        task.setVariable(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 18;
        task.setTag(cursor.isNull(i13) ? null : cursor.getString(i13));
        int i14 = i + 19;
        task.setStart(cursor.isNull(i14) ? null : Long.valueOf(cursor.getLong(i14)));
        int i15 = i + 20;
        task.setEnd(cursor.isNull(i15) ? null : Long.valueOf(cursor.getLong(i15)));
        int i16 = i + 21;
        task.setComicInfoUrl(cursor.isNull(i16) ? null : cursor.getString(i16));
        int i17 = i + 22;
        task.setErrorMessage(cursor.isNull(i17) ? null : cursor.getString(i17));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, Task task) {
        databaseStatement.clearBindings();
        Long id = task.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        databaseStatement.bindString(2, task.getKey());
        databaseStatement.bindString(3, task.getPath());
        databaseStatement.bindString(4, task.getTitle());
        databaseStatement.bindLong(5, task.getProgress());
        databaseStatement.bindLong(6, task.getMax());
        String source = task.getSource();
        if (source != null) {
            databaseStatement.bindString(7, source);
        }
        String noteUrl = task.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(8, noteUrl);
        }
        databaseStatement.bindLong(9, task.getState());
        String name = task.getName();
        if (name != null) {
            databaseStatement.bindString(10, name);
        }
        databaseStatement.bindLong(11, task.getDurChapterIndex());
        String parentIdString = task.getParentIdString();
        if (parentIdString != null) {
            databaseStatement.bindString(12, parentIdString);
        }
        String parentNameString = task.getParentNameString();
        if (parentNameString != null) {
            databaseStatement.bindString(13, parentNameString);
        }
        String chapterId = task.getChapterId();
        if (chapterId != null) {
            databaseStatement.bindString(14, chapterId);
        }
        String durChapterUrl = task.getDurChapterUrl();
        if (durChapterUrl != null) {
            databaseStatement.bindString(15, durChapterUrl);
        }
        String durChapterName = task.getDurChapterName();
        if (durChapterName != null) {
            databaseStatement.bindString(16, durChapterName);
        }
        String nextChapterUrl = task.getNextChapterUrl();
        if (nextChapterUrl != null) {
            databaseStatement.bindString(17, nextChapterUrl);
        }
        String variable = task.getVariable();
        if (variable != null) {
            databaseStatement.bindString(18, variable);
        }
        String tag = task.getTag();
        if (tag != null) {
            databaseStatement.bindString(19, tag);
        }
        Long start = task.getStart();
        if (start != null) {
            databaseStatement.bindLong(20, start.longValue());
        }
        Long end = task.getEnd();
        if (end != null) {
            databaseStatement.bindLong(21, end.longValue());
        }
        String comicInfoUrl = task.getComicInfoUrl();
        if (comicInfoUrl != null) {
            databaseStatement.bindString(22, comicInfoUrl);
        }
        String errorMessage = task.getErrorMessage();
        if (errorMessage != null) {
            databaseStatement.bindString(23, errorMessage);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long readKey(Cursor cursor, int i) {
        int i2 = i + 0;
        if (cursor.isNull(i2)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i2));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long getKey(Task task) {
        if (task != null) {
            return task.getId();
        }
        return null;
    }

    public TaskDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
