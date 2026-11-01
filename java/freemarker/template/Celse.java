package freemarker.template;

import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.utility.ObjectWrapperWithAPISupport;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.SortedMap;

/* renamed from: freemarker.template.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Cthrows implements TemplateHashModelEx2, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport, Serializable {
    private final Map map;

    private Celse(Map map, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.map = map;
    }

    public static Celse adapt(Map map, ObjectWrapperWithAPISupport objectWrapperWithAPISupport) {
        return new Celse(map, objectWrapperWithAPISupport);
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        try {
            Object obj = this.map.get(str);
            if (obj == null) {
                if (str.length() != 1 || (this.map instanceof SortedMap)) {
                    TemplateModel templateModelWrap = wrap(null);
                    if (templateModelWrap == null || !this.map.containsKey(str)) {
                        return null;
                    }
                    return templateModelWrap;
                }
                Character chValueOf = Character.valueOf(str.charAt(0));
                try {
                    Object obj2 = this.map.get(chValueOf);
                    if (obj2 == null) {
                        TemplateModel templateModelWrap2 = wrap(null);
                        if (templateModelWrap2 != null) {
                            if (!this.map.containsKey(str)) {
                                if (!this.map.containsKey(chValueOf)) {
                                }
                            }
                            return templateModelWrap2;
                        }
                        return null;
                    }
                    obj = obj2;
                } catch (ClassCastException e) {
                    throw new vl2(e, "Class casting exception while getting Map entry with Character key ", new fl2(chValueOf));
                } catch (NullPointerException e2) {
                    throw new vl2(e2, "NullPointerException while getting Map entry with Character key ", new fl2(chValueOf));
                }
            }
            return wrap(obj);
        } catch (ClassCastException e3) {
            throw new vl2(e3, "ClassCastException while getting Map entry with String key ", new fl2(str));
        } catch (NullPointerException e4) {
            throw new vl2(e4, "NullPointerException while getting Map entry with String key ", new fl2(str));
        }
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((ObjectWrapperWithAPISupport) getObjectWrapper()).wrapAsAPI(this.map);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return this.map;
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.map;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // freemarker.template.TemplateHashModelEx2
    public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() {
        return new Cthrow(this.map, getObjectWrapper());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() {
        return new Cimport((Collection) this.map.keySet(), getObjectWrapper());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        return this.map.size();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() {
        return new Cimport(this.map.values(), getObjectWrapper());
    }
}
