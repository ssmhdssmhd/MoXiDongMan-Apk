package org.bouncycastle.asn1.isismtt;

import androidx.exifinterface.media.ExifInterface;
import fi.iki.elonen.Cdo;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface ISISMTTObjectIdentifiers {
    public static final Ccatch id_isismtt;
    public static final Ccatch id_isismtt_at;
    public static final Ccatch id_isismtt_at_PKReference;
    public static final Ccatch id_isismtt_at_additionalInformation;
    public static final Ccatch id_isismtt_at_admission;
    public static final Ccatch id_isismtt_at_certHash;
    public static final Ccatch id_isismtt_at_certInDirSince;
    public static final Ccatch id_isismtt_at_dateOfCertGen;
    public static final Ccatch id_isismtt_at_declarationOfMajority;
    public static final Ccatch id_isismtt_at_iCCSN;
    public static final Ccatch id_isismtt_at_liabilityLimitationFlag;
    public static final Ccatch id_isismtt_at_monetaryLimit;
    public static final Ccatch id_isismtt_at_nameAtBirth;
    public static final Ccatch id_isismtt_at_namingAuthorities;
    public static final Ccatch id_isismtt_at_procuration;
    public static final Ccatch id_isismtt_at_requestedCertificate;
    public static final Ccatch id_isismtt_at_restriction;
    public static final Ccatch id_isismtt_at_retrieveIfAllowed;
    public static final Ccatch id_isismtt_cp;
    public static final Ccatch id_isismtt_cp_accredited;

    static {
        Ccatch ccatch = new Ccatch("1.3.36.8");
        id_isismtt = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("1");
        id_isismtt_cp = ccatchM32792catch;
        id_isismtt_cp_accredited = ccatchM32792catch.m32792catch("1");
        Ccatch ccatchM32792catch2 = ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_isismtt_at = ccatchM32792catch2;
        id_isismtt_at_dateOfCertGen = ccatchM32792catch2.m32792catch("1");
        id_isismtt_at_procuration = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_isismtt_at_admission = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_isismtt_at_monetaryLimit = ccatchM32792catch2.m32792catch("4");
        id_isismtt_at_declarationOfMajority = ccatchM32792catch2.m32792catch("5");
        id_isismtt_at_iCCSN = ccatchM32792catch2.m32792catch("6");
        id_isismtt_at_PKReference = ccatchM32792catch2.m32792catch("7");
        id_isismtt_at_restriction = ccatchM32792catch2.m32792catch("8");
        id_isismtt_at_retrieveIfAllowed = ccatchM32792catch2.m32792catch("9");
        id_isismtt_at_requestedCertificate = ccatchM32792catch2.m32792catch("10");
        id_isismtt_at_namingAuthorities = ccatchM32792catch2.m32792catch("11");
        id_isismtt_at_certInDirSince = ccatchM32792catch2.m32792catch("12");
        id_isismtt_at_certHash = ccatchM32792catch2.m32792catch(Cdo.HEADER_WEBSOCKET_VERSION_VALUE);
        id_isismtt_at_nameAtBirth = ccatchM32792catch2.m32792catch("14");
        id_isismtt_at_additionalInformation = ccatchM32792catch2.m32792catch("15");
        id_isismtt_at_liabilityLimitationFlag = new Ccatch("0.2.262.1.10.12.0");
    }
}
