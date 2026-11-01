package org.bouncycastle.jce;

import java.security.cert.CertStoreParameters;
import java.security.cert.LDAPCertStoreParameters;
import org.bouncycastle.x509.X509StoreParameters;

/* renamed from: org.bouncycastle.jce.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements X509StoreParameters, CertStoreParameters {

    /* renamed from: abstract, reason: not valid java name */
    private String f31709abstract;

    /* renamed from: break, reason: not valid java name */
    private String f31710break;

    /* renamed from: case, reason: not valid java name */
    private String f31711case;

    /* renamed from: catch, reason: not valid java name */
    private String f31712catch;

    /* renamed from: class, reason: not valid java name */
    private String f31713class;

    /* renamed from: const, reason: not valid java name */
    private String f31714const;

    /* renamed from: continue, reason: not valid java name */
    private String f31715continue;

    /* renamed from: default, reason: not valid java name */
    private String f31716default;

    /* renamed from: do, reason: not valid java name */
    private String f31717do;

    /* renamed from: else, reason: not valid java name */
    private String f31718else;

    /* renamed from: extends, reason: not valid java name */
    private String f31719extends;

    /* renamed from: final, reason: not valid java name */
    private String f31720final;

    /* renamed from: finally, reason: not valid java name */
    private String f31721finally;

    /* renamed from: for, reason: not valid java name */
    private String f31722for;

    /* renamed from: goto, reason: not valid java name */
    private String f31723goto;

    /* renamed from: if, reason: not valid java name */
    private String f31724if;

    /* renamed from: import, reason: not valid java name */
    private String f31725import;

    /* renamed from: interface, reason: not valid java name */
    private String f31726interface;

    /* renamed from: native, reason: not valid java name */
    private String f31727native;

    /* renamed from: new, reason: not valid java name */
    private String f31728new;

    /* renamed from: package, reason: not valid java name */
    private String f31729package;

    /* renamed from: private, reason: not valid java name */
    private String f31730private;

    /* renamed from: protected, reason: not valid java name */
    private String f31731protected;

    /* renamed from: public, reason: not valid java name */
    private String f31732public;

    /* renamed from: return, reason: not valid java name */
    private String f31733return;

    /* renamed from: static, reason: not valid java name */
    private String f31734static;

    /* renamed from: strictfp, reason: not valid java name */
    private String f31735strictfp;

    /* renamed from: super, reason: not valid java name */
    private String f31736super;

    /* renamed from: switch, reason: not valid java name */
    private String f31737switch;

    /* renamed from: this, reason: not valid java name */
    private String f31738this;

    /* renamed from: throw, reason: not valid java name */
    private String f31739throw;

    /* renamed from: throws, reason: not valid java name */
    private String f31740throws;

    /* renamed from: transient, reason: not valid java name */
    private String f31741transient;

    /* renamed from: try, reason: not valid java name */
    private String f31742try;

    /* renamed from: volatile, reason: not valid java name */
    private String f31743volatile;

    /* renamed from: while, reason: not valid java name */
    private String f31744while;

    /* renamed from: org.bouncycastle.jce.try$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: abstract, reason: not valid java name */
        private String f31745abstract;

        /* renamed from: break, reason: not valid java name */
        private String f31746break;

        /* renamed from: case, reason: not valid java name */
        private String f31747case;

        /* renamed from: catch, reason: not valid java name */
        private String f31748catch;

        /* renamed from: class, reason: not valid java name */
        private String f31749class;

        /* renamed from: const, reason: not valid java name */
        private String f31750const;

        /* renamed from: continue, reason: not valid java name */
        private String f31751continue;

        /* renamed from: default, reason: not valid java name */
        private String f31752default;

        /* renamed from: do, reason: not valid java name */
        private String f31753do;

        /* renamed from: else, reason: not valid java name */
        private String f31754else;

        /* renamed from: extends, reason: not valid java name */
        private String f31755extends;

        /* renamed from: final, reason: not valid java name */
        private String f31756final;

        /* renamed from: finally, reason: not valid java name */
        private String f31757finally;

        /* renamed from: for, reason: not valid java name */
        private String f31758for;

        /* renamed from: goto, reason: not valid java name */
        private String f31759goto;

        /* renamed from: if, reason: not valid java name */
        private String f31760if;

        /* renamed from: import, reason: not valid java name */
        private String f31761import;

        /* renamed from: interface, reason: not valid java name */
        private String f31762interface;

        /* renamed from: native, reason: not valid java name */
        private String f31763native;

        /* renamed from: new, reason: not valid java name */
        private String f31764new;

        /* renamed from: package, reason: not valid java name */
        private String f31765package;

        /* renamed from: private, reason: not valid java name */
        private String f31766private;

        /* renamed from: protected, reason: not valid java name */
        private String f31767protected;

        /* renamed from: public, reason: not valid java name */
        private String f31768public;

        /* renamed from: return, reason: not valid java name */
        private String f31769return;

        /* renamed from: static, reason: not valid java name */
        private String f31770static;

        /* renamed from: strictfp, reason: not valid java name */
        private String f31771strictfp;

        /* renamed from: super, reason: not valid java name */
        private String f31772super;

        /* renamed from: switch, reason: not valid java name */
        private String f31773switch;

        /* renamed from: this, reason: not valid java name */
        private String f31774this;

        /* renamed from: throw, reason: not valid java name */
        private String f31775throw;

        /* renamed from: throws, reason: not valid java name */
        private String f31776throws;

        /* renamed from: transient, reason: not valid java name */
        private String f31777transient;

        /* renamed from: try, reason: not valid java name */
        private String f31778try;

        /* renamed from: volatile, reason: not valid java name */
        private String f31779volatile;

        /* renamed from: while, reason: not valid java name */
        private String f31780while;

        public Cif() {
            this("ldap://localhost:389", "");
        }

        public Cif(String str, String str2) {
            this.f31753do = str;
            if (str2 == null) {
                this.f31760if = "";
            } else {
                this.f31760if = str2;
            }
            this.f31758for = "userCertificate";
            this.f31764new = "cACertificate";
            this.f31778try = "crossCertificatePair";
            this.f31747case = "certificateRevocationList";
            this.f31754else = "deltaRevocationList";
            this.f31759goto = "authorityRevocationList";
            this.f31774this = "attributeCertificateAttribute";
            this.f31746break = "aACertificate";
            this.f31748catch = "attributeDescriptorCertificate";
            this.f31749class = "attributeCertificateRevocationList";
            this.f31750const = "attributeAuthorityRevocationList";
            this.f31756final = "cn";
            this.f31772super = "cn ou o";
            this.f31775throw = "cn ou o";
            this.f31780while = "cn ou o";
            this.f31761import = "cn ou o";
            this.f31763native = "cn ou o";
            this.f31768public = "cn";
            this.f31769return = "cn o ou";
            this.f31770static = "cn o ou";
            this.f31773switch = "cn o ou";
            this.f31776throws = "cn o ou";
            this.f31752default = "cn";
            this.f31755extends = "o ou";
            this.f31757finally = "o ou";
            this.f31765package = "o ou";
            this.f31766private = "o ou";
            this.f31745abstract = "o ou";
            this.f31751continue = "cn";
            this.f31771strictfp = "o ou";
            this.f31779volatile = "o ou";
            this.f31762interface = "o ou";
            this.f31767protected = "o ou";
            this.f31777transient = "uid serialNumber cn";
        }

        public Cif A(String str) {
            this.f31775throw = str;
            return this;
        }

        public Cif B(String str) {
            this.f31761import = str;
            return this;
        }

        public Cif C(String str) {
            this.f31756final = str;
            return this;
        }

        public Cif D(String str) {
            this.f31777transient = str;
            return this;
        }

        public Cif E(String str) {
            this.f31758for = str;
            return this;
        }

        public Cif F(String str) {
            this.f31752default = str;
            return this;
        }

        public Cif a(String str) {
            this.f31750const = str;
            return this;
        }

        public Cif b(String str) {
            this.f31767protected = str;
            return this;
        }

        public Cif c(String str) {
            this.f31774this = str;
            return this;
        }

        public Cif d(String str) {
            this.f31751continue = str;
            return this;
        }

        public Cif e(String str) {
            this.f31749class = str;
            return this;
        }

        public Cif f(String str) {
            this.f31762interface = str;
            return this;
        }

        public Cif g(String str) {
            this.f31748catch = str;
            return this;
        }

        public Cif h(String str) {
            this.f31779volatile = str;
            return this;
        }

        public Cif i(String str) {
            this.f31759goto = str;
            return this;
        }

        /* renamed from: implements, reason: not valid java name */
        public Ctry m35233implements() {
            if (this.f31756final == null || this.f31772super == null || this.f31775throw == null || this.f31780while == null || this.f31761import == null || this.f31763native == null || this.f31768public == null || this.f31769return == null || this.f31770static == null || this.f31773switch == null || this.f31776throws == null || this.f31752default == null || this.f31755extends == null || this.f31757finally == null || this.f31765package == null || this.f31766private == null || this.f31745abstract == null || this.f31751continue == null || this.f31771strictfp == null || this.f31779volatile == null || this.f31762interface == null || this.f31767protected == null) {
                throw new IllegalArgumentException("Necessary parameters not specified.");
            }
            return new Ctry(this);
        }

        /* renamed from: instanceof, reason: not valid java name */
        public Cif m35234instanceof(String str) {
            this.f31746break = str;
            return this;
        }

        public Cif j(String str) {
            this.f31745abstract = str;
            return this;
        }

        public Cif k(String str) {
            this.f31764new = str;
            return this;
        }

        public Cif l(String str) {
            this.f31755extends = str;
            return this;
        }

        public Cif m(String str) {
            this.f31747case = str;
            return this;
        }

        public Cif n(String str) {
            this.f31765package = str;
            return this;
        }

        public Cif o(String str) {
            this.f31778try = str;
            return this;
        }

        public Cif p(String str) {
            this.f31757finally = str;
            return this;
        }

        public Cif q(String str) {
            this.f31754else = str;
            return this;
        }

        public Cif r(String str) {
            this.f31766private = str;
            return this;
        }

        public Cif s(String str) {
            this.f31769return = str;
            return this;
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Cif m35235synchronized(String str) {
            this.f31771strictfp = str;
            return this;
        }

        public Cif t(String str) {
            this.f31776throws = str;
            return this;
        }

        public Cif u(String str) {
            this.f31768public = str;
            return this;
        }

        public Cif v(String str) {
            this.f31773switch = str;
            return this;
        }

        public Cif w(String str) {
            this.f31770static = str;
            return this;
        }

        public Cif x(String str) {
            this.f31763native = str;
            return this;
        }

        public Cif y(String str) {
            this.f31772super = str;
            return this;
        }

        public Cif z(String str) {
            this.f31780while = str;
            return this;
        }
    }

    private Ctry(Cif cif) {
        this.f31717do = cif.f31753do;
        this.f31724if = cif.f31760if;
        this.f31722for = cif.f31758for;
        this.f31728new = cif.f31764new;
        this.f31742try = cif.f31778try;
        this.f31711case = cif.f31747case;
        this.f31718else = cif.f31754else;
        this.f31723goto = cif.f31759goto;
        this.f31738this = cif.f31774this;
        this.f31710break = cif.f31746break;
        this.f31712catch = cif.f31748catch;
        this.f31713class = cif.f31749class;
        this.f31714const = cif.f31750const;
        this.f31720final = cif.f31756final;
        this.f31736super = cif.f31772super;
        this.f31739throw = cif.f31775throw;
        this.f31744while = cif.f31780while;
        this.f31725import = cif.f31761import;
        this.f31727native = cif.f31763native;
        this.f31732public = cif.f31768public;
        this.f31733return = cif.f31769return;
        this.f31734static = cif.f31770static;
        this.f31737switch = cif.f31773switch;
        this.f31740throws = cif.f31776throws;
        this.f31716default = cif.f31752default;
        this.f31719extends = cif.f31755extends;
        this.f31721finally = cif.f31757finally;
        this.f31729package = cif.f31765package;
        this.f31730private = cif.f31766private;
        this.f31709abstract = cif.f31745abstract;
        this.f31715continue = cif.f31751continue;
        this.f31735strictfp = cif.f31771strictfp;
        this.f31743volatile = cif.f31779volatile;
        this.f31726interface = cif.f31762interface;
        this.f31731protected = cif.f31767protected;
        this.f31741transient = cif.f31777transient;
    }

    /* renamed from: default, reason: not valid java name */
    public static Ctry m35158default(LDAPCertStoreParameters lDAPCertStoreParameters) {
        return new Cif("ldap://" + lDAPCertStoreParameters.getServerName() + ":" + lDAPCertStoreParameters.getPort(), "").m35233implements();
    }

    /* renamed from: do, reason: not valid java name */
    private int m35159do(int i, Object obj) {
        return (i * 29) + (obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m35160if(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public String a() {
        return this.f31716default;
    }

    /* renamed from: abstract, reason: not valid java name */
    public String m35161abstract() {
        return this.f31734static;
    }

    /* renamed from: break, reason: not valid java name */
    public String m35162break() {
        return this.f31713class;
    }

    /* renamed from: case, reason: not valid java name */
    public String m35163case() {
        return this.f31714const;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m35164catch() {
        return this.f31726interface;
    }

    /* renamed from: class, reason: not valid java name */
    public String m35165class() {
        return this.f31712catch;
    }

    @Override // java.security.cert.CertStoreParameters
    public Object clone() {
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public String m35166const() {
        return this.f31743volatile;
    }

    /* renamed from: continue, reason: not valid java name */
    public String m35167continue() {
        return this.f31727native;
    }

    /* renamed from: else, reason: not valid java name */
    public String m35168else() {
        return this.f31731protected;
    }

    /* renamed from: extends, reason: not valid java name */
    public String m35169extends() {
        return this.f31733return;
    }

    /* renamed from: final, reason: not valid java name */
    public String m35170final() {
        return this.f31723goto;
    }

    /* renamed from: finally, reason: not valid java name */
    public String m35171finally() {
        return this.f31740throws;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m35172for(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ctry)) {
            return false;
        }
        Ctry ctry = (Ctry) obj;
        return m35160if(this.f31717do, ctry.f31717do) && m35160if(this.f31724if, ctry.f31724if) && m35160if(this.f31722for, ctry.f31722for) && m35160if(this.f31728new, ctry.f31728new) && m35160if(this.f31742try, ctry.f31742try) && m35160if(this.f31711case, ctry.f31711case) && m35160if(this.f31718else, ctry.f31718else) && m35160if(this.f31723goto, ctry.f31723goto) && m35160if(this.f31738this, ctry.f31738this) && m35160if(this.f31710break, ctry.f31710break) && m35160if(this.f31712catch, ctry.f31712catch) && m35160if(this.f31713class, ctry.f31713class) && m35160if(this.f31714const, ctry.f31714const) && m35160if(this.f31720final, ctry.f31720final) && m35160if(this.f31736super, ctry.f31736super) && m35160if(this.f31739throw, ctry.f31739throw) && m35160if(this.f31744while, ctry.f31744while) && m35160if(this.f31725import, ctry.f31725import) && m35160if(this.f31727native, ctry.f31727native) && m35160if(this.f31732public, ctry.f31732public) && m35160if(this.f31733return, ctry.f31733return) && m35160if(this.f31734static, ctry.f31734static) && m35160if(this.f31737switch, ctry.f31737switch) && m35160if(this.f31740throws, ctry.f31740throws) && m35160if(this.f31716default, ctry.f31716default) && m35160if(this.f31719extends, ctry.f31719extends) && m35160if(this.f31721finally, ctry.f31721finally) && m35160if(this.f31729package, ctry.f31729package) && m35160if(this.f31730private, ctry.f31730private) && m35160if(this.f31709abstract, ctry.f31709abstract) && m35160if(this.f31715continue, ctry.f31715continue) && m35160if(this.f31735strictfp, ctry.f31735strictfp) && m35160if(this.f31743volatile, ctry.f31743volatile) && m35160if(this.f31726interface, ctry.f31726interface) && m35160if(this.f31731protected, ctry.f31731protected) && m35160if(this.f31741transient, ctry.f31741transient);
    }

    /* renamed from: goto, reason: not valid java name */
    public String m35173goto() {
        return this.f31738this;
    }

    public int hashCode() {
        return m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(m35159do(0, this.f31722for), this.f31728new), this.f31742try), this.f31711case), this.f31718else), this.f31723goto), this.f31738this), this.f31710break), this.f31712catch), this.f31713class), this.f31714const), this.f31720final), this.f31736super), this.f31739throw), this.f31744while), this.f31725import), this.f31727native), this.f31732public), this.f31733return), this.f31734static), this.f31737switch), this.f31740throws), this.f31716default), this.f31719extends), this.f31721finally), this.f31729package), this.f31730private), this.f31709abstract), this.f31715continue), this.f31735strictfp), this.f31743volatile), this.f31726interface), this.f31731protected), this.f31741transient);
    }

    /* renamed from: implements, reason: not valid java name */
    public String m35174implements() {
        return this.f31720final;
    }

    /* renamed from: import, reason: not valid java name */
    public String m35175import() {
        return this.f31719extends;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public String m35176instanceof() {
        return this.f31741transient;
    }

    /* renamed from: interface, reason: not valid java name */
    public String m35177interface() {
        return this.f31739throw;
    }

    /* renamed from: native, reason: not valid java name */
    public String m35178native() {
        return this.f31711case;
    }

    /* renamed from: new, reason: not valid java name */
    public String m35179new() {
        return this.f31710break;
    }

    /* renamed from: package, reason: not valid java name */
    public String m35180package() {
        return this.f31732public;
    }

    /* renamed from: private, reason: not valid java name */
    public String m35181private() {
        return this.f31737switch;
    }

    /* renamed from: protected, reason: not valid java name */
    public String m35182protected() {
        return this.f31725import;
    }

    /* renamed from: public, reason: not valid java name */
    public String m35183public() {
        return this.f31729package;
    }

    /* renamed from: return, reason: not valid java name */
    public String m35184return() {
        return this.f31742try;
    }

    /* renamed from: static, reason: not valid java name */
    public String m35185static() {
        return this.f31721finally;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public String m35186strictfp() {
        return this.f31736super;
    }

    /* renamed from: super, reason: not valid java name */
    public String m35187super() {
        return this.f31709abstract;
    }

    /* renamed from: switch, reason: not valid java name */
    public String m35188switch() {
        return this.f31718else;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public String m35189synchronized() {
        return this.f31722for;
    }

    /* renamed from: this, reason: not valid java name */
    public String m35190this() {
        return this.f31715continue;
    }

    /* renamed from: throw, reason: not valid java name */
    public String m35191throw() {
        return this.f31724if;
    }

    /* renamed from: throws, reason: not valid java name */
    public String m35192throws() {
        return this.f31730private;
    }

    /* renamed from: transient, reason: not valid java name */
    public String m35193transient() {
        return this.f31717do;
    }

    /* renamed from: try, reason: not valid java name */
    public String m35194try() {
        return this.f31735strictfp;
    }

    /* renamed from: volatile, reason: not valid java name */
    public String m35195volatile() {
        return this.f31744while;
    }

    /* renamed from: while, reason: not valid java name */
    public String m35196while() {
        return this.f31728new;
    }
}
