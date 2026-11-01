package org.bouncycastle.jcajce.provider.asymmetric.x509;

import android.support.v4.b1;
import android.support.v4.jk1;
import android.support.v4.tz0;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jce.provider.Cdo;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {

    /* renamed from: do, reason: not valid java name */
    private static final org.bouncycastle.asn1.Cthis f31284do = h.f29080do;

    /* renamed from: do, reason: not valid java name */
    private static String m34779do(Ccatch ccatch) {
        String strM8163do = tz0.m8163do(ccatch);
        int iIndexOf = strM8163do.indexOf(45);
        if (iIndexOf <= 0 || strM8163do.startsWith("SHA3")) {
            return tz0.m8163do(ccatch);
        }
        return strM8163do.substring(0, iIndexOf) + strM8163do.substring(iIndexOf + 1);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m34780for(Signature signature, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (aSN1Encodable == null || f31284do.equals(aSN1Encodable)) {
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
    public static String m34781if(b1 b1Var) {
        ASN1Encodable aSN1EncodableM419else = b1Var.m419else();
        if (aSN1EncodableM419else != null && !f31284do.equals(aSN1EncodableM419else)) {
            if (b1Var.m420new().equals(PKCSObjectIdentifiers.id_RSASSA_PSS)) {
                return m34779do(jk1.m3909try(aSN1EncodableM419else).m3913new().m420new()) + "withRSAandMGF1";
            }
            if (b1Var.m420new().equals(X9ObjectIdentifiers.ecdsa_with_SHA2)) {
                return m34779do((Ccatch) Csuper.m33129catch(aSN1EncodableM419else).mo33075final(0)) + "withECDSA";
            }
        }
        Provider provider = Security.getProvider(Cdo.PROVIDER_NAME);
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + b1Var.m420new().m32795super());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i = 0; i != providers.length; i++) {
            String property2 = providers[i].getProperty("Alg.Alias.Signature." + b1Var.m420new().m32795super());
            if (property2 != null) {
                return property2;
            }
        }
        return b1Var.m420new().m32795super();
    }
}
