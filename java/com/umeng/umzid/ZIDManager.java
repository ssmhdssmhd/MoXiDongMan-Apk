package com.umeng.umzid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import com.umeng.analytics.pro.ak;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.Calendar;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ZIDManager {
    public static ZIDManager c;
    public boolean a = false;
    public boolean b = false;

    public class a implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ IZIDCompletionCallback b;

        public a(Context context, IZIDCompletionCallback iZIDCompletionCallback) {
            this.a = context;
            this.b = iZIDCompletionCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strA = ZIDManager.a(ZIDManager.this, this.a);
            if (TextUtils.isEmpty(strA)) {
                IZIDCompletionCallback iZIDCompletionCallback = this.b;
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure("1002", "获取zid失败");
                    return;
                }
                return;
            }
            IZIDCompletionCallback iZIDCompletionCallback2 = this.b;
            if (iZIDCompletionCallback2 != null) {
                iZIDCompletionCallback2.onSuccess(strA);
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ Context a;

        public b(Context context) {
            this.a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            String string;
            String string2;
            SharedPreferences sharedPreferencesA;
            SharedPreferences sharedPreferencesA2;
            SharedPreferences sharedPreferencesA3;
            SharedPreferences sharedPreferencesA4;
            ZIDManager zIDManager = ZIDManager.this;
            Context context = this.a;
            if (zIDManager.b) {
                return;
            }
            zIDManager.b = true;
            JSONObject jSONObject = new JSONObject();
            String string3 = "";
            if (context != null) {
                try {
                    SharedPreferences sharedPreferencesA5 = com.umeng.umzid.a.a(context);
                    String string4 = sharedPreferencesA5 != null ? sharedPreferencesA5.getString("zdata", null) : "";
                    String id = Spy.getID();
                    jSONObject.put("zdata", id);
                    jSONObject.put("old_zdata", string4);
                    if (context == null || (sharedPreferencesA4 = com.umeng.umzid.a.a(context)) == null) {
                        string = "";
                    } else {
                        string = sharedPreferencesA4.getString("oaid", "");
                        if (com.umeng.umzid.c.c(string)) {
                            string = com.umeng.umzid.c.a(string);
                        }
                    }
                    String strC = com.umeng.umzid.c.c(context);
                    jSONObject.put("old_oaid", string);
                    jSONObject.put("oaid", strC);
                    if (context == null || (sharedPreferencesA3 = com.umeng.umzid.a.a(context)) == null) {
                        string2 = "";
                    } else {
                        string2 = sharedPreferencesA3.getString("mac", "");
                        if (com.umeng.umzid.c.c(string2)) {
                            string2 = com.umeng.umzid.c.a(string2);
                        }
                    }
                    String strB = com.umeng.umzid.c.b(context);
                    jSONObject.put("mac", strB);
                    jSONObject.put("old_mac", string2);
                    zIDManager.a(context, jSONObject);
                    jSONObject.put("aaid", com.umeng.umzid.c.a(context));
                    jSONObject.put("uabc", (context == null || (sharedPreferencesA2 = com.umeng.umzid.a.a(context)) == null) ? "" : sharedPreferencesA2.getString("uabc", ""));
                    if (context != null && (sharedPreferencesA = com.umeng.umzid.a.a(context)) != null) {
                        string3 = sharedPreferencesA.getString("resetToken", "");
                    }
                    if (!TextUtils.isEmpty(string3)) {
                        jSONObject.put("resetToken", string3);
                    }
                    String strA = com.umeng.umzid.a.a("https://aaid.umeng.com/api/updateZdata", jSONObject.toString());
                    if (!TextUtils.isEmpty(strA)) {
                        JSONObject jSONObject2 = new JSONObject(strA);
                        if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                            com.umeng.umzid.c.f(context, id);
                            com.umeng.umzid.c.a(context, strB);
                            com.umeng.umzid.c.b(context, strC);
                            String strOptString = jSONObject2.optString("aaid");
                            if (!TextUtils.isEmpty(strOptString)) {
                                com.umeng.umzid.c.e(context, strOptString);
                            }
                            String string5 = jSONObject2.getString("uabc");
                            if (!TextUtils.isEmpty(string5)) {
                                com.umeng.umzid.c.d(context, string5);
                            }
                            String string6 = jSONObject2.getString("resetToken");
                            if (!TextUtils.isEmpty(string6)) {
                                com.umeng.umzid.c.c(context, string6);
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            zIDManager.b = false;
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.a(ZIDManager.this, this.a);
        }
    }

    public static /* synthetic */ String a(ZIDManager zIDManager, Context context) {
        String strOptString = null;
        if (!zIDManager.a) {
            zIDManager.a = true;
            JSONObject jSONObject = new JSONObject();
            try {
                String id = Spy.getID();
                jSONObject.put("zdata", id);
                String strB = com.umeng.umzid.c.b(context);
                jSONObject.put("mac", strB);
                String strC = com.umeng.umzid.c.c(context);
                jSONObject.put("oaid", strC);
                zIDManager.a(context, jSONObject);
                String strA = com.umeng.umzid.a.a("https://aaid.umeng.com/api/postZdata", jSONObject.toString());
                if (!TextUtils.isEmpty(strA)) {
                    JSONObject jSONObject2 = new JSONObject(strA);
                    if (Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        com.umeng.umzid.c.f(context, id);
                        com.umeng.umzid.c.a(context, strB);
                        com.umeng.umzid.c.b(context, strC);
                        strOptString = jSONObject2.optString("aaid");
                        if (!TextUtils.isEmpty(strOptString)) {
                            com.umeng.umzid.c.e(context, strOptString);
                        }
                        String string = jSONObject2.getString("uabc");
                        if (!TextUtils.isEmpty(string)) {
                            com.umeng.umzid.c.d(context, string);
                        }
                        String string2 = jSONObject2.getString("resetToken");
                        if (!TextUtils.isEmpty(string2)) {
                            com.umeng.umzid.c.c(context, string2);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            zIDManager.a = false;
        }
        return strOptString;
    }

    public static synchronized ZIDManager getInstance() {
        if (c == null) {
            c = new ZIDManager();
        }
        return c;
    }

    public static String getSDKVersion() {
        return "1.4.1";
    }

    public synchronized String getZID(Context context) {
        if (context == null) {
            return "";
        }
        Context applicationContext = context.getApplicationContext();
        String strA = com.umeng.umzid.c.a(applicationContext);
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        com.umeng.umzid.b.a(new c(applicationContext));
        return "";
    }

    public synchronized void init(Context context, String str, IZIDCompletionCallback iZIDCompletionCallback) {
        SharedPreferences sharedPreferencesA;
        SharedPreferences.Editor editorEdit;
        if (context == null) {
            if (iZIDCompletionCallback != null) {
                iZIDCompletionCallback.onFailure("1001", "传入参数Context为null");
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (iZIDCompletionCallback != null) {
                iZIDCompletionCallback.onFailure("1003", "传入参数appkey为空");
            }
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null && str != null && !TextUtils.isEmpty(str) && (sharedPreferencesA = com.umeng.umzid.a.a(applicationContext)) != null && (editorEdit = sharedPreferencesA.edit()) != null) {
            editorEdit.putString("appkey", str).commit();
        }
        String strA = com.umeng.umzid.c.a(applicationContext);
        if (strA == null || TextUtils.isEmpty(strA)) {
            com.umeng.umzid.b.a(new a(applicationContext, iZIDCompletionCallback));
        } else {
            com.umeng.umzid.b.a(new b(applicationContext));
            if (iZIDCompletionCallback != null) {
                iZIDCompletionCallback.onSuccess(strA);
            }
        }
        SharedPreferences sharedPreferencesA2 = com.umeng.umzid.a.a(context);
        if (TextUtils.isEmpty(sharedPreferencesA2 != null ? sharedPreferencesA2.getString("uuid", "") : "")) {
            String string = "";
            SharedPreferences sharedPreferencesA3 = com.umeng.umzid.a.a(context);
            try {
                string = UUID.randomUUID().toString();
            } catch (Throwable unused) {
            }
            if (sharedPreferencesA3 != null) {
                sharedPreferencesA3.edit().putString("uuid", string).commit();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final JSONObject a(Context context, JSONObject jSONObject) throws JSONException, NoSuchMethodException, Resources.NotFoundException, SecurityException {
        Object obj;
        Locale locale;
        int rawOffset;
        Object obj2;
        String string;
        Object obj3;
        Object string2;
        Object country;
        SharedPreferences sharedPreferencesA;
        Class<?> cls;
        Method declaredMethod;
        Class<?> cls2;
        Method declaredMethod2;
        Object obj4 = "";
        jSONObject.putOpt("zdata_ver", Spy.getVersion());
        try {
            cls2 = Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            declaredMethod2 = cls2.getDeclaredMethod("getAndroidId", Context.class);
        } catch (Throwable unused) {
        }
        if (declaredMethod2 != null) {
            declaredMethod2.setAccessible(true);
            Object objInvoke = declaredMethod2.invoke(cls2, context);
            obj = (objInvoke == null || !(objInvoke instanceof String)) ? "" : (String) objInvoke;
        }
        jSONObject.putOpt("android_id", obj);
        long freeSpace = 0;
        String externalStorageState = Environment.getExternalStorageState();
        if (("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState)) && Build.VERSION.SDK_INT >= 9) {
            freeSpace = Environment.getExternalStorageDirectory().getFreeSpace();
        }
        jSONObject.putOpt("storage", Long.valueOf(freeSpace));
        jSONObject.putOpt(ak.y, Build.VERSION.RELEASE);
        Object string3 = null;
        if (context == null) {
            rawOffset = 8;
        } else {
            try {
                Configuration configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(context.getContentResolver(), configuration);
                locale = configuration.locale;
            } catch (Throwable unused2) {
                locale = null;
            }
            if (locale == null) {
                try {
                    locale = Locale.getDefault();
                } catch (Throwable unused3) {
                }
            }
            Calendar calendar = Calendar.getInstance(locale);
            if (calendar != null) {
                rawOffset = calendar.getTimeZone().getRawOffset() / 3600000;
            }
        }
        jSONObject.putOpt(ak.M, Integer.valueOf(rawOffset));
        jSONObject.putOpt("model", Build.MODEL);
        try {
            cls = Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            declaredMethod = cls.getDeclaredMethod("getImeiNew", Context.class);
        } catch (Throwable unused4) {
        }
        if (declaredMethod != null) {
            declaredMethod.setAccessible(true);
            Object objInvoke2 = declaredMethod.invoke(cls, context);
            obj2 = (objInvoke2 == null || !(objInvoke2 instanceof String)) ? "" : (String) objInvoke2;
        }
        jSONObject.putOpt("imei", obj2);
        try {
            Method declaredMethod3 = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod3.setAccessible(true);
            string = declaredMethod3.invoke(null, "net.hostname").toString();
            if (string != null) {
                try {
                    if (!string.equalsIgnoreCase("")) {
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                            messageDigest.update(string.getBytes());
                            byte[] bArrDigest = messageDigest.digest();
                            StringBuffer stringBuffer = new StringBuffer();
                            for (byte b2 : bArrDigest) {
                                stringBuffer.append(Integer.toHexString(b2 & 255));
                            }
                            string = stringBuffer.toString();
                        } catch (Throwable unused5) {
                            string = "";
                        }
                    }
                } catch (Exception unused6) {
                }
            }
        } catch (Exception unused7) {
            string = null;
        }
        jSONObject.putOpt("hostname", string);
        jSONObject.putOpt("sdk_version", "1.4.1");
        jSONObject.putOpt(ak.o, context == null ? null : context.getPackageName());
        jSONObject.putOpt(ak.u, "Android");
        SharedPreferences sharedPreferencesA2 = com.umeng.umzid.a.a(context);
        jSONObject.putOpt("uuid", sharedPreferencesA2 != null ? sharedPreferencesA2.getString("uuid", "") : "");
        jSONObject.putOpt("source_id", "umeng");
        try {
            obj3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            obj3 = null;
        }
        jSONObject.putOpt("app_version", obj3);
        try {
            string2 = context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e2) {
            e2.printStackTrace();
            string2 = null;
        }
        jSONObject.putOpt("app_name", string2);
        try {
            country = context.getResources().getConfiguration().locale.getCountry();
        } catch (Exception e3) {
            e3.printStackTrace();
            country = null;
        }
        jSONObject.putOpt(ak.O, country);
        if (context != null && (sharedPreferencesA = com.umeng.umzid.a.a(context)) != null) {
            string3 = sharedPreferencesA.getString("appkey", null);
        }
        jSONObject.putOpt("appkey", string3);
        try {
            Class<?> cls3 = Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            Method declaredMethod4 = cls3.getDeclaredMethod("getIdfa", Context.class);
            if (declaredMethod4 != null) {
                declaredMethod4.setAccessible(true);
                Object objInvoke3 = declaredMethod4.invoke(cls3, context);
                if (objInvoke3 != null && (objInvoke3 instanceof String)) {
                    obj4 = (String) objInvoke3;
                }
            }
        } catch (Throwable unused8) {
        }
        jSONObject.putOpt("gaid", obj4);
        return jSONObject;
    }
}
