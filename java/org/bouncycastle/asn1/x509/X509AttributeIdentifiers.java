package org.bouncycastle.asn1.x509;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface X509AttributeIdentifiers {
    public static final Ccatch RoleSyntax = new Ccatch("2.5.4.72");
    public static final Ccatch id_aca;
    public static final Ccatch id_aca_accessIdentity;
    public static final Ccatch id_aca_authenticationInfo;
    public static final Ccatch id_aca_chargingIdentity;
    public static final Ccatch id_aca_encAttrs;
    public static final Ccatch id_aca_group;
    public static final Ccatch id_at_clearance;
    public static final Ccatch id_at_role;
    public static final Ccatch id_ce_targetInformation;
    public static final Ccatch id_pe_aaControls;
    public static final Ccatch id_pe_ac_auditIdentity;
    public static final Ccatch id_pe_ac_proxying;

    static {
        Ccatch ccatch = X509ObjectIdentifiers.id_pe;
        id_pe_ac_auditIdentity = ccatch.m32792catch("4");
        id_pe_aaControls = ccatch.m32792catch("6");
        id_pe_ac_proxying = ccatch.m32792catch("10");
        id_ce_targetInformation = X509ObjectIdentifiers.id_ce.m32792catch("55");
        Ccatch ccatchM32792catch = X509ObjectIdentifiers.id_pkix.m32792catch("10");
        id_aca = ccatchM32792catch;
        id_aca_authenticationInfo = ccatchM32792catch.m32792catch("1");
        id_aca_accessIdentity = ccatchM32792catch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_aca_chargingIdentity = ccatchM32792catch.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_aca_group = ccatchM32792catch.m32792catch("4");
        id_aca_encAttrs = ccatchM32792catch.m32792catch("6");
        id_at_role = new Ccatch("2.5.4.72");
        id_at_clearance = new Ccatch("2.5.1.5.55");
    }
}
