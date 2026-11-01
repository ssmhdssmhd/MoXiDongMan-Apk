package org.bouncycastle.asn1.cms;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public interface CMSObjectIdentifiers {
    public static final Ccatch id_ri;
    public static final Ccatch id_ri_ocsp_response;
    public static final Ccatch id_ri_scvp;
    public static final Ccatch data = PKCSObjectIdentifiers.data;
    public static final Ccatch signedData = PKCSObjectIdentifiers.signedData;
    public static final Ccatch envelopedData = PKCSObjectIdentifiers.envelopedData;
    public static final Ccatch signedAndEnvelopedData = PKCSObjectIdentifiers.signedAndEnvelopedData;
    public static final Ccatch digestedData = PKCSObjectIdentifiers.digestedData;
    public static final Ccatch encryptedData = PKCSObjectIdentifiers.encryptedData;
    public static final Ccatch authenticatedData = PKCSObjectIdentifiers.id_ct_authData;
    public static final Ccatch compressedData = PKCSObjectIdentifiers.id_ct_compressedData;
    public static final Ccatch authEnvelopedData = PKCSObjectIdentifiers.id_ct_authEnvelopedData;
    public static final Ccatch timestampedData = PKCSObjectIdentifiers.id_ct_timestampedData;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7.16");
        id_ri = ccatch;
        id_ri_ocsp_response = ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_ri_scvp = ccatch.m32792catch("4");
    }
}
