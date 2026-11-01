package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.kf;
import android.support.v4.me1;
import android.support.v4.rl;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.Cimport;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cbreak() {
            this(256);
        }

        public Cbreak(int i) {
            super("Camellia", i, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {
        public Ccase() {
            super("Camellia", null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$catch, reason: invalid class name */
    public static class Ccatch extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31465do = Ctry.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31465do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.CAMELLIA", sb.toString());
            org.bouncycastle.asn1.Ccatch ccatch = NTTObjectIdentifiers.id_camellia128_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch, "CAMELLIA");
            org.bouncycastle.asn1.Ccatch ccatch2 = NTTObjectIdentifiers.id_camellia192_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch2, "CAMELLIA");
            org.bouncycastle.asn1.Ccatch ccatch3 = NTTObjectIdentifiers.id_camellia256_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch3, "CAMELLIA");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.CAMELLIA", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch2, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch3, "CAMELLIA");
            configurableProvider.addAlgorithm("Cipher.CAMELLIA", str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch2, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch3, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher.CAMELLIARFC3211WRAP", str + "$RFC3211Wrap");
            configurableProvider.addAlgorithm("Cipher.CAMELLIAWRAP", str + "$Wrap");
            org.bouncycastle.asn1.Ccatch ccatch4 = NTTObjectIdentifiers.id_camellia128_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch4, "CAMELLIAWRAP");
            org.bouncycastle.asn1.Ccatch ccatch5 = NTTObjectIdentifiers.id_camellia192_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch5, "CAMELLIAWRAP");
            org.bouncycastle.asn1.Ccatch ccatch6 = NTTObjectIdentifiers.id_camellia256_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch6, "CAMELLIAWRAP");
            configurableProvider.addAlgorithm("SecretKeyFactory.CAMELLIA", str + "$KeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch2, "CAMELLIA");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch3, "CAMELLIA");
            configurableProvider.addAlgorithm("KeyGenerator.CAMELLIA", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch4, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch5, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch6, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch2, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch3, str + "$KeyGen256");
            m34865for(configurableProvider, "CAMELLIA", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "CAMELLIA", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$class, reason: invalid class name */
    public static class Cclass extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cclass() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new org.bouncycastle.crypto.engines.Cif()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$const, reason: invalid class name */
    public static class Cconst extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cconst() {
            super("Poly1305-Camellia", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("Camellia");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Camellia parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$else, reason: invalid class name */
    public static class Celse extends Cbreak {
        public Celse() {
            super(128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$final, reason: invalid class name */
    public static class Cfinal extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Cfinal() {
            super(new Cimport(new org.bouncycastle.crypto.engines.Cif()), 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.modes.Cdo(new org.bouncycastle.crypto.engines.Cif()), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$goto, reason: invalid class name */
    public static class Cgoto extends Cbreak {
        public Cgoto() {
            super(192);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Camellia IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$new$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new org.bouncycastle.crypto.engines.Cif();
            }
        }

        public Cnew() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$super, reason: invalid class name */
    public static class Csuper extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Csuper() {
            super(new kf());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$this, reason: invalid class name */
    public static class Cthis extends Cbreak {
        public Cthis() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0450try extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public C0450try() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new org.bouncycastle.crypto.engines.Cif())));
        }
    }

    private Ctry() {
    }
}
