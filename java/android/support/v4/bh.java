package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class bh {

    /* renamed from: android.support.v4.bh$case, reason: invalid class name */
    public static class Ccase extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f433do = bh.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f433do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.CHACHA", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.CHACHA", str + "$KeyGen");
            configurableProvider.addAlgorithm("Cipher.CHACHA7539", str + "$Base7539");
            configurableProvider.addAlgorithm("KeyGenerator.CHACHA7539", str + "$KeyGen7539");
            configurableProvider.addAlgorithm("AlgorithmParameters.CHACHA7539", str + "$AlgParams");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.CHACHA20", "CHACHA7539");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.CHACHA20", "CHACHA7539");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.CHACHA20", "CHACHA7539");
        }
    }

    /* renamed from: android.support.v4.bh$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "ChaCha7539 IV";
        }
    }

    /* renamed from: android.support.v4.bh$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Ccase {
        public Cfor() {
            super(new dh(), 8);
        }
    }

    /* renamed from: android.support.v4.bh$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Ccase {
        public Cif() {
            super(new ch(), 12);
        }
    }

    /* renamed from: android.support.v4.bh$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cnew() {
            super("ChaCha7539", 256, new rl());
        }
    }

    /* renamed from: android.support.v4.bh$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ctry() {
            super("ChaCha", 128, new rl());
        }
    }

    private bh() {
    }
}
