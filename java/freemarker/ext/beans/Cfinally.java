package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import java.lang.reflect.InvocationTargetException;

/* renamed from: freemarker.ext.beans.finally, reason: invalid class name */
/* loaded from: classes.dex */
class Cfinally extends Cextends {

    /* renamed from: do, reason: not valid java name */
    private final Cthis f24548do;

    /* renamed from: if, reason: not valid java name */
    private final Object[] f24549if;

    public Cfinally(Cthis cthis, Object[] objArr) {
        this.f24548do = cthis;
        this.f24549if = objArr;
    }

    /* renamed from: do, reason: not valid java name */
    public Object[] m28609do() {
        return this.f24549if;
    }

    /* renamed from: for, reason: not valid java name */
    public Object m28610for(Ctry ctry) throws IllegalAccessException, k52, InstantiationException, IllegalArgumentException, InvocationTargetException {
        return this.f24548do.mo28633new(ctry, this.f24549if);
    }

    /* renamed from: if, reason: not valid java name */
    public Cthis m28611if() {
        return this.f24548do;
    }

    /* renamed from: new, reason: not valid java name */
    public TemplateModel m28612new(Ctry ctry, Object obj) throws IllegalAccessException, k52, InvocationTargetException {
        return this.f24548do.mo28634try(ctry, obj, this.f24549if);
    }
}
