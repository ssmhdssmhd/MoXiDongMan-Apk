package android.support.v4;

import org.bouncycastle.crypto.macs.Cthis;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* loaded from: classes3.dex */
public final class e02 {

    /* renamed from: android.support.v4.e02$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cdo() {
            super("SipHash", 128, new rl());
        }
    }

    /* renamed from: android.support.v4.e02$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new Cthis(4, 8));
        }
    }

    /* renamed from: android.support.v4.e02$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new Cthis());
        }
    }

    /* renamed from: android.support.v4.e02$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f1178do = e02.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f1178do;
            sb.append(str);
            sb.append("$Mac24");
            configurableProvider.addAlgorithm("Mac.SIPHASH-2-4", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.Mac.SIPHASH", "SIPHASH-2-4");
            configurableProvider.addAlgorithm("Mac.SIPHASH-4-8", str + "$Mac48");
            configurableProvider.addAlgorithm("KeyGenerator.SIPHASH", str + "$KeyGen");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.SIPHASH-2-4", "SIPHASH");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.SIPHASH-4-8", "SIPHASH");
        }
    }

    private e02() {
    }
}
