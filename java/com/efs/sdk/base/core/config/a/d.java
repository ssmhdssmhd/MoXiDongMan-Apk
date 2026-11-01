package com.efs.sdk.base.core.config.a;

import android.content.Context;
import android.support.v4.wk;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.config.GlobalEnvStruct;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.PackageUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.antlr.v4.runtime.tree.xpath.Cdo;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d {
    private static final SimpleDateFormat a = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.CHINA);

    public static boolean a(@NonNull String str, @NonNull b bVar) {
        try {
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("config");
            int i = jSONObject.getInt("cver");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("common");
                if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                    Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        map.put(next, jSONObjectOptJSONObject2.optString(next, ""));
                    }
                }
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("app_configs");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObject2 = (JSONObject) jSONArrayOptJSONArray.get(i2);
                        if (jSONObject2 != null && jSONObject2.length() == 2) {
                            JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("conditions");
                            JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("actions");
                            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                                a(map, jSONArrayOptJSONArray2, jSONArrayOptJSONArray3);
                            }
                        }
                    }
                }
            }
            bVar.a(map);
            bVar.a = i;
            return true;
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.config", "parseConfig error, data is ".concat(String.valueOf(str)), th);
            return false;
        }
    }

    private static int b(String str, String str2) {
        if (str == null) {
            str = "1970/01/01 00:00:00";
        }
        if (str2 == null) {
            str2 = "1970/01/01 00:00:00";
        }
        String[] strArrSplit = str.split("[:/\\s]");
        String[] strArrSplit2 = str2.split("[:/\\s]");
        int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
        int i = 0;
        while (i < iMax) {
            int i2 = i < strArrSplit.length ? Integer.parseInt(strArrSplit[i]) : 0;
            int i3 = i < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i]) : 0;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
            i++;
        }
        return 0;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01dd A[Catch: all -> 0x0242, LOOP:1: B:139:0x01dd->B:155:0x023e, LOOP_START, PHI: r1
      0x01dd: PHI (r1v1 int) = (r1v0 int), (r1v2 int) binds: [B:137:0x01da, B:155:0x023e] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0242, blocks: (B:3:0x0004, B:5:0x000c, B:7:0x0014, B:10:0x001d, B:15:0x0036, B:17:0x0048, B:31:0x008b, B:136:0x01d6, B:34:0x0094, B:35:0x0099, B:83:0x0141, B:85:0x0146, B:86:0x014c, B:87:0x0152, B:88:0x0158, B:89:0x015e, B:90:0x0164, B:91:0x016a, B:92:0x0170, B:94:0x0176, B:100:0x0184, B:102:0x018a, B:107:0x0194, B:109:0x019a, B:114:0x01a4, B:116:0x01aa, B:121:0x01b4, B:123:0x01ba, B:128:0x01c4, B:130:0x01ca, B:37:0x009e, B:40:0x00aa, B:43:0x00b6, B:46:0x00c2, B:49:0x00ce, B:52:0x00d9, B:55:0x00e3, B:58:0x00ed, B:61:0x00f7, B:64:0x0101, B:67:0x010b, B:70:0x0115, B:73:0x011f, B:76:0x012a, B:79:0x0135, B:18:0x004d, B:20:0x0055, B:21:0x0068, B:23:0x0070, B:24:0x0075, B:26:0x007b, B:28:0x0081, B:139:0x01dd, B:141:0x01e3, B:143:0x01eb, B:145:0x01f1, B:148:0x0201, B:151:0x0211, B:153:0x0225, B:154:0x0237), top: B:160:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(Map<String, String> map, JSONArray jSONArray, JSONArray jSONArray2) {
        String packageName;
        boolean zStartsWith = true;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                if (jSONObject == null || jSONObject.length() >= 2) {
                    String strOptString = jSONObject.optString("fld");
                    String strOptString2 = jSONObject.optString("val");
                    String strOptString3 = jSONObject.optString("opc");
                    if (strOptString != null && strOptString2 != null && strOptString3 != null) {
                        GlobalEnvStruct globalEnvStruct = ControllerCenter.getGlobalEnvStruct();
                        Context context = globalEnvStruct.mAppContext;
                        Map<String, String> publicParamMap = globalEnvStruct.getPublicParamMap();
                        if ("ver".equals(strOptString)) {
                            packageName = PackageUtil.getAppVersionName(context);
                        } else if ("datetime".equals(strOptString)) {
                            SimpleDateFormat simpleDateFormat = a;
                            com.efs.sdk.base.core.a.a.a();
                            packageName = simpleDateFormat.format(new Date(com.efs.sdk.base.core.a.a.b()));
                        } else if ("pkg".equals(strOptString)) {
                            packageName = PackageUtil.getPackageName(context);
                        } else {
                            packageName = (publicParamMap.isEmpty() || !publicParamMap.containsKey(strOptString)) ? null : publicParamMap.get(strOptString);
                        }
                        if (packageName == null) {
                            if (!"isNull".equals(strOptString3)) {
                            }
                        } else {
                            char c = 65535;
                            switch (strOptString3.hashCode()) {
                                case -1555538761:
                                    if (strOptString3.equals("startsWith")) {
                                        c = '\b';
                                        break;
                                    }
                                    break;
                                case -1295482945:
                                    if (strOptString3.equals("equals")) {
                                        c = 11;
                                        break;
                                    }
                                    break;
                                case -567445985:
                                    if (strOptString3.equals("contains")) {
                                        c = '\n';
                                        break;
                                    }
                                    break;
                                case 33:
                                    if (strOptString3.equals(Cdo.f28590try)) {
                                        c = 5;
                                        break;
                                    }
                                    break;
                                case 60:
                                    if (strOptString3.equals("<")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                                case 62:
                                    if (strOptString3.equals(">")) {
                                        c = 1;
                                        break;
                                    }
                                    break;
                                case 1084:
                                    if (strOptString3.equals("!=")) {
                                        c = 6;
                                        break;
                                    }
                                    break;
                                case 1921:
                                    if (strOptString3.equals("<=")) {
                                        c = 4;
                                        break;
                                    }
                                    break;
                                case 1922:
                                    if (strOptString3.equals("<>")) {
                                        c = 7;
                                        break;
                                    }
                                    break;
                                case 1952:
                                    if (strOptString3.equals("==")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case 1983:
                                    if (strOptString3.equals(">=")) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                                case 257797441:
                                    if (strOptString3.equals("equalsIgnoreCase")) {
                                        c = '\f';
                                        break;
                                    }
                                    break;
                                case 840862003:
                                    if (strOptString3.equals("matches")) {
                                        c = 14;
                                        break;
                                    }
                                    break;
                                case 1743158238:
                                    if (strOptString3.equals("endsWith")) {
                                        c = '\t';
                                        break;
                                    }
                                    break;
                                case 2058039875:
                                    if (strOptString3.equals("isEmpty")) {
                                        c = wk.f7547for;
                                        break;
                                    }
                                    break;
                            }
                            switch (c) {
                                case 0:
                                    int iA = a(strOptString, packageName, strOptString2);
                                    if (iA == -100) {
                                        if (packageName.compareTo(strOptString2) == 0) {
                                            zStartsWith = true;
                                            break;
                                        }
                                        zStartsWith = false;
                                        break;
                                    } else {
                                        if (iA == 0) {
                                            zStartsWith = true;
                                        }
                                        zStartsWith = false;
                                    }
                                case 1:
                                    int iA2 = a(strOptString, packageName, strOptString2);
                                    if (iA2 == -100) {
                                        if (packageName.compareTo(strOptString2) > 0) {
                                            zStartsWith = true;
                                            break;
                                        }
                                        zStartsWith = false;
                                        break;
                                    } else {
                                        if (iA2 > 0) {
                                            zStartsWith = true;
                                        }
                                        zStartsWith = false;
                                    }
                                case 2:
                                    int iA3 = a(strOptString, packageName, strOptString2);
                                    if (iA3 == -100) {
                                        if (packageName.compareTo(strOptString2) < 0) {
                                            zStartsWith = true;
                                            break;
                                        }
                                        zStartsWith = false;
                                        break;
                                    } else {
                                        if (iA3 < 0) {
                                            zStartsWith = true;
                                        }
                                        zStartsWith = false;
                                    }
                                case 3:
                                    int iA4 = a(strOptString, packageName, strOptString2);
                                    if (iA4 == -100) {
                                        if (packageName.compareTo(strOptString2) >= 0) {
                                            zStartsWith = true;
                                            break;
                                        }
                                        zStartsWith = false;
                                        break;
                                    } else {
                                        if (iA4 >= 0) {
                                            zStartsWith = true;
                                        }
                                        zStartsWith = false;
                                    }
                                case 4:
                                    int iA5 = a(strOptString, packageName, strOptString2);
                                    if (iA5 == -100) {
                                        if (packageName.compareTo(strOptString2) <= 0) {
                                            zStartsWith = true;
                                            break;
                                        }
                                        zStartsWith = false;
                                        break;
                                    } else {
                                        if (iA5 <= 0) {
                                            zStartsWith = true;
                                        }
                                        zStartsWith = false;
                                    }
                                case 5:
                                case 6:
                                case 7:
                                    int iA6 = a(strOptString, packageName, strOptString2);
                                    if (iA6 == -100) {
                                        if (packageName.compareTo(strOptString2) != 0) {
                                            zStartsWith = true;
                                            break;
                                        } else {
                                            zStartsWith = false;
                                            break;
                                        }
                                    } else {
                                        if (iA6 != 0) {
                                            zStartsWith = true;
                                        }
                                        zStartsWith = false;
                                    }
                                case '\b':
                                    zStartsWith = packageName.startsWith(strOptString2);
                                    break;
                                case '\t':
                                    zStartsWith = packageName.endsWith(strOptString2);
                                    break;
                                case '\n':
                                    zStartsWith = packageName.contains(strOptString2);
                                    break;
                                case 11:
                                    zStartsWith = packageName.equals(strOptString2);
                                    break;
                                case '\f':
                                    zStartsWith = packageName.equalsIgnoreCase(strOptString2);
                                    break;
                                case '\r':
                                    zStartsWith = packageName.isEmpty();
                                    break;
                                case 14:
                                    zStartsWith = packageName.matches(strOptString2);
                                    break;
                            }
                            if (zStartsWith) {
                            }
                        }
                    }
                    if (zStartsWith) {
                        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                            JSONObject jSONObject2 = (JSONObject) jSONArray2.get(i2);
                            if (jSONObject2 != null && jSONObject2.length() >= 2) {
                                String strOptString4 = jSONObject2.optString("opt");
                                Object objOpt = jSONObject2.opt("set");
                                if (strOptString4 != null && objOpt != null) {
                                    String strOptString5 = jSONObject2.optString("lt", null);
                                    String strOptString6 = jSONObject2.optString("net", null);
                                    if (strOptString5 != null) {
                                        strOptString4 = strOptString4 + "_" + strOptString5;
                                    }
                                    if (strOptString6 != null) {
                                        strOptString4 = strOptString4 + "_" + strOptString6;
                                    }
                                    map.put(strOptString4, String.valueOf(objOpt));
                                }
                            }
                        }
                        return;
                    }
                    return;
                }
                zStartsWith = false;
                if (zStartsWith) {
                }
            } catch (Throwable th) {
                com.efs.sdk.base.core.util.d.b("efs.config", "updateConfigCond error", th);
                return;
            }
        }
        if (zStartsWith) {
        }
    }

    private static int a(String str, String str2, String str3) {
        if ("ver".equals(str)) {
            return a(str2, str3);
        }
        if ("datetime".equals(str)) {
            return b(str2, str3);
        }
        return -100;
    }

    private static int a(String str, String str2) {
        if (str == null) {
            str = "0";
        }
        if (str2 == null) {
            str2 = "0";
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
        int i = 0;
        while (i < iMax) {
            int i2 = i < strArrSplit.length ? Integer.parseInt(strArrSplit[i]) : 0;
            int i3 = i < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i]) : 0;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
            i++;
        }
        return 0;
    }
}
