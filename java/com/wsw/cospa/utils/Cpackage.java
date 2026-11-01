package com.wsw.cospa.utils;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.wsw.cospa.utils.package, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cpackage {

    /* renamed from: do, reason: not valid java name */
    private static Gson f22708do = new Gson();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.wsw.cospa.utils.package$do, reason: invalid class name */
    public class Cdo<T> extends TypeToken<List<T>> {
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.wsw.cospa.utils.package$for, reason: invalid class name */
    public class Cfor<T> extends TypeToken<Map<String, T>> {
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.wsw.cospa.utils.package$if, reason: invalid class name */
    public class Cif<T> extends TypeToken<List<Map<String, T>>> {
    }

    private Cpackage() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m27019do(Object obj) {
        Gson gson = f22708do;
        if (gson != null) {
            return gson.toJson(obj);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> List<T> m27020for(String str, Class<T> cls) {
        Gson gson = f22708do;
        if (gson != null) {
            return (List) gson.fromJson(str, new Cdo().getType());
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T m27021if(String str, Class<T> cls) {
        Gson gson = f22708do;
        if (gson != null) {
            return (T) gson.fromJson(str, (Class) cls);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> List<Map<String, T>> m27022new(String str) {
        Gson gson = f22708do;
        if (gson != null) {
            return (List) gson.fromJson(str, new Cif().getType());
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Map<String, T> m27023try(String str) {
        Gson gson = f22708do;
        if (gson != null) {
            return (Map) gson.fromJson(str, new Cfor().getType());
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public <T> List<T> m27024case(String str, Class<T> cls) {
        Gson gson = new Gson();
        ArrayList arrayList = new ArrayList();
        Iterator<JsonElement> it = new JsonParser().parse(str).getAsJsonArray().iterator();
        while (it.hasNext()) {
            arrayList.add(gson.fromJson(it.next(), (Class) cls));
        }
        return arrayList;
    }
}
