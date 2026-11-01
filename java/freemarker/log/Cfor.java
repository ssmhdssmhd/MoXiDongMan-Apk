package freemarker.log;

import org.slf4j.Logger;
import org.slf4j.spi.LocationAwareLogger;

@Deprecated
/* renamed from: freemarker.log.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements LoggerFactory {

    /* renamed from: freemarker.log.for$do, reason: invalid class name */
    public static final class Cdo extends freemarker.log.Cif {

        /* renamed from: finally, reason: not valid java name */
        private static final String f25048finally = "freemarker.log.for$do";

        /* renamed from: extends, reason: not valid java name */
        private final LocationAwareLogger f25049extends;

        public Cdo(LocationAwareLogger locationAwareLogger) {
            this.f25049extends = locationAwareLogger;
        }

        @Override // freemarker.log.Cif
        /* renamed from: case */
        public void mo29179case(String str) {
            mo29181else(str, null);
        }

        @Override // freemarker.log.Cif
        /* renamed from: const */
        public void mo29180const(String str) {
            mo29182final(str, null);
        }

        @Override // freemarker.log.Cif
        /* renamed from: else */
        public void mo29181else(String str, Throwable th) {
            this.f25049extends.log(null, f25048finally, 40, str, null, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: final */
        public void mo29182final(String str, Throwable th) {
            this.f25049extends.log(null, f25048finally, 20, str, null, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: for */
        public void mo29183for(String str) {
            mo29186new(str, null);
        }

        @Override // freemarker.log.Cif
        /* renamed from: import */
        public boolean mo29184import() {
            return this.f25049extends.isErrorEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: native */
        public boolean mo29185native() {
            return this.f25049extends.isInfoEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: new */
        public void mo29186new(String str, Throwable th) {
            this.f25049extends.log(null, f25048finally, 10, str, null, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: package */
        public void mo29187package(String str) {
            mo29188private(str, null);
        }

        @Override // freemarker.log.Cif
        /* renamed from: private */
        public void mo29188private(String str, Throwable th) {
            this.f25049extends.log(null, f25048finally, 30, str, null, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: public */
        public boolean mo29189public() {
            return this.f25049extends.isWarnEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: throw */
        public boolean mo29190throw() {
            return this.f25049extends.isDebugEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: while */
        public boolean mo29191while() {
            return this.f25049extends.isErrorEnabled();
        }
    }

    /* renamed from: freemarker.log.for$if, reason: invalid class name */
    public static class Cif extends freemarker.log.Cif {

        /* renamed from: extends, reason: not valid java name */
        private final Logger f25050extends;

        public Cif(Logger logger) {
            this.f25050extends = logger;
        }

        @Override // freemarker.log.Cif
        /* renamed from: case */
        public void mo29179case(String str) {
            this.f25050extends.error(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: const */
        public void mo29180const(String str) {
            this.f25050extends.info(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: else */
        public void mo29181else(String str, Throwable th) {
            this.f25050extends.error(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: final */
        public void mo29182final(String str, Throwable th) {
            this.f25050extends.info(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: for */
        public void mo29183for(String str) {
            this.f25050extends.debug(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: import */
        public boolean mo29184import() {
            return this.f25050extends.isErrorEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: native */
        public boolean mo29185native() {
            return this.f25050extends.isInfoEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: new */
        public void mo29186new(String str, Throwable th) {
            this.f25050extends.debug(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: package */
        public void mo29187package(String str) {
            this.f25050extends.warn(str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: private */
        public void mo29188private(String str, Throwable th) {
            this.f25050extends.warn(str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: public */
        public boolean mo29189public() {
            return this.f25050extends.isWarnEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: throw */
        public boolean mo29190throw() {
            return this.f25050extends.isDebugEnabled();
        }

        @Override // freemarker.log.Cif
        /* renamed from: while */
        public boolean mo29191while() {
            return this.f25050extends.isErrorEnabled();
        }
    }

    @Override // freemarker.log.LoggerFactory
    public freemarker.log.Cif getLogger(String str) {
        Logger logger = org.slf4j.LoggerFactory.getLogger(str);
        return logger instanceof LocationAwareLogger ? new Cdo((LocationAwareLogger) logger) : new Cif(logger);
    }
}
