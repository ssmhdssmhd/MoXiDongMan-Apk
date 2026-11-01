package android.support.v4;

import net.minidev.json.Cdo;
import net.minidev.json.Cif;
import net.minidev.json.JSONAwareEx;
import net.minidev.json.writer.Ccase;
import net.minidev.json.writer.Ctry;

/* loaded from: classes3.dex */
public class vx<T> extends Ccase<T> {
    public vx(Ctry ctry) {
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
        return new Cif();
    }

    @Override // net.minidev.json.writer.Ccase
    public void setValue(Object obj, String str, Object obj2) {
        ((Cif) obj).put(str, obj2);
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<JSONAwareEx> startArray(String str) {
        return this.base.f28355if;
    }

    @Override // net.minidev.json.writer.Ccase
    public Ccase<JSONAwareEx> startObject(String str) {
        return this.base.f28355if;
    }
}
