package freemarker.template;

import android.support.v4.il2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.utility.ObjectWrapperWithAPISupport;
import java.io.Serializable;
import java.util.Collection;

/* renamed from: freemarker.template.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends Cthrows implements TemplateCollectionModelEx, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport, Serializable {
    private final Collection collection;

    private Cgoto(Collection collection, ObjectWrapperWithAPISupport objectWrapperWithAPISupport) {
        super(objectWrapperWithAPISupport);
        this.collection = collection;
    }

    public static Cgoto adapt(Collection collection, ObjectWrapperWithAPISupport objectWrapperWithAPISupport) {
        return new Cgoto(collection, objectWrapperWithAPISupport);
    }

    public boolean contains(TemplateModel templateModel) throws k52 {
        Object objUnwrap = ((ObjectWrapperAndUnwrapper) getObjectWrapper()).unwrap(templateModel);
        try {
            return this.collection.contains(objUnwrap);
        } catch (ClassCastException e) {
            Object[] objArr = new Object[3];
            objArr[0] = "Failed to check if the collection contains the item. Probably the item's Java type, ";
            objArr[1] = objUnwrap != null ? new il2(objUnwrap.getClass()) : "Null";
            objArr[2] = ", doesn't match the type of (some of) the collection items; see cause exception.";
            throw new vl2(e, objArr);
        }
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((ObjectWrapperWithAPISupport) getObjectWrapper()).wrapAsAPI(this.collection);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.collection;
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public boolean isEmpty() {
        return this.collection.isEmpty();
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        return new Cconst(this.collection.iterator(), getObjectWrapper());
    }

    @Override // freemarker.template.TemplateCollectionModelEx
    public int size() {
        return this.collection.size();
    }
}
