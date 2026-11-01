package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.r12;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.jcajce.Cdo;
import org.bouncycastle.util.Store;

/* renamed from: org.bouncycastle.jce.provider.default, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdefault {
    /* renamed from: do, reason: not valid java name */
    private final Collection m35019do(Cdo cdo, List list) throws a2 {
        a2 a2Var;
        HashSet hashSet = new HashSet();
        a2 a2Var2 = null;
        boolean z = false;
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    hashSet.addAll(((Store) obj).getMatches(cdo));
                    z = true;
                } catch (r12 e) {
                    a2Var = new a2("Exception searching in X.509 CRL store.", e);
                    a2Var2 = a2Var;
                }
            } else {
                try {
                    hashSet.addAll(Cdo.m34550if(cdo, (CertStore) obj));
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

    /* renamed from: if, reason: not valid java name */
    public Set m35020if(Cdo cdo, Date date, List list, List list2) throws a2 {
        X509Certificate x509CertificateM34553for;
        HashSet<X509CRL> hashSet = new HashSet();
        try {
            hashSet.addAll(m35019do(cdo, list2));
            hashSet.addAll(m35019do(cdo, list));
            HashSet hashSet2 = new HashSet();
            for (X509CRL x509crl : hashSet) {
                if (x509crl.getNextUpdate().after(date) && ((x509CertificateM34553for = cdo.m34553for()) == null || x509crl.getThisUpdate().before(x509CertificateM34553for.getNotAfter()))) {
                    hashSet2.add(x509crl);
                }
            }
            return hashSet2;
        } catch (a2 e) {
            throw new a2("Exception obtaining complete CRLs.", e);
        }
    }
}
