package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public interface CMSAttributes {
    public static final Ccatch contentType = PKCSObjectIdentifiers.pkcs_9_at_contentType;
    public static final Ccatch messageDigest = PKCSObjectIdentifiers.pkcs_9_at_messageDigest;
    public static final Ccatch signingTime = PKCSObjectIdentifiers.pkcs_9_at_signingTime;
    public static final Ccatch counterSignature = PKCSObjectIdentifiers.pkcs_9_at_counterSignature;
    public static final Ccatch contentHint = PKCSObjectIdentifiers.id_aa_contentHint;
    public static final Ccatch cmsAlgorithmProtect = PKCSObjectIdentifiers.id_aa_cmsAlgorithmProtect;
}
