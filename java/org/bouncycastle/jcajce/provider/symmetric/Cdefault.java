package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.rl;
import android.support.v4.ue;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.Cprivate;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ccase() {
            super("SHACAL-2", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[32];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("Shacal2");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Shacal2 parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$else, reason: invalid class name */
    public static class Celse extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31414do = Cdefault.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31414do;
            sb.append(str);
            sb.append("$CMAC");
            configurableProvider.addAlgorithm("Mac.Shacal-2CMAC", sb.toString());
            configurableProvider.addAlgorithm("Cipher.Shacal2", str + "$ECB");
            configurableProvider.addAlgorithm("Cipher.SHACAL-2", str + "$ECB");
            configurableProvider.addAlgorithm("KeyGenerator.Shacal2", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.Shacal2", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.Shacal2", str + "$AlgParams");
            configurableProvider.addAlgorithm("KeyGenerator.SHACAL-2", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.SHACAL-2", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.SHACAL-2", str + "$AlgParams");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$for, reason: invalid class name */
    public static class Cfor extends BaseBlockCipher {
        public Cfor() {
            super(new org.bouncycastle.crypto.modes.Cdo(new Cprivate()), 256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$if, reason: invalid class name */
    public static class Cif extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Shacal2 IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new ue(new Cprivate()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$try, reason: invalid class name */
    public static class Ctry extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.default$try$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new Cprivate();
            }
        }

        public Ctry() {
            super(new Cdo());
        }
    }

    private Cdefault() {
    }
}
