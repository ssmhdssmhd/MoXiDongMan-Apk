package org.bouncycastle.asn1.crmf;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public interface CRMFObjectIdentifiers {
    public static final Ccatch id_alg;
    public static final Ccatch id_alg_dh_pop;
    public static final Ccatch id_ct_encKeyWithID;
    public static final Ccatch id_dh_sig_hmac_sha1;
    public static final Ccatch id_pkip;
    public static final Ccatch id_pkix;
    public static final Ccatch id_regCtrl;
    public static final Ccatch id_regCtrl_authenticator;
    public static final Ccatch id_regCtrl_pkiArchiveOptions;
    public static final Ccatch id_regCtrl_pkiPublicationInfo;
    public static final Ccatch id_regCtrl_regToken;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7");
        id_pkix = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("5");
        id_pkip = ccatchM32792catch;
        Ccatch ccatchM32792catch2 = ccatchM32792catch.m32792catch("1");
        id_regCtrl = ccatchM32792catch2;
        id_regCtrl_regToken = ccatchM32792catch2.m32792catch("1");
        id_regCtrl_authenticator = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_regCtrl_pkiPublicationInfo = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_regCtrl_pkiArchiveOptions = ccatchM32792catch2.m32792catch("4");
        id_ct_encKeyWithID = PKCSObjectIdentifiers.id_ct.m32792catch("21");
        Ccatch ccatchM32792catch3 = ccatch.m32792catch("6");
        id_alg = ccatchM32792catch3;
        id_dh_sig_hmac_sha1 = ccatchM32792catch3.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_alg_dh_pop = ccatchM32792catch3.m32792catch("4");
    }
}
