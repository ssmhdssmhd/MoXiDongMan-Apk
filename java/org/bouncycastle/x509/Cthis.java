package org.bouncycastle.x509;

import android.support.v4.a2;
import android.support.v4.r12;
import android.support.v4.yg2;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: org.bouncycastle.x509.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {
    /* renamed from: do, reason: not valid java name */
    private final Collection m36582do(yg2 yg2Var, List list) throws a2 {
        a2 a2Var;
        HashSet hashSet = new HashSet();
        a2 a2Var2 = null;
        boolean z = false;
        for (Object obj : list) {
            if (obj instanceof Cconst) {
                try {
                    hashSet.addAll(((Cconst) obj).getMatches(yg2Var));
                    z = true;
                } catch (r12 e) {
                    a2Var = new a2("Exception searching in X.509 CRL store.", e);
                    a2Var2 = a2Var;
                }
            } else {
                try {
                    hashSet.addAll(((CertStore) obj).getCRLs(yg2Var));
                    z = true;
                } catch (CertStoreException e2) {
                    a2Var = new a2("Exception searching in X.509 CRL store.", e2);
                    a2Var2 = a2Var;
                }
            }
        }
        if (z || a2Var2 == null) {
            return hashSet;
        }
        throw a2Var2;
    }

    /* renamed from: for, reason: not valid java name */
    public Set m36583for(yg2 yg2Var, Celse celse, Date date) throws a2 {
        X509Certificate certificateChecking;
        HashSet<X509CRL> hashSet = new HashSet();
        try {
            hashSet.addAll(m36582do(yg2Var, celse.m36474new()));
            hashSet.addAll(m36582do(yg2Var, celse.m36480this()));
            hashSet.addAll(m36582do(yg2Var, celse.getCertStores()));
            HashSet hashSet2 = new HashSet();
            if (celse.getDate() != null) {
                date = celse.getDate();
            }
            for (X509CRL x509crl : hashSet) {
                if (x509crl.getNextUpdate().after(date) && ((certificateChecking = yg2Var.getCertificateChecking()) == null || x509crl.getThisUpdate().before(certificateChecking.getNotAfter()))) {
                    hashSet2.add(x509crl);
                }
            }
            return hashSet2;
        } catch (a2 e) {
            throw new a2("Exception obtaining complete CRLs.", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public Set m36584if(yg2 yg2Var, PKIXParameters pKIXParameters) throws a2 {
        HashSet hashSet = new HashSet();
        try {
            hashSet.addAll(m36582do(yg2Var, pKIXParameters.getCertStores()));
            return hashSet;
        } catch (a2 e) {
            throw new a2("Exception obtaining complete CRLs.", e);
        }
    }
}
