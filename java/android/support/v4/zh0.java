package android.support.v4;

import org.bouncycastle.crypto.engines.Cbreak;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ccase;

/* loaded from: classes3.dex */
public final class zh0 {

    /* renamed from: android.support.v4.zh0$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(new Cbreak(), 12);
        }
    }

    /* renamed from: android.support.v4.zh0$for, reason: invalid class name */
    public static class Cfor extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f8553do = zh0.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f8553do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.Grain128", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.Grain128", str + "$KeyGen");
        }
    }

    /* renamed from: android.support.v4.zh0$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cif() {
            super("Grain128", 128, new rl());
        }
    }

    private zh0() {
    }
}
