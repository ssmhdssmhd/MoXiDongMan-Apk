package freemarker.template;

import android.support.v4.k52;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.utility.ObjectWrapperWithAPISupport;
import java.io.Serializable;
import java.util.Iterator;

/* renamed from: freemarker.template.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends Cthrows implements TemplateCollectionModel, AdapterTemplateModel, WrapperTemplateModel, TemplateModelWithAPISupport, Serializable {
    private final Iterator iterator;
    private boolean iteratorOwnedBySomeone;

    /* renamed from: freemarker.template.try$if, reason: invalid class name */
    public class Cif implements TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        private boolean f25125do;

        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        private void m29230do() throws k52 {
            if (Ctry.this.iteratorOwnedBySomeone) {
                throw new k52("This collection value wraps a java.util.Iterator, thus it can be listed only once.");
            }
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            if (!this.f25125do) {
                m29230do();
            }
            return Ctry.this.iterator.hasNext();
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            if (!this.f25125do) {
                m29230do();
                Ctry.this.iteratorOwnedBySomeone = true;
                this.f25125do = true;
            }
            if (!Ctry.this.iterator.hasNext()) {
                throw new k52("The collection has no more items.");
            }
            Object next = Ctry.this.iterator.next();
            return next instanceof TemplateModel ? (TemplateModel) next : Ctry.this.wrap(next);
        }
    }

    private Ctry(Iterator it, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.iterator = it;
    }

    public static Ctry adapt(Iterator it, ObjectWrapper objectWrapper) {
        return new Ctry(it, objectWrapper);
    }

    @Override // freemarker.template.TemplateModelWithAPISupport
    public TemplateModel getAPI() throws k52 {
        return ((ObjectWrapperWithAPISupport) getObjectWrapper()).wrapAsAPI(this.iterator);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.iterator;
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        return new Cif();
    }
}
