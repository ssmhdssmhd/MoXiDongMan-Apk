package com.wsw.cospa.dao;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.hw;
import org.greenrobot.greendao.AbstractDaoMaster;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseOpenHelper;
import org.greenrobot.greendao.database.StandardDatabase;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* renamed from: com.wsw.cospa.dao.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor extends AbstractDaoMaster {

    /* renamed from: do, reason: not valid java name */
    public static final int f22150do = 52;

    /* renamed from: com.wsw.cospa.dao.for$do, reason: invalid class name */
    public static class Cdo extends Cif {
        public Cdo(Context context, String str) {
            super(context, str);
        }

        @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onUpgrade(Database database, int i, int i2) throws SQLException {
            StringBuilder sb = new StringBuilder();
            sb.append("Upgrading schema from version ");
            sb.append(i);
            sb.append(" to ");
            sb.append(i2);
            sb.append(" by dropping all tables");
            Cfor.m26129if(database, true);
            onCreate(database);
        }

        public Cdo(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }
    }

    /* renamed from: com.wsw.cospa.dao.for$if, reason: invalid class name */
    public static abstract class Cif extends DatabaseOpenHelper {
        public Cif(Context context, String str) {
            super(context, str, 52);
        }

        @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onCreate(Database database) throws SQLException {
            Cfor.m26127do(database, false);
        }

        public Cif(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 52);
        }
    }

    public Cfor(SQLiteDatabase sQLiteDatabase) {
        this(new StandardDatabase(sQLiteDatabase));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m26127do(Database database, boolean z) throws SQLException {
        ChapterListBeanDao.m25921for(database, z);
        ComicContentBeanDao.m25931for(database, z);
        ComicContentImgBeanDao.m25941for(database, z);
        ComicInfoBeanDao.m25951for(database, z);
        ComicShelfBeanDao.m25961new(database, z);
        ComicShelfGroupBeanDao.m25978for(database, z);
        ComicSourceBeanDao.m25988for(database, z);
        CookieBeanDao.m25998for(database, z);
        HistoryComicBeanDao.m26048for(database, z);
        RipeFileDao.m26058for(database, z);
        SearchComicBeanDao.m26068for(database, z);
        TaskDao.m26078for(database, z);
    }

    /* renamed from: for, reason: not valid java name */
    public static hw m26128for(Context context, String str) {
        return new Cfor(new Cdo(context, str).getWritableDb()).newSession();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m26129if(Database database, boolean z) throws SQLException {
        ChapterListBeanDao.m25922new(database, z);
        ComicContentBeanDao.m25932new(database, z);
        ComicContentImgBeanDao.m25942new(database, z);
        ComicInfoBeanDao.m25952new(database, z);
        ComicShelfBeanDao.m25962try(database, z);
        ComicShelfGroupBeanDao.m25979new(database, z);
        ComicSourceBeanDao.m25989new(database, z);
        CookieBeanDao.m25999new(database, z);
        HistoryComicBeanDao.m26049new(database, z);
        RipeFileDao.m26059new(database, z);
        SearchComicBeanDao.m26069new(database, z);
        TaskDao.m26079new(database, z);
    }

    @Override // org.greenrobot.greendao.AbstractDaoMaster
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public hw newSession() {
        return new hw(this.db, IdentityScopeType.Session, this.daoConfigMap);
    }

    @Override // org.greenrobot.greendao.AbstractDaoMaster
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public hw newSession(IdentityScopeType identityScopeType) {
        return new hw(this.db, identityScopeType, this.daoConfigMap);
    }

    public Cfor(Database database) {
        super(database, 52);
        registerDaoClass(ChapterListBeanDao.class);
        registerDaoClass(ComicContentBeanDao.class);
        registerDaoClass(ComicContentImgBeanDao.class);
        registerDaoClass(ComicInfoBeanDao.class);
        registerDaoClass(ComicShelfBeanDao.class);
        registerDaoClass(ComicShelfGroupBeanDao.class);
        registerDaoClass(ComicSourceBeanDao.class);
        registerDaoClass(CookieBeanDao.class);
        registerDaoClass(HistoryComicBeanDao.class);
        registerDaoClass(RipeFileDao.class);
        registerDaoClass(SearchComicBeanDao.class);
        registerDaoClass(TaskDao.class);
    }
}
