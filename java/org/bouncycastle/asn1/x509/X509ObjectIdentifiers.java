package org.bouncycastle.asn1.x509;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface X509ObjectIdentifiers {
    public static final Ccatch crlAccessMethod;
    public static final Ccatch id_ad;
    public static final Ccatch id_ad_caIssuers;
    public static final Ccatch id_ad_ocsp;
    public static final Ccatch id_ce;
    public static final Ccatch id_pe;
    public static final Ccatch id_pkix;
    public static final Ccatch ocspAccessMethod;
    public static final Ccatch commonName = new Ccatch("2.5.4.3").m32793import();
    public static final Ccatch countryName = new Ccatch("2.5.4.6").m32793import();
    public static final Ccatch localityName = new Ccatch("2.5.4.7").m32793import();
    public static final Ccatch stateOrProvinceName = new Ccatch("2.5.4.8").m32793import();
    public static final Ccatch organization = new Ccatch("2.5.4.10").m32793import();
    public static final Ccatch organizationalUnitName = new Ccatch("2.5.4.11").m32793import();
    public static final Ccatch id_at_telephoneNumber = new Ccatch("2.5.4.20").m32793import();
    public static final Ccatch id_at_name = new Ccatch("2.5.4.41").m32793import();
    public static final Ccatch id_at_organizationIdentifier = new Ccatch("2.5.4.97").m32793import();
    public static final Ccatch id_SHA1 = new Ccatch("1.3.14.3.2.26").m32793import();
    public static final Ccatch ripemd160 = new Ccatch("1.3.36.3.2.1").m32793import();
    public static final Ccatch ripemd160WithRSAEncryption = new Ccatch("1.3.36.3.3.1.2").m32793import();
    public static final Ccatch id_ea_rsa = new Ccatch("2.5.8.1.1").m32793import();

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7");
        id_pkix = ccatch;
        id_pe = ccatch.m32792catch("1");
        id_ce = new Ccatch("2.5.29");
        Ccatch ccatchM32792catch = ccatch.m32792catch("48");
        id_ad = ccatchM32792catch;
        Ccatch ccatchM32793import = ccatchM32792catch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D).m32793import();
        id_ad_caIssuers = ccatchM32793import;
        Ccatch ccatchM32793import2 = ccatchM32792catch.m32792catch("1").m32793import();
        id_ad_ocsp = ccatchM32793import2;
        ocspAccessMethod = ccatchM32793import2;
        crlAccessMethod = ccatchM32793import;
    }
}
