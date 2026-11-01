package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import java.util.Enumeration;
import java.util.NoSuchElementException;

/* renamed from: freemarker.ext.beans.native, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnative extends Cnew implements TemplateModelIterator, TemplateCollectionModel {

    /* renamed from: else, reason: not valid java name */
    private boolean f24595else;

    public Cnative(Enumeration enumeration, Ctry ctry) {
        super(enumeration, ctry);
        this.f24595else = false;
    }

    public boolean getAsBoolean() {
        return hasNext();
    }

    @Override // freemarker.template.TemplateModelIterator
    public boolean hasNext() {
        return ((Enumeration) this.f24599do).hasMoreElements();
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        synchronized (this) {
            if (this.f24595else) {
                throw new k52("This collection is stateful and can not be iterated over the second time.");
            }
            this.f24595else = true;
        }
        return this;
    }

    @Override // freemarker.template.TemplateModelIterator
    public TemplateModel next() throws k52 {
        try {
            return m28669this(((Enumeration) this.f24599do).nextElement());
        } catch (NoSuchElementException unused) {
            throw new k52("No more elements in the enumeration.");
        }
    }
}
