package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.ecgost.Cnew;
import org.bouncycastle.jcajce.provider.asymmetric.ecgost12.Ccase;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* loaded from: classes3.dex */
public class h40 {

    /* renamed from: do, reason: not valid java name */
    private static final String f2308do = "org.bouncycastle.jcajce.provider.asymmetric.ecgost.";

    /* renamed from: if, reason: not valid java name */
    private static final String f2309if = "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.";

    /* renamed from: android.support.v4.h40$do, reason: invalid class name */
    public static class Cdo extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyFactory.ECGOST3410", "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyFactorySpi");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.GOST-3410-2001", "ECGOST3410");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.ECGOST-3410", "ECGOST3410");
            Ccatch ccatch = CryptoProObjectIdentifiers.gostR3410_2001;
            m9028new(configurableProvider, ccatch, "ECGOST3410", new Cnew());
            m9028new(configurableProvider, CryptoProObjectIdentifiers.gostR3410_2001DH, "ECGOST3410", new Cnew());
            m9025case(configurableProvider, ccatch, "ECGOST3410");
            configurableProvider.addAlgorithm("KeyPairGenerator.ECGOST3410", "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyPairGeneratorSpi");
            configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator.ECGOST-3410", "ECGOST3410");
            configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator.GOST-3410-2001", "ECGOST3410");
            configurableProvider.addAlgorithm("Signature.ECGOST3410", "org.bouncycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.ECGOST-3410", "ECGOST3410");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.GOST-3410-2001", "ECGOST3410");
            configurableProvider.addAlgorithm("KeyAgreement.ECGOST3410", "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyAgreementSpi$ECVKO");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement." + ccatch, "ECGOST3410");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement.GOST-3410-2001", "ECGOST3410");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement." + CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_ESDH, "ECGOST3410");
            configurableProvider.addAlgorithm("AlgorithmParameters.ECGOST3410", "org.bouncycastle.jcajce.provider.asymmetric.ecgost.AlgorithmParametersSpi");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.GOST-3410-2001", "ECGOST3410");
            m9027if(configurableProvider, "GOST3411", "ECGOST3410", "org.bouncycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi", CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_2001);
            configurableProvider.addAlgorithm("KeyFactory.ECGOST3410-2012", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyFactorySpi");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.GOST-3410-2012", "ECGOST3410-2012");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.ECGOST-3410-2012", "ECGOST3410-2012");
            Ccatch ccatch2 = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256;
            m9028new(configurableProvider, ccatch2, "ECGOST3410-2012", new Ccase());
            Ccatch ccatch3 = RosstandartObjectIdentifiers.id_tc26_agreement_gost_3410_12_256;
            m9028new(configurableProvider, ccatch3, "ECGOST3410-2012", new Ccase());
            m9025case(configurableProvider, ccatch2, "ECGOST3410-2012");
            Ccatch ccatch4 = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512;
            m9028new(configurableProvider, ccatch4, "ECGOST3410-2012", new Ccase());
            Ccatch ccatch5 = RosstandartObjectIdentifiers.id_tc26_agreement_gost_3410_12_512;
            m9028new(configurableProvider, ccatch5, "ECGOST3410-2012", new Ccase());
            m9025case(configurableProvider, ccatch4, "ECGOST3410-2012");
            configurableProvider.addAlgorithm("KeyPairGenerator.ECGOST3410-2012", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyPairGeneratorSpi");
            configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator.ECGOST3410-2012", "ECGOST3410-2012");
            configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator.GOST-3410-2012", "ECGOST3410-2012");
            configurableProvider.addAlgorithm("Signature.ECGOST3410-2012-256", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi256");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.ECGOST3410-2012-256", "ECGOST3410-2012-256");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.GOST-3410-2012-256", "ECGOST3410-2012-256");
            m9027if(configurableProvider, "GOST3411-2012-256", "ECGOST3410-2012-256", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi256", RosstandartObjectIdentifiers.id_tc26_signwithdigest_gost_3410_12_256);
            configurableProvider.addAlgorithm("Signature.ECGOST3410-2012-512", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi512");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.ECGOST3410-2012-512", "ECGOST3410-2012-512");
            configurableProvider.addAlgorithm("Alg.Alias.Signature.GOST-3410-2012-512", "ECGOST3410-2012-512");
            m9027if(configurableProvider, "GOST3411-2012-512", "ECGOST3410-2012-512", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi512", RosstandartObjectIdentifiers.id_tc26_signwithdigest_gost_3410_12_512);
            configurableProvider.addAlgorithm("KeyAgreement.ECGOST3410-2012-256", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyAgreementSpi$ECVKO256");
            configurableProvider.addAlgorithm("KeyAgreement.ECGOST3410-2012-512", "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyAgreementSpi$ECVKO512");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement." + ccatch3, "ECGOST3410-2012-256");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement." + ccatch5, "ECGOST3410-2012-512");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement." + ccatch2, "ECGOST3410-2012-256");
            configurableProvider.addAlgorithm("Alg.Alias.KeyAgreement." + ccatch4, "ECGOST3410-2012-512");
        }
    }
}
