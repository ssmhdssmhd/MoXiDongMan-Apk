package freemarker.template;

import android.support.v4.k52;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.utility.ObjectWrapperWithAPISupport;
import java.io.Serializable;

/* renamed from: freemarker.template.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cthrows implements TemplateCollectionModel, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport, Serializable {
    private final Iterable<?> iterable;

    private Cnew(Iterable<?> iterable, ObjectWrapperWithAPISupport objectWrapperWithAPISupport) {
        super(objectWrapperWithAPISupport);
        this.iterable = iterable;
    }

    public static Cnew adapt(Iterable<?> iterable, ObjectWrapperWithAPISupport objectWrapperWithAPISupport) {
        return new Cnew(iterable, objectWrapperWithAPISupport);
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((ObjectWrapperWithAPISupport) getObjectWrapper()).wrapAsAPI(this.iterable);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.iterable;
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        return new Cconst(this.iterable.iterator(), getObjectWrapper());
    }
}
