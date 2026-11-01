package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.jk1;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthis;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

/* loaded from: classes3.dex */
class b {

    /* renamed from: do, reason: not valid java name */
    private static final Cthis f31584do = h.f29080do;

    /* renamed from: do, reason: not valid java name */
    private static String m34997do(Ccatch ccatch) {
        return PKCSObjectIdentifiers.md5.equals(ccatch) ? "MD5" : OIWObjectIdentifiers.idSHA1.equals(ccatch) ? "SHA1" : NISTObjectIdentifiers.id_sha224.equals(ccatch) ? "SHA224" : NISTObjectIdentifiers.id_sha256.equals(ccatch) ? "SHA256" : NISTObjectIdentifiers.id_sha384.equals(ccatch) ? "SHA384" : NISTObjectIdentifiers.id_sha512.equals(ccatch) ? "SHA512" : TeleTrusTObjectIdentifiers.ripemd128.equals(ccatch) ? "RIPEMD128" : TeleTrusTObjectIdentifiers.ripemd160.equals(ccatch) ? "RIPEMD160" : TeleTrusTObjectIdentifiers.ripemd256.equals(ccatch) ? "RIPEMD256" : CryptoProObjectIdentifiers.gostR3411.equals(ccatch) ? "GOST3411" : ccatch.m32795super();
    }

    /* renamed from: for, reason: not valid java name */
    public static void m34998for(Signature signature, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (aSN1Encodable == null || f31584do.equals(aSN1Encodable)) {
            return;
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded());
            if (signature.getAlgorithm().endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e) {
                    throw new SignatureException("Exception extracting parameters: " + e.getMessage());
                }
            }
        } catch (IOException e2) {
            throw new SignatureException("IOException decoding parameters: " + e2.getMessage());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m34999if(b1 b1Var) {
        ASN1Encodable aSN1EncodableM419else = b1Var.m419else();
        if (aSN1EncodableM419else != null && !f31584do.equals(aSN1EncodableM419else)) {
            if (b1Var.m420new().equals(PKCSObjectIdentifiers.id_RSASSA_PSS)) {
                return m34997do(jk1.m3909try(aSN1EncodableM419else).m3913new().m420new()) + "withRSAandMGF1";
            }
            if (b1Var.m420new().equals(X9ObjectIdentifiers.ecdsa_with_SHA2)) {
                return m34997do(Ccatch.m32790throw(Csuper.m33129catch(aSN1EncodableM419else).mo33075final(0))) + "withECDSA";
            }
        }
        return b1Var.m420new().m32795super();
    }
}
