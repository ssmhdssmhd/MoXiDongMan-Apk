package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class zi2 {

    /* renamed from: android.support.v4.zi2$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "XSalsa20 IV";
        }
    }

    /* renamed from: android.support.v4.zi2$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("XSalsa20", 256, new rl());
        }
    }

    /* renamed from: android.support.v4.zi2$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(new aj2(), 24);
        }
    }

    /* renamed from: android.support.v4.zi2$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f8572do = zi2.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f8572do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.XSALSA20", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.XSALSA20", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.XSALSA20", str + "$AlgParams");
        }
    }

    private zi2() {
    }
}
