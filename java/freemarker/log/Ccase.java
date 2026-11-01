package freemarker.log;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/* renamed from: freemarker.log.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements LoggerFactory {

    /* renamed from: freemarker.log.case$do, reason: invalid class name */
    public static class Cdo extends Cif {

        /* renamed from: extends, reason: not valid java name */
        private final Logger f25045extends;

        public Cdo(Logger logger) {
            this.f25045extends = logger;
        }

        @Override // freemarker.log.Cif
        /* renamed from: case, reason: not valid java name */
        public void mo29179case(String str) {
            this.f25045extends.error(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: const, reason: not valid java name */
        public void mo29180const(String str) {
            this.f25045extends.info(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: else, reason: not valid java name */
        public void mo29181else(String str, Throwable th) {
            this.f25045extends.error(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: final, reason: not valid java name */
        public void mo29182final(String str, Throwable th) {
            this.f25045extends.info(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: for, reason: not valid java name */
        public void mo29183for(String str) {
            this.f25045extends.debug(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: import, reason: not valid java name */
        public boolean mo29184import() {
            return this.f25045extends.isEnabledFor(Level.FATAL);
        }

        @Override // freemarker.log.Cif
        /* renamed from: native, reason: not valid java name */
        public boolean mo29185native() {
            return this.f25045extends.isInfoEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: new, reason: not valid java name */
        public void mo29186new(String str, Throwable th) {
            this.f25045extends.debug(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: package, reason: not valid java name */
        public void mo29187package(String str) {
            this.f25045extends.warn(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: private, reason: not valid java name */
        public void mo29188private(String str, Throwable th) {
            this.f25045extends.warn(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: public, reason: not valid java name */
        public boolean mo29189public() {
            return this.f25045extends.isEnabledFor(Level.WARN);
        }

        @Override // freemarker.log.Cif
        /* renamed from: throw, reason: not valid java name */
        public boolean mo29190throw() {
            return this.f25045extends.isDebugEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: while, reason: not valid java name */
        public boolean mo29191while() {
            return this.f25045extends.isEnabledFor(Level.ERROR);
        }
    }

    @Override // freemarker.log.LoggerFactory
    public Cif getLogger(String str) {
        return new Cdo(Logger.getLogger(str));
    }
}
