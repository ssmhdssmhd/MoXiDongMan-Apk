package freemarker.template;

import android.support.v4.k52;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.utility.ObjectWrapperWithAPISupport;
import freemarker.template.utility.RichObjectWrapper;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;

/* renamed from: freemarker.template.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cthrows implements TemplateSequenceModel, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport, Serializable {
    public final List list;

    /* renamed from: freemarker.template.case$if, reason: invalid class name */
    public static class Cif extends Ccase implements TemplateCollectionModel {
        @Override // freemarker.template.TemplateCollectionModel
        public TemplateModelIterator iterator() throws k52 {
            return new Cconst(this.list.iterator(), getObjectWrapper());
        }

        private Cif(List list, RichObjectWrapper richObjectWrapper) {
            super(list, richObjectWrapper);
        }
    }

    public static Ccase adapt(List list, RichObjectWrapper richObjectWrapper) {
        return list instanceof AbstractSequentialList ? new Cif(list, richObjectWrapper) : new Ccase(list, richObjectWrapper);
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        if (i < 0 || i >= this.list.size()) {
            return null;
        }
        return wrap(this.list.get(i));
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((ObjectWrapperWithAPISupport) getObjectWrapper()).wrapAsAPI(this.list);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.list;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() throws k52 {
        return this.list.size();
    }

    private Ccase(List list, RichObjectWrapper richObjectWrapper) {
        super(richObjectWrapper);
        this.list = list;
    }
}
