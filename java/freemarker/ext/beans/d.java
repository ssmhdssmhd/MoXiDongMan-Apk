package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.log.Cif;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class d implements TemplateHashModelEx {

    /* renamed from: new, reason: not valid java name */
    private static final Cif f24531new = Cif.m29193break("freemarker.beans");

    /* renamed from: do, reason: not valid java name */
    private final Class f24532do;

    /* renamed from: for, reason: not valid java name */
    private final Map f24533for = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private final Ctry f24534if;

    public d(Class cls, Ctry ctry) throws k52, SecurityException {
        this.f24532do = cls;
        this.f24534if = ctry;
        m28580do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m28580do() throws k52, SecurityException {
        if (!Modifier.isPublic(this.f24532do.getModifiers())) {
            throw new k52("Can't wrap the non-public class " + this.f24532do.getName());
        }
        if (this.f24534if.m28716while() == 3) {
            return;
        }
        for (Field field : this.f24532do.getFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                if (Modifier.isFinal(modifiers)) {
                    try {
                        this.f24533for.put(field.getName(), this.f24534if.m28712throws().wrap(field.get(null)));
                    } catch (IllegalAccessException unused) {
                    }
                } else {
                    this.f24533for.put(field.getName(), field);
                }
            }
        }
        if (this.f24534if.m28716while() < 2) {
            for (Method method : this.f24532do.getMethods()) {
                int modifiers2 = method.getModifiers();
                if (Modifier.isPublic(modifiers2) && Modifier.isStatic(modifiers2) && this.f24534if.m28691const().m28538private(method)) {
                    String name = method.getName();
                    Object obj = this.f24533for.get(name);
                    if (obj instanceof Method) {
                        Ccontinue ccontinue = new Ccontinue(this.f24534if.m28692continue());
                        ccontinue.m28576case((Method) obj);
                        ccontinue.m28576case(method);
                        this.f24533for.put(name, ccontinue);
                    } else if (obj instanceof Ccontinue) {
                        ((Ccontinue) obj).m28576case(method);
                    } else {
                        if (obj != null) {
                            Cif cif = f24531new;
                            if (cif.mo29185native()) {
                                cif.mo29180const("Overwriting value [" + obj + "] for  key '" + name + "' with [" + method + "] in static model for " + this.f24532do.getName());
                            }
                        }
                        this.f24533for.put(name, method);
                    }
                }
            }
            for (Map.Entry entry : this.f24533for.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof Method) {
                    Method method2 = (Method) value;
                    entry.setValue(new c(null, method2, method2.getParameterTypes(), this.f24534if));
                } else if (value instanceof Ccontinue) {
                    entry.setValue(new Cstrictfp(null, (Ccontinue) value, this.f24534if));
                }
            }
        }
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        Object obj = this.f24533for.get(str);
        if (obj instanceof TemplateModel) {
            return (TemplateModel) obj;
        }
        if (!(obj instanceof Field)) {
            throw new k52("No such key: " + str + " in class " + this.f24532do.getName());
        }
        try {
            return this.f24534if.m28712throws().wrap(((Field) obj).get(null));
        } catch (IllegalAccessException unused) {
            throw new k52("Illegal access for field " + str + " of class " + this.f24532do.getName());
        }
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.f24533for.isEmpty();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() throws k52 {
        return (TemplateCollectionModel) this.f24534if.m28712throws().wrap(this.f24533for.keySet());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        return this.f24533for.size();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() throws k52 {
        return (TemplateCollectionModel) this.f24534if.m28712throws().wrap(this.f24533for.values());
    }
}
