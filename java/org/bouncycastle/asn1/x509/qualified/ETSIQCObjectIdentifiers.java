package org.bouncycastle.asn1.x509.qualified;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface ETSIQCObjectIdentifiers {
    public static final Ccatch id_etsi_qcs_QcType;
    public static final Ccatch id_etsi_qct_eseal;
    public static final Ccatch id_etsi_qct_esign;
    public static final Ccatch id_etsi_qct_web;
    public static final Ccatch id_etsi_qcs_QcCompliance = new Ccatch("0.4.0.1862.1.1");
    public static final Ccatch id_etsi_qcs_LimiteValue = new Ccatch("0.4.0.1862.1.2");
    public static final Ccatch id_etsi_qcs_RetentionPeriod = new Ccatch("0.4.0.1862.1.3");
    public static final Ccatch id_etsi_qcs_QcSSCD = new Ccatch("0.4.0.1862.1.4");
    public static final Ccatch id_etsi_qcs_QcPds = new Ccatch("0.4.0.1862.1.5");

    static {
        Ccatch ccatch = new Ccatch("0.4.0.1862.1.6");
        id_etsi_qcs_QcType = ccatch;
        id_etsi_qct_esign = ccatch.m32792catch("1");
        id_etsi_qct_eseal = ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_etsi_qct_web = ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
    }
}
