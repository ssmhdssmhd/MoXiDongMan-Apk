package android.support.v4;

import java.util.List;
import java.util.Map;
import net.minidev.json.writer.Ccase;
import net.minidev.json.writer.Ctry;

/* loaded from: classes3.dex */
public class wx<T> extends Ccase<T> {

    /* renamed from: do, reason: not valid java name */
    public Class<T> f7712do;

    public wx(Ctry ctry, Class<T> cls) {
        super(ctry);
        this.f7712do = cls;
    }

    @Override // net.minidev.json.writer.Ccase
    public void addValue(Object obj, Object obj2) {
        ((List) obj).add(obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createArray() {
        try {
            return this.f7712do.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createObject() {
        try {
            return this.f7712do.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // net.minidev.json.writer.Ccase
    public void setValue(Object obj, String str, Object obj2) {
        ((Map) obj).put(str, obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<T> startArray(String str) {
        return this;
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<T> startObject(String str) {
        return this;
    }
}
