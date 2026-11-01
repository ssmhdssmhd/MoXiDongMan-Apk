package freemarker.cache;

import android.support.v4.h52;
import android.support.v4.i52;
import freemarker.template.Cdo;
import java.io.IOException;

/* renamed from: freemarker.cache.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew extends Cnative {

    /* renamed from: for, reason: not valid java name */
    private final h52 f23382for;

    /* renamed from: if, reason: not valid java name */
    private final Cdefault f23383if;

    /* renamed from: new, reason: not valid java name */
    private final Cnative f23384new;

    public Cnew(Cdefault cdefault, Cnative cnative) {
        this.f23383if = cdefault;
        this.f23382for = null;
        this.f23384new = cnative;
    }

    @Override // freemarker.cache.Cnative
    /* renamed from: do */
    public h52 mo27697do(String str, Object obj) throws i52, IOException {
        if (!this.f23383if.mo27653do(str, obj)) {
            return null;
        }
        Cnative cnative = this.f23384new;
        return cnative != null ? cnative.mo27697do(str, obj) : this.f23382for;
    }

    @Override // freemarker.cache.Cnative
    /* renamed from: new */
    public void mo27700new(Cdo cdo) {
        h52 h52Var = this.f23382for;
        if (h52Var != null) {
            h52Var.n1(cdo);
        }
        Cnative cnative = this.f23384new;
        if (cnative != null) {
            cnative.m27746for(cdo);
        }
    }

    public Cnew(Cdefault cdefault, h52 h52Var) {
        this.f23383if = cdefault;
        this.f23382for = h52Var;
        this.f23384new = null;
    }
}
