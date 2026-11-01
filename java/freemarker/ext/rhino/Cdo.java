package freemarker.ext.rhino;

import android.support.v4.k52;
import freemarker.ext.beans.Ctry;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.util.List;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

/* renamed from: freemarker.ext.rhino.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif implements TemplateMethodModelEx {

    /* renamed from: new, reason: not valid java name */
    private final Scriptable f24909new;

    public Cdo(Function function, Scriptable scriptable, Ctry ctry) {
        super(function, ctry);
        this.f24909new = scriptable;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        Context currentContext = Context.getCurrentContext();
        Object[] array = list.toArray();
        Ctry ctryM29067if = m29067if();
        for (int i = 0; i < array.length; i++) {
            array[i] = ctryM29067if.unwrap((TemplateModel) array[i]);
        }
        return ctryM29067if.wrap(((Function) m29066do()).call(currentContext, ScriptableObject.getTopLevelScope(this.f24909new), this.f24909new, array));
    }
}
