package android.support.v4;

import org.bouncycastle.crypto.engines.Cabstract;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;

/* loaded from: classes3.dex */
public final class o62 {

    /* renamed from: android.support.v4.o62$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cbreak() {
            super("Threefish-1024", 1024, new rl());
        }
    }

    /* renamed from: android.support.v4.o62$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new ue(new Cabstract(512)));
        }
    }

    /* renamed from: android.support.v4.o62$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ccatch() {
            super("Threefish-256", 256, new rl());
        }
    }

    /* renamed from: android.support.v4.o62$class, reason: invalid class name */
    public static class Cclass extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cclass() {
            super("Threefish-512", 512, new rl());
        }
    }

    /* renamed from: android.support.v4.o62$const, reason: invalid class name */
    public static class Cconst extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f4434do = o62.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f4434do;
            sb.append(str);
            sb.append("$CMAC_256");
            configurableProvider.addAlgorithm("Mac.Threefish-256CMAC", sb.toString());
            configurableProvider.addAlgorithm("Mac.Threefish-512CMAC", str + "$CMAC_512");
            configurableProvider.addAlgorithm("Mac.Threefish-1024CMAC", str + "$CMAC_1024");
            configurableProvider.addAlgorithm("Cipher.Threefish-256", str + "$ECB_256");
            configurableProvider.addAlgorithm("Cipher.Threefish-512", str + "$ECB_512");
            configurableProvider.addAlgorithm("Cipher.Threefish-1024", str + "$ECB_1024");
            configurableProvider.addAlgorithm("KeyGenerator.Threefish-256", str + "$KeyGen_256");
            configurableProvider.addAlgorithm("KeyGenerator.Threefish-512", str + "$KeyGen_512");
            configurableProvider.addAlgorithm("KeyGenerator.Threefish-1024", str + "$KeyGen_1024");
            configurableProvider.addAlgorithm("AlgorithmParameters.Threefish-256", str + "$AlgParams_256");
            configurableProvider.addAlgorithm("AlgorithmParameters.Threefish-512", str + "$AlgParams_512");
            configurableProvider.addAlgorithm("AlgorithmParameters.Threefish-1024", str + "$AlgParams_1024");
        }
    }

    /* renamed from: android.support.v4.o62$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Threefish-1024 IV";
        }
    }

    /* renamed from: android.support.v4.o62$else, reason: invalid class name */
    public static class Celse extends BaseBlockCipher {
        public Celse() {
            super(new Cabstract(1024));
        }
    }

    /* renamed from: android.support.v4.o62$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Threefish-512 IV";
        }
    }

    /* renamed from: android.support.v4.o62$goto, reason: invalid class name */
    public static class Cgoto extends BaseBlockCipher {
        public Cgoto() {
            super(new Cabstract(256));
        }
    }

    /* renamed from: android.support.v4.o62$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Threefish-256 IV";
        }
    }

    /* renamed from: android.support.v4.o62$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new ue(new Cabstract(1024)));
        }
    }

    /* renamed from: android.support.v4.o62$this, reason: invalid class name */
    public static class Cthis extends BaseBlockCipher {
        public Cthis() {
            super(new Cabstract(512));
        }
    }

    /* renamed from: android.support.v4.o62$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new ue(new Cabstract(256)));
        }
    }

    private o62() {
    }
}
