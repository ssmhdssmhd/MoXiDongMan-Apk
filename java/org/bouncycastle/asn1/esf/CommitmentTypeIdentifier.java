package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public interface CommitmentTypeIdentifier {
    public static final Ccatch proofOfOrigin = PKCSObjectIdentifiers.id_cti_ets_proofOfOrigin;
    public static final Ccatch proofOfReceipt = PKCSObjectIdentifiers.id_cti_ets_proofOfReceipt;
    public static final Ccatch proofOfDelivery = PKCSObjectIdentifiers.id_cti_ets_proofOfDelivery;
    public static final Ccatch proofOfSender = PKCSObjectIdentifiers.id_cti_ets_proofOfSender;
    public static final Ccatch proofOfApproval = PKCSObjectIdentifiers.id_cti_ets_proofOfApproval;
    public static final Ccatch proofOfCreation = PKCSObjectIdentifiers.id_cti_ets_proofOfCreation;
}
