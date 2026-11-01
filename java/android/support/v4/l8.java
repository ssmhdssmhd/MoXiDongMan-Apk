package android.support.v4;

import freemarker.ext.beans.Ctry;
import freemarker.ext.util.Cif;
import freemarker.ext.util.ModelFactory;
import freemarker.template.TemplateModel;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class l8 extends Cif {

    /* renamed from: case, reason: not valid java name */
    private final Ctry f3558case;

    /* renamed from: new, reason: not valid java name */
    private final Map f3559new = new ConcurrentHashMap();

    /* renamed from: try, reason: not valid java name */
    private final Set f3560try = new HashSet();

    public l8(Ctry ctry) {
        this.f3558case = ctry;
    }

    @Override // freemarker.ext.util.Cif
    /* renamed from: if, reason: not valid java name */
    public TemplateModel mo4608if(Object obj) {
        Class<?> cls = obj.getClass();
        ModelFactory modelFactoryMo28709switch = (ModelFactory) this.f3559new.get(cls);
        if (modelFactoryMo28709switch == null) {
            synchronized (this.f3559new) {
                modelFactoryMo28709switch = (ModelFactory) this.f3559new.get(cls);
                if (modelFactoryMo28709switch == null) {
                    String name = cls.getName();
                    if (!this.f3560try.add(name)) {
                        this.f3559new.clear();
                        this.f3560try.clear();
                        this.f3560try.add(name);
                    }
                    modelFactoryMo28709switch = this.f3558case.mo28709switch(cls);
                    this.f3559new.put(cls, modelFactoryMo28709switch);
                }
            }
        }
        return modelFactoryMo28709switch.create(obj, this.f3558case);
    }

    @Override // freemarker.ext.util.Cif
    /* renamed from: try, reason: not valid java name */
    public boolean mo4609try(Object obj) {
        return obj.getClass() != Boolean.class;
    }
}
