package freemarker.template;

import android.support.v4.k52;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: freemarker.template.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport extends Cthrows implements TemplateCollectionModel, Serializable {
    private final Iterable iterable;
    private final Iterator iterator;
    private boolean iteratorOwned;

    /* renamed from: freemarker.template.import$do, reason: invalid class name */
    public class Cdo implements TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        private final Iterator f25100do;

        /* renamed from: if, reason: not valid java name */
        private boolean f25102if;

        public Cdo(Iterator it, boolean z) {
            this.f25100do = it;
            this.f25102if = z;
        }

        /* renamed from: do, reason: not valid java name */
        private void m29223do() throws k52 {
            if (Cimport.this.iteratorOwned) {
                throw new k52("This collection value wraps a java.util.Iterator, thus it can be listed only once.");
            }
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            if (!this.f25102if) {
                synchronized (Cimport.this) {
                    m29223do();
                }
            }
            return this.f25100do.hasNext();
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            if (!this.f25102if) {
                synchronized (Cimport.this) {
                    m29223do();
                    Cimport.this.iteratorOwned = true;
                    this.f25102if = true;
                }
            }
            if (!this.f25100do.hasNext()) {
                throw new k52("The collection has no more items.");
            }
            Object next = this.f25100do.next();
            return next instanceof TemplateModel ? (TemplateModel) next : Cimport.this.wrap(next);
        }
    }

    @Deprecated
    public Cimport(Iterator it) {
        this.iterator = it;
        this.iterable = null;
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() {
        Iterator it = this.iterator;
        return it != null ? new Cdo(it, false) : new Cdo(this.iterable.iterator(), true);
    }

    @Deprecated
    public Cimport(Iterable iterable) {
        this.iterable = iterable;
        this.iterator = null;
    }

    @Deprecated
    public Cimport(Collection collection) {
        this((Iterable) collection);
    }

    public Cimport(Collection collection, ObjectWrapper objectWrapper) {
        this((Iterable) collection, objectWrapper);
    }

    public Cimport(Iterator it, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.iterator = it;
        this.iterable = null;
    }

    public Cimport(Iterable iterable, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.iterable = iterable;
        this.iterator = null;
    }
}
