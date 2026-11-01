package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me1;
import android.support.v4.rl;
import android.support.v4.y31;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.modes.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$case, reason: invalid class name */
    public static class Ccase extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31412do = Cclass.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31412do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.NOEKEON", sb.toString());
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.NOEKEON", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Cipher.NOEKEON", str + "$ECB");
            configurableProvider.addAlgorithm("KeyGenerator.NOEKEON", str + "$KeyGen");
            m34865for(configurableProvider, "NOEKEON", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "NOEKEON", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("Noekeon");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Noekeon parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new y31()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$for$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new y31();
            }
        }

        public Cfor() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cgoto() {
            super("Poly1305-Noekeon", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$if, reason: invalid class name */
    public static class Cif extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Noekeon IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new org.bouncycastle.crypto.macs.Cnew(new Ccatch(new y31())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.class$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ctry() {
            super("Noekeon", 128, new rl());
        }
    }

    private Cclass() {
    }
}
