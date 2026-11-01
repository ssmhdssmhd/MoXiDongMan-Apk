package freemarker.ext.rhino;

import android.support.v4.k52;
import freemarker.ext.beans.Ctry;
import freemarker.ext.util.ModelFactory;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.NativeJavaObject;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

/* renamed from: freemarker.ext.rhino.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements TemplateHashModelEx, TemplateSequenceModel, AdapterTemplateModel, TemplateScalarModel, TemplateBooleanModel, TemplateNumberModel {

    /* renamed from: for, reason: not valid java name */
    public static final ModelFactory f24911for = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final Scriptable f24912do;

    /* renamed from: if, reason: not valid java name */
    private final Ctry f24913if;

    /* renamed from: freemarker.ext.rhino.if$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cif((Scriptable) obj, (Ctry) objectWrapper);
        }
    }

    public Cif(Scriptable scriptable, Ctry ctry) {
        this.f24912do = scriptable;
        this.f24913if = ctry;
    }

    /* renamed from: do, reason: not valid java name */
    public Scriptable m29066do() {
        return this.f24912do;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        Object property = ScriptableObject.getProperty(this.f24912do, str);
        return property instanceof Function ? new freemarker.ext.rhino.Cdo((Function) property, this.f24912do, this.f24913if) : this.f24913if.wrap(property);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        try {
            return NativeJavaObject.coerceType(cls, this.f24912do);
        } catch (EvaluatorException unused) {
            return NativeJavaObject.coerceType(Object.class, this.f24912do);
        }
    }

    @Override // freemarker.template.TemplateBooleanModel
    public boolean getAsBoolean() {
        return Context.toBoolean(this.f24912do);
    }

    @Override // freemarker.template.TemplateNumberModel
    public Number getAsNumber() {
        return Double.valueOf(Context.toNumber(this.f24912do));
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return Context.toString(this.f24912do);
    }

    /* renamed from: if, reason: not valid java name */
    Ctry m29067if() {
        return this.f24913if;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.f24912do.getIds().length == 0;
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() throws k52 {
        return (TemplateCollectionModel) this.f24913if.wrap(this.f24912do.getIds());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        return this.f24912do.getIds().length;
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() throws k52 {
        Object[] ids = this.f24912do.getIds();
        int length = ids.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            Object obj = ids[i];
            if (obj instanceof Number) {
                objArr[i] = ScriptableObject.getProperty(this.f24912do, ((Number) obj).intValue());
            } else {
                objArr[i] = ScriptableObject.getProperty(this.f24912do, String.valueOf(obj));
            }
        }
        return (TemplateCollectionModel) this.f24913if.wrap(objArr);
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        Object property = ScriptableObject.getProperty(this.f24912do, i);
        if (property instanceof Function) {
            return new freemarker.ext.rhino.Cdo((Function) property, this.f24912do, this.f24913if);
        }
        return this.f24913if.wrap(property);
    }
}
