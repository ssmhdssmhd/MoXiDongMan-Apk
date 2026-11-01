package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelAdapter;
import freemarker.template.TemplateModelIterator;
import java.util.AbstractCollection;
import java.util.Iterator;

/* renamed from: freemarker.ext.beans.final, reason: invalid class name */
/* loaded from: classes.dex */
class Cfinal extends AbstractCollection implements TemplateModelAdapter {

    /* renamed from: do, reason: not valid java name */
    private final Ctry f24544do;

    /* renamed from: if, reason: not valid java name */
    private final TemplateCollectionModel f24545if;

    /* renamed from: freemarker.ext.beans.final$do, reason: invalid class name */
    public class Cdo implements Iterator {

        /* renamed from: do, reason: not valid java name */
        public final TemplateModelIterator f24546do;

        public Cdo() throws k52 {
            this.f24546do = Cfinal.this.f24545if.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            try {
                return this.f24546do.hasNext();
            } catch (k52 e) {
                throw new kb2(e);
            }
        }

        @Override // java.util.Iterator
        public Object next() {
            try {
                return Cfinal.this.f24544do.unwrap(this.f24546do.next());
            } catch (k52 e) {
                throw new kb2(e);
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public Cfinal(TemplateCollectionModel templateCollectionModel, Ctry ctry) {
        this.f24545if = templateCollectionModel;
        this.f24544do = ctry;
    }

    @Override // freemarker.template.TemplateModelAdapter
    public TemplateModel getTemplateModel() {
        return this.f24545if;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        try {
            return new Cdo();
        } catch (k52 e) {
            throw new kb2(e);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        throw new UnsupportedOperationException();
    }
}
