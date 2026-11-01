package org.bouncycastle.jcajce.util;

import java.io.IOException;
import java.security.AlgorithmParameters;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;

/* renamed from: org.bouncycastle.jcajce.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {
    private Cfor() {
    }

    /* renamed from: do, reason: not valid java name */
    public static ASN1Encodable m34925do(AlgorithmParameters algorithmParameters) throws IOException {
        try {
            return Cfinal.m33015else(algorithmParameters.getEncoded("ASN.1"));
        } catch (Exception unused) {
            return Cfinal.m33015else(algorithmParameters.getEncoded());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m34926for(AlgorithmParameters algorithmParameters, ASN1Encodable aSN1Encodable) throws IOException {
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded(), "ASN.1");
        } catch (Exception unused) {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m34927if(Ccatch ccatch) {
        return PKCSObjectIdentifiers.md5.equals(ccatch) ? "MD5" : OIWObjectIdentifiers.idSHA1.equals(ccatch) ? "SHA1" : NISTObjectIdentifiers.id_sha224.equals(ccatch) ? "SHA224" : NISTObjectIdentifiers.id_sha256.equals(ccatch) ? "SHA256" : NISTObjectIdentifiers.id_sha384.equals(ccatch) ? "SHA384" : NISTObjectIdentifiers.id_sha512.equals(ccatch) ? "SHA512" : TeleTrusTObjectIdentifiers.ripemd128.equals(ccatch) ? "RIPEMD128" : TeleTrusTObjectIdentifiers.ripemd160.equals(ccatch) ? "RIPEMD160" : TeleTrusTObjectIdentifiers.ripemd256.equals(ccatch) ? "RIPEMD256" : CryptoProObjectIdentifiers.gostR3411.equals(ccatch) ? "GOST3411" : ccatch.m32795super();
    }
}
