package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface OCSPObjectIdentifiers {
    public static final Ccatch id_pkix_ocsp;
    public static final Ccatch id_pkix_ocsp_archive_cutoff;
    public static final Ccatch id_pkix_ocsp_basic;
    public static final Ccatch id_pkix_ocsp_crl;
    public static final Ccatch id_pkix_ocsp_extended_revoke;
    public static final Ccatch id_pkix_ocsp_nocheck;
    public static final Ccatch id_pkix_ocsp_nonce;
    public static final Ccatch id_pkix_ocsp_pref_sig_algs;
    public static final Ccatch id_pkix_ocsp_response;
    public static final Ccatch id_pkix_ocsp_service_locator;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7.48.1");
        id_pkix_ocsp = ccatch;
        id_pkix_ocsp_basic = new Ccatch("1.3.6.1.5.5.7.48.1.1");
        id_pkix_ocsp_nonce = new Ccatch("1.3.6.1.5.5.7.48.1.2");
        id_pkix_ocsp_crl = new Ccatch("1.3.6.1.5.5.7.48.1.3");
        id_pkix_ocsp_response = new Ccatch("1.3.6.1.5.5.7.48.1.4");
        id_pkix_ocsp_nocheck = new Ccatch("1.3.6.1.5.5.7.48.1.5");
        id_pkix_ocsp_archive_cutoff = new Ccatch("1.3.6.1.5.5.7.48.1.6");
        id_pkix_ocsp_service_locator = new Ccatch("1.3.6.1.5.5.7.48.1.7");
        id_pkix_ocsp_pref_sig_algs = ccatch.m32792catch("8");
        id_pkix_ocsp_extended_revoke = ccatch.m32792catch("9");
    }
}
