package org.bouncycastle.x509;

import android.support.v4.ah2;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

/* renamed from: org.bouncycastle.x509.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends PKIXParameters {

    /* renamed from: catch, reason: not valid java name */
    public static final int f32710catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f32711class = 1;

    /* renamed from: break, reason: not valid java name */
    private boolean f32712break;

    /* renamed from: case, reason: not valid java name */
    private Set f32713case;

    /* renamed from: do, reason: not valid java name */
    private List f32714do;

    /* renamed from: else, reason: not valid java name */
    private Set f32715else;

    /* renamed from: for, reason: not valid java name */
    private boolean f32716for;

    /* renamed from: goto, reason: not valid java name */
    private Set f32717goto;

    /* renamed from: if, reason: not valid java name */
    private Selector f32718if;

    /* renamed from: new, reason: not valid java name */
    private List f32719new;

    /* renamed from: this, reason: not valid java name */
    private int f32720this;

    /* renamed from: try, reason: not valid java name */
    private Set f32721try;

    public Celse(Set set) throws InvalidAlgorithmParameterException {
        super((Set<TrustAnchor>) set);
        this.f32720this = 0;
        this.f32712break = false;
        this.f32714do = new ArrayList();
        this.f32719new = new ArrayList();
        this.f32721try = new HashSet();
        this.f32713case = new HashSet();
        this.f32715else = new HashSet();
        this.f32717goto = new HashSet();
    }

    /* renamed from: case, reason: not valid java name */
    public static Celse m36462case(PKIXParameters pKIXParameters) throws InvalidAlgorithmParameterException {
        try {
            Celse celse = new Celse(pKIXParameters.getTrustAnchors());
            celse.mo36422import(pKIXParameters);
            return celse;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Selector m36463break() {
        Selector selector = this.f32718if;
        if (selector != null) {
            return (Selector) selector.clone();
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public Set m36464catch() {
        return Collections.unmodifiableSet(this.f32721try);
    }

    /* renamed from: class, reason: not valid java name */
    public int m36465class() {
        return this.f32720this;
    }

    @Override // java.security.cert.PKIXParameters, java.security.cert.CertPathParameters
    public Object clone() throws InvalidAlgorithmParameterException {
        try {
            Celse celse = new Celse(getTrustAnchors());
            celse.mo36422import(this);
            return celse;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m36466const() {
        return this.f32716for;
    }

    /* renamed from: do, reason: not valid java name */
    public void m36467do(Store store) {
        m36472if(store);
    }

    /* renamed from: else, reason: not valid java name */
    public Set m36468else() {
        return Collections.unmodifiableSet(this.f32713case);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m36469final() {
        return this.f32712break;
    }

    /* renamed from: for, reason: not valid java name */
    public void m36470for(Store store) {
        if (store != null) {
            this.f32714do.add(store);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public Set m36471goto() {
        return Collections.unmodifiableSet(this.f32715else);
    }

    /* renamed from: if, reason: not valid java name */
    public void m36472if(Store store) {
        if (store != null) {
            this.f32719new.add(store);
        }
    }

    /* renamed from: import */
    public void mo36422import(PKIXParameters pKIXParameters) throws InvalidAlgorithmParameterException {
        setDate(pKIXParameters.getDate());
        setCertPathCheckers(pKIXParameters.getCertPathCheckers());
        setCertStores(pKIXParameters.getCertStores());
        setAnyPolicyInhibited(pKIXParameters.isAnyPolicyInhibited());
        setExplicitPolicyRequired(pKIXParameters.isExplicitPolicyRequired());
        setPolicyMappingInhibited(pKIXParameters.isPolicyMappingInhibited());
        setRevocationEnabled(pKIXParameters.isRevocationEnabled());
        setInitialPolicies(pKIXParameters.getInitialPolicies());
        setPolicyQualifiersRejected(pKIXParameters.getPolicyQualifiersRejected());
        setSigProvider(pKIXParameters.getSigProvider());
        setTargetCertConstraints(pKIXParameters.getTargetCertConstraints());
        try {
            setTrustAnchors(pKIXParameters.getTrustAnchors());
            if (pKIXParameters instanceof Celse) {
                Celse celse = (Celse) pKIXParameters;
                this.f32720this = celse.f32720this;
                this.f32712break = celse.f32712break;
                this.f32716for = celse.f32716for;
                Selector selector = celse.f32718if;
                this.f32718if = selector == null ? null : (Selector) selector.clone();
                this.f32714do = new ArrayList(celse.f32714do);
                this.f32719new = new ArrayList(celse.f32719new);
                this.f32721try = new HashSet(celse.f32721try);
                this.f32715else = new HashSet(celse.f32715else);
                this.f32713case = new HashSet(celse.f32713case);
                this.f32717goto = new HashSet(celse.f32717goto);
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m36473native(Set set) {
        if (set == null) {
            this.f32715else.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof String)) {
                throw new ClassCastException("All elements of set must be of type String.");
            }
        }
        this.f32715else.clear();
        this.f32715else.addAll(set);
    }

    /* renamed from: new, reason: not valid java name */
    public List m36474new() {
        return Collections.unmodifiableList(this.f32719new);
    }

    /* renamed from: public, reason: not valid java name */
    public void m36475public(List list) {
        if (list == null) {
            this.f32714do = new ArrayList();
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof Store)) {
                throw new ClassCastException("All elements of list must be of type org.bouncycastle.util.Store.");
            }
        }
        this.f32714do = new ArrayList(list);
    }

    /* renamed from: return, reason: not valid java name */
    public void m36476return(Selector selector) {
        this.f32718if = selector != null ? (Selector) selector.clone() : null;
    }

    @Override // java.security.cert.PKIXParameters
    public void setCertStores(List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                addCertStore((CertStore) it.next());
            }
        }
    }

    @Override // java.security.cert.PKIXParameters
    public void setTargetCertConstraints(CertSelector certSelector) {
        super.setTargetCertConstraints(certSelector);
        this.f32718if = certSelector != null ? ah2.m251do((X509CertSelector) certSelector) : null;
    }

    /* renamed from: static, reason: not valid java name */
    public void m36477static(Set set) {
        if (set == null) {
            this.f32721try.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof TrustAnchor)) {
                throw new ClassCastException("All elements of set must be of type " + TrustAnchor.class.getName() + ".");
            }
        }
        this.f32721try.clear();
        this.f32721try.addAll(set);
    }

    /* renamed from: super, reason: not valid java name */
    public void m36478super(boolean z) {
        this.f32716for = z;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m36479switch(boolean z) {
        this.f32712break = z;
    }

    /* renamed from: this, reason: not valid java name */
    public List m36480this() {
        return Collections.unmodifiableList(new ArrayList(this.f32714do));
    }

    /* renamed from: throw, reason: not valid java name */
    public void m36481throw(Set set) {
        if (set == null) {
            this.f32717goto.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof Cgoto)) {
                throw new ClassCastException("All elements of set must be of type " + Cgoto.class.getName() + ".");
            }
        }
        this.f32717goto.clear();
        this.f32717goto.addAll(set);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m36482throws(int i) {
        this.f32720this = i;
    }

    /* renamed from: try, reason: not valid java name */
    public Set m36483try() {
        return Collections.unmodifiableSet(this.f32717goto);
    }

    /* renamed from: while, reason: not valid java name */
    public void m36484while(Set set) {
        if (set == null) {
            this.f32713case.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof String)) {
                throw new ClassCastException("All elements of set must be of type String.");
            }
        }
        this.f32713case.clear();
        this.f32713case.addAll(set);
    }
}
