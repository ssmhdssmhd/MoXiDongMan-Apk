package org.bouncycastle.jcajce;

import android.support.v4.tg0;
import java.security.cert.CertPathParameters;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.jcajce.Cif;

/* renamed from: org.bouncycastle.jcajce.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements CertPathParameters {

    /* renamed from: class, reason: not valid java name */
    public static final int f30967class = 0;

    /* renamed from: const, reason: not valid java name */
    public static final int f30968const = 1;

    /* renamed from: break, reason: not valid java name */
    private final int f30969break;

    /* renamed from: case, reason: not valid java name */
    private final List<PKIXCRLStore> f30970case;

    /* renamed from: catch, reason: not valid java name */
    private final Set<TrustAnchor> f30971catch;

    /* renamed from: do, reason: not valid java name */
    private final PKIXParameters f30972do;

    /* renamed from: else, reason: not valid java name */
    private final Map<tg0, PKIXCRLStore> f30973else;

    /* renamed from: for, reason: not valid java name */
    private final Date f30974for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f30975goto;

    /* renamed from: if, reason: not valid java name */
    private final org.bouncycastle.jcajce.Cif f30976if;

    /* renamed from: new, reason: not valid java name */
    private final List<PKIXCertStore> f30977new;

    /* renamed from: this, reason: not valid java name */
    private final boolean f30978this;

    /* renamed from: try, reason: not valid java name */
    private final Map<tg0, PKIXCertStore> f30979try;

    /* renamed from: org.bouncycastle.jcajce.new$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: break, reason: not valid java name */
        private boolean f30980break;

        /* renamed from: case, reason: not valid java name */
        private List<PKIXCRLStore> f30981case;

        /* renamed from: catch, reason: not valid java name */
        private Set<TrustAnchor> f30982catch;

        /* renamed from: do, reason: not valid java name */
        private final PKIXParameters f30983do;

        /* renamed from: else, reason: not valid java name */
        private Map<tg0, PKIXCRLStore> f30984else;

        /* renamed from: for, reason: not valid java name */
        private org.bouncycastle.jcajce.Cif f30985for;

        /* renamed from: goto, reason: not valid java name */
        private boolean f30986goto;

        /* renamed from: if, reason: not valid java name */
        private final Date f30987if;

        /* renamed from: new, reason: not valid java name */
        private List<PKIXCertStore> f30988new;

        /* renamed from: this, reason: not valid java name */
        private int f30989this;

        /* renamed from: try, reason: not valid java name */
        private Map<tg0, PKIXCertStore> f30990try;

        public Cif(PKIXParameters pKIXParameters) {
            this.f30988new = new ArrayList();
            this.f30990try = new HashMap();
            this.f30981case = new ArrayList();
            this.f30984else = new HashMap();
            this.f30989this = 0;
            this.f30980break = false;
            this.f30983do = (PKIXParameters) pKIXParameters.clone();
            CertSelector targetCertConstraints = pKIXParameters.getTargetCertConstraints();
            if (targetCertConstraints != null) {
                this.f30985for = new Cif.C0413if(targetCertConstraints).m34580do();
            }
            Date date = pKIXParameters.getDate();
            this.f30987if = date == null ? new Date() : date;
            this.f30986goto = pKIXParameters.isRevocationEnabled();
            this.f30982catch = pKIXParameters.getTrustAnchors();
        }

        public Cif(Cnew cnew) {
            this.f30988new = new ArrayList();
            this.f30990try = new HashMap();
            this.f30981case = new ArrayList();
            this.f30984else = new HashMap();
            this.f30989this = 0;
            this.f30980break = false;
            this.f30983do = cnew.f30972do;
            this.f30987if = cnew.f30974for;
            this.f30985for = cnew.f30976if;
            this.f30988new = new ArrayList(cnew.f30977new);
            this.f30990try = new HashMap(cnew.f30979try);
            this.f30981case = new ArrayList(cnew.f30970case);
            this.f30984else = new HashMap(cnew.f30973else);
            this.f30980break = cnew.f30978this;
            this.f30989this = cnew.f30969break;
            this.f30986goto = cnew.m34601extends();
            this.f30982catch = cnew.m34607return();
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m34625class(PKIXCRLStore pKIXCRLStore) {
            this.f30981case.add(pKIXCRLStore);
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m34626const(PKIXCertStore pKIXCertStore) {
            this.f30988new.add(pKIXCertStore);
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m34627final(tg0 tg0Var, PKIXCRLStore pKIXCRLStore) {
            this.f30984else.put(tg0Var, pKIXCRLStore);
            return this;
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m34628import(org.bouncycastle.jcajce.Cif cif) {
            this.f30985for = cif;
            return this;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m34629native(TrustAnchor trustAnchor) {
            this.f30982catch = Collections.singleton(trustAnchor);
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m34630public(Set<TrustAnchor> set) {
            this.f30982catch = set;
            return this;
        }

        /* renamed from: return, reason: not valid java name */
        public Cif m34631return(boolean z) {
            this.f30980break = z;
            return this;
        }

        /* renamed from: static, reason: not valid java name */
        public Cif m34632static(int i) {
            this.f30989this = i;
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m34633super(tg0 tg0Var, PKIXCertStore pKIXCertStore) {
            this.f30990try.put(tg0Var, pKIXCertStore);
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public Cnew m34634throw() {
            return new Cnew(this);
        }

        /* renamed from: while, reason: not valid java name */
        public void m34635while(boolean z) {
            this.f30986goto = z;
        }
    }

    private Cnew(Cif cif) {
        this.f30972do = cif.f30983do;
        this.f30974for = cif.f30987if;
        this.f30977new = Collections.unmodifiableList(cif.f30988new);
        this.f30979try = Collections.unmodifiableMap(new HashMap(cif.f30990try));
        this.f30970case = Collections.unmodifiableList(cif.f30981case);
        this.f30973else = Collections.unmodifiableMap(new HashMap(cif.f30984else));
        this.f30976if = cif.f30985for;
        this.f30975goto = cif.f30986goto;
        this.f30978this = cif.f30980break;
        this.f30969break = cif.f30989this;
        this.f30971catch = Collections.unmodifiableSet(cif.f30982catch);
    }

    /* renamed from: break, reason: not valid java name */
    public List<PKIXCRLStore> m34596break() {
        return this.f30970case;
    }

    /* renamed from: catch, reason: not valid java name */
    public List m34597catch() {
        return this.f30972do.getCertPathCheckers();
    }

    /* renamed from: class, reason: not valid java name */
    public List<CertStore> m34598class() {
        return this.f30972do.getCertStores();
    }

    @Override // java.security.cert.CertPathParameters
    public Object clone() {
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public List<PKIXCertStore> m34599const() {
        return this.f30977new;
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m34600default() {
        return this.f30972do.isPolicyMappingInhibited();
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m34601extends() {
        return this.f30975goto;
    }

    /* renamed from: final, reason: not valid java name */
    public Date m34602final() {
        return new Date(this.f30974for.getTime());
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m34603finally() {
        return this.f30978this;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m34604import() {
        return this.f30972do.getPolicyQualifiersRejected();
    }

    /* renamed from: native, reason: not valid java name */
    public String m34605native() {
        return this.f30972do.getSigProvider();
    }

    /* renamed from: public, reason: not valid java name */
    public org.bouncycastle.jcajce.Cif m34606public() {
        return this.f30976if;
    }

    /* renamed from: return, reason: not valid java name */
    public Set m34607return() {
        return this.f30971catch;
    }

    /* renamed from: static, reason: not valid java name */
    public int m34608static() {
        return this.f30969break;
    }

    /* renamed from: super, reason: not valid java name */
    public Set m34609super() {
        return this.f30972do.getInitialPolicies();
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m34610switch() {
        return this.f30972do.isAnyPolicyInhibited();
    }

    /* renamed from: throw, reason: not valid java name */
    public Map<tg0, PKIXCRLStore> m34611throw() {
        return this.f30973else;
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m34612throws() {
        return this.f30972do.isExplicitPolicyRequired();
    }

    /* renamed from: while, reason: not valid java name */
    public Map<tg0, PKIXCertStore> m34613while() {
        return this.f30979try;
    }
}
