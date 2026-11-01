package android.support.v4;

import java.util.LinkedHashMap;
import java.util.Map;
import net.minidev.json.Cdo;
import net.minidev.json.JSONAwareEx;
import net.minidev.json.writer.Ccase;
import net.minidev.json.writer.Ctry;

/* loaded from: classes3.dex */
public class xx extends Ccase<JSONAwareEx> {
    public xx(Ctry ctry) {
        super(ctry);
    }

    @Override // net.minidev.json.writer.Ccase
    public void addValue(Object obj, Object obj2) {
        ((Cdo) obj).add(obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createArray() {
        return new Cdo();
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createObject() {
        return new LinkedHashMap();
    }

    @Override // net.minidev.json.writer.Ccase
    public void setValue(Object obj, String str, Object obj2) {
        ((Map) obj).put(str, obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<JSONAwareEx> startArray(String str) {
        return this.base.f28354for;
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<JSONAwareEx> startObject(String str) {
        return this.base.f28354for;
    }
}
