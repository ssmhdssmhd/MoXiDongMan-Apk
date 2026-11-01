package freemarker.template;

import android.support.v4.k52;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.utility.ObjectWrapperWithAPISupport;
import java.io.Serializable;
import java.util.Enumeration;

/* renamed from: freemarker.template.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Cthrows implements TemplateCollectionModel, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport, Serializable {
    private final Enumeration<?> enumeration;
    private boolean enumerationOwnedBySomeone;

    /* renamed from: freemarker.template.for$if, reason: invalid class name */
    public class Cif implements TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        private boolean f25098do;

        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        private void m29222do() throws k52 {
            if (Cfor.this.enumerationOwnedBySomeone) {
                throw new k52("This collection value wraps a java.util.Enumeration, thus it can be listed only once.");
            }
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            if (!this.f25098do) {
                m29222do();
            }
            return Cfor.this.enumeration.hasMoreElements();
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            if (!this.f25098do) {
                m29222do();
                Cfor.this.enumerationOwnedBySomeone = true;
                this.f25098do = true;
            }
            if (!Cfor.this.enumeration.hasMoreElements()) {
                throw new k52("The collection has no more items.");
            }
            Object objNextElement = Cfor.this.enumeration.nextElement();
            return objNextElement instanceof TemplateModel ? (TemplateModel) objNextElement : Cfor.this.wrap(objNextElement);
        }
    }

    private Cfor(Enumeration<?> enumeration, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.enumeration = enumeration;
    }

    public static Cfor adapt(Enumeration<?> enumeration, ObjectWrapper objectWrapper) {
        return new Cfor(enumeration, objectWrapper);
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((ObjectWrapperWithAPISupport) getObjectWrapper()).wrapAsAPI(this.enumeration);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class<?> cls) {
        return getWrappedObject();
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.enumeration;
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        return new Cif();
    }
}
