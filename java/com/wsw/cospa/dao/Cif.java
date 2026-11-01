package com.wsw.cospa.dao;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.github.yuweiguocn.library.greendao.MigrationHelper;
import com.wsw.cospa.dao.Cfor;
import java.lang.reflect.InvocationTargetException;
import org.greenrobot.greendao.database.Database;

/* renamed from: com.wsw.cospa.dao.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif extends Cfor.Cif {

    /* renamed from: com.wsw.cospa.dao.if$do, reason: invalid class name */
    public class Cdo implements MigrationHelper.ReCreateAllTableListener {
        public Cdo() {
        }

        @Override // com.github.yuweiguocn.library.greendao.MigrationHelper.ReCreateAllTableListener
        public void onCreateAllTables(Database database, boolean z) throws SQLException {
            Cfor.m26127do(database, z);
        }

        @Override // com.github.yuweiguocn.library.greendao.MigrationHelper.ReCreateAllTableListener
        public void onDropAllTables(Database database, boolean z) throws SQLException {
            Cfor.m26129if(database, z);
        }
    }

    public Cif(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, cursorFactory);
    }

    @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
    public void onUpgrade(Database database, int i, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        MigrationHelper.m12428break(database, new Cdo(), ChapterListBeanDao.class, ComicInfoBeanDao.class, ComicShelfBeanDao.class, ComicSourceBeanDao.class, SearchComicBeanDao.class, ComicContentBeanDao.class, ComicContentImgBeanDao.class, TaskDao.class, CookieBeanDao.class, RipeFileDao.class, ComicShelfGroupBeanDao.class, HistoryComicBeanDao.class);
    }
}
