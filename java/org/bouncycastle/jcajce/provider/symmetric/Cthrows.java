package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me1;
import android.support.v4.rl;
import org.bouncycastle.asn1.gnu.GNUObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.Ccontinue;
import org.bouncycastle.crypto.engines.Cpackage;
import org.bouncycastle.crypto.modes.Cnative;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrows {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cbreak() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new Cpackage())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$case, reason: invalid class name */
    public static class Ccase extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31464do = Cthrows.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31464do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.Serpent", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.Serpent", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.Serpent", str + "$AlgParams");
            configurableProvider.addAlgorithm("Cipher.Tnepres", str + "$TECB");
            configurableProvider.addAlgorithm("KeyGenerator.Tnepres", str + "$TKeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.Tnepres", str + "$TAlgParams");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_128_ECB, str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_192_ECB, str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_256_ECB, str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_128_CBC, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_192_CBC, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_256_CBC, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_128_CFB, str + "$CFB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_192_CFB, str + "$CFB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_256_CFB, str + "$CFB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_128_OFB, str + "$OFB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_192_OFB, str + "$OFB");
            configurableProvider.addAlgorithm("Cipher", GNUObjectIdentifiers.Serpent_256_OFB, str + "$OFB");
            m34865for(configurableProvider, "SERPENT", str + "$SerpentGMAC", str + "$KeyGen");
            m34865for(configurableProvider, "TNEPRES", str + "$TSerpentGMAC", str + "$TKeyGen");
            m34867new(configurableProvider, "SERPENT", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Tnepres IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$class, reason: invalid class name */
    public static class Cclass extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$class$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new Ccontinue();
            }
        }

        public Cclass() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$const, reason: invalid class name */
    public static class Cconst extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cconst() {
            super("Tnepres", 192, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Serpent IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$else, reason: invalid class name */
    public static class Celse extends BaseBlockCipher {
        public Celse() {
            super(new org.bouncycastle.crypto.Cif(new Cnative(new Cpackage(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$final, reason: invalid class name */
    public static class Cfinal extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfinal() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new Ccontinue())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new Cpackage(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cgoto() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new Cpackage()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {
        public Cif() {
            super(new org.bouncycastle.crypto.modes.Cdo(new Cpackage()), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$new$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new Cpackage();
            }
        }

        public Cnew() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthis() {
            super("Poly1305-Serpent", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throws$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ctry() {
            super("Serpent", 192, new rl());
        }
    }

    private Cthrows() {
    }
}
