package freemarker.cache;

import java.io.IOException;

/* renamed from: freemarker.cache.class, reason: invalid class name */
/* loaded from: classes.dex */
public class Cclass extends Cdefault {

    /* renamed from: do, reason: not valid java name */
    private final Cdefault f23314do;

    public Cclass(Cdefault cdefault) {
        this.f23314do = cdefault;
    }

    @Override // freemarker.cache.Cdefault
    /* renamed from: do */
    public boolean mo27653do(String str, Object obj) throws IOException {
        return !this.f23314do.mo27653do(str, obj);
    }
}
