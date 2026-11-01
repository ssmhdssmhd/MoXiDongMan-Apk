package net.minidev.json;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import net.minidev.json.reader.Ctry;

/* renamed from: net.minidev.json.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends ArrayList<Object> implements List<Object>, JSONAwareEx, JSONStreamAwareEx {
    private static final long serialVersionUID = 9106884089231309568L;

    public static String toJSONString(List<? extends Object> list) {
        return toJSONString(list, Cnew.f28213do);
    }

    public static void writeJSONString(Iterable<? extends Object> iterable, Appendable appendable, Cfor cfor) throws IOException {
        if (iterable == null) {
            appendable.append("null");
        } else {
            Ctry.f28274else.writeJSONString(iterable, appendable, cfor);
        }
    }

    public Cdo appendElement(Object obj) {
        add(obj);
        return this;
    }

    public void merge(Object obj) {
        Cif.merge(this, obj);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return toJSONString();
    }

    public static String toJSONString(List<? extends Object> list, Cfor cfor) {
        StringBuilder sb = new StringBuilder();
        try {
            writeJSONString(list, sb, cfor);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public String toString(Cfor cfor) {
        return toJSONString(cfor);
    }

    public static void writeJSONString(List<? extends Object> list, Appendable appendable) throws IOException {
        writeJSONString(list, appendable, Cnew.f28213do);
    }

    @Override // net.minidev.json.JSONStreamAware
    public void writeJSONString(Appendable appendable) throws IOException {
        writeJSONString(this, appendable, Cnew.f28213do);
    }

    @Override // net.minidev.json.JSONAware
    public String toJSONString() {
        return toJSONString(this, Cnew.f28213do);
    }

    @Override // net.minidev.json.JSONStreamAwareEx
    public void writeJSONString(Appendable appendable, Cfor cfor) throws IOException {
        writeJSONString(this, appendable, cfor);
    }

    @Override // net.minidev.json.JSONAwareEx
    public String toJSONString(Cfor cfor) {
        return toJSONString(this, cfor);
    }
}
