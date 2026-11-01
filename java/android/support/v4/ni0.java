package android.support.v4;

import org.bouncycastle.crypto.engines.Cconst;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class ni0 {

    /* renamed from: android.support.v4.ni0$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "HC256 IV";
        }
    }

    /* renamed from: android.support.v4.ni0$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HC256", 256, new rl());
        }
    }

    /* renamed from: android.support.v4.ni0$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(new Cconst(), 32);
        }
    }

    /* renamed from: android.support.v4.ni0$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f4232do = ni0.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f4232do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.HC256", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.HC256", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.HC256", str + "$AlgParams");
        }
    }

    private ni0() {
    }
}
