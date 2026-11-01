package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import android.support.v4.p42;
import android.support.v4.wq;
import androidx.exifinterface.media.ExifInterface;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.identityscope.IdentityScope;
import org.greenrobot.greendao.internal.DaoConfig;
import org.greenrobot.greendao.internal.SqlUtils;

/* loaded from: classes2.dex */
public class ComicShelfBeanDao extends AbstractDao<ComicShelfBean, String> {
    public static final String TABLENAME = "COMIC_SHELF_BEAN";

    /* renamed from: do, reason: not valid java name */
    private hw f21986do;

    /* renamed from: if, reason: not valid java name */
    private String f21987if;

    public static class Properties {

        /* renamed from: do, reason: not valid java name */
        public static final Property f21993do = new Property(0, String.class, wq.Cdo.f7669try, true, "NOTE_URL");

        /* renamed from: if, reason: not valid java name */
        public static final Property f21998if = new Property(1, Integer.class, "durChapter", false, "DUR_CHAPTER");

        /* renamed from: for, reason: not valid java name */
        public static final Property f21996for = new Property(2, Integer.class, "durChapterPage", false, "DUR_CHAPTER_PAGE");

        /* renamed from: new, reason: not valid java name */
        public static final Property f22000new = new Property(3, Long.class, "finalDate", false, "FINAL_DATE");

        /* renamed from: try, reason: not valid java name */
        public static final Property f22004try = new Property(4, Boolean.class, "hasUpdate", false, "HAS_UPDATE");

        /* renamed from: case, reason: not valid java name */
        public static final Property f21989case = new Property(5, Integer.class, "newChapters", false, "NEW_CHAPTERS");

        /* renamed from: else, reason: not valid java name */
        public static final Property f21994else = new Property(6, String.class, p42.f4845if, false, "TAG");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f21997goto = new Property(7, Integer.class, "serialNumber", false, "SERIAL_NUMBER");

        /* renamed from: this, reason: not valid java name */
        public static final Property f22002this = new Property(8, Long.class, "finalRefreshData", false, "FINAL_REFRESH_DATA");

        /* renamed from: break, reason: not valid java name */
        public static final Property f21988break = new Property(9, Integer.class, "group", false, "GROUP");

        /* renamed from: catch, reason: not valid java name */
        public static final Property f21990catch = new Property(10, String.class, "durChapterName", false, "DUR_CHAPTER_NAME");

        /* renamed from: class, reason: not valid java name */
        public static final Property f21991class = new Property(11, String.class, "lastChapterName", false, "LAST_CHAPTER_NAME");

        /* renamed from: const, reason: not valid java name */
        public static final Property f21992const = new Property(12, Integer.class, "chapterListSize", false, "CHAPTER_LIST_SIZE");

        /* renamed from: final, reason: not valid java name */
        public static final Property f21995final = new Property(13, String.class, "customCoverPath", false, "CUSTOM_COVER_PATH");

        /* renamed from: super, reason: not valid java name */
        public static final Property f22001super = new Property(14, Boolean.class, "allowUpdate", false, "ALLOW_UPDATE");

        /* renamed from: throw, reason: not valid java name */
        public static final Property f22003throw = new Property(15, String.class, "variable", false, "VARIABLE");

        /* renamed from: while, reason: not valid java name */
        public static final Property f22005while = new Property(16, Long.TYPE, "groupId", false, "GROUP_ID");

        /* renamed from: import, reason: not valid java name */
        public static final Property f21999import = new Property(17, Integer.class, "readMode", false, "READ_MODE");
    }

