package android.support.v4;

import org.bouncycastle.crypto.macs.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;

/* loaded from: classes3.dex */
public final class zd2 {

    /* renamed from: android.support.v4.zd2$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(new ae2(), 16);
        }
    }

    /* renamed from: android.support.v4.zd2$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new Ccatch());
        }
    }

    /* renamed from: android.support.v4.zd2$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cif() {
            super("VMPC", 128, new rl());
        }
    }

    /* renamed from: android.support.v4.zd2$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f8519do = zd2.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f8519do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.VMPC", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.VMPC", str + "$KeyGen");
            configurableProvider.addAlgorithm("Mac.VMPCMAC", str + "$Mac");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.VMPC", "VMPCMAC");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.VMPC-MAC", "VMPCMAC");
        }
    }

    private zd2() {
    }
}
