package freemarker.log;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

@Deprecated
/* renamed from: freemarker.log.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements LoggerFactory {

    /* renamed from: freemarker.log.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0259do extends Cif {

        /* renamed from: extends, reason: not valid java name */
        private final Log f25046extends;

        public C0259do(Log log) {
            this.f25046extends = log;
        }

        @Override // freemarker.log.Cif
        /* renamed from: case */
        public void mo29179case(String str) {
            this.f25046extends.error(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: const */
        public void mo29180const(String str) {
            this.f25046extends.info(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: else */
        public void mo29181else(String str, Throwable th) {
            this.f25046extends.error(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: final */
        public void mo29182final(String str, Throwable th) {
            this.f25046extends.info(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: for */
        public void mo29183for(String str) {
            this.f25046extends.debug(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: import */
        public boolean mo29184import() {
            return this.f25046extends.isFatalEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: native */
        public boolean mo29185native() {
            return this.f25046extends.isInfoEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: new */
        public void mo29186new(String str, Throwable th) {
            this.f25046extends.debug(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: package */
        public void mo29187package(String str) {
            this.f25046extends.warn(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: private */
        public void mo29188private(String str, Throwable th) {
            this.f25046extends.warn(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: public */
        public boolean mo29189public() {
            return this.f25046extends.isWarnEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: throw */
        public boolean mo29190throw() {
            return this.f25046extends.isDebugEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: while */
        public boolean mo29191while() {
            return this.f25046extends.isErrorEnabled();
        }
    }

    @Override // freemarker.log.LoggerFactory
    public Cif getLogger(String str) {
        return new C0259do(LogFactory.getLog(str));
    }
}
