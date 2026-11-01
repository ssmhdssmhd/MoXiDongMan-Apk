package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* loaded from: classes3.dex */
public class wg2 {

    /* renamed from: android.support.v4.wg2$do, reason: invalid class name */
    public static class Cdo extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyFactory.X.509", "org.bouncycastle.jcajce.provider.asymmetric.x509.KeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory.X509", "X.509");
            configurableProvider.addAlgorithm("CertificateFactory.X.509", "org.bouncycastle.jcajce.provider.asymmetric.x509.CertificateFactory");
            configurableProvider.addAlgorithm("Alg.Alias.CertificateFactory.X509", "X.509");
        }
    }
}
