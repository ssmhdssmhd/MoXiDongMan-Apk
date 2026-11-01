package freemarker.cache;

import android.support.v4.on0;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.util.regex.Pattern;

/* renamed from: freemarker.cache.final, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfinal extends Cdefault {

    /* renamed from: do, reason: not valid java name */
    private final String f23338do;

    /* renamed from: for, reason: not valid java name */
    private boolean f23339for;

    /* renamed from: if, reason: not valid java name */
    private Pattern f23340if;

    public Cfinal(String str) {
        if (!str.startsWith(on0.f4694final)) {
            this.f23338do = str;
            m27682if();
        } else {
            throw new IllegalArgumentException("Absolute template paths need no inital \"/\"; remove it from: " + str);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m27682if() {
        this.f23340if = Csuper.m29299abstract(this.f23338do, this.f23339for);
    }

    @Override // freemarker.cache.Cdefault
    /* renamed from: do */
    public boolean mo27653do(String str, Object obj) throws IOException {
        return this.f23340if.matcher(str).matches();
    }

    /* renamed from: for, reason: not valid java name */
    public Cfinal m27683for(boolean z) {
        m27685try(z);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m27684new() {
        return this.f23339for;
    }

    /* renamed from: try, reason: not valid java name */
    public void m27685try(boolean z) {
        boolean z2 = this.f23339for;
        this.f23339for = z;
        if (z2 != z) {
            m27682if();
        }
    }
}
