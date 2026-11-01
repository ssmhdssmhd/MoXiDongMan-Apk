package freemarker.cache;

import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.util.regex.Pattern;

/* renamed from: freemarker.cache.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase extends Cdefault {

    /* renamed from: do, reason: not valid java name */
    private final String f23306do;

    /* renamed from: for, reason: not valid java name */
    private boolean f23307for;

    /* renamed from: if, reason: not valid java name */
    private Pattern f23308if;

    public Ccase(String str) {
        if (str.indexOf(47) == -1) {
            this.f23306do = str;
            m27652if();
        } else {
            throw new IllegalArgumentException("A file name glob can't contain \"/\": " + str);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m27652if() {
        this.f23308if = Csuper.m29299abstract("**/" + this.f23306do, this.f23307for);
    }

    @Override // freemarker.cache.Cdefault
    /* renamed from: do, reason: not valid java name */
    public boolean mo27653do(String str, Object obj) throws IOException {
        return this.f23308if.matcher(str).matches();
    }

    /* renamed from: for, reason: not valid java name */
    public Ccase m27654for(boolean z) {
        m27656try(z);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m27655new() {
        return this.f23307for;
    }

    /* renamed from: try, reason: not valid java name */
    public void m27656try(boolean z) {
        boolean z2 = this.f23307for;
        this.f23307for = z;
        if (z2 != z) {
            m27652if();
        }
    }
}
