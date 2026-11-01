package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: freemarker.ext.beans.static, reason: invalid class name */
/* loaded from: classes.dex */
public class Cstatic extends Cnew implements TemplateModelIterator, TemplateCollectionModel {

    /* renamed from: else, reason: not valid java name */
    private boolean f24615else;

    public Cstatic(Iterator it, Ctry ctry) {
        super(it, ctry);
        this.f24615else = false;
    }

    public boolean getAsBoolean() {
        return hasNext();
    }

    @Override // freemarker.template.TemplateModelIterator
    public boolean hasNext() {
        return ((Iterator) this.f24599do).hasNext();
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        synchronized (this) {
            if (this.f24615else) {
                throw new k52("This collection is stateful and can not be iterated over the second time.");
            }
            this.f24615else = true;
        }
        return this;
    }

    @Override // freemarker.template.TemplateModelIterator
    public TemplateModel next() throws k52 {
        try {
            return m28669this(((Iterator) this.f24599do).next());
        } catch (NoSuchElementException e) {
            throw new k52("No more elements in the iterator.", (Exception) e);
        }
    }
}
