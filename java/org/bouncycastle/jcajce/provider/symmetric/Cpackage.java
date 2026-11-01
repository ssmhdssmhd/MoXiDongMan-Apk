package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.e92;
import android.support.v4.me1;
import android.support.v4.rl;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.modes.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cbreak;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$case, reason: invalid class name */
    public static class Ccase extends BaseBlockCipher {
        public Ccase() {
            super(new org.bouncycastle.crypto.modes.Cdo(new e92()), 2, 1, 256, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Twofish IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$else, reason: invalid class name */
    public static class Celse extends Cbreak {
        public Celse() {
            super("PBEwithSHAandTwofish-CBC", null, true, 2, 1, 256, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new org.bouncycastle.crypto.macs.Cnew(new Ccatch(new e92())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cgoto() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new e92()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$if$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new e92();
            }
        }

        public Cif() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cnew() {
            super("Twofish", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthis() {
            super("Poly1305-Twofish", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.package$try, reason: invalid class name */
    public static class Ctry extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31442do = Cpackage.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31442do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.Twofish", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.Twofish", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.Twofish", str + "$AlgParams");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH-CBC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHAANDTWOFISH-CBC", str + "$PBEWithSHA");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHAANDTWOFISH-CBC", str + "$PBEWithSHAKeyFactory");
            m34865for(configurableProvider, "Twofish", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "Twofish", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    private Cpackage() {
    }
}
