package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class ur1 {

    /* renamed from: android.support.v4.ur1$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Salsa20 IV";
        }
    }

    /* renamed from: android.support.v4.ur1$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("Salsa20", 128, new rl());
        }
    }

    /* renamed from: android.support.v4.ur1$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(new vr1(), 8);
        }
    }

    /* renamed from: android.support.v4.ur1$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f6971do = ur1.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f6971do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.SALSA20", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.SALSA20", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.SALSA20", str + "$AlgParams");
        }
    }

    private ur1() {
    }
}
