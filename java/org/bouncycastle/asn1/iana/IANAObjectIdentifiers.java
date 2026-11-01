package org.bouncycastle.asn1.iana;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface IANAObjectIdentifiers {
    public static final Ccatch SNMPv2;
    public static final Ccatch _private;
    public static final Ccatch directory;
    public static final Ccatch experimental;
    public static final Ccatch hmacMD5;
    public static final Ccatch hmacRIPEMD160;
    public static final Ccatch hmacSHA1;
    public static final Ccatch hmacTIGER;
    public static final Ccatch internet;
    public static final Ccatch ipsec;
    public static final Ccatch isakmpOakley;
    public static final Ccatch mail;
    public static final Ccatch mgmt;
    public static final Ccatch pkix;
    public static final Ccatch security;
    public static final Ccatch security_mechanisms;
    public static final Ccatch security_nametypes;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1");
        internet = ccatch;
        directory = ccatch.m32792catch("1");
        mgmt = ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        experimental = ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        _private = ccatch.m32792catch("4");
        Ccatch ccatchM32792catch = ccatch.m32792catch("5");
        security = ccatchM32792catch;
        SNMPv2 = ccatch.m32792catch("6");
        mail = ccatch.m32792catch("7");
        Ccatch ccatchM32792catch2 = ccatchM32792catch.m32792catch("5");
        security_mechanisms = ccatchM32792catch2;
        security_nametypes = ccatchM32792catch.m32792catch("6");
        pkix = ccatchM32792catch2.m32792catch("6");
        Ccatch ccatchM32792catch3 = ccatchM32792catch2.m32792catch("8");
        ipsec = ccatchM32792catch3;
        Ccatch ccatchM32792catch4 = ccatchM32792catch3.m32792catch("1");
        isakmpOakley = ccatchM32792catch4;
        hmacMD5 = ccatchM32792catch4.m32792catch("1");
        hmacSHA1 = ccatchM32792catch4.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        hmacTIGER = ccatchM32792catch4.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        hmacRIPEMD160 = ccatchM32792catch4.m32792catch("4");
    }
}
