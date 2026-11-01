package net.minidev.json.writer;

import android.support.v4.ic1;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* renamed from: net.minidev.json.writer.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse<T> extends Ccase<T> {

    /* renamed from: do, reason: not valid java name */
    private Map<String, String> f28312do;

    /* renamed from: if, reason: not valid java name */
    private Ccase<T> f28313if;

    public Celse(Ccase<T> ccase) {
        super(ccase.base);
        this.f28313if = ccase;
        this.f28312do = new HashMap();
    }

    /* renamed from: do, reason: not valid java name */
    private String m31729do(String str) {
        String str2 = this.f28312do.get(str);
        return str2 != null ? str2 : str;
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createObject() {
        return this.f28313if.createObject();
    }

    @Override // net.minidev.json.writer.Ccase
    public Type getType(String str) {
        return this.f28313if.getType(m31729do(str));
    }

    @Override // net.minidev.json.writer.Ccase
    public Object getValue(Object obj, String str) {
        return this.f28313if.getValue(obj, m31729do(str));
    }

    /* renamed from: if, reason: not valid java name */
    public void m31730if(String str, String str2) {
        this.f28312do.put(str, str2);
    }

    @Override // net.minidev.json.writer.Ccase
    public void setValue(Object obj, String str, Object obj2) throws ic1, IOException {
        this.f28313if.setValue(obj, m31729do(str), obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<?> startArray(String str) throws ic1, IOException {
        return this.f28313if.startArray(m31729do(str));
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<?> startObject(String str) throws ic1, IOException {
        return this.f28313if.startObject(m31729do(str));
    }
}
