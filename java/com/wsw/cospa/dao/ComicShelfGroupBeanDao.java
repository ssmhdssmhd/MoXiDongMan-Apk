package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class ComicShelfGroupBeanDao extends AbstractDao<ComicShelfGroupBean, Long> {
    public static final String TABLENAME = "COMIC_SHELF_GROUP_BEAN";

    public static class Properties {

        /* renamed from: break, reason: not valid java name */
        public static final Property f22006break;

        /* renamed from: case, reason: not valid java name */
        public static final Property f22007case;

        /* renamed from: else, reason: not valid java name */
        public static final Property f22009else;

        /* renamed from: goto, reason: not valid java name */
        public static final Property f22011goto;

        /* renamed from: new, reason: not valid java name */
        public static final Property f22013new;

        /* renamed from: this, reason: not valid java name */
        public static final Property f22014this;

        /* renamed from: try, reason: not valid java name */
        public static final Property f22015try;

        /* renamed from: do, reason: not valid java name */
        public static final Property f22008do = new Property(0, Long.class, "id", true, "_id");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22012if = new Property(1, Boolean.TYPE, "enable", false, "ENABLE");

        /* renamed from: for, reason: not valid java name */
        public static final Property f22010for = new Property(2, String.class, "groupName", false, "GROUP_NAME");

        static {
            Class cls = Integer.TYPE;
            f22013new = new Property(3, cls, "viewCheckedId", false, "VIEW_CHECKED_ID");
            f22015try = new Property(4, cls, "viewId", false, "VIEW_ID");
            f22007case = new Property(5, String.class, "groupView", false, "GROUP_VIEW");
            f22009else = new Property(6, cls, "sortCheckedId", false, "SORT_CHECKED_ID");
            f22011goto = new Property(7, cls, "sortId", false, "SORT_ID");
            f22014this = new Property(8, String.class, "groupSort", false, "GROUP_SORT");
            f22006break = new Property(9, Integer.class, "groupNumber", false, "GROUP_NUMBER");
        }
    }

    public ComicShelfGroupBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25978for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"COMIC_SHELF_GROUP_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"ENABLE\" INTEGER NOT NULL ,\"GROUP_NAME\" TEXT,\"VIEW_CHECKED_ID\" INTEGER NOT NULL ,\"VIEW_ID\" INTEGER NOT NULL ,\"GROUP_VIEW\" TEXT,\"SORT_CHECKED_ID\" INTEGER NOT NULL ,\"SORT_ID\" INTEGER NOT NULL ,\"GROUP_SORT\" TEXT,\"GROUP_NUMBER\" INTEGER);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25979new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COMIC_SHELF_GROUP_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Long updateKeyAfterInsert(ComicShelfGroupBean comicShelfGroupBean, long j) {
        comicShelfGroupBean.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(ComicShelfGroupBean comicShelfGroupBean) {
        return comicShelfGroupBean.getId() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, ComicShelfGroupBean comicShelfGroupBean) {
        sQLiteStatement.clearBindings();
        Long id = comicShelfGroupBean.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, comicShelfGroupBean.getEnable() ? 1L : 0L);
        String groupName = comicShelfGroupBean.getGroupName();
        if (groupName != null) {
            sQLiteStatement.bindString(3, groupName);
        }
        sQLiteStatement.bindLong(4, comicShelfGroupBean.getViewCheckedId());
        sQLiteStatement.bindLong(5, comicShelfGroupBean.getViewId());
        String groupView = comicShelfGroupBean.getGroupView();
        if (groupView != null) {
            sQLiteStatement.bindString(6, groupView);
        }
        sQLiteStatement.bindLong(7, comicShelfGroupBean.getSortCheckedId());
        sQLiteStatement.bindLong(8, comicShelfGroupBean.getSortId());
        String groupSort = comicShelfGroupBean.getGroupSort();
        if (groupSort != null) {
            sQLiteStatement.bindString(9, groupSort);
        }
        if (Integer.valueOf(comicShelfGroupBean.getGroupNumber()) != null) {
            sQLiteStatement.bindLong(10, r6.intValue());
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicShelfGroupBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long lValueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        boolean z = cursor.getShort(i + 1) != 0;
        int i3 = i + 2;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = cursor.getInt(i + 3);
        int i5 = cursor.getInt(i + 4);
        int i6 = i + 5;
        String string2 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = cursor.getInt(i + 6);
        int i8 = cursor.getInt(i + 7);
        int i9 = i + 8;
        int i10 = i + 9;
        return new ComicShelfGroupBean(lValueOf, z, string, i4, i5, string2, i7, i8, cursor.isNull(i9) ? null : cursor.getString(i9), cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10)));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, ComicShelfGroupBean comicShelfGroupBean, int i) {
        int i2 = i + 0;
        comicShelfGroupBean.setId(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        comicShelfGroupBean.setEnable(cursor.getShort(i + 1) != 0);
        int i3 = i + 2;
        comicShelfGroupBean.setGroupName(cursor.isNull(i3) ? null : cursor.getString(i3));
        comicShelfGroupBean.setViewCheckedId(cursor.getInt(i + 3));
        comicShelfGroupBean.setViewId(cursor.getInt(i + 4));
        int i4 = i + 5;
        comicShelfGroupBean.setGroupView(cursor.isNull(i4) ? null : cursor.getString(i4));
        comicShelfGroupBean.setSortCheckedId(cursor.getInt(i + 6));
        comicShelfGroupBean.setSortId(cursor.getInt(i + 7));
        int i5 = i + 8;
        comicShelfGroupBean.setGroupSort(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 9;
        comicShelfGroupBean.setGroupNumber(cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6)));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, ComicShelfGroupBean comicShelfGroupBean) {
        databaseStatement.clearBindings();
        Long id = comicShelfGroupBean.getId();
        if (id != null) {
            databaseStatement.bindLong(1, id.longValue());
        }
        databaseStatement.bindLong(2, comicShelfGroupBean.getEnable() ? 1L : 0L);
        String groupName = comicShelfGroupBean.getGroupName();
        if (groupName != null) {
            databaseStatement.bindString(3, groupName);
        }
        databaseStatement.bindLong(4, comicShelfGroupBean.getViewCheckedId());
        databaseStatement.bindLong(5, comicShelfGroupBean.getViewId());
        String groupView = comicShelfGroupBean.getGroupView();
        if (groupView != null) {
            databaseStatement.bindString(6, groupView);
        }
        databaseStatement.bindLong(7, comicShelfGroupBean.getSortCheckedId());
        databaseStatement.bindLong(8, comicShelfGroupBean.getSortId());
        String groupSort = comicShelfGroupBean.getGroupSort();
        if (groupSort != null) {
            databaseStatement.bindString(9, groupSort);
        }
        if (Integer.valueOf(comicShelfGroupBean.getGroupNumber()) != null) {
            databaseStatement.bindLong(10, r6.intValue());
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
    public Long getKey(ComicShelfGroupBean comicShelfGroupBean) {
        if (comicShelfGroupBean != null) {
            return comicShelfGroupBean.getId();
        }
        return null;
    }

    public ComicShelfGroupBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
