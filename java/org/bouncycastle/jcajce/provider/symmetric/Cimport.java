package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.f1;
import android.support.v4.ke;
import android.support.v4.kj1;
import android.support.v4.lj1;
import android.support.v4.rl;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$break, reason: invalid class name */
    public static class Cbreak extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31439do = Cimport.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31439do;
            sb.append(str);
            sb.append("$ECB32");
            configurableProvider.addAlgorithm("Cipher.RC5", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.RC5-32", "RC5");
            configurableProvider.addAlgorithm("Cipher.RC5-64", str + "$ECB64");
            configurableProvider.addAlgorithm("KeyGenerator.RC5", str + "$KeyGen32");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.RC5-32", "RC5");
            configurableProvider.addAlgorithm("KeyGenerator.RC5-64", str + "$KeyGen64");
            configurableProvider.addAlgorithm("AlgorithmParameters.RC5", str + "$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.RC5-64", str + "$AlgParams");
            configurableProvider.addAlgorithm("Mac.RC5MAC", str + "$Mac32");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.RC5", "RC5MAC");
            configurableProvider.addAlgorithm("Mac.RC5MAC/CFB8", str + "$CFB8Mac32");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.RC5/CFB8", "RC5MAC/CFB8");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$case, reason: invalid class name */
    public static class Ccase extends BaseBlockCipher {
        public Ccase() {
            super(new lj1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[8];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("RC5");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC5 parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Celse() {
            super("RC5", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.modes.Cdo(new kj1()), 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cgoto() {
            super("RC5-64", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "RC5 IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new org.bouncycastle.crypto.macs.Cdo(new kj1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cthis() {
            super(new ke(new kj1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.import$try, reason: invalid class name */
    public static class Ctry extends BaseBlockCipher {
        public Ctry() {
            super(new kj1());
        }
    }

    private Cimport() {
    }
}
