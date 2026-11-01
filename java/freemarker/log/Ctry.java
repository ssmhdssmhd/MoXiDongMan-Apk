package freemarker.log;

import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: freemarker.log.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements LoggerFactory {

    /* renamed from: freemarker.log.try$do, reason: invalid class name */
    public static class Cdo extends Cif {

        /* renamed from: extends, reason: not valid java name */
        private final Logger f25079extends;

        public Cdo(Logger logger) {
            this.f25079extends = logger;
        }

        @Override // freemarker.log.Cif
        /* renamed from: case */
        public void mo29179case(String str) {
            this.f25079extends.log(Level.SEVERE, str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: const */
        public void mo29180const(String str) {
            this.f25079extends.log(Level.INFO, str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: else */
        public void mo29181else(String str, Throwable th) {
            this.f25079extends.log(Level.SEVERE, str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: final */
        public void mo29182final(String str, Throwable th) {
            this.f25079extends.log(Level.INFO, str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: for */
        public void mo29183for(String str) {
            this.f25079extends.log(Level.FINE, str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: import */
        public boolean mo29184import() {
            return this.f25079extends.isLoggable(Level.SEVERE);
        }

        @Override // freemarker.log.Cif
        /* renamed from: native */
        public boolean mo29185native() {
            return this.f25079extends.isLoggable(Level.INFO);
        }

        @Override // freemarker.log.Cif
        /* renamed from: new */
        public void mo29186new(String str, Throwable th) {
            this.f25079extends.log(Level.FINE, str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: package */
        public void mo29187package(String str) {
            this.f25079extends.log(Level.WARNING, str);
        }

        @Override // freemarker.log.Cif
        /* renamed from: private */
        public void mo29188private(String str, Throwable th) {
            this.f25079extends.log(Level.WARNING, str, th);
        }

        @Override // freemarker.log.Cif
        /* renamed from: public */
        public boolean mo29189public() {
            return this.f25079extends.isLoggable(Level.WARNING);
        }

        @Override // freemarker.log.Cif
        /* renamed from: throw */
        public boolean mo29190throw() {
            return this.f25079extends.isLoggable(Level.FINE);
        }

        @Override // freemarker.log.Cif
        /* renamed from: while */
        public boolean mo29191while() {
            return this.f25079extends.isLoggable(Level.SEVERE);
        }
    }

    @Override // freemarker.log.LoggerFactory
    public Cif getLogger(String str) {
        return new Cdo(Logger.getLogger(str));
    }
}
