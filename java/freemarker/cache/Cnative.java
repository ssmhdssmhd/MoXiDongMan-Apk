package freemarker.cache;

import android.support.v4.h52;
import android.support.v4.i52;
import freemarker.template.Cdo;
import java.io.IOException;

/* renamed from: freemarker.cache.native, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cnative {

    /* renamed from: do, reason: not valid java name */
    private Cdo f23381do;

    /* renamed from: do */
    public abstract h52 mo27697do(String str, Object obj) throws i52, IOException;

    /* renamed from: for, reason: not valid java name */
    public final void m27746for(Cdo cdo) {
        Cdo cdo2 = this.f23381do;
        if (cdo2 != null) {
            if (cdo != cdo2) {
                throw new IllegalStateException("The TemplateConfigurationFactory is already bound to another Configuration");
            }
        } else {
            this.f23381do = cdo;
            mo27700new(cdo);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public Cdo m27747if() {
        return this.f23381do;
    }

    /* renamed from: new */
    public abstract void mo27700new(Cdo cdo);
}
