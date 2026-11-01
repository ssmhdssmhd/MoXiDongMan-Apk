package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import com.wsw.cospa.bean.RipeFile;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class RipeFileDao extends AbstractDao<RipeFile, String> {
    public static final String TABLENAME = "RIPE_FILE";

    public static class Properties {

        /* renamed from: break, reason: not valid java name */
        public static final Property f22095break;

        /* renamed from: catch, reason: not valid java name */
        public static final Property f22097catch;

        /* renamed from: class, reason: not valid java name */
        public static final Property f22098class;

        /* renamed from: const, reason: not valid java name */
        public static final Property f22099const;

        /* renamed from: final, reason: not valid java name */
        public static final Property f22102final;

        /* renamed from: this, reason: not valid java name */
        public static final Property f22107this;

        /* renamed from: do, reason: not valid java name */
        public static final Property f22100do = new Property(0, Boolean.TYPE, "isSelected", false, "IS_SELECTED");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22105if = new Property(1, String.class, "name", false, "NAME");

        /* renamed from: for, reason: not valid java name */
        public static final Property f22103for = new Property(2, String.class, "size", false, "SIZE");

        /* renamed from: new, reason: not valid java name */
        public static final Property f22106new = new Property(3, String.class, "date", false, "DATE");

        /* renamed from: try, reason: not valid java name */
        public static final Property f22108try = new Property(4, String.class, "suffix", false, "SUFFIX");

        /* renamed from: case, reason: not valid java name */
        public static final Property f22096case = new Property(5, String.class, "path", true, "PATH");

        /* renamed from: else, reason: not valid java name */
        public static final Property f22101else = new Property(6, Boolean.class, "isDirectory", false, "IS_DIRECTORY");

        /* renamed from: goto, reason: not valid java name */
        public static final Property f22104goto = new Property(7, Integer.class, "childCount", false, "CHILD_COUNT");

        static {
            Class cls = Integer.TYPE;
            f22107this = new Property(8, cls, "indexPape", false, "INDEX_PAPE");
            f22095break = new Property(9, cls, "maxPage", false, "MAX_PAGE");
            f22097catch = new Property(10, String.class, "parentName", false, "PARENT_NAME");
            f22098class = new Property(11, String.class, "parentPath", false, "PARENT_PATH");
            f22099const = new Property(12, String.class, "currPagePath", false, "CURR_PAGE_PATH");
            f22102final = new Property(13, String.class, "rootPath", false, "ROOT_PATH");
        }
    }

    public RipeFileDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26058for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"RIPE_FILE\" (\"IS_SELECTED\" INTEGER NOT NULL ,\"NAME\" TEXT,\"SIZE\" TEXT,\"DATE\" TEXT,\"SUFFIX\" TEXT,\"PATH\" TEXT PRIMARY KEY NOT NULL ,\"IS_DIRECTORY\" INTEGER,\"CHILD_COUNT\" INTEGER,\"INDEX_PAPE\" INTEGER NOT NULL ,\"MAX_PAGE\" INTEGER NOT NULL ,\"PARENT_NAME\" TEXT,\"PARENT_PATH\" TEXT,\"CURR_PAGE_PATH\" TEXT,\"ROOT_PATH\" TEXT);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26059new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"RIPE_FILE\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(RipeFile ripeFile, long j) {
        return ripeFile.getPath();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(RipeFile ripeFile) {
        return ripeFile.getPath() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, RipeFile ripeFile) {
        sQLiteStatement.clearBindings();
        sQLiteStatement.bindLong(1, ripeFile.getIsSelected() ? 1L : 0L);
        String name = ripeFile.getName();
        if (name != null) {
            sQLiteStatement.bindString(2, name);
        }
        String size = ripeFile.getSize();
        if (size != null) {
            sQLiteStatement.bindString(3, size);
        }
        String date = ripeFile.getDate();
        if (date != null) {
            sQLiteStatement.bindString(4, date);
        }
        String suffix = ripeFile.getSuffix();
        if (suffix != null) {
            sQLiteStatement.bindString(5, suffix);
        }
        String path = ripeFile.getPath();
        if (path != null) {
            sQLiteStatement.bindString(6, path);
        }
        Boolean isDirectory = ripeFile.getIsDirectory();
        if (isDirectory != null) {
            sQLiteStatement.bindLong(7, isDirectory.booleanValue() ? 1L : 0L);
        }
        if (Integer.valueOf(ripeFile.getChildCount()) != null) {
            sQLiteStatement.bindLong(8, r0.intValue());
        }
        sQLiteStatement.bindLong(9, ripeFile.getIndexPape());
        sQLiteStatement.bindLong(10, ripeFile.getMaxPage());
        String parentName = ripeFile.getParentName();
        if (parentName != null) {
            sQLiteStatement.bindString(11, parentName);
        }
        String parentPath = ripeFile.getParentPath();
        if (parentPath != null) {
            sQLiteStatement.bindString(12, parentPath);
        }
        String currPagePath = ripeFile.getCurrPagePath();
        if (currPagePath != null) {
            sQLiteStatement.bindString(13, currPagePath);
        }
        String rootPath = ripeFile.getRootPath();
        if (rootPath != null) {
            sQLiteStatement.bindString(14, rootPath);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public RipeFile readEntity(Cursor cursor, int i) {
        Boolean boolValueOf;
        boolean z = cursor.getShort(i + 0) != 0;
        int i2 = i + 1;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 2;
        String string2 = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 3;
        String string3 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 4;
        String string4 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 5;
        String string5 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i + 6;
        if (cursor.isNull(i7)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(i7) != 0);
        }
        int i8 = i + 7;
        Integer numValueOf = cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8));
        int i9 = cursor.getInt(i + 8);
        int i10 = cursor.getInt(i + 9);
        int i11 = i + 10;
        String string6 = cursor.isNull(i11) ? null : cursor.getString(i11);
        int i12 = i + 11;
        String string7 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 12;
        String string8 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 13;
        return new RipeFile(z, string, string2, string3, string4, string5, boolValueOf, numValueOf, i9, i10, string6, string7, string8, cursor.isNull(i14) ? null : cursor.getString(i14));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, RipeFile ripeFile, int i) {
        Boolean boolValueOf;
        ripeFile.setIsSelected(cursor.getShort(i + 0) != 0);
        int i2 = i + 1;
        ripeFile.setName(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 2;
        ripeFile.setSize(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 3;
        ripeFile.setDate(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 4;
        ripeFile.setSuffix(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 5;
        ripeFile.setPath(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 6;
        if (cursor.isNull(i7)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(i7) != 0);
        }
        ripeFile.setIsDirectory(boolValueOf);
        int i8 = i + 7;
        ripeFile.setChildCount(cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8)));
        ripeFile.setIndexPape(cursor.getInt(i + 8));
        ripeFile.setMaxPage(cursor.getInt(i + 9));
        int i9 = i + 10;
        ripeFile.setParentName(cursor.isNull(i9) ? null : cursor.getString(i9));
        int i10 = i + 11;
        ripeFile.setParentPath(cursor.isNull(i10) ? null : cursor.getString(i10));
        int i11 = i + 12;
        ripeFile.setCurrPagePath(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 13;
        ripeFile.setRootPath(cursor.isNull(i12) ? null : cursor.getString(i12));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, RipeFile ripeFile) {
        databaseStatement.clearBindings();
        databaseStatement.bindLong(1, ripeFile.getIsSelected() ? 1L : 0L);
        String name = ripeFile.getName();
        if (name != null) {
            databaseStatement.bindString(2, name);
        }
        String size = ripeFile.getSize();
        if (size != null) {
            databaseStatement.bindString(3, size);
        }
        String date = ripeFile.getDate();
        if (date != null) {
            databaseStatement.bindString(4, date);
        }
        String suffix = ripeFile.getSuffix();
        if (suffix != null) {
            databaseStatement.bindString(5, suffix);
        }
        String path = ripeFile.getPath();
        if (path != null) {
            databaseStatement.bindString(6, path);
        }
        Boolean isDirectory = ripeFile.getIsDirectory();
        if (isDirectory != null) {
            databaseStatement.bindLong(7, isDirectory.booleanValue() ? 1L : 0L);
        }
        if (Integer.valueOf(ripeFile.getChildCount()) != null) {
            databaseStatement.bindLong(8, r0.intValue());
        }
        databaseStatement.bindLong(9, ripeFile.getIndexPape());
        databaseStatement.bindLong(10, ripeFile.getMaxPage());
        String parentName = ripeFile.getParentName();
        if (parentName != null) {
            databaseStatement.bindString(11, parentName);
        }
        String parentPath = ripeFile.getParentPath();
        if (parentPath != null) {
            databaseStatement.bindString(12, parentPath);
        }
        String currPagePath = ripeFile.getCurrPagePath();
        if (currPagePath != null) {
            databaseStatement.bindString(13, currPagePath);
        }
        String rootPath = ripeFile.getRootPath();
        if (rootPath != null) {
            databaseStatement.bindString(14, rootPath);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public String readKey(Cursor cursor, int i) {
        int i2 = i + 5;
        if (cursor.isNull(i2)) {
            return null;
        }
        return cursor.getString(i2);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getKey(RipeFile ripeFile) {
        if (ripeFile != null) {
            return ripeFile.getPath();
        }
        return null;
    }

    public RipeFileDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
