package freemarker.template;

import android.support.v4.k52;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: freemarker.template.const, reason: invalid class name */
/* loaded from: classes3.dex */
class Cconst implements TemplateModelIterator {

    /* renamed from: do, reason: not valid java name */
    private final Iterator<?> f25096do;

    /* renamed from: if, reason: not valid java name */
    private final ObjectWrapper f25097if;

    public Cconst(Iterator<?> it, ObjectWrapper objectWrapper) {
        this.f25096do = it;
        this.f25097if = objectWrapper;
    }

    @Override // freemarker.template.TemplateModelIterator
    public boolean hasNext() throws k52 {
        return this.f25096do.hasNext();
    }

    @Override // freemarker.template.TemplateModelIterator
    public TemplateModel next() throws k52 {
        try {
            return this.f25097if.wrap(this.f25096do.next());
        } catch (NoSuchElementException e) {
            throw new k52("The collection has no more items.", (Exception) e);
        }
    }
}
