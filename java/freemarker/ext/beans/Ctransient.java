package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

/* renamed from: freemarker.ext.beans.transient, reason: invalid class name */
/* loaded from: classes.dex */
final class Ctransient extends Cthis {

    /* renamed from: do, reason: not valid java name */
    private final Member f24624do;

    /* renamed from: if, reason: not valid java name */
    public final Class[] f24625if;

    public Ctransient(Method method, Class[] clsArr) {
        this.f24624do = method;
        this.f24625if = clsArr;
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: case */
    public boolean mo28627case() {
        return this.f24624do instanceof Constructor;
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: do */
    public String mo28628do() {
        return j.m28656final(this.f24624do);
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: else */
    public boolean mo28629else() {
        return (this.f24624do.getModifiers() & 8) != 0;
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: for */
    public Class[] mo28630for() {
        return this.f24625if;
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: goto */
    public boolean mo28631goto() {
        return j.m28658goto(this.f24624do);
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: if */
    public String mo28632if() {
        return this.f24624do.getName();
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: new */
    public Object mo28633new(Ctry ctry, Object[] objArr) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        return ((Constructor) this.f24624do).newInstance(objArr);
    }

    @Override // freemarker.ext.beans.Cthis
    /* renamed from: try */
    public TemplateModel mo28634try(Ctry ctry, Object obj, Object[] objArr) throws IllegalAccessException, k52, InvocationTargetException {
        return ctry.m28687abstract(obj, (Method) this.f24624do, objArr);
    }

    public Ctransient(Constructor constructor, Class[] clsArr) {
        this.f24624do = constructor;
        this.f24625if = clsArr;
    }
}
