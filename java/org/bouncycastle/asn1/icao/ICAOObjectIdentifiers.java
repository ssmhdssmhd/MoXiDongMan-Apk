package org.bouncycastle.asn1.icao;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface ICAOObjectIdentifiers {
    public static final Ccatch id_icao;
    public static final Ccatch id_icao_aaProtocolObject;
    public static final Ccatch id_icao_cscaMasterList;
    public static final Ccatch id_icao_cscaMasterListSigningKey;
    public static final Ccatch id_icao_documentTypeList;
    public static final Ccatch id_icao_extensions;
    public static final Ccatch id_icao_extensions_namechangekeyrollover;
    public static final Ccatch id_icao_ldsSecurityObject;
    public static final Ccatch id_icao_mrtd;
    public static final Ccatch id_icao_mrtd_security;

    static {
        Ccatch ccatch = new Ccatch("2.23.136");
        id_icao = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("1");
        id_icao_mrtd = ccatchM32792catch;
        Ccatch ccatchM32792catch2 = ccatchM32792catch.m32792catch("1");
        id_icao_mrtd_security = ccatchM32792catch2;
        id_icao_ldsSecurityObject = ccatchM32792catch2.m32792catch("1");
        id_icao_cscaMasterList = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_icao_cscaMasterListSigningKey = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_icao_documentTypeList = ccatchM32792catch2.m32792catch("4");
        id_icao_aaProtocolObject = ccatchM32792catch2.m32792catch("5");
        Ccatch ccatchM32792catch3 = ccatchM32792catch2.m32792catch("6");
        id_icao_extensions = ccatchM32792catch3;
        id_icao_extensions_namechangekeyrollover = ccatchM32792catch3.m32792catch("1");
    }
}
