package freemarker.cache;

import android.support.v4.h52;
import android.support.v4.i52;
import freemarker.template.Cdo;
import java.io.IOException;

/* renamed from: freemarker.cache.this, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthis extends Cnative {

    /* renamed from: if, reason: not valid java name */
    private final Cnative[] f23398if;

    public Cthis(Cnative... cnativeArr) {
        this.f23398if = cnativeArr;
    }

    @Override // freemarker.cache.Cnative
    /* renamed from: do */
    public h52 mo27697do(String str, Object obj) throws i52, IOException {
        h52 h52Var = null;
        h52 h52Var2 = null;
        for (Cnative cnative : this.f23398if) {
            h52 h52VarMo27697do = cnative.mo27697do(str, obj);
            if (h52VarMo27697do != null) {
                if (h52Var == null) {
                    h52Var = h52VarMo27697do;
                } else {
                    if (h52Var2 == null) {
                        Cdo cdoM27747if = m27747if();
                        if (cdoM27747if == null) {
                            throw new IllegalStateException("The TemplateConfigurationFactory wasn't associated to a Configuration yet.");
                        }
                        h52 h52Var3 = new h52();
                        h52Var3.n1(cdoM27747if);
                        h52Var3.f1(h52Var);
                        h52Var = h52Var3;
                        h52Var2 = h52Var;
                    }
                    h52Var2.f1(h52VarMo27697do);
                }
            }
        }
        return h52Var;
    }

    @Override // freemarker.cache.Cnative
    /* renamed from: new */
    public void mo27700new(Cdo cdo) {
        for (Cnative cnative : this.f23398if) {
            cnative.m27746for(cdo);
        }
    }
}
