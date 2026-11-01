package android.support.v4;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class hi0 {
    /* renamed from: do, reason: not valid java name */
    public static <T> List<T> m3040do(String str, Class<T> cls) {
        ArrayList arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Gson gsonCreate = new GsonBuilder().create();
        try {
            JsonArray asJsonArray = new JsonParser().parse(str).getAsJsonArray();
            if (asJsonArray == null) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                Iterator<JsonElement> it = asJsonArray.iterator();
                while (it.hasNext()) {
                    try {
                        arrayList2.add(gsonCreate.fromJson(it.next(), (Class) cls));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                return arrayList2;
            } catch (Exception e2) {
                e = e2;
                arrayList = arrayList2;
                e.printStackTrace();
                return arrayList;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> String m3041for(List<T> list) {
        try {
            return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(list);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T m3042if(String str, Class<T> cls) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return (T) new GsonBuilder().create().fromJson(str, (Class) cls);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> String m3043new(List<T> list) {
        try {
            return new GsonBuilder().serializeNulls().create().toJson(list);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> String m3044try(T t) {
        t.getClass();
        try {
            return new GsonBuilder().serializeNulls().create().toJson(t);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