    public ComicShelfBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25961new(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"COMIC_SHELF_BEAN\" (\"NOTE_URL\" TEXT PRIMARY KEY NOT NULL ,\"DUR_CHAPTER\" INTEGER,\"DUR_CHAPTER_PAGE\" INTEGER,\"FINAL_DATE\" INTEGER,\"HAS_UPDATE\" INTEGER,\"NEW_CHAPTERS\" INTEGER,\"TAG\" TEXT,\"SERIAL_NUMBER\" INTEGER,\"FINAL_REFRESH_DATA\" INTEGER,\"GROUP\" INTEGER,\"DUR_CHAPTER_NAME\" TEXT,\"LAST_CHAPTER_NAME\" TEXT,\"CHAPTER_LIST_SIZE\" INTEGER,\"CUSTOM_COVER_PATH\" TEXT,\"ALLOW_UPDATE\" INTEGER,\"VARIABLE\" TEXT,\"GROUP_ID\" INTEGER NOT NULL ,\"READ_MODE\" INTEGER);");
    }

    /* renamed from: try, reason: not valid java name */
    public static void m25962try(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COMIC_SHELF_BEAN\"");
        database.execSQL(sb.toString());
    }

    /* renamed from: break, reason: not valid java name */
    public ComicShelfBean m25963break(Cursor cursor, boolean z) {
        ComicShelfBean comicShelfBeanLoadCurrent = loadCurrent(cursor, 0, z);
        ComicShelfGroupBean comicShelfGroupBean = (ComicShelfGroupBean) loadCurrentOther(this.f21986do.m3137else(), cursor, getAllColumns().length);
        if (comicShelfGroupBean != null) {
            comicShelfBeanLoadCurrent.setGroupBean(comicShelfGroupBean);
        }
        return comicShelfBeanLoadCurrent;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(ComicShelfBean comicShelfBean) {
        if (comicShelfBean != null) {
            return comicShelfBean.getNoteUrl();
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public ComicShelfBean m25965catch(Long l) {
        assertSinglePk();
        if (l == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(m25969else());
        sb.append("WHERE ");
        SqlUtils.appendColumnsEqValue(sb, ExifInterface.GPS_DIRECTION_TRUE, getPkColumns());
        Cursor cursorRawQuery = this.db.rawQuery(sb.toString(), new String[]{l.toString()});
        try {
            if (!cursorRawQuery.moveToFirst()) {
                return null;
            }
            if (cursorRawQuery.isLast()) {
                return m25963break(cursorRawQuery, true);
            }
            throw new IllegalStateException("Expected unique result, but count was " + cursorRawQuery.getCount());
        } finally {
            cursorRawQuery.close();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public List<ComicShelfBean> m25966class(Cursor cursor) {
        try {
            return m25975this(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public List<ComicShelfBean> m25967const(String str, String... strArr) {
        return m25966class(this.db.rawQuery(m25969else() + str, strArr));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void attachEntity(ComicShelfBean comicShelfBean) {
        super.attachEntity(comicShelfBean);
        comicShelfBean.__setDaoSession(this.f21986do);
    }

    /* renamed from: else, reason: not valid java name */
    public String m25969else() {
        if (this.f21987if == null) {
            StringBuilder sb = new StringBuilder("SELECT ");
            SqlUtils.appendColumns(sb, ExifInterface.GPS_DIRECTION_TRUE, getAllColumns());
            sb.append(',');
            SqlUtils.appendColumns(sb, "T0", this.f21986do.m3137else().getAllColumns());
            sb.append(" FROM COMIC_SHELF_BEAN T");
            sb.append(" LEFT JOIN COMIC_SHELF_GROUP_BEAN T0 ON T.\"GROUP_ID\"=T0.\"_id\"");
            sb.append(' ');
            this.f21987if = sb.toString();
        }
        return this.f21987if;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicShelfBean readEntity(Cursor cursor, int i) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        int i2 = i + 0;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 1;
        Integer numValueOf = cursor.isNull(i3) ? null : Integer.valueOf(cursor.getInt(i3));
        int i4 = i + 2;
        Integer numValueOf2 = cursor.isNull(i4) ? null : Integer.valueOf(cursor.getInt(i4));
        int i5 = i + 3;
        Long lValueOf = cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5));
        int i6 = i + 4;
        if (cursor.isNull(i6)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(i6) != 0);
        }
        int i7 = i + 5;
        Integer numValueOf3 = cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7));
        int i8 = i + 6;
        String string2 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = i + 7;
        Integer numValueOf4 = cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9));
        int i10 = i + 8;
        Long lValueOf2 = cursor.isNull(i10) ? null : Long.valueOf(cursor.getLong(i10));
        int i11 = i + 9;
        Integer numValueOf5 = cursor.isNull(i11) ? null : Integer.valueOf(cursor.getInt(i11));
        int i12 = i + 10;
        String string3 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 11;
        String string4 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 12;
        Integer numValueOf6 = cursor.isNull(i14) ? null : Integer.valueOf(cursor.getInt(i14));
        int i15 = i + 13;
        String string5 = cursor.isNull(i15) ? null : cursor.getString(i15);
        int i16 = i + 14;
        if (cursor.isNull(i16)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(i16) != 0);
        }
        int i17 = i + 15;
        String string6 = cursor.isNull(i17) ? null : cursor.getString(i17);
        int i18 = i + 17;
        return new ComicShelfBean(string, numValueOf, numValueOf2, lValueOf, boolValueOf, numValueOf3, string2, numValueOf4, lValueOf2, numValueOf5, string3, string4, numValueOf6, string5, boolValueOf2, string6, cursor.getLong(i + 16), cursor.isNull(i18) ? null : Integer.valueOf(cursor.getInt(i18)));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ComicShelfBean comicShelfBean) {
        databaseStatement.clearBindings();
        String noteUrl = comicShelfBean.getNoteUrl();
        if (noteUrl != null) {
            databaseStatement.bindString(1, noteUrl);
        }
        if (Integer.valueOf(comicShelfBean.getDurChapter()) != null) {
            databaseStatement.bindLong(2, r0.intValue());
        }
        if (Integer.valueOf(comicShelfBean.getDurChapterPage()) != null) {
            databaseStatement.bindLong(3, r0.intValue());
        }
        Long lValueOf = Long.valueOf(comicShelfBean.getFinalDate());
        if (lValueOf != null) {
            databaseStatement.bindLong(4, lValueOf.longValue());
        }
        Boolean boolValueOf = Boolean.valueOf(comicShelfBean.getHasUpdate());
        if (boolValueOf != null) {
            databaseStatement.bindLong(5, boolValueOf.booleanValue() ? 1L : 0L);
        }
        if (Integer.valueOf(comicShelfBean.getNewChapters()) != null) {
            databaseStatement.bindLong(6, r0.intValue());
        }
        String tag = comicShelfBean.getTag();
        if (tag != null) {
            databaseStatement.bindString(7, tag);
        }
        if (Integer.valueOf(comicShelfBean.getSerialNumber()) != null) {
            databaseStatement.bindLong(8, r0.intValue());
        }
        Long lValueOf2 = Long.valueOf(comicShelfBean.getFinalRefreshData());
        if (lValueOf2 != null) {
            databaseStatement.bindLong(9, lValueOf2.longValue());
        }
        if (Integer.valueOf(comicShelfBean.getGroup()) != null) {
            databaseStatement.bindLong(10, r0.intValue());
        }
        String durChapterName = comicShelfBean.getDurChapterName();
        if (durChapterName != null) {
            databaseStatement.bindString(11, durChapterName);
        }
        String lastChapterName = comicShelfBean.getLastChapterName();
        if (lastChapterName != null) {
            databaseStatement.bindString(12, lastChapterName);
        }
        if (comicShelfBean.getChapterListSize() != null) {
            databaseStatement.bindLong(13, r0.intValue());
        }
        String customCoverPath = comicShelfBean.getCustomCoverPath();
        if (customCoverPath != null) {
            databaseStatement.bindString(14, customCoverPath);
        }
        Boolean allowUpdate = comicShelfBean.getAllowUpdate();
        if (allowUpdate != null) {
            databaseStatement.bindLong(15, allowUpdate.booleanValue() ? 1L : 0L);
        }
        String variable = comicShelfBean.getVariable();
        if (variable != null) {
            databaseStatement.bindString(16, variable);
        }
        databaseStatement.bindLong(17, comicShelfBean.getGroupId());
        if (comicShelfBean.getReadMode() != null) {
            databaseStatement.bindLong(18, r10.intValue());
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ComicShelfBean comicShelfBean) {
        return comicShelfBean.getNoteUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ComicShelfBean comicShelfBean) {
        sQLiteStatement.clearBindings();
        String noteUrl = comicShelfBean.getNoteUrl();
        if (noteUrl != null) {
            sQLiteStatement.bindString(1, noteUrl);
        }
        if (Integer.valueOf(comicShelfBean.getDurChapter()) != null) {
            sQLiteStatement.bindLong(2, r0.intValue());
        }
        if (Integer.valueOf(comicShelfBean.getDurChapterPage()) != null) {
            sQLiteStatement.bindLong(3, r0.intValue());
        }
        Long lValueOf = Long.valueOf(comicShelfBean.getFinalDate());
        if (lValueOf != null) {
            sQLiteStatement.bindLong(4, lValueOf.longValue());
        }
        Boolean boolValueOf = Boolean.valueOf(comicShelfBean.getHasUpdate());
        if (boolValueOf != null) {
            sQLiteStatement.bindLong(5, boolValueOf.booleanValue() ? 1L : 0L);
        }
        if (Integer.valueOf(comicShelfBean.getNewChapters()) != null) {
            sQLiteStatement.bindLong(6, r0.intValue());
        }
        String tag = comicShelfBean.getTag();
        if (tag != null) {
            sQLiteStatement.bindString(7, tag);
        }
        if (Integer.valueOf(comicShelfBean.getSerialNumber()) != null) {
            sQLiteStatement.bindLong(8, r0.intValue());
        }
        Long lValueOf2 = Long.valueOf(comicShelfBean.getFinalRefreshData());
        if (lValueOf2 != null) {
            sQLiteStatement.bindLong(9, lValueOf2.longValue());
        }
        if (Integer.valueOf(comicShelfBean.getGroup()) != null) {
            sQLiteStatement.bindLong(10, r0.intValue());
        }
        String durChapterName = comicShelfBean.getDurChapterName();
        if (durChapterName != null) {
            sQLiteStatement.bindString(11, durChapterName);
        }
        String lastChapterName = comicShelfBean.getLastChapterName();
        if (lastChapterName != null) {
            sQLiteStatement.bindString(12, lastChapterName);
        }
        if (comicShelfBean.getChapterListSize() != null) {
            sQLiteStatement.bindLong(13, r0.intValue());
        }
        String customCoverPath = comicShelfBean.getCustomCoverPath();
        if (customCoverPath != null) {
            sQLiteStatement.bindString(14, customCoverPath);
        }
        Boolean allowUpdate = comicShelfBean.getAllowUpdate();
        if (allowUpdate != null) {
            sQLiteStatement.bindLong(15, allowUpdate.booleanValue() ? 1L : 0L);
        }
        String variable = comicShelfBean.getVariable();
        if (variable != null) {
            sQLiteStatement.bindString(16, variable);
        }
        sQLiteStatement.bindLong(17, comicShelfBean.getGroupId());
        if (comicShelfBean.getReadMode() != null) {
            sQLiteStatement.bindLong(18, r10.intValue());
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ComicShelfBean comicShelfBean, int i) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        int i2 = i + 0;
        comicShelfBean.setNoteUrl(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        comicShelfBean.setDurChapter(cursor.isNull(i3) ? null : Integer.valueOf(cursor.getInt(i3)));
        int i4 = i + 2;
        comicShelfBean.setDurChapterPage(cursor.isNull(i4) ? null : Integer.valueOf(cursor.getInt(i4)));
        int i5 = i + 3;
        comicShelfBean.setFinalDate(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)));
        int i6 = i + 4;
        if (cursor.isNull(i6)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(i6) != 0);
        }
        comicShelfBean.setHasUpdate(boolValueOf);
        int i7 = i + 5;
        comicShelfBean.setNewChapters(cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7)));
        int i8 = i + 6;
        comicShelfBean.setTag(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        comicShelfBean.setSerialNumber(cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)));
        int i10 = i + 8;
        comicShelfBean.setFinalRefreshData(cursor.isNull(i10) ? null : Long.valueOf(cursor.getLong(i10)));
        int i11 = i + 9;
        comicShelfBean.setGroup(cursor.isNull(i11) ? null : Integer.valueOf(cursor.getInt(i11)));
        int i12 = i + 10;
        comicShelfBean.setDurChapterName(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 11;
        comicShelfBean.setLastChapterName(cursor.isNull(i13) ? null : cursor.getString(i13));
        int i14 = i + 12;
        comicShelfBean.setChapterListSize(cursor.isNull(i14) ? null : Integer.valueOf(cursor.getInt(i14)));
        int i15 = i + 13;
        comicShelfBean.setCustomCoverPath(cursor.isNull(i15) ? null : cursor.getString(i15));
        int i16 = i + 14;
        if (cursor.isNull(i16)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(i16) != 0);
        }
        comicShelfBean.setAllowUpdate(boolValueOf2);
        int i17 = i + 15;
        comicShelfBean.setVariable(cursor.isNull(i17) ? null : cursor.getString(i17));
        comicShelfBean.setGroupId(cursor.getLong(i + 16));
        int i18 = i + 17;
        comicShelfBean.setReadMode(cursor.isNull(i18) ? null : Integer.valueOf(cursor.getInt(i18)));
    }

    /* renamed from: this, reason: not valid java name */
    public List<ComicShelfBean> m25975this(Cursor cursor) {
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList(count);
        if (cursor.moveToFirst()) {
            IdentityScope<K, T> identityScope = this.identityScope;
            if (identityScope != 0) {
                identityScope.lock();
                this.identityScope.reserveRoom(count);
            }
            do {
                try {
                    arrayList.add(m25963break(cursor, false));
                } finally {
                    IdentityScope<K, T> identityScope2 = this.identityScope;
                    if (identityScope2 != 0) {
                        identityScope2.unlock();
                    }
                }
            } while (cursor.moveToNext());
        }
        return arrayList;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 0;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(ComicShelfBean comicShelfBean, long j) {
        return comicShelfBean.getNoteUrl();
    }

    public ComicShelfBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
        this.f21986do = hwVar;
    }
}
