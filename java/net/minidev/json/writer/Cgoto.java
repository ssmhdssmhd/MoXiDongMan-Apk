package net.minidev.json.writer;

import android.support.v4.ic1;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Objects;

/* renamed from: net.minidev.json.writer.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto<T> extends Ccase<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f28338do;

    /* renamed from: if, reason: not valid java name */
    public final Ccase<?> f28339if;

    public Cgoto(Ctry ctry, T t) {
        super(ctry);
        Objects.requireNonNull(t, "can not update null Object");
        this.f28338do = t;
        this.f28339if = ctry.m31740do(t.getClass());
    }

    @Override // net.minidev.json.writer.Ccase
    public void addValue(Object obj, Object obj2) throws ic1, IOException {
        this.f28339if.addValue(obj, obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public T convert(Object obj) {
        T t = this.f28338do;
        return t != null ? t : (T) this.f28339if.convert(obj);
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createArray() {
        T t = this.f28338do;
        return t != null ? t : this.f28339if.createArray();
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createObject() {
        T t = this.f28338do;
        return t != null ? t : this.f28339if.createObject();
    }

    @Override // net.minidev.json.writer.Ccase
    public void setValue(Object obj, String str, Object obj2) throws ic1, IOException {
        this.f28339if.setValue(obj, str, obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<?> startArray(String str) throws ic1, IOException {
        return this.f28339if.startArray(str);
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<?> startObject(String str) throws ic1, IOException {
        Object value = this.f28339if.getValue(this.f28338do, str);
        return value == null ? this.f28339if.startObject(str) : new Cgoto(this.base, value, this.f28339if.getType(str));
    }

    public Cgoto(Ctry ctry, T t, Type type) {
        super(ctry);
        Objects.requireNonNull(t, "can not update null Object");
        this.f28338do = t;
        this.f28339if = ctry.m31741for(type);
    }
}
