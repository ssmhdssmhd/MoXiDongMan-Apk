package freemarker.cache;

import java.io.IOException;

/* renamed from: freemarker.cache.switch, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cswitch {

    /* renamed from: do, reason: not valid java name */
    public static final Cswitch f23397do = new Cif();

    /* renamed from: freemarker.cache.switch$if, reason: invalid class name */
    public static class Cif extends Cswitch {
        private Cif() {
        }

        @Override // freemarker.cache.Cswitch
        /* renamed from: do */
        public Cstatic mo27767do(Creturn creturn) throws IOException {
            return creturn.mo27743case(creturn.m27760new(), creturn.m27758for());
        }

        public String toString() {
            return "TemplateLookupStrategy.DEFAULT_2_3_0";
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Cstatic mo27767do(Creturn creturn) throws IOException;
}
