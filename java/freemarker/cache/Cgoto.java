package freemarker.cache;

import android.support.v4.h52;
import android.support.v4.i52;
import freemarker.template.Cdo;
import freemarker.template.utility.Csuper;
import java.io.IOException;

/* renamed from: freemarker.cache.goto, reason: invalid class name */
/* loaded from: classes.dex */
public class Cgoto extends Cnative {

    /* renamed from: for, reason: not valid java name */
    private boolean f23348for;

    /* renamed from: if, reason: not valid java name */
    private final Cnative[] f23349if;

    /* renamed from: new, reason: not valid java name */
    private String f23350new;

    public Cgoto(Cnative... cnativeArr) {
        this.f23349if = cnativeArr;
    }

    /* renamed from: break, reason: not valid java name */
    public void m27695break(String str) {
        this.f23350new = str;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m27696case() {
        return this.f23348for;
    }

    @Override // freemarker.cache.Cnative
    /* renamed from: do, reason: not valid java name */
    public h52 mo27697do(String str, Object obj) throws i52, IOException {
        for (Cnative cnative : this.f23349if) {
            h52 h52VarMo27697do = cnative.mo27697do(str, obj);
            if (h52VarMo27697do != null) {
                return h52VarMo27697do;
            }
        }
        if (this.f23348for) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Cgoto.class.getSimpleName());
        sb.append(" has found no matching choice for source name ");
        sb.append(Csuper.m29330synchronized(str));
        sb.append(". ");
        sb.append(this.f23350new != null ? "Error details: " + this.f23350new : "(Set the noMatchErrorDetails property of the factory bean to give a more specific error message. Set allowNoMatch to true if this shouldn't be an error.)");
        throw new i52(sb.toString());
    }

    /* renamed from: else, reason: not valid java name */
    public String m27698else() {
        return this.f23350new;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m27699goto(String str) {
        m27695break(str);
        return this;
    }

    @Override // freemarker.cache.Cnative
    /* renamed from: new, reason: not valid java name */
    public void mo27700new(Cdo cdo) {
        for (Cnative cnative : this.f23349if) {
            cnative.m27746for(cdo);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m27701this(boolean z) {
        this.f23348for = z;
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m27702try(boolean z) {
        m27701this(z);
        return this;
    }
}
