package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public interface ESFAttributes {
    public static final Ccatch sigPolicyId = PKCSObjectIdentifiers.id_aa_ets_sigPolicyId;
    public static final Ccatch commitmentType = PKCSObjectIdentifiers.id_aa_ets_commitmentType;
    public static final Ccatch signerLocation = PKCSObjectIdentifiers.id_aa_ets_signerLocation;
    public static final Ccatch signerAttr = PKCSObjectIdentifiers.id_aa_ets_signerAttr;
    public static final Ccatch otherSigCert = PKCSObjectIdentifiers.id_aa_ets_otherSigCert;
    public static final Ccatch contentTimestamp = PKCSObjectIdentifiers.id_aa_ets_contentTimestamp;
    public static final Ccatch certificateRefs = PKCSObjectIdentifiers.id_aa_ets_certificateRefs;
    public static final Ccatch revocationRefs = PKCSObjectIdentifiers.id_aa_ets_revocationRefs;
    public static final Ccatch certValues = PKCSObjectIdentifiers.id_aa_ets_certValues;
    public static final Ccatch revocationValues = PKCSObjectIdentifiers.id_aa_ets_revocationValues;
    public static final Ccatch escTimeStamp = PKCSObjectIdentifiers.id_aa_ets_escTimeStamp;
    public static final Ccatch certCRLTimestamp = PKCSObjectIdentifiers.id_aa_ets_certCRLTimestamp;
    public static final Ccatch archiveTimestamp = PKCSObjectIdentifiers.id_aa_ets_archiveTimestamp;
    public static final Ccatch archiveTimestampV2 = PKCSObjectIdentifiers.id_aa.m32792catch("48");
}
