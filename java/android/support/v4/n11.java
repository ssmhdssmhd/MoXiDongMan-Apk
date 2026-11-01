package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* loaded from: classes3.dex */
public class n11 {

    /* renamed from: do, reason: not valid java name */
    private static final String f4107do = "org.bouncycastle.pqc.jcajce.provider.newhope.";

    /* renamed from: android.support.v4.n11$do, reason: invalid class name */
    public static class Cdo extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyFactory.NH", "org.bouncycastle.pqc.jcajce.provider.newhope.NHKeyFactorySpi");
            configurableProvider.addAlgorithm("KeyPairGenerator.NH", "org.bouncycastle.pqc.jcajce.provider.newhope.NHKeyPairGeneratorSpi");
            configurableProvider.addAlgorithm("KeyAgreement.NH", "org.bouncycastle.pqc.jcajce.provider.newhope.KeyAgreementSpi");
            m9028new(configurableProvider, PQCObjectIdentifiers.newHope, "NH", new o11());
        }
    }
}
