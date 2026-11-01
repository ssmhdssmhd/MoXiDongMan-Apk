package net.minidev.json.writer;

import android.support.v4.ic1;
import java.io.IOException;
import java.lang.reflect.Type;

/* renamed from: net.minidev.json.writer.case, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccase<T> {
    private static String ERR_MSG = "Invalid or non Implemented status";
    public final Ctry base;

    public Ccase(Ctry ctry) {
        this.base = ctry;
    }

    public void addValue(Object obj, Object obj2) throws ic1, IOException {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " addValue(Object current, Object value) in " + getClass());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T convert(Object obj) {
        return obj;
    }

    public Object createArray() {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " createArray() in " + getClass());
    }

    public Object createObject() {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " createObject() in " + getClass());
    }

    public Type getType(String str) {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " getType(String key) in " + getClass() + " key=" + str);
    }

    public Object getValue(Object obj, String str) {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " getValue(Object current, String key) in " + getClass() + " key=" + str);
    }

    public void setValue(Object obj, String str, Object obj2) throws ic1, IOException {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " setValue in " + getClass() + " key=" + str);
    }

    public Ccase<?> startArray(String str) throws ic1, IOException {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " startArray in " + getClass() + " key=" + str);
    }

    public Ccase<?> startObject(String str) throws ic1, IOException {
        throw new RuntimeException(String.valueOf(ERR_MSG) + " startObject(String key) in " + getClass() + " key=" + str);
    }
}
