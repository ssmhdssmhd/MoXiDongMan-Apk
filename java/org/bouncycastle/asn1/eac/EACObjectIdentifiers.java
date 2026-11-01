package org.bouncycastle.asn1.eac;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface EACObjectIdentifiers {
    public static final Ccatch bsi_de;
    public static final Ccatch id_CA;
    public static final Ccatch id_CA_DH;
    public static final Ccatch id_CA_DH_3DES_CBC_CBC;
    public static final Ccatch id_CA_ECDH;
    public static final Ccatch id_CA_ECDH_3DES_CBC_CBC;
    public static final Ccatch id_EAC_ePassport;
    public static final Ccatch id_PK;
    public static final Ccatch id_PK_DH;
    public static final Ccatch id_PK_ECDH;
    public static final Ccatch id_TA;
    public static final Ccatch id_TA_ECDSA;
    public static final Ccatch id_TA_ECDSA_SHA_1;
    public static final Ccatch id_TA_ECDSA_SHA_224;
    public static final Ccatch id_TA_ECDSA_SHA_256;
    public static final Ccatch id_TA_ECDSA_SHA_384;
    public static final Ccatch id_TA_ECDSA_SHA_512;
    public static final Ccatch id_TA_RSA;
    public static final Ccatch id_TA_RSA_PSS_SHA_1;
    public static final Ccatch id_TA_RSA_PSS_SHA_256;
    public static final Ccatch id_TA_RSA_PSS_SHA_512;
    public static final Ccatch id_TA_RSA_v1_5_SHA_1;
    public static final Ccatch id_TA_RSA_v1_5_SHA_256;
    public static final Ccatch id_TA_RSA_v1_5_SHA_512;

    static {
        Ccatch ccatch = new Ccatch("0.4.0.127.0.7");
        bsi_de = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("2.2.1");
        id_PK = ccatchM32792catch;
        id_PK_DH = ccatchM32792catch.m32792catch("1");
        id_PK_ECDH = ccatchM32792catch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        Ccatch ccatchM32792catch2 = ccatch.m32792catch("2.2.3");
        id_CA = ccatchM32792catch2;
        Ccatch ccatchM32792catch3 = ccatchM32792catch2.m32792catch("1");
        id_CA_DH = ccatchM32792catch3;
        id_CA_DH_3DES_CBC_CBC = ccatchM32792catch3.m32792catch("1");
        Ccatch ccatchM32792catch4 = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_CA_ECDH = ccatchM32792catch4;
        id_CA_ECDH_3DES_CBC_CBC = ccatchM32792catch4.m32792catch("1");
        Ccatch ccatchM32792catch5 = ccatch.m32792catch("2.2.2");
        id_TA = ccatchM32792catch5;
        Ccatch ccatchM32792catch6 = ccatchM32792catch5.m32792catch("1");
        id_TA_RSA = ccatchM32792catch6;
        id_TA_RSA_v1_5_SHA_1 = ccatchM32792catch6.m32792catch("1");
        id_TA_RSA_v1_5_SHA_256 = ccatchM32792catch6.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_TA_RSA_PSS_SHA_1 = ccatchM32792catch6.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_TA_RSA_PSS_SHA_256 = ccatchM32792catch6.m32792catch("4");
        id_TA_RSA_v1_5_SHA_512 = ccatchM32792catch6.m32792catch("5");
        id_TA_RSA_PSS_SHA_512 = ccatchM32792catch6.m32792catch("6");
        Ccatch ccatchM32792catch7 = ccatchM32792catch5.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_TA_ECDSA = ccatchM32792catch7;
        id_TA_ECDSA_SHA_1 = ccatchM32792catch7.m32792catch("1");
        id_TA_ECDSA_SHA_224 = ccatchM32792catch7.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_TA_ECDSA_SHA_256 = ccatchM32792catch7.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_TA_ECDSA_SHA_384 = ccatchM32792catch7.m32792catch("4");
        id_TA_ECDSA_SHA_512 = ccatchM32792catch7.m32792catch("5");
        id_EAC_ePassport = ccatch.m32792catch("3.1.2.1");
    }
}
