package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: freemarker.ext.beans.throws, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthrows extends f implements TemplateMethodModelEx {

    /* renamed from: goto, reason: not valid java name */
    public static final ModelFactory f24623goto = new Cdo();

    /* renamed from: freemarker.ext.beans.throws$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cthrows((Map) obj, (Ctry) objectWrapper);
        }
    }

    public Cthrows(Map map, Ctry ctry) {
        super(map, ctry);
    }

    @Override // freemarker.ext.beans.Cnew
    /* renamed from: case */
    public Set mo28636case() {
        Set setMo28636case = super.mo28636case();
        setMo28636case.addAll(((Map) this.f24599do).keySet());
        return setMo28636case;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        return m28669this(((Map) this.f24599do).get(m28667goto((TemplateModel) list.get(0))));
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return ((Map) this.f24599do).isEmpty() && super.isEmpty();
    }

    @Override // freemarker.ext.beans.Cnew
    /* renamed from: new */
    public TemplateModel mo28638new(Map map, Class cls, String str) throws k52 {
        Map map2 = (Map) this.f24599do;
        Object obj = map2.get(str);
        if (obj == null) {
            if (str.length() == 1) {
                Character chValueOf = Character.valueOf(str.charAt(0));
                Object obj2 = map2.get(chValueOf);
                if (obj2 == null && !map2.containsKey(str) && !map2.containsKey(chValueOf)) {
                    return Cnew.f24598try;
                }
                obj = obj2;
            } else if (!map2.containsKey(str)) {
                return Cnew.f24598try;
            }
        }
        return m28669this(obj);
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModelEx
    public int size() {
        return mo28636case().size();
    }
}
