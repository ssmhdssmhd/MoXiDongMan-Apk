package org.bouncycastle.asn1.cmc;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface CMCObjectIdentifiers {
    public static final Ccatch id_cct;
    public static final Ccatch id_cct_PKIData;
    public static final Ccatch id_cct_PKIResponse;
    public static final Ccatch id_cmc;
    public static final Ccatch id_cmc_addExtensions;
    public static final Ccatch id_cmc_authData;
    public static final Ccatch id_cmc_batchRequests;
    public static final Ccatch id_cmc_batchResponses;
    public static final Ccatch id_cmc_confirmCertAcceptance;
    public static final Ccatch id_cmc_controlProcessed;
    public static final Ccatch id_cmc_dataReturn;
    public static final Ccatch id_cmc_decryptedPOP;
    public static final Ccatch id_cmc_encryptedPOP;
    public static final Ccatch id_cmc_getCRL;
    public static final Ccatch id_cmc_getCert;
    public static final Ccatch id_cmc_identification;
    public static final Ccatch id_cmc_identityProof;
    public static final Ccatch id_cmc_identityProofV2;
    public static final Ccatch id_cmc_lraPOPWitness;
    public static final Ccatch id_cmc_modCertTemplate;
    public static final Ccatch id_cmc_popLinkRandom;
    public static final Ccatch id_cmc_popLinkWitness;
    public static final Ccatch id_cmc_popLinkWitnessV2;
    public static final Ccatch id_cmc_publishCert;
    public static final Ccatch id_cmc_queryPending;
    public static final Ccatch id_cmc_recipientNonce;
    public static final Ccatch id_cmc_regInfo;
    public static final Ccatch id_cmc_responseInfo;
    public static final Ccatch id_cmc_revokeRequest;
    public static final Ccatch id_cmc_senderNonce;
    public static final Ccatch id_cmc_statusInfo;
    public static final Ccatch id_cmc_statusInfoV2;
    public static final Ccatch id_cmc_transactionId;
    public static final Ccatch id_cmc_trustedAnchors;
    public static final Ccatch id_pkix;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7");
        id_pkix = ccatch;
        Ccatch ccatchM32792catch = ccatch.m32792catch("7");
        id_cmc = ccatchM32792catch;
        Ccatch ccatchM32792catch2 = ccatch.m32792catch("12");
        id_cct = ccatchM32792catch2;
        id_cmc_identityProof = ccatchM32792catch.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_cmc_dataReturn = ccatchM32792catch.m32792catch("4");
        id_cmc_regInfo = ccatchM32792catch.m32792catch("18");
        id_cmc_responseInfo = ccatchM32792catch.m32792catch("19");
        id_cmc_queryPending = ccatchM32792catch.m32792catch("21");
        id_cmc_popLinkRandom = ccatchM32792catch.m32792catch("22");
        id_cmc_popLinkWitness = ccatchM32792catch.m32792catch("23");
        id_cmc_identification = ccatchM32792catch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_cmc_transactionId = ccatchM32792catch.m32792catch("5");
        id_cmc_senderNonce = ccatchM32792catch.m32792catch("6");
        id_cmc_recipientNonce = ccatchM32792catch.m32792catch("7");
        id_cct_PKIData = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_2D);
        id_cct_PKIResponse = ccatchM32792catch2.m32792catch(ExifInterface.GPS_MEASUREMENT_3D);
        id_cmc_statusInfo = ccatchM32792catch.m32792catch("1");
        id_cmc_addExtensions = ccatchM32792catch.m32792catch("8");
        id_cmc_encryptedPOP = ccatchM32792catch.m32792catch("9");
        id_cmc_decryptedPOP = ccatchM32792catch.m32792catch("10");
        id_cmc_lraPOPWitness = ccatchM32792catch.m32792catch("11");
        id_cmc_getCert = ccatchM32792catch.m32792catch("15");
        id_cmc_getCRL = ccatchM32792catch.m32792catch("16");
        id_cmc_revokeRequest = ccatchM32792catch.m32792catch("17");
        id_cmc_confirmCertAcceptance = ccatchM32792catch.m32792catch("24");
        id_cmc_statusInfoV2 = ccatchM32792catch.m32792catch("25");
        id_cmc_trustedAnchors = ccatchM32792catch.m32792catch("26");
        id_cmc_authData = ccatchM32792catch.m32792catch("27");
        id_cmc_batchRequests = ccatchM32792catch.m32792catch("28");
        id_cmc_batchResponses = ccatchM32792catch.m32792catch("29");
        id_cmc_publishCert = ccatchM32792catch.m32792catch("30");
        id_cmc_modCertTemplate = ccatchM32792catch.m32792catch("31");
        id_cmc_controlProcessed = ccatchM32792catch.m32792catch("32");
        id_cmc_identityProofV2 = ccatchM32792catch.m32792catch("34");
        id_cmc_popLinkWitnessV2 = ccatchM32792catch.m32792catch("33");
    }
}
