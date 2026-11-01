package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.f1;
import android.support.v4.mf0;
import android.support.v4.of0;
import android.support.v4.pf0;
import android.support.v4.rl;
import android.support.v4.zs;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private static Map<org.bouncycastle.asn1.Ccatch, String> f31453do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private static Map<String, org.bouncycastle.asn1.Ccatch> f31454if = new HashMap();

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cbreak() {
            super(new org.bouncycastle.crypto.macs.Ctry());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$case, reason: invalid class name */
    public static class Ccase extends BaseBlockCipher {
        public Ccase() {
            super(new mf0());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$catch, reason: invalid class name */
    public static class Ccatch extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31455do = Cthis.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31455do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.GOST28147", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.GOST", "GOST28147");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.GOST-28147", "GOST28147");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cipher.");
            org.bouncycastle.asn1.Ccatch ccatch = CryptoProObjectIdentifiers.gostR28147_gcfb;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), str + "$GCFB");
            configurableProvider.addAlgorithm("KeyGenerator.GOST28147", str + "$KeyGen");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.GOST", "GOST28147");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.GOST-28147", "GOST28147");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator." + ccatch, "GOST28147");
            configurableProvider.addAlgorithm("AlgorithmParameters.GOST28147", str + "$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.GOST28147", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch, "GOST28147");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch, "GOST28147");
            configurableProvider.addAlgorithm("Cipher." + CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_KeyWrap, str + "$CryptoProWrap");
            configurableProvider.addAlgorithm("Cipher." + CryptoProObjectIdentifiers.id_Gost28147_89_None_KeyWrap, str + "$GostWrap");
            configurableProvider.addAlgorithm("Mac.GOST28147MAC", str + "$Mac");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.GOST28147", "GOST28147MAC");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {

        /* renamed from: new, reason: not valid java name */
        public byte[] f31456new = new byte[8];

        /* renamed from: try, reason: not valid java name */
        public byte[] f31457try = mf0.m4916case("E-A");

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(this.f31456new);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("GOST28147");
                algorithmParametersM34892do.init(new of0(this.f31457try, this.f31456new));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            if (!(algorithmParameterSpec instanceof of0)) {
                throw new InvalidAlgorithmParameterException("parameter spec not supported");
            }
            this.f31457try = ((of0) algorithmParameterSpec).m5621for();
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$else, reason: invalid class name */
    public static class Celse extends BaseBlockCipher {
        public Celse() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cbreak(new mf0())), 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$for, reason: invalid class name */
    public static abstract class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        private org.bouncycastle.asn1.Ccatch f31458do = CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_A_ParamSet;

        /* renamed from: if, reason: not valid java name */
        private byte[] f31459if;

        /* renamed from: for, reason: not valid java name */
        public static org.bouncycastle.asn1.Ccatch m34876for(String str) {
            org.bouncycastle.asn1.Ccatch ccatch = (org.bouncycastle.asn1.Ccatch) Cthis.f31454if.get(str);
            if (ccatch != null) {
                return ccatch;
            }
            throw new IllegalArgumentException("Unknown SBOX name: " + str);
        }

        /* renamed from: new, reason: not valid java name */
        public static org.bouncycastle.asn1.Ccatch m34877new(byte[] bArr) {
            return m34876for(mf0.m4918else(bArr));
        }

        /* renamed from: case, reason: not valid java name */
        public abstract void mo34878case(byte[] bArr) throws IOException;

        @Override // java.security.AlgorithmParametersSpi
        public final byte[] engineGetEncoded() throws IOException {
            return engineGetEncoded("ASN.1");
        }

        @Override // java.security.AlgorithmParametersSpi
        public final byte[] engineGetEncoded(String str) throws IOException {
            if (m34897do(str)) {
                return mo34879try();
            }
            throw new IOException("Unknown parameter format: " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f31459if = ((IvParameterSpec) algorithmParameterSpec).getIV();
            } else {
                if (!(algorithmParameterSpec instanceof of0)) {
                    throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
                }
                this.f31459if = ((of0) algorithmParameterSpec).m5620do();
                try {
                    this.f31458do = m34877new(((of0) algorithmParameterSpec).m5621for());
                } catch (IllegalArgumentException e) {
                    throw new InvalidParameterSpecException(e.getMessage());
                }
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public final void engineInit(byte[] bArr) throws IOException {
            engineInit(bArr, "ASN.1");
        }

        @Override // java.security.AlgorithmParametersSpi
        public final void engineInit(byte[] bArr, String str) throws IOException {
            Objects.requireNonNull(bArr, "Encoded parameters cannot be null");
            if (!m34897do(str)) {
                throw new IOException("Unknown parameter format: " + str);
            }
            try {
                mo34878case(bArr);
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new IOException("Parameter parsing failed: " + e2.getMessage());
            }
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31459if);
            }
            if (cls == of0.class || cls == AlgorithmParameterSpec.class) {
                return new of0(this.f31458do, this.f31459if);
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        /* renamed from: try, reason: not valid java name */
        public byte[] mo34879try() throws IOException {
            return new pf0(this.f31459if, this.f31458do).getEncoded();
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Cgoto() {
            super(new org.bouncycastle.crypto.engines.Cgoto());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$if, reason: invalid class name */
    public static class Cif extends Cfor {

        /* renamed from: for, reason: not valid java name */
        private org.bouncycastle.asn1.Ccatch f31460for = CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_A_ParamSet;

        /* renamed from: new, reason: not valid java name */
        private byte[] f31461new;

        @Override // org.bouncycastle.jcajce.provider.symmetric.Cthis.Cfor
        /* renamed from: case */
        public void mo34878case(byte[] bArr) throws IOException {
            Cfinal cfinalM33015else = Cfinal.m33015else(bArr);
            if (cfinalM33015else instanceof Cclass) {
                this.f31461new = Cclass.m32796catch(cfinalM33015else).mo5490const();
            } else {
                if (!(cfinalM33015else instanceof Csuper)) {
                    throw new IOException("Unable to recognize parameters");
                }
                pf0 pf0VarM6000case = pf0.m6000case(cfinalM33015else);
                this.f31460for = pf0VarM6000case.m6002new();
                this.f31461new = pf0VarM6000case.m6003try();
            }
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.Cthis.Cfor, java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.f31461new = ((IvParameterSpec) algorithmParameterSpec).getIV();
            } else {
                if (!(algorithmParameterSpec instanceof of0)) {
                    throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
                }
                this.f31461new = ((of0) algorithmParameterSpec).m5620do();
                try {
                    this.f31460for = Cfor.m34877new(((of0) algorithmParameterSpec).m5621for());
                } catch (IllegalArgumentException e) {
                    throw new InvalidParameterSpecException(e.getMessage());
                }
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "GOST 28147 IV Parameters";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.Cthis.Cfor, org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31461new);
            }
            if (cls == of0.class || cls == AlgorithmParameterSpec.class) {
                return new of0(this.f31460for, this.f31461new);
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.Cthis.Cfor
        /* renamed from: try */
        public byte[] mo34879try() throws IOException {
            return new pf0(this.f31461new, this.f31460for).getEncoded();
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$new, reason: invalid class name */
    public static class Cnew extends BaseBlockCipher {
        public Cnew() {
            super(new org.bouncycastle.crypto.modes.Cdo(new mf0()), 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$this, reason: invalid class name and collision with other inner class name */
    public static class C0449this extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public C0449this() {
            this(256);
        }

        public C0449this(int i) {
            super("GOST28147", i, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.this$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Ctry() {
            super(new zs());
        }
    }

    static {
        f31453do.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_TestParamSet, "E-TEST");
        Map<org.bouncycastle.asn1.Ccatch, String> map = f31453do;
        org.bouncycastle.asn1.Ccatch ccatch = CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_A_ParamSet;
        map.put(ccatch, "E-A");
        Map<org.bouncycastle.asn1.Ccatch, String> map2 = f31453do;
        org.bouncycastle.asn1.Ccatch ccatch2 = CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_B_ParamSet;
        map2.put(ccatch2, "E-B");
        Map<org.bouncycastle.asn1.Ccatch, String> map3 = f31453do;
        org.bouncycastle.asn1.Ccatch ccatch3 = CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_C_ParamSet;
        map3.put(ccatch3, "E-C");
        Map<org.bouncycastle.asn1.Ccatch, String> map4 = f31453do;
        org.bouncycastle.asn1.Ccatch ccatch4 = CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_D_ParamSet;
        map4.put(ccatch4, "E-D");
        Map<org.bouncycastle.asn1.Ccatch, String> map5 = f31453do;
        org.bouncycastle.asn1.Ccatch ccatch5 = RosstandartObjectIdentifiers.id_tc26_gost_28147_param_Z;
        map5.put(ccatch5, "Param-Z");
        f31454if.put("E-A", ccatch);
        f31454if.put("E-B", ccatch2);
        f31454if.put("E-C", ccatch3);
        f31454if.put("E-D", ccatch4);
        f31454if.put("Param-Z", ccatch5);
    }

    private Cthis() {
    }
}
