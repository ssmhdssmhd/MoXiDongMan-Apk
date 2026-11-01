package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class z32 {

    /* renamed from: android.support.v4.z32$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "TEA IV";
        }
    }

    /* renamed from: android.support.v4.z32$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("TEA", 128, new rl());
        }
    }

    /* renamed from: android.support.v4.z32$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {
        public Cif() {
            super(new a42());
        }
    }

    /* renamed from: android.support.v4.z32$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f8439do = z32.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f8439do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.TEA", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.TEA", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.TEA", str + "$AlgParams");
        }
    }

    private z32() {
    }
}
