package freemarker.cache;

import java.io.IOException;

/* renamed from: freemarker.cache.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo extends Cdefault {

    /* renamed from: do, reason: not valid java name */
    private final Cdefault[] f23316do;

    public Cdo(Cdefault... cdefaultArr) {
        if (cdefaultArr.length == 0) {
            throw new IllegalArgumentException("Need at least 1 matcher, had 0.");
        }
        this.f23316do = cdefaultArr;
    }

    @Override // freemarker.cache.Cdefault
    /* renamed from: do */
    public boolean mo27653do(String str, Object obj) throws IOException {
        for (Cdefault cdefault : this.f23316do) {
            if (!cdefault.mo27653do(str, obj)) {
                return false;
            }
        }
        return true;
    }
}
