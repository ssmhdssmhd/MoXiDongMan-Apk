package com.github.yuweiguocn.library.greendao;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.StandardDatabase;
import org.greenrobot.greendao.internal.DaoConfig;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public final class MigrationHelper {

    /* renamed from: do, reason: not valid java name */
    public static boolean f11035do = false;

    /* renamed from: for, reason: not valid java name */
    private static final String f11036for = "sqlite_master";

    /* renamed from: if, reason: not valid java name */
    private static String f11037if = "MigrationHelper";

    /* renamed from: new, reason: not valid java name */
    private static final String f11038new = "sqlite_temp_master";

    /* renamed from: try, reason: not valid java name */
    private static WeakReference<ReCreateAllTableListener> f11039try;

    public interface ReCreateAllTableListener {
        void onCreateAllTables(Database database, boolean z);

        void onDropAllTables(Database database, boolean z);
    }

    /* renamed from: com.github.yuweiguocn.library.greendao.MigrationHelper$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: case, reason: not valid java name */
        public boolean f11040case;

        /* renamed from: do, reason: not valid java name */
        public int f11041do;

        /* renamed from: for, reason: not valid java name */
        public String f11042for;

        /* renamed from: if, reason: not valid java name */
        public String f11043if;

        /* renamed from: new, reason: not valid java name */
        public boolean f11044new;

        /* renamed from: try, reason: not valid java name */
        public String f11045try;

        private Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public static List<Cdo> m12443if(Database database, String str) {
            String str2 = "PRAGMA table_info(" + str + ")";
            MigrationHelper.m12431class(str2);
            Cursor cursorRawQuery = database.rawQuery(str2, null);
            if (cursorRawQuery == null) {
                return new ArrayList();
            }
            ArrayList arrayList = new ArrayList();
            while (cursorRawQuery.moveToNext()) {
                Cdo cdo = new Cdo();
                boolean z = false;
                cdo.f11041do = cursorRawQuery.getInt(0);
                cdo.f11043if = cursorRawQuery.getString(1);
                cdo.f11042for = cursorRawQuery.getString(2);
                cdo.f11044new = cursorRawQuery.getInt(3) == 1;
                cdo.f11045try = cursorRawQuery.getString(4);
                if (cursorRawQuery.getInt(5) == 1) {
                    z = true;
                }
                cdo.f11040case = z;
                arrayList.add(cdo);
            }
            cursorRawQuery.close();
            return arrayList;
        }

        public boolean equals(Object obj) {
            return this == obj || (obj != null && getClass() == obj.getClass() && this.f11043if.equals(((Cdo) obj).f11043if));
        }

        public String toString() {
            return "TableInfo{cid=" + this.f11041do + ", name='" + this.f11043if + "', type='" + this.f11042for + "', notnull=" + this.f11044new + ", dfltValue='" + this.f11045try + "', pk=" + this.f11040case + MessageFormatter.DELIM_STOP;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m12428break(Database database, ReCreateAllTableListener reCreateAllTableListener, Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        f11039try = new WeakReference<>(reCreateAllTableListener);
        m12430catch(database, clsArr);
    }

    /* renamed from: case, reason: not valid java name */
    private static String m12429case(DaoConfig daoConfig) {
        if (daoConfig == null) {
            return "no columns";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            String[] strArr = daoConfig.allColumns;
            if (i >= strArr.length) {
                break;
            }
            sb.append(strArr[i]);
            sb.append(",");
            i++;
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m12430catch(Database database, Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m12431class("【Generate temp table】start");
        m12439new(database, clsArr);
        m12431class("【Generate temp table】complete");
        WeakReference<ReCreateAllTableListener> weakReference = f11039try;
        ReCreateAllTableListener reCreateAllTableListener = weakReference != null ? weakReference.get() : null;
        if (reCreateAllTableListener != null) {
            reCreateAllTableListener.onDropAllTables(database, true);
            m12431class("【Drop all table by listener】");
            reCreateAllTableListener.onCreateAllTables(database, false);
            m12431class("【Create all table by listener】");
        } else {
            m12436for(database, true, clsArr);
            m12438if(database, false, clsArr);
        }
        m12431class("【Restore data】start");
        m12435final(database, clsArr);
        m12431class("【Restore data】complete");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static void m12431class(String str) {
    }

    /* renamed from: const, reason: not valid java name */
    private static void m12432const(Database database, String str, boolean z, @NonNull Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (clsArr.length < 1) {
            return;
        }
        try {
            for (Class<? extends AbstractDao<?, ?>> cls : clsArr) {
                cls.getDeclaredMethod(str, Database.class, Boolean.TYPE).invoke(null, database, Boolean.valueOf(z));
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m12434else(Database database, boolean z, String str) {
        int i;
        if (database == null || TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = database.rawQuery("SELECT COUNT(*) FROM " + (z ? f11038new : f11036for) + " WHERE type = ? AND name = ?", new String[]{"table", str});
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                i = 0;
            }
            if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                i = cursorRawQuery.getInt(0);
                cursorRawQuery.close();
                return i > 0;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return false;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static void m12435final(Database database, Class<? extends AbstractDao<?, ?>>... clsArr) {
        for (Class<? extends AbstractDao<?, ?>> cls : clsArr) {
            String str = new DaoConfig(database, cls).tablename;
            String strConcat = str.concat("_TEMP");
            if (m12434else(database, true, strConcat)) {
                try {
                    List<Cdo> listM12443if = Cdo.m12443if(database, str);
                    List<Cdo> listM12443if2 = Cdo.m12443if(database, strConcat);
                    ArrayList arrayList = new ArrayList(listM12443if.size());
                    ArrayList arrayList2 = new ArrayList(listM12443if.size());
                    for (Cdo cdo : listM12443if2) {
                        if (listM12443if.contains(cdo)) {
                            String str2 = '`' + cdo.f11043if + '`';
                            arrayList2.add(str2);
                            arrayList.add(str2);
                        }
                    }
                    for (Cdo cdo2 : listM12443if) {
                        if (cdo2.f11044new && !listM12443if2.contains(cdo2)) {
                            String str3 = '`' + cdo2.f11043if + '`';
                            arrayList2.add(str3);
                            arrayList.add((cdo2.f11045try != null ? "'" + cdo2.f11045try + "' AS " : "'' AS ") + str3);
                        }
                    }
                    if (arrayList2.size() != 0) {
                        database.execSQL("REPLACE INTO " + str + " (" + TextUtils.join(",", arrayList2) + ") SELECT " + TextUtils.join(",", arrayList) + " FROM " + strConcat + ";");
                        StringBuilder sb = new StringBuilder();
                        sb.append("【Restore data】 to ");
                        sb.append(str);
                        m12431class(sb.toString());
                    }
                    database.execSQL("DROP TABLE " + strConcat);
                    m12431class("【Drop temp table】" + strConcat);
                } catch (SQLException unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("【Failed to restore data from temp table 】");
                    sb2.append(strConcat);
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m12436for(Database database, boolean z, @NonNull Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m12432const(database, "dropTable", z, clsArr);
        m12431class("【Drop all table by reflect】");
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m12437goto(SQLiteDatabase sQLiteDatabase, ReCreateAllTableListener reCreateAllTableListener, Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        f11039try = new WeakReference<>(reCreateAllTableListener);
        m12440this(sQLiteDatabase, clsArr);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m12438if(Database database, boolean z, @NonNull Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m12432const(database, "createTable", z, clsArr);
        m12431class("【Create all table by reflect】");
    }

    /* renamed from: new, reason: not valid java name */
    private static void m12439new(Database database, Class<? extends AbstractDao<?, ?>>... clsArr) {
        for (Class<? extends AbstractDao<?, ?>> cls : clsArr) {
            String strConcat = null;
            DaoConfig daoConfig = new DaoConfig(database, cls);
            String str = daoConfig.tablename;
            if (m12434else(database, false, str)) {
                try {
                    strConcat = daoConfig.tablename.concat("_TEMP");
                    database.execSQL("DROP TABLE IF EXISTS " + strConcat + ";");
                    database.execSQL("CREATE TEMPORARY TABLE " + strConcat + " AS SELECT * FROM " + str + ";");
                    StringBuilder sb = new StringBuilder();
                    sb.append("【Table】");
                    sb.append(str);
                    sb.append("\n ---Columns-->");
                    sb.append(m12429case(daoConfig));
                    m12431class(sb.toString());
                    m12431class("【Generate temp table】" + strConcat);
                } catch (SQLException unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("【Failed to generate temp table】");
                    sb2.append(strConcat);
                }
            } else {
                m12431class("【New Table】" + str);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m12440this(SQLiteDatabase sQLiteDatabase, Class<? extends AbstractDao<?, ?>>... clsArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m12431class("【The Old Database Version】" + sQLiteDatabase.getVersion());
        m12430catch(new StandardDatabase(sQLiteDatabase), clsArr);
    }

    /* renamed from: try, reason: not valid java name */
    private static List<String> m12441try(Database database, String str) throws Throwable {
        Cursor cursor = null;
        listAsList = null;
        List<String> listAsList = null;
        cursor = null;
        try {
            try {
                Cursor cursorRawQuery = database.rawQuery("SELECT * FROM " + str + " limit 0", null);
                if (cursorRawQuery != null) {
                    try {
                        if (cursorRawQuery.getColumnCount() > 0) {
                            listAsList = Arrays.asList(cursorRawQuery.getColumnNames());
                        }
                    } catch (Exception e) {
                        e = e;
                        cursor = cursorRawQuery;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return new ArrayList();
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        new ArrayList();
                        throw th;
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return listAsList == null ? new ArrayList() : listAsList;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
