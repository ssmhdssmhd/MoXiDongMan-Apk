package com.wsw.cospa.model;

import android.database.Cursor;
import android.support.v4.b0;
import android.support.v4.fz;
import android.support.v4.l22;
import android.support.v4.on0;
import android.support.v4.pk0;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpGetApi;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import retrofit2.Response;

/* renamed from: com.wsw.cospa.model.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends com.wsw.cospa.model.impl.Cif {

    /* renamed from: case, reason: not valid java name */
    private static List<ComicSourceBean> f22323case;

    /* renamed from: else, reason: not valid java name */
    private static String[] f22324else = {"ac.qq.com", "https://api.kkmh.com", "http://m.u17.com", "http://m.buka.cm", "https://www.iqiyi.com/manhua", "https://m.isamanhua.com", "https://m.kanmanhua.com", "https://m.manhuadui.com", "https://m.manhuatai.com", "https://www.mkzhan.com", "https://m.zymk.cn", "https://www.manhualou.com", "https://www.yizhikan.cn", "https://m.tohomh123.com", "https://m.taduo.net", "https://www.cocomanhua.com"};

    /* renamed from: try, reason: not valid java name */
    private static List<ComicSourceBean> f22325try;

    /* renamed from: com.wsw.cospa.model.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0222do implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            v72.m8769if("请检查文件是否是为图源文件或者二维码已过期");
        }
    }

    /* renamed from: com.wsw.cospa.model.do$for, reason: invalid class name */
    public class Cfor extends TypeToken<ComicSourceBean> {
    }

    /* renamed from: com.wsw.cospa.model.do$if, reason: invalid class name */
    public class Cif extends TypeToken<List<ComicSourceBean>> {
    }

    /* renamed from: com.wsw.cospa.model.do$new, reason: invalid class name */
    public class Cnew extends TypeToken<List<ComicSourceBean>> {
    }

    /* renamed from: com.wsw.cospa.model.do$try, reason: invalid class name */
    public class Ctry extends TypeToken<ComicSourceBean> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, ObservableEmitter observableEmitter) throws Exception {
        ArrayList arrayList = new ArrayList();
        List listAsList = Arrays.asList(f22324else);
        if (list == null || list.size() <= 0) {
            observableEmitter.onNext(arrayList);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ComicSourceBean comicSourceBean = (ComicSourceBean) it.next();
                if (listAsList.contains(comicSourceBean.getBookSourceUrl())) {
                    arrayList.add(comicSourceBean);
                }
            }
            if (arrayList.size() > 0) {
                observableEmitter.onNext(arrayList);
            } else {
                observableEmitter.onNext(list);
            }
        }
        observableEmitter.onComplete();
    }

    @Nullable
    /* renamed from: abstract, reason: not valid java name */
    public static ComicSourceBean m26358abstract(String str) {
        try {
            return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(str), new WhereCondition[0]).unique();
        } catch (Exception unused) {
            return null;
        }
    }

    public static io.reactivex.Cnew<List<ComicSourceBean>> b(final List<ComicSourceBean> list) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.kb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.a(list, observableEmitter);
            }
        });
    }

    public static void c() {
        QueryBuilder<ComicSourceBean> queryBuilderOrderRaw = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().orderRaw(m26359continue());
        Property property = ComicSourceBeanDao.Properties.f22048this;
        f22323case = queryBuilderOrderRaw.orderAsc(property).list();
        f22325try = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE), new WhereCondition[0]).orderRaw(ComicSourceBeanDao.Properties.f22017break.columnName + " DESC").orderAsc(property).list();
        e();
    }

    /* renamed from: continue, reason: not valid java name */
    public static String m26359continue() {
        int iM8715for = v02.m8711if(CartoonApplication.m24690do()).m8715for("SourceSort", 0);
        if (iM8715for == 1) {
            return ComicSourceBeanDao.Properties.f22017break.columnName + " DESC";
        }
        if (iM8715for != 2) {
            return ComicSourceBeanDao.Properties.f22048this.columnName + " ASC";
        }
        return ComicSourceBeanDao.Properties.f22052try.columnName + " COLLATE LOCALIZED ASC";
    }

    public static void d(ComicSourceBean comicSourceBean) {
        if (comicSourceBean == null) {
            return;
        }
        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().delete(comicSourceBean);
        c();
    }

    /* renamed from: default, reason: not valid java name */
    public static void m26360default(ComicSourceBean comicSourceBean) {
        if (Cclass.A(comicSourceBean.getBookSourceUrl())) {
            wi0.m9165try(new RunnableC0222do());
            return;
        }
        if (comicSourceBean.getBookSourceUrl().endsWith(on0.f4694final)) {
            comicSourceBean.setBookSourceUrl(comicSourceBean.getBookSourceUrl().substring(0, comicSourceBean.getBookSourceUrl().lastIndexOf(on0.f4694final)));
        }
        ComicSourceBean comicSourceBeanUnique = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(comicSourceBean.getBookSourceUrl()), new WhereCondition[0]).unique();
        if (comicSourceBeanUnique != null) {
            comicSourceBean.setSerialNumber(comicSourceBeanUnique.getSerialNumber());
            comicSourceBean.setEnable(comicSourceBeanUnique.getEnable());
        } else {
            comicSourceBean.setEnable(true);
        }
        if (comicSourceBean.getSerialNumber() <= 0) {
            comicSourceBean.setSerialNumber((int) (com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().count() + 1));
        }
        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().insertOrReplaceInTx(comicSourceBean);
    }

    public static synchronized List<String> e() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = com.wsw.cospa.dao.Cnew.m26132case().m26138try().getDatabase().rawQuery("SELECT DISTINCT " + ComicSourceBeanDao.Properties.f22018case.columnName + " FROM " + ComicSourceBeanDao.TABLENAME, null);
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorRawQuery != null) {
                }
            }
            if (!cursorRawQuery.moveToFirst()) {
                cursorRawQuery.close();
                return arrayList;
            }
            do {
                String string = cursorRawQuery.getString(0);
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string.trim())) {
                    for (String str : string.split("\\s*[,;，；]\\s*")) {
                        if (!TextUtils.isEmpty(str) && !arrayList.contains(str)) {
                            arrayList.add(str);
                        }
                    }
                }
            } while (cursorRawQuery.moveToNext());
            Collections.sort(arrayList);
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m26361extends(List<ComicSourceBean> list) {
        c();
        Iterator<ComicSourceBean> it = list.iterator();
        while (it.hasNext()) {
            m26360default(it.next());
        }
        c();
    }

    private static void f(String str, String str2) throws Throwable {
        OutputStreamWriter outputStreamWriter;
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            try {
                File file = new File(wq.f7618native, str2);
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
            } catch (IOException unused) {
                return;
            }
        } catch (Exception unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.flush();
            outputStreamWriter.close();
            outputStreamWriter.close();
        } catch (Exception unused3) {
            outputStreamWriter2 = outputStreamWriter;
            if (outputStreamWriter2 != null) {
                outputStreamWriter2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            outputStreamWriter2 = outputStreamWriter;
            if (outputStreamWriter2 != null) {
                try {
                    outputStreamWriter2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static List<ComicSourceBean> m26362finally() {
        return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().orderRaw(m26359continue()).list();
    }

    /* renamed from: implements, reason: not valid java name */
    public static io.reactivex.Cnew<List<ComicSourceBean>> m26363implements(String str) {
        HashMap map = new HashMap();
        map.put(pk0.b, AnalyzeHeaders.getDefaultUserAgent());
        return ((IHttpGetApi) com.wsw.cospa.model.impl.Cif.m26424break().m26441const(m26367private(str), "utf-8").create(IHttpGetApi.class)).getWebContent(str, map).flatMap(new Function() { // from class: android.support.v4.lb
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Cdo.m26372synchronized((Response) obj);
            }
        }).compose(b0.f302do);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public static /* synthetic */ void m26364instanceof(String str, ObservableEmitter observableEmitter) throws Exception {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (Exception e) {
            observableEmitter.onError(new Throwable(e.getMessage()));
            observableEmitter.onComplete();
        }
        if (Cclass.A(str)) {
            observableEmitter.onError(new Throwable("请检查文件是否是为图源文件或者二维码已过期！"));
            observableEmitter.onComplete();
            return;
        }
        if (l22.m4579while(str)) {
            Object objNextValue = new JSONTokener(str).nextValue();
            if (objNextValue instanceof JSONArray) {
                List<ComicSourceBean> list = (List) new Gson().fromJson(str, new Cif().getType());
                for (ComicSourceBean comicSourceBean : list) {
                    if (comicSourceBean.containsGroup("删除")) {
                        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(comicSourceBean.getBookSourceUrl()), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
                    } else {
                        try {
                            new URL(comicSourceBean.getBookSourceUrl());
                            comicSourceBean.setSerialNumber(0);
                            m26360default(comicSourceBean);
                        } catch (Exception unused) {
                            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(comicSourceBean.getBookSourceUrl()), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
                        }
                    }
                }
                c();
                observableEmitter.onNext(list);
                observableEmitter.onComplete();
                return;
            }
            if (!(objNextValue instanceof JSONObject)) {
                observableEmitter.onError(new Throwable("格式不支持！"));
                observableEmitter.onComplete();
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            boolean zHas = jSONObject.has("bookSourceUrl");
            boolean zHas2 = jSONObject.has("bookSourceName");
            if (zHas && zHas2) {
                ComicSourceBean comicSourceBean2 = (ComicSourceBean) new Gson().fromJson(str, new Cfor().getType());
                m26360default(comicSourceBean2);
                arrayList.add(comicSourceBean2);
                observableEmitter.onNext(arrayList);
            } else {
                observableEmitter.onError(new Throwable("请检查是否为图源文件！"));
            }
            observableEmitter.onComplete();
            return;
        }
        String strM2489do = fz.m2489do(str);
        if (l22.m4579while(strM2489do)) {
            if (Cclass.A(strM2489do)) {
                observableEmitter.onError(new Throwable("请检查文件是否是为图源文件或者二维码已过期！"));
                observableEmitter.onComplete();
                return;
            }
            Object objNextValue2 = new JSONTokener(strM2489do).nextValue();
            if (objNextValue2 instanceof JSONArray) {
                List<ComicSourceBean> list2 = (List) new Gson().fromJson(strM2489do, new Cnew().getType());
                for (ComicSourceBean comicSourceBean3 : list2) {
                    if (comicSourceBean3.containsGroup("删除")) {
                        com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(comicSourceBean3.getBookSourceUrl()), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
                    } else {
                        try {
                            new URL(comicSourceBean3.getBookSourceUrl());
                            comicSourceBean3.setSerialNumber(0);
                            m26360default(comicSourceBean3);
                        } catch (Exception unused2) {
                            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(comicSourceBean3.getBookSourceUrl()), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
                        }
                    }
                }
                c();
                observableEmitter.onNext(list2);
                observableEmitter.onComplete();
                return;
            }
            if (!(objNextValue2 instanceof JSONObject)) {
                observableEmitter.onError(new Throwable("格式不支持！"));
                observableEmitter.onComplete();
                return;
            }
            JSONObject jSONObject2 = new JSONObject(strM2489do);
            boolean zHas3 = jSONObject2.has("bookSourceUrl");
            boolean zHas4 = jSONObject2.has("bookSourceName");
            if (zHas3 && zHas4) {
                ComicSourceBean comicSourceBean4 = (ComicSourceBean) new Gson().fromJson(strM2489do, new Ctry().getType());
                m26360default(comicSourceBean4);
                arrayList.add(comicSourceBean4);
                observableEmitter.onNext(arrayList);
            } else {
                observableEmitter.onError(new Throwable("请检查是否为图源文件！"));
            }
            observableEmitter.onComplete();
            return;
        }
        return;
        observableEmitter.onError(new Throwable(e.getMessage()));
        observableEmitter.onComplete();
    }

    /* renamed from: interface, reason: not valid java name */
    public static List<ComicSourceBean> m26365interface() {
        if (f22325try == null) {
            f22325try = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE), new WhereCondition[0]).orderRaw(ComicSourceBeanDao.Properties.f22017break.columnName + " DESC").orderAsc(ComicSourceBeanDao.Properties.f22048this).list();
        }
        return f22325try;
    }

    /* renamed from: package, reason: not valid java name */
    public static List<ComicSourceBean> m26366package() {
        List<ComicSourceBean> list = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().orderDesc(ComicSourceBeanDao.Properties.f22017break).orderRaw(m26359continue()).list();
        f22323case = list;
        return list;
    }

    /* renamed from: private, reason: not valid java name */
    public static String m26367private(String str) {
        if (str == null || !str.startsWith("http")) {
            return null;
        }
        int iIndexOf = str.indexOf(on0.f4694final, 9);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }

    /* renamed from: protected, reason: not valid java name */
    public static ComicSourceBean m26368protected(String str) {
        try {
            return com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22037new.eq(str), new WhereCondition[0]).unique();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static List<ComicSourceBean> m26370strictfp() {
        List<ComicSourceBean> list = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22020class.isNotNull(), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).orderRaw(m26359continue()).list();
        f22323case = list;
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public static /* synthetic */ ObservableSource m26372synchronized(Response response) throws Exception {
        return m26374transient((String) response.body());
    }

    /* renamed from: transient, reason: not valid java name */
    public static io.reactivex.Cnew<List<ComicSourceBean>> m26374transient(final String str) {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.jb
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.m26364instanceof(str, observableEmitter);
            }
        });
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Cdo m26375volatile() {
        return new Cdo();
    }
}
