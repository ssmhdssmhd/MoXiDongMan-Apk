package android.support.v4;

import org.bouncycastle.crypto.engines.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* loaded from: classes3.dex */
public final class ai0 {

    /* renamed from: android.support.v4.ai0$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Grainv1 IV";
        }
    }

    /* renamed from: android.support.v4.ai0$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("Grainv1", 80, new rl());
        }
    }

    /* renamed from: android.support.v4.ai0$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(new Ccatch(), 8);
        }
    }

    /* renamed from: android.support.v4.ai0$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f179do = ai0.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do, reason: not valid java name */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f179do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.Grainv1", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.Grainv1", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.Grainv1", str + "$AlgParams");
        }
    }

    private ai0() {
    }
}
