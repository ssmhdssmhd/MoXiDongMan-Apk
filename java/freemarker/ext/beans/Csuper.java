package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;
import java.util.Collection;
import java.util.List;

/* renamed from: freemarker.ext.beans.super, reason: invalid class name */
/* loaded from: classes.dex */
public class Csuper extends f implements TemplateCollectionModel, TemplateSequenceModel {

    /* renamed from: goto, reason: not valid java name */
    public static final ModelFactory f24619goto = new Cdo();

    /* renamed from: freemarker.ext.beans.super$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Csuper((Collection) obj, (Ctry) objectWrapper);
        }
    }

    public Csuper(Collection collection, Ctry ctry) {
        super(collection, ctry);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m28675break() {
        return this.f24599do instanceof List;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        Object obj = this.f24599do;
        if (obj instanceof List) {
            try {
                return m28669this(((List) obj).get(i));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        throw new k52("Underlying collection is not a list, it's " + this.f24599do.getClass().getName());
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() {
        return new Cstatic(((Collection) this.f24599do).iterator(), this.f24601if);
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModelEx
    public int size() {
        return ((Collection) this.f24599do).size();
    }
}
