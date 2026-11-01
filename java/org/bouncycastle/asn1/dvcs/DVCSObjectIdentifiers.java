package org.bouncycastle.asn1.dvcs;

import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface DVCSObjectIdentifiers {
    public static final Ccatch id_aa_dvcs_dvc;
    public static final Ccatch id_ad_dvcs;
    public static final Ccatch id_ct_DVCSRequestData;
    public static final Ccatch id_ct_DVCSResponseData;
    public static final Ccatch id_kp_dvcs;
    public static final Ccatch id_pkix;
    public static final Ccatch id_smime;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7");
        id_pkix = ccatch;
        Ccatch ccatch2 = new Ccatch("1.2.840.113549.1.9.16");
        id_smime = ccatch2;
        id_ad_dvcs = ccatch.m32792catch("48.4");
        id_kp_dvcs = ccatch.m32792catch("3.10");
        id_ct_DVCSRequestData = ccatch2.m32792catch("1.7");
        id_ct_DVCSResponseData = ccatch2.m32792catch("1.8");
        id_aa_dvcs_dvc = ccatch2.m32792catch("2.29");
    }
}
