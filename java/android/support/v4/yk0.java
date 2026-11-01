package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* loaded from: classes3.dex */
public class yk0 {

    /* renamed from: do, reason: not valid java name */
    private static final String f8255do = "org.bouncycastle.jcajce.provider.asymmetric.ies.";

    /* renamed from: android.support.v4.yk0$do, reason: invalid class name */
    public static class Cdo extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("AlgorithmParameters.IES", "org.bouncycastle.jcajce.provider.asymmetric.ies.AlgorithmParametersSpi");
            configurableProvider.addAlgorithm("AlgorithmParameters.ECIES", "org.bouncycastle.jcajce.provider.asymmetric.ies.AlgorithmParametersSpi");
        }
    }
}
