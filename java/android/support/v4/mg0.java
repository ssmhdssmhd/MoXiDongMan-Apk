package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;

/* loaded from: classes3.dex */
public class mg0 {

    /* renamed from: android.support.v4.mg0$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ccase() {
            this(256);
        }

        public Ccase(int i) {
            super("GOST3412-2015", i, new rl());
        }
    }

    /* renamed from: android.support.v4.mg0$do, reason: invalid class name */
    public static class Cdo extends BaseBlockCipher {
        public Cdo() {
            super((BlockCipher) new org.bouncycastle.crypto.modes.Ccase(new org.bouncycastle.crypto.engines.Cthis()), false, 128);
        }
    }

    /* renamed from: android.support.v4.mg0$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new ue(new org.bouncycastle.crypto.engines.Cthis()));
        }
    }

    /* renamed from: android.support.v4.mg0$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.engines.Cthis());
        }
    }

    /* renamed from: android.support.v4.mg0$goto, reason: invalid class name */
    public static class Cgoto extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f3913do = mg0.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f3913do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.GOST3412-2015", sb.toString());
            configurableProvider.addAlgorithm("Cipher.GOST3412-2015/CFB", str + "$GCFB");
            configurableProvider.addAlgorithm("Cipher.GOST3412-2015/CFB8", str + "$GCFB8");
            configurableProvider.addAlgorithm("Cipher.GOST3412-2015/OFB", str + "$OFB");
            configurableProvider.addAlgorithm("Cipher.GOST3412-2015/CBC", str + "$CBC");
            configurableProvider.addAlgorithm("Cipher.GOST3412-2015/CTR", str + "$CTR");
            configurableProvider.addAlgorithm("KeyGenerator.GOST3412-2015", str + "$KeyGen");
            configurableProvider.addAlgorithm("Mac.GOST3412MAC", str + "$Mac");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.GOST3412-2015", "GOST3412MAC");
        }
    }

    /* renamed from: android.support.v4.mg0$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {
        public Cif() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cgoto(new org.bouncycastle.crypto.engines.Cthis())), 128);
        }
    }

    /* renamed from: android.support.v4.mg0$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {
        public Cnew() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Celse(new org.bouncycastle.crypto.engines.Cthis(), 8)), false, 128);
        }
    }

    /* renamed from: android.support.v4.mg0$this, reason: invalid class name */
    public static class Cthis extends BaseBlockCipher {
        public Cthis() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cthis(new org.bouncycastle.crypto.engines.Cthis())), false, 128);
        }
    }

    /* renamed from: android.support.v4.mg0$try, reason: invalid class name */
    public static class Ctry extends BaseBlockCipher {
        public Ctry() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Celse(new org.bouncycastle.crypto.engines.Cthis())), false, 128);
        }
    }
}
