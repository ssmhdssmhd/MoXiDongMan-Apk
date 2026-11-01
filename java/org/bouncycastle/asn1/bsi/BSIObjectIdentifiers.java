package org.bouncycastle.asn1.bsi;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface BSIObjectIdentifiers {
    public static final Ccatch algorithm;
    public static final Ccatch bsi_de;
    public static final Ccatch ecdsa_plain_RIPEMD160;
    public static final Ccatch ecdsa_plain_SHA1;
    public static final Ccatch ecdsa_plain_SHA224;
    public static final Ccatch ecdsa_plain_SHA256;
    public static final Ccatch ecdsa_plain_SHA384;
    public static final Ccatch ecdsa_plain_SHA512;
    public static final Ccatch ecdsa_plain_signatures;
    public static final Ccatch ecka_eg;
    public static final Ccatch ecka_eg_SessionKDF;
    public static final Ccatch ecka_eg_SessionKDF_3DES;
    public static final Ccatch ecka_eg_SessionKDF_AES128;
    public static final Ccatch ecka_eg_SessionKDF_AES192;
    public static final Ccatch ecka_eg_SessionKDF_AES256;
    public static final Ccatch ecka_eg_X963kdf;
    public static final Ccatch ecka_eg_X963kdf_RIPEMD160;
    public static final Ccatch ecka_eg_X963kdf_SHA1;
    public static final Ccatch ecka_eg_X963kdf_SHA224;
    public static final Ccatch ecka_eg_X963kdf_SHA256;
    public static final Ccatch ecka_eg_X963kdf_SHA384;
    public static final Ccatch ecka_eg_X963kdf_SHA512;
    public static final Ccatch id_ecc;

    static {
        Ccatch ccatch = new Ccatch("0.4.0.127.0.7");
        bsi_de = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("1.1");
        id_ecc = ccatchM32792catch;
        Ccatch ccatchM32792catch2 = ccatchM32792catch.m32792catch("4.1");
        ecdsa_plain_signatures = ccatchM32792catch2;
        ecdsa_plain_SHA1 = ccatchM32792catch2.m32792catch("1");
        ecdsa_plain_SHA224 = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        ecdsa_plain_SHA256 = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        ecdsa_plain_SHA384 = ccatchM32792catch2.m32792catch("4");
        ecdsa_plain_SHA512 = ccatchM32792catch2.m32792catch("5");
        ecdsa_plain_RIPEMD160 = ccatchM32792catch2.m32792catch("6");
        algorithm = ccatch.m32792catch("1");
        Ccatch ccatchM32792catch3 = ccatchM32792catch.m32792catch("5.1");
        ecka_eg = ccatchM32792catch3;
        Ccatch ccatchM32792catch4 = ccatchM32792catch3.m32792catch("1");
        ecka_eg_X963kdf = ccatchM32792catch4;
        ecka_eg_X963kdf_SHA1 = ccatchM32792catch4.m32792catch("1");
        ecka_eg_X963kdf_SHA224 = ccatchM32792catch4.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        ecka_eg_X963kdf_SHA256 = ccatchM32792catch4.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        ecka_eg_X963kdf_SHA384 = ccatchM32792catch4.m32792catch("4");
        ecka_eg_X963kdf_SHA512 = ccatchM32792catch4.m32792catch("5");
        ecka_eg_X963kdf_RIPEMD160 = ccatchM32792catch4.m32792catch("6");
        Ccatch ccatchM32792catch5 = ccatchM32792catch3.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        ecka_eg_SessionKDF = ccatchM32792catch5;
        ecka_eg_SessionKDF_3DES = ccatchM32792catch5.m32792catch("1");
        ecka_eg_SessionKDF_AES128 = ccatchM32792catch5.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        ecka_eg_SessionKDF_AES192 = ccatchM32792catch5.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        ecka_eg_SessionKDF_AES256 = ccatchM32792catch5.m32792catch("4");
    }
}
