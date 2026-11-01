package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.core.m;
import freemarker.ext.util.ModelFactory;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.Creturn;
import freemarker.template.Cthrow;
import freemarker.template.Cthrows;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelWithAPISupport;
import freemarker.template.utility.RichObjectWrapper;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class a extends Cthrows implements TemplateHashModelEx2, TemplateMethodModelEx, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport {

    /* renamed from: for, reason: not valid java name */
    public static final ModelFactory f24473for = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private final Map f24474if;

    /* renamed from: freemarker.ext.beans.a$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new a((Map) obj, (Ctry) objectWrapper);
        }
    }

    public a(Map map, Ctry ctry) {
        super(ctry);
        this.f24474if = map;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        Object objUnwrap = ((Ctry) getObjectWrapper()).unwrap((TemplateModel) list.get(0));
        Object obj = this.f24474if.get(objUnwrap);
        if (obj != null || this.f24474if.containsKey(objUnwrap)) {
            return wrap(obj);
        }
        return null;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        Object obj = this.f24474if.get(str);
        if (obj == null) {
            if (str.length() == 1) {
                Character chValueOf = Character.valueOf(str.charAt(0));
                Object obj2 = this.f24474if.get(chValueOf);
                if (obj2 == null && !this.f24474if.containsKey(str) && !this.f24474if.containsKey(chValueOf)) {
                    return null;
                }
                obj = obj2;
            } else if (!this.f24474if.containsKey(str)) {
                return null;
            }
        }
        return wrap(obj);
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((RichObjectWrapper) getObjectWrapper()).wrapAsAPI(this.f24474if);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return this.f24474if;
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.f24474if;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.f24474if.isEmpty();
    }

    @Override // freemarker.template.TemplateHashModelEx2
    public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() {
        return new Cthrow(this.f24474if, getObjectWrapper());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() {
        return new m(new Creturn(this.f24474if.keySet(), getObjectWrapper()));
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        return this.f24474if.size();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() {
        return new m(new Creturn(this.f24474if.values(), getObjectWrapper()));
    }
}
