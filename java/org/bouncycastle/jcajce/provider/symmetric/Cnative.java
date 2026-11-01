package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me1;
import android.support.v4.nj1;
import android.support.v4.rl;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cbreak() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new nj1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new nj1())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ccatch() {
            super("Poly1305-RC6", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("RC6");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC6 parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Celse() {
            super("RC6", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.modes.Cdo(new nj1()), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$goto, reason: invalid class name */
    public static class Cgoto extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31440do = Cnative.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31440do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.RC6", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.RC6", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.RC6", str + "$AlgParams");
            m34865for(configurableProvider, "RC6", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "RC6", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "RC6 IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {
        public Cnew() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new nj1(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$this, reason: invalid class name */
    public static class Cthis extends BaseBlockCipher {
        public Cthis() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cnative(new nj1(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$try, reason: invalid class name */
    public static class Ctry extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.native$try$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new nj1();
            }
        }

        public Ctry() {
            super(new Cdo());
        }
    }

    private Cnative() {
    }
}
