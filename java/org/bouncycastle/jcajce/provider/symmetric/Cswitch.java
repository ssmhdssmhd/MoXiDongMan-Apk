package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me1;
import android.support.v4.rl;
import android.support.v4.ue;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.Cfinally;
import org.bouncycastle.crypto.modes.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cswitch {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ccase() {
            super("SM4", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("SM4");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SM4 parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$else, reason: invalid class name */
    public static class Celse extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31452do = Cswitch.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31452do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.SM4", sb.toString());
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.SM4", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Cipher.SM4", str + "$ECB");
            configurableProvider.addAlgorithm("KeyGenerator.SM4", str + "$KeyGen");
            m34866if(configurableProvider, "SM4", str + "$CMAC", str + "$KeyGen");
            m34865for(configurableProvider, "SM4", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "SM4", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new ue(new Cfinally()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cgoto() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new Cfinally()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "SM4 IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$new$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new Cfinally();
            }
        }

        public Cnew() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthis() {
            super("Poly1305-SM4", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.switch$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new org.bouncycastle.crypto.macs.Cnew(new Ccatch(new Cfinally())));
        }
    }

    private Cswitch() {
    }
}
