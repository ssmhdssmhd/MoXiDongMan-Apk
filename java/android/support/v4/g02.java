package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class g02 {

    /* renamed from: android.support.v4.g02$case, reason: invalid class name */
    public static class Ccase extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f2032do = g02.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f2032do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.SKIPJACK", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.SKIPJACK", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.SKIPJACK", str + "$AlgParams");
            configurableProvider.addAlgorithm("Mac.SKIPJACKMAC", str + "$Mac");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.SKIPJACK", "SKIPJACKMAC");
            configurableProvider.addAlgorithm("Mac.SKIPJACKMAC/CFB8", str + "$MacCFB8");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.SKIPJACK/CFB8", "SKIPJACKMAC/CFB8");
        }
    }

    /* renamed from: android.support.v4.g02$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Skipjack IV";
        }
    }

    /* renamed from: android.support.v4.g02$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("Skipjack", 80, new rl());
        }
    }

    /* renamed from: android.support.v4.g02$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {
        public Cif() {
            super(new h02());
        }
    }

    /* renamed from: android.support.v4.g02$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new ke(new h02()));
        }
    }

    /* renamed from: android.support.v4.g02$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new org.bouncycastle.crypto.macs.Cdo(new h02()));
        }
    }

    private g02() {
    }
}
