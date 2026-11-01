package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class ra {

    /* renamed from: android.support.v4.ra$case, reason: invalid class name */
    public static class Ccase extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f5723do = ra.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f5723do;
            sb.append(str);
            sb.append("$CMAC");
            configurableProvider.addAlgorithm("Mac.BLOWFISHCMAC", sb.toString());
            configurableProvider.addAlgorithm("Cipher.BLOWFISH", str + "$ECB");
            Ccatch ccatch = MiscObjectIdentifiers.cryptlib_algorithm_blowfish_CBC;
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            configurableProvider.addAlgorithm("KeyGenerator.BLOWFISH", str + "$KeyGen");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator", ccatch, "BLOWFISH");
            configurableProvider.addAlgorithm("AlgorithmParameters.BLOWFISH", str + "$AlgParams");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch, "BLOWFISH");
        }
    }

    /* renamed from: android.support.v4.ra$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Blowfish IV";
        }
    }

    /* renamed from: android.support.v4.ra$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new ue(new sa()));
        }
    }

    /* renamed from: android.support.v4.ra$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {
        public Cif() {
            super(new org.bouncycastle.crypto.modes.Cdo(new sa()), 64);
        }
    }

    /* renamed from: android.support.v4.ra$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {
        public Cnew() {
            super(new sa());
        }
    }

    /* renamed from: android.support.v4.ra$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ctry() {
            super("Blowfish", 128, new rl());
        }
    }

    private ra() {
    }
}
