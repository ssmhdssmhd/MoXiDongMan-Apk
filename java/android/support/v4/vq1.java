package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* loaded from: classes3.dex */
public class vq1 {

    /* renamed from: do, reason: not valid java name */
    private static final String f7316do = "org.bouncycastle.pqc.jcajce.provider.sphincs.";

    /* renamed from: android.support.v4.vq1$do, reason: invalid class name */
    public static class Cdo extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyFactory.SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyFactorySpi");
            configurableProvider.addAlgorithm("KeyPairGenerator.SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyPairGeneratorSpi");
            m9027if(configurableProvider, "SHA512", "SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha512", PQCObjectIdentifiers.sphincs256_with_SHA512);
            m9027if(configurableProvider, "SHA3-512", "SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha3_512", PQCObjectIdentifiers.sphincs256_with_SHA3_512);
            w02 w02Var = new w02();
            Ccatch ccatch = PQCObjectIdentifiers.sphincs256;
            m9028new(configurableProvider, ccatch, "SPHINCS256", w02Var);
            m9025case(configurableProvider, ccatch, "SPHINCS256");
        }
    }
}
