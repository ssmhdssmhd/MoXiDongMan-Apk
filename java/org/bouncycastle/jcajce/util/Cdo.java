package org.bouncycastle.jcajce.util;

import java.io.IOException;
import java.security.AlgorithmParameters;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cfinal;

/* renamed from: org.bouncycastle.jcajce.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {
    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static ASN1Encodable m34923do(AlgorithmParameters algorithmParameters) throws IOException {
        try {
            return Cfinal.m33015else(algorithmParameters.getEncoded("ASN.1"));
        } catch (Exception unused) {
            return Cfinal.m33015else(algorithmParameters.getEncoded());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m34924if(AlgorithmParameters algorithmParameters, ASN1Encodable aSN1Encodable) throws IOException {
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded(), "ASN.1");
        } catch (Exception unused) {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded());
        }
    }
}
