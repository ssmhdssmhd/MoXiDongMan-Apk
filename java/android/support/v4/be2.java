package android.support.v4;

import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;

/* loaded from: classes3.dex */
public final class be2 {

    /* renamed from: android.support.v4.be2$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(new ce2(), 16);
        }
    }

    /* renamed from: android.support.v4.be2$for, reason: invalid class name */
    public static class Cfor extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f419do = be2.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f419do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.VMPC-KSA3", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.VMPC-KSA3", str + "$KeyGen");
        }
    }

    /* renamed from: android.support.v4.be2$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cif() {
            super("VMPC-KSA3", 128, new rl());
        }
    }

    private be2() {
    }
}
