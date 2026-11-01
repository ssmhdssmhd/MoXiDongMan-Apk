package freemarker.ext.beans;

import android.support.v4.bl2;
import android.support.v4.ez1;
import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import android.support.v4.xn0;
import freemarker.core.m;
import freemarker.ext.util.ModelFactory;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.log.Cif;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.Creturn;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateModelWithAPISupport;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: freemarker.ext.beans.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew implements TemplateHashModelEx, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport {

    /* renamed from: do, reason: not valid java name */
    public final Object f24599do;

    /* renamed from: for, reason: not valid java name */
    private HashMap<Object, TemplateModel> f24600for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f24601if;

    /* renamed from: new, reason: not valid java name */
    private static final Cif f24597new = Cif.m29193break("freemarker.beans");

    /* renamed from: try, reason: not valid java name */
    public static final TemplateModel f24598try = new ez1("UNKNOWN");

    /* renamed from: case, reason: not valid java name */
    public static final ModelFactory f24596case = new Cdo();

    /* renamed from: freemarker.ext.beans.new$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cnew(obj, (Ctry) objectWrapper);
        }
    }

    public Cnew(Object obj, Ctry ctry) {
        this(obj, ctry, true);
    }

    /* renamed from: else, reason: not valid java name */
    private void m28663else(String str, Map<?, ?> map) {
        f24597new.mo29183for("Key " + Csuper.b(str) + " was not found on instance of " + this.f24599do.getClass().getName() + ". Introspection information for the class is: " + map);
    }

    /* renamed from: try, reason: not valid java name */
    private TemplateModel m28664try(Object obj, Map<Object, Object> map) throws IllegalAccessException, k52, InvocationTargetException {
        TemplateModel cstrictfp;
        TemplateModel templateModelM28687abstract;
        synchronized (this) {
            HashMap<Object, TemplateModel> map2 = this.f24600for;
            cstrictfp = map2 != null ? map2.get(obj) : null;
        }
        if (cstrictfp != null) {
            return cstrictfp;
        }
        TemplateModel templateModelWrap = f24598try;
        if (obj instanceof Cpublic) {
            Cpublic cpublic = (Cpublic) obj;
            Method methodM28670do = cpublic.m28670do();
            if (methodM28670do == null) {
                templateModelM28687abstract = this.f24601if.m28687abstract(this.f24599do, cpublic.m28671if(), null);
            } else if (this.f24601if.m28693default() || cpublic.m28671if() == null) {
                cstrictfp = new c(this.f24599do, methodM28670do, Cclass.m28513final(map, methodM28670do), this.f24601if);
                templateModelWrap = cstrictfp;
            } else {
                templateModelM28687abstract = this.f24601if.m28687abstract(this.f24599do, cpublic.m28671if(), null);
            }
            templateModelWrap = templateModelM28687abstract;
        } else if (obj instanceof Field) {
            templateModelWrap = this.f24601if.wrap(((Field) obj).get(this.f24599do));
        } else {
            if (obj instanceof Method) {
                Method method = (Method) obj;
                cstrictfp = new c(this.f24599do, method, Cclass.m28513final(map, method), this.f24601if);
            } else if (obj instanceof Ccontinue) {
                cstrictfp = new Cstrictfp(this.f24599do, (Ccontinue) obj, this.f24601if);
            }
            templateModelWrap = cstrictfp;
        }
        if (cstrictfp != null) {
            synchronized (this) {
                if (this.f24600for == null) {
                    this.f24600for = new HashMap<>();
                }
                this.f24600for.put(obj, cstrictfp);
            }
        }
        return templateModelWrap;
    }

    /* renamed from: case */
    public Set mo28636case() {
        return this.f24601if.m28691const().m28541strictfp(this.f24599do.getClass());
    }

    /* renamed from: do, reason: not valid java name */
    public void m28665do() {
        synchronized (this) {
            this.f24600for = null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m28666for() {
        return this.f24601if.m28691const().m28530const(this.f24599do.getClass()).get(Cclass.f24492switch) != null;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        TemplateModel templateModelM28664try;
        Class<?> cls = this.f24599do.getClass();
        Map<Object, Object> mapM28530const = this.f24601if.m28691const().m28530const(cls);
        try {
            if (this.f24601if.m28698implements()) {
                Object obj = mapM28530const.get(str);
                templateModelM28664try = obj != null ? m28664try(obj, mapM28530const) : mo28638new(mapM28530const, cls, str);
            } else {
                TemplateModel templateModelMo28638new = mo28638new(mapM28530const, cls, str);
                TemplateModel templateModelWrap = this.f24601if.wrap(null);
                if (templateModelMo28638new != templateModelWrap && templateModelMo28638new != f24598try) {
                    return templateModelMo28638new;
                }
                Object obj2 = mapM28530const.get(str);
                if (obj2 != null) {
                    TemplateModel templateModelM28664try2 = m28664try(obj2, mapM28530const);
                    templateModelM28664try = (templateModelM28664try2 == f24598try && templateModelMo28638new == templateModelWrap) ? templateModelWrap : templateModelM28664try2;
                } else {
                    templateModelM28664try = null;
                }
            }
            if (templateModelM28664try != f24598try) {
                return templateModelM28664try;
            }
            if (!this.f24601if.m28710synchronized()) {
                if (f24597new.mo29190throw()) {
                    m28663else(str, mapM28530const);
                }
                return this.f24601if.wrap(null);
            }
            throw new xn0("No such bean property: " + str);
        } catch (k52 e) {
            throw e;
        } catch (Exception e2) {
            throw new vl2(e2, "An error has occurred when reading existing sub-variable ", new fl2(str), "; see cause exception! The type of the containing value was: ", new bl2(this));
        }
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return this.f24601if.wrapAsAPI(this.f24599do);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class<?> cls) {
        return this.f24599do;
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.f24599do;
    }

    /* renamed from: goto, reason: not valid java name */
    public Object m28667goto(TemplateModel templateModel) throws k52 {
        return this.f24601if.unwrap(templateModel);
    }

    /* renamed from: if, reason: not valid java name */
    public String m28668if() {
        String string;
        Object obj = this.f24599do;
        return (obj == null || (string = obj.toString()) == null) ? "null" : string;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        Object obj = this.f24599do;
        if (obj instanceof String) {
            return ((String) obj).length() == 0;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if ((obj instanceof Iterator) && this.f24601if.m28715volatile()) {
            return !((Iterator) this.f24599do).hasNext();
        }
        Object obj2 = this.f24599do;
        return obj2 instanceof Map ? ((Map) obj2).isEmpty() : obj2 == null || Boolean.FALSE.equals(obj2);
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() {
        return new m(new Creturn(mo28636case(), this.f24601if));
    }

    /* renamed from: new */
    public TemplateModel mo28638new(Map map, Class<?> cls, String str) throws IllegalAccessException, k52, InvocationTargetException {
        Method method = (Method) map.get(Cclass.f24492switch);
        return method == null ? f24598try : this.f24601if.m28687abstract(this.f24599do, method, new Object[]{str});
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        return this.f24601if.m28691const().m28531continue(this.f24599do.getClass());
    }

    /* renamed from: this, reason: not valid java name */
    public TemplateModel m28669this(Object obj) throws k52 {
        return this.f24601if.m28712throws().wrap(obj);
    }

    public String toString() {
        return this.f24599do.toString();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() throws k52 {
        ArrayList arrayList = new ArrayList(size());
        TemplateModelIterator it = keys().iterator();
        while (it.hasNext()) {
            arrayList.add(get(((TemplateScalarModel) it.next()).getAsString()));
        }
        return new m(new Creturn(arrayList, this.f24601if));
    }

    public Cnew(Object obj, Ctry ctry, boolean z) {
        this.f24599do = obj;
        this.f24601if = ctry;
        if (!z || obj == null) {
            return;
        }
        ctry.m28691const().m28530const(obj.getClass());
    }
}
