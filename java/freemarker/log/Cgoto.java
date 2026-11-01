package freemarker.log;

/* renamed from: freemarker.log.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements LoggerFactory {

    /* renamed from: do, reason: not valid java name */
    private static final Cif f25051do = new Cdo();

    /* renamed from: freemarker.log.goto$do, reason: invalid class name */
    public static class Cdo extends Cif {
        @Override // freemarker.log.Cif
        /* renamed from: case */
        public void mo29179case(String str) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: const */
        public void mo29180const(String str) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: else */
        public void mo29181else(String str, Throwable th) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: final */
        public void mo29182final(String str, Throwable th) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: for */
        public void mo29183for(String str) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: import */
        public boolean mo29184import() {
            return false;
        }

        @Override // freemarker.log.Cif
        /* renamed from: native */
        public boolean mo29185native() {
            return false;
        }

        @Override // freemarker.log.Cif
        /* renamed from: new */
        public void mo29186new(String str, Throwable th) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: package */
        public void mo29187package(String str) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: private */
        public void mo29188private(String str, Throwable th) {
        }

        @Override // freemarker.log.Cif
        /* renamed from: public */
        public boolean mo29189public() {
            return false;
        }

        @Override // freemarker.log.Cif
        /* renamed from: throw */
        public boolean mo29190throw() {
            return false;
        }

        @Override // freemarker.log.Cif
        /* renamed from: while */
        public boolean mo29191while() {
            return false;
        }
    }

    @Override // freemarker.log.LoggerFactory
    public Cif getLogger(String str) {
        return f25051do;
    }
}
