package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.f1;
import android.support.v4.he;
import android.support.v4.ie;
import android.support.v4.rl;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.for$case, reason: invalid class name */
    public static class Ccase extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31431do = Cfor.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31431do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.CAST5", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10", "CAST5");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.CAST5", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10", "CAST5");
            configurableProvider.addAlgorithm("Cipher.CAST5", str + "$ECB");
            Ccatch ccatch = MiscObjectIdentifiers.cast5CBC;
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            configurableProvider.addAlgorithm("KeyGenerator.CAST5", str + "$KeyGen");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator", ccatch, "CAST5");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.for$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[8];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("CAST5");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for CAST5 parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0445for extends BaseBlockCipher {
        public C0445for() {
            super(new org.bouncycastle.crypto.modes.Cdo(new ie()), 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.for$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        private byte[] f31432do;

        /* renamed from: if, reason: not valid java name */
        private int f31433if = 128;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            byte[] bArr = this.f31432do;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (m34897do(str)) {
                return new he(engineGetEncoded(), this.f31433if).getEncoded();
            }
            if (str.equals("RAW")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
                throw new InvalidParameterSpecException("IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object");
            }
            this.f31432do = ((IvParameterSpec) algorithmParameterSpec).getIV();
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            byte[] bArr2 = new byte[bArr.length];
            this.f31432do = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (m34897do(str)) {
                he heVarM2995try = he.m2995try(new Celse(bArr).m33002break());
                this.f31433if = heVarM2995try.m2996case();
                this.f31432do = heVarM2995try.m2997new();
            } else {
                if (!str.equals("RAW")) {
                    throw new IOException("Unknown parameters format in IV parameters object");
                }
                engineInit(bArr);
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "CAST5 Parameters";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31432do);
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to CAST5 parameters object.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.for$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {
        public Cnew() {
            super(new ie());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.for$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Ctry() {
            super("CAST5", 128, new rl());
        }
    }

    private Cfor() {
    }
}
