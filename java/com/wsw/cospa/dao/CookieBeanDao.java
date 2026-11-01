package com.wsw.cospa.dao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.hw;
import com.wsw.cospa.bean.CookieBean;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes2.dex */
public class CookieBeanDao extends AbstractDao<CookieBean, String> {
    public static final String TABLENAME = "COOKIE_BEAN";

    public static class Properties {

        /* renamed from: do, reason: not valid java name */
        public static final Property f22055do = new Property(0, String.class, "url", true, "URL");

        /* renamed from: if, reason: not valid java name */
        public static final Property f22056if = new Property(1, String.class, "variableStr", false, "VARIABLE_STR");
    }

    public CookieBeanDao(DaoConfig daoConfig) {
        super(daoConfig);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m25998for(Database database, boolean z) throws SQLException {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"COOKIE_BEAN\" (\"URL\" TEXT PRIMARY KEY NOT NULL ,\"VARIABLE_STR\" TEXT);");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m25999new(Database database, boolean z) throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"COOKIE_BEAN\"");
        database.execSQL(sb.toString());
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String updateKeyAfterInsert(CookieBean cookieBean, long j) {
        return cookieBean.getUrl();
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean hasKey(CookieBean cookieBean) {
        return cookieBean.getUrl() != null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(SQLiteStatement sQLiteStatement, CookieBean cookieBean) {
        sQLiteStatement.clearBindings();
        String url = cookieBean.getUrl();
        if (url != null) {
            sQLiteStatement.bindString(1, url);
        }
        String variableStr = cookieBean.getVariableStr();
        if (variableStr != null) {
            sQLiteStatement.bindString(2, variableStr);
        }
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public CookieBean readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        int i3 = i + 1;
        return new CookieBean(cursor.isNull(i2) ? null : cursor.getString(i2), cursor.isNull(i3) ? null : cursor.getString(i3));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void readEntity(Cursor cursor, CookieBean cookieBean, int i) {
        int i2 = i + 0;
        cookieBean.setUrl(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 1;
        cookieBean.setVariableStr(cursor.isNull(i3) ? null : cursor.getString(i3));
    }

    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void bindValues(DatabaseStatement databaseStatement, CookieBean cookieBean) {
        databaseStatement.clearBindings();
        String url = cookieBean.getUrl();
        if (url != null) {
            databaseStatement.bindString(1, url);
        }
        String variableStr = cookieBean.getVariableStr();
        if (variableStr != null) {
            databaseStatement.bindString(2, variableStr);
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
    public String getKey(CookieBean cookieBean) {
        if (cookieBean != null) {
            return cookieBean.getUrl();
        }
        return null;
    }

    public CookieBeanDao(DaoConfig daoConfig, hw hwVar) {
        super(daoConfig, hwVar);
    }
}
