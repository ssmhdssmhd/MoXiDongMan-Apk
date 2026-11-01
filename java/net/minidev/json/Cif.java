package net.minidev.json;

import android.support.v4.ca2;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import net.minidev.json.reader.Ctry;

/* renamed from: net.minidev.json.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends HashMap<String, Object> implements JSONAware, JSONAwareEx, JSONStreamAwareEx {
    private static final long serialVersionUID = -503443796854799292L;

    public Cif() {
    }

    /* renamed from: do, reason: not valid java name */
    private static Cdo m31592do(Cdo cdo, Cdo cdo2) {
        cdo.addAll(cdo2);
        return cdo;
    }

    public static String escape(String str) {
        return Cnew.m31607for(str);
    }

    /* renamed from: if, reason: not valid java name */
    private static Cif m31593if(Cif cif, Cif cif2) {
        if (cif2 == null) {
            return cif;
        }
        for (String str : cif.keySet()) {
            Object obj = cif.get(str);
            Object obj2 = cif2.get(str);
            if (obj2 != null) {
                if (obj instanceof Cdo) {
                    cif.put(str, merge((Cdo) obj, obj2));
                } else if (obj instanceof Cif) {
                    cif.put(str, merge((Cif) obj, obj2));
                } else if (!obj.equals(obj2)) {
                    if (obj.getClass().equals(obj2.getClass())) {
                        throw new RuntimeException("JSON merge can not merge two " + obj.getClass().getName() + " Object together");
                    }
                    throw new RuntimeException("JSON merge can not merge " + obj.getClass().getName() + " with " + obj2.getClass().getName());
                }
            }
        }
        for (String str2 : cif2.keySet()) {
            if (!cif.containsKey(str2)) {
                cif.put(str2, cif2.get(str2));
            }
        }
        return cif;
    }

    public static String toJSONString(Map<String, ? extends Object> map) {
        return toJSONString(map, Cnew.f28213do);
    }

    public static void writeJSON(Map<String, ? extends Object> map, Appendable appendable) throws IOException {
        writeJSON(map, appendable, Cnew.f28213do);
    }

    public static void writeJSONKV(String str, Object obj, Appendable appendable, Cfor cfor) throws IOException {
        if (str == null) {
            appendable.append("null");
        } else if (cfor.m31588this(str)) {
            appendable.append(ca2.f674do);
            Cnew.m31596case(str, appendable, cfor);
            appendable.append(ca2.f674do);
        } else {
            appendable.append(str);
        }
        appendable.append(':');
        if (obj instanceof String) {
            cfor.m31586public(appendable, (String) obj);
        } else {
            Cnew.b(obj, appendable, cfor);
        }
    }

    public Cif appendField(String str, Object obj) {
        put(str, obj);
        return this;
    }

    public Number getAsNumber(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj instanceof Number ? (Number) obj : Long.valueOf(obj.toString());
    }

    public String getAsString(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public void merge(Object obj) {
        merge(this, obj);
    }

    public String toString(Cfor cfor) {
        return toJSONString(this, cfor);
    }

    @Override // net.minidev.json.JSONStreamAware
    public void writeJSONString(Appendable appendable) throws IOException {
        writeJSON(this, appendable, Cnew.f28213do);
    }

    public Cif(Map<String, ?> map) {
        super(map);
    }

    public static Cif merge(Cif cif, Object obj) {
        if (obj == null) {
            return cif;
        }
        if (obj instanceof Cif) {
            return m31593if(cif, (Cif) obj);
        }
        throw new RuntimeException("JSON megre can not merge JSONObject with " + obj.getClass());
    }

    public static String toJSONString(Map<String, ? extends Object> map, Cfor cfor) {
        StringBuilder sb = new StringBuilder();
        try {
            writeJSON(map, sb, cfor);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public static void writeJSON(Map<String, ? extends Object> map, Appendable appendable, Cfor cfor) throws IOException {
        if (map == null) {
            appendable.append("null");
        } else {
            Ctry.f28278this.writeJSONString(map, appendable, cfor);
        }
    }

    @Override // java.util.AbstractMap
    public String toString() {
        return toJSONString(this, Cnew.f28213do);
    }

    @Override // net.minidev.json.JSONStreamAwareEx
    public void writeJSONString(Appendable appendable, Cfor cfor) throws IOException {
        writeJSON(this, appendable, cfor);
    }

    public static Cdo merge(Cdo cdo, Object obj) {
        if (obj == null) {
            return cdo;
        }
        if (cdo instanceof Cdo) {
            return m31592do(cdo, (Cdo) obj);
        }
        cdo.add(obj);
        return cdo;
    }

    @Override // net.minidev.json.JSONAware
    public String toJSONString() {
        return toJSONString(this, Cnew.f28213do);
    }

    @Override // net.minidev.json.JSONAwareEx
    public String toJSONString(Cfor cfor) {
        return toJSONString(this, cfor);
    }
}
