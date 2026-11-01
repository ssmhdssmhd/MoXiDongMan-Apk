package org.bouncycastle.jce.provider;

import android.support.v4.t01;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertStoreSpi;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: org.bouncycastle.jce.provider.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic extends CertStoreSpi {

    /* renamed from: do, reason: not valid java name */
    private t01 f31665do;

    public Cpublic(CertStoreParameters certStoreParameters) throws InvalidAlgorithmParameterException {
        super(certStoreParameters);
        if (certStoreParameters instanceof t01) {
            this.f31665do = (t01) certStoreParameters;
            return;
        }
        throw new InvalidAlgorithmParameterException("org.bouncycastle.jce.provider.MultiCertStoreSpi: parameter must be a MultiCertStoreParameters object\n" + certStoreParameters.toString());
    }

    @Override // java.security.cert.CertStoreSpi
    public Collection engineGetCRLs(CRLSelector cRLSelector) throws CertStoreException {
        boolean zM7674if = this.f31665do.m7674if();
        Iterator it = this.f31665do.m7673do().iterator();
        List arrayList = zM7674if ? new ArrayList() : Collections.EMPTY_LIST;
        while (it.hasNext()) {
            Collection<? extends CRL> cRLs = ((CertStore) it.next()).getCRLs(cRLSelector);
            if (zM7674if) {
                arrayList.addAll(cRLs);
            } else if (!cRLs.isEmpty()) {
                return cRLs;
            }
        }
        return arrayList;
    }

    @Override // java.security.cert.CertStoreSpi
    public Collection engineGetCertificates(CertSelector certSelector) throws CertStoreException {
        boolean zM7674if = this.f31665do.m7674if();
        Iterator it = this.f31665do.m7673do().iterator();
        List arrayList = zM7674if ? new ArrayList() : Collections.EMPTY_LIST;
        while (it.hasNext()) {
            Collection<? extends Certificate> certificates = ((CertStore) it.next()).getCertificates(certSelector);
            if (zM7674if) {
                arrayList.addAll(certificates);
            } else if (!certificates.isEmpty()) {
                return certificates;
            }
        }
        return arrayList;
    }
}
