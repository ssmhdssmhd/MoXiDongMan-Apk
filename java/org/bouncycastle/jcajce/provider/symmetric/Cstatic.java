package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me1;
import android.support.v4.rl;
import android.support.v4.ue;
import android.support.v4.vp1;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.Cdefault;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cbreak() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new Cdefault()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new Cdefault())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ccatch() {
            super("Poly1305-SEED", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$class, reason: invalid class name */
    public static class Cclass extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Cclass() {
            super(new vp1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("SEED");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SEED parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {
        public Celse() {
            super("SEED", null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.modes.Cdo(new Cdefault()), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cgoto() {
            super("SEED", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "SEED IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new ue(new Cdefault()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$this, reason: invalid class name */
    public static class Cthis extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31446do = Cstatic.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31446do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.SEED", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch = KISAObjectIdentifiers.id_seedCBC;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), "SEED");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.SEED", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch, "SEED");
            configurableProvider.addAlgorithm("Cipher.SEED", str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher.SEEDWRAP", str + "$Wrap");
            org.bouncycastle.asn1.Ccatch ccatch2 = KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch2, "SEEDWRAP");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.SEEDKW", "SEEDWRAP");
            configurableProvider.addAlgorithm("KeyGenerator.SEED", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch, str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch2, str + "$KeyGen");
            configurableProvider.addAlgorithm("SecretKeyFactory.SEED", str + "$KeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch, "SEED");
            m34866if(configurableProvider, "SEED", str + "$CMAC", str + "$KeyGen");
            m34865for(configurableProvider, "SEED", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "SEED", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$try, reason: invalid class name */
    public static class Ctry extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.static$try$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new Cdefault();
            }
        }

        public Ctry() {
            super(new Cdo());
        }
    }

    private Cstatic() {
    }
}
