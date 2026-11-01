package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import java.lang.reflect.InvocationTargetException;

/* renamed from: freemarker.ext.beans.this, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cthis extends Cdefault {
    /* renamed from: case */
    public abstract boolean mo28627case();

    /* renamed from: do */
    public abstract String mo28628do();

    /* renamed from: else */
    public abstract boolean mo28629else();

    /* renamed from: for */
    public abstract Class[] mo28630for();

    /* renamed from: goto */
    public abstract boolean mo28631goto();

    /* renamed from: if */
    public abstract String mo28632if();

    /* renamed from: new */
    public abstract Object mo28633new(Ctry ctry, Object[] objArr) throws IllegalAccessException, k52, InstantiationException, IllegalArgumentException, InvocationTargetException;

    /* renamed from: try */
    public abstract TemplateModel mo28634try(Ctry ctry, Object obj, Object[] objArr) throws IllegalAccessException, k52, InvocationTargetException;
}
