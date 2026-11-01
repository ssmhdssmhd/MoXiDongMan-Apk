package android.support.v4;

import org.bouncycastle.crypto.engines.Cclass;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class mi0 {

    /* renamed from: android.support.v4.mi0$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "HC128 IV";
        }
    }

    /* renamed from: android.support.v4.mi0$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HC128", 128, new rl());
        }
    }

    /* renamed from: android.support.v4.mi0$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(new Cclass(), 16);
        }
    }

    /* renamed from: android.support.v4.mi0$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f3920do = mi0.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f3920do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.HC128", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.HC128", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.HC128", str + "$AlgParams");
        }
    }

    private mi0() {
    }
}
