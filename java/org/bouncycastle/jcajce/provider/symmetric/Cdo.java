package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me;
import android.support.v4.me0;
import android.support.v4.me1;
import android.support.v4.rl;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.ue;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.bc.BCObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Map<String, String> f31415do;

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$a */
    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public a() {
            super("Poly1305-AES", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$abstract, reason: invalid class name */
    public static class Cabstract extends BaseBlockCipher {
        public Cabstract() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 2, 4, 128, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$b */
    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public b() {
            super(new org.bouncycastle.crypto.engines.Cimport(new android.support.v4.Ccase()), 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        private me0 f31416do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() throws IOException {
            return this.f31416do.getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (m34897do(str)) {
                return this.f31416do.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34862try(algorithmParameterSpec)) {
                this.f31416do = org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34858do(algorithmParameterSpec);
                return;
            }
            if (algorithmParameterSpec instanceof android.support.v4.Cfor) {
                android.support.v4.Cfor cfor = (android.support.v4.Cfor) algorithmParameterSpec;
                this.f31416do = new me0(cfor.m2381for(), cfor.m2382if() / 8);
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            this.f31416do = me0.m4908try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!m34897do(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31416do = me0.m4908try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "GCM";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34861new(cls)) {
                return org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34859for() ? org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34860if(this.f31416do.toASN1Primitive()) : new android.support.v4.Cfor(this.f31416do.m4909case(), this.f31416do.m4910new() * 8);
            }
            if (cls == android.support.v4.Cfor.class) {
                return new android.support.v4.Cfor(this.f31416do.m4909case(), this.f31416do.m4910new() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31416do.m4909case());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$c */
    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public c() {
            super(new org.bouncycastle.crypto.engines.Cpublic(new android.support.v4.Ccase()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws IOException {
            byte[] bArr = new byte[12];
            if (this.f31500if == null) {
                this.f31500if = new SecureRandom();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("CCM");
                algorithmParametersM34892do.init(new me(bArr, 12).getEncoded());
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$catch, reason: invalid class name */
    public static class Ccatch extends BaseBlockCipher {
        public Ccatch() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$class, reason: invalid class name */
    public static class Cclass extends BaseBlockCipher {
        public Cclass() {
            super((AEADBlockCipher) new org.bouncycastle.crypto.modes.Cif(new android.support.v4.Ccase()), false, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$const, reason: invalid class name */
    public static class Cconst extends BaseBlockCipher {
        public Cconst() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new android.support.v4.Ccase(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$continue, reason: invalid class name */
    public static class Ccontinue extends BaseBlockCipher {
        public Ccontinue() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 2, 4, 192, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$d */
    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public d() {
            super(new android.support.v4.Ccatch());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$default, reason: invalid class name */
    public static class Cdefault extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cdefault() {
            super("PBEWithMD5And192BitAES-CBC-OpenSSL", null, true, 3, 0, 192, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$e */
    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public e() {
            super(new android.support.v4.Cclass());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws IOException {
            byte[] bArr = new byte[12];
            if (this.f31500if == null) {
                this.f31500if = new SecureRandom();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("GCM");
                algorithmParametersM34892do.init(new me0(bArr, 16).getEncoded());
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$extends, reason: invalid class name */
    public static class Cextends extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cextends() {
            super("PBEWithMD5And256BitAES-CBC-OpenSSL", null, true, 3, 0, 256, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$final, reason: invalid class name */
    public static class Cfinal extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$final$do, reason: invalid class name and collision with other inner class name */
        public class C0442do implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new android.support.v4.Ccase();
            }
        }

        public Cfinal() {
            super(new C0442do());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$finally, reason: invalid class name */
    public static class Cfinally extends BaseBlockCipher {
        public Cfinally() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 2, 1, 128, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new ue(new android.support.v4.Ccase()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "AES IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$if$do, reason: invalid class name and collision with other inner class name */
        public static class C0443do implements Mac {

            /* renamed from: do, reason: not valid java name */
            private final org.bouncycastle.crypto.modes.Cif f31417do;

            /* renamed from: if, reason: not valid java name */
            private int f31418if;

            private C0443do() {
                this.f31417do = new org.bouncycastle.crypto.modes.Cif(new android.support.v4.Ccase());
                this.f31418if = 8;
            }

            @Override // org.bouncycastle.crypto.Mac
            public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
                try {
                    return this.f31417do.doFinal(bArr, 0);
                } catch (tn0 e) {
                    throw new IllegalStateException("exception on doFinal(): " + e.toString());
                }
            }

            @Override // org.bouncycastle.crypto.Mac
            public String getAlgorithmName() {
                return this.f31417do.getAlgorithmName() + "Mac";
            }

            @Override // org.bouncycastle.crypto.Mac
            public int getMacSize() {
                return this.f31418if;
            }

            @Override // org.bouncycastle.crypto.Mac
            public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
                this.f31417do.init(true, cipherParameters);
                this.f31418if = this.f31417do.getMac().length;
            }

            @Override // org.bouncycastle.crypto.Mac
            public void reset() {
                this.f31417do.reset();
            }

            @Override // org.bouncycastle.crypto.Mac
            public void update(byte b) throws IllegalStateException {
                this.f31417do.processAADByte(b);
            }

            @Override // org.bouncycastle.crypto.Mac
            public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
                this.f31417do.processAADBytes(bArr, i, i2);
            }
        }

        public Cif() {
            super(new C0443do());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$implements, reason: invalid class name */
    public static class Cimplements extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cimplements() {
            super("PBEWithSHA1And192BitAES-CBC-BC", null, true, 2, 1, 192, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$import, reason: invalid class name */
    public static class Cimport extends Cpublic {
        public Cimport() {
            super(192);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$instanceof, reason: invalid class name */
    public static class Cinstanceof extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cinstanceof() {
            super("PBEWithSHA1And256BitAES-CBC-BC", null, true, 2, 1, 256, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$interface, reason: invalid class name */
    public static class Cinterface extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cinterface() {
            super("PBEWithSHA256And192BitAES-CBC-BC", null, true, 2, 4, 192, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$native, reason: invalid class name */
    public static class Cnative extends Cpublic {
        public Cnative() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new android.support.v4.Ccase())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$package, reason: invalid class name */
    public static class Cpackage extends BaseBlockCipher {
        public Cpackage() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 2, 1, 192, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$private, reason: invalid class name */
    public static class Cprivate extends BaseBlockCipher {
        public Cprivate() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 2, 1, 256, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$protected, reason: invalid class name */
    public static class Cprotected extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cprotected() {
            super("PBEWithSHA256And256BitAES-CBC-BC", null, true, 2, 4, 256, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$public, reason: invalid class name */
    public static class Cpublic extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cpublic() {
            this(192);
        }

        public Cpublic(int i) {
            super("AES", i, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$return, reason: invalid class name */
    public static class Creturn extends org.bouncycastle.jcajce.provider.symmetric.Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31419do = Cdo.class.getName();

        /* renamed from: for, reason: not valid java name */
        private static final String f31420for = "2.16.840.1.101.3.4.22";

        /* renamed from: if, reason: not valid java name */
        private static final String f31421if = "2.16.840.1.101.3.4.2";

        /* renamed from: new, reason: not valid java name */
        private static final String f31422new = "2.16.840.1.101.3.4.42";

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31419do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.AES", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", "AES");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch = NISTObjectIdentifiers.id_aes128_CBC;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), "AES");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch2 = NISTObjectIdentifiers.id_aes192_CBC;
            sb3.append(ccatch2);
            configurableProvider.addAlgorithm(sb3.toString(), "AES");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch3 = NISTObjectIdentifiers.id_aes256_CBC;
            sb4.append(ccatch3);
            configurableProvider.addAlgorithm(sb4.toString(), "AES");
            configurableProvider.addAlgorithm("AlgorithmParameters.GCM", str + "$AlgParamsGCM");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch4 = NISTObjectIdentifiers.id_aes128_GCM;
            sb5.append(ccatch4);
            configurableProvider.addAlgorithm(sb5.toString(), "GCM");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch5 = NISTObjectIdentifiers.id_aes192_GCM;
            sb6.append(ccatch5);
            configurableProvider.addAlgorithm(sb6.toString(), "GCM");
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch6 = NISTObjectIdentifiers.id_aes256_GCM;
            sb7.append(ccatch6);
            configurableProvider.addAlgorithm(sb7.toString(), "GCM");
            configurableProvider.addAlgorithm("AlgorithmParameters.CCM", str + "$AlgParamsCCM");
            StringBuilder sb8 = new StringBuilder();
            sb8.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch7 = NISTObjectIdentifiers.id_aes128_CCM;
            sb8.append(ccatch7);
            configurableProvider.addAlgorithm(sb8.toString(), "CCM");
            StringBuilder sb9 = new StringBuilder();
            sb9.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch8 = NISTObjectIdentifiers.id_aes192_CCM;
            sb9.append(ccatch8);
            configurableProvider.addAlgorithm(sb9.toString(), "CCM");
            StringBuilder sb10 = new StringBuilder();
            sb10.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch9 = NISTObjectIdentifiers.id_aes256_CCM;
            sb10.append(ccatch9);
            configurableProvider.addAlgorithm(sb10.toString(), "CCM");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.AES", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch, "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch2, "AES");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch3, "AES");
            configurableProvider.addAttributes("Cipher.AES", Cdo.f31415do);
            configurableProvider.addAlgorithm("Cipher.AES", str + "$ECB");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", "AES");
            org.bouncycastle.asn1.Ccatch ccatch10 = NISTObjectIdentifiers.id_aes128_ECB;
            configurableProvider.addAlgorithm("Cipher", ccatch10, str + "$ECB");
            org.bouncycastle.asn1.Ccatch ccatch11 = NISTObjectIdentifiers.id_aes192_ECB;
            configurableProvider.addAlgorithm("Cipher", ccatch11, str + "$ECB");
            org.bouncycastle.asn1.Ccatch ccatch12 = NISTObjectIdentifiers.id_aes256_ECB;
            configurableProvider.addAlgorithm("Cipher", ccatch12, str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch2, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch3, str + "$CBC");
            org.bouncycastle.asn1.Ccatch ccatch13 = NISTObjectIdentifiers.id_aes128_OFB;
            configurableProvider.addAlgorithm("Cipher", ccatch13, str + "$OFB");
            org.bouncycastle.asn1.Ccatch ccatch14 = NISTObjectIdentifiers.id_aes192_OFB;
            configurableProvider.addAlgorithm("Cipher", ccatch14, str + "$OFB");
            org.bouncycastle.asn1.Ccatch ccatch15 = NISTObjectIdentifiers.id_aes256_OFB;
            configurableProvider.addAlgorithm("Cipher", ccatch15, str + "$OFB");
            org.bouncycastle.asn1.Ccatch ccatch16 = NISTObjectIdentifiers.id_aes128_CFB;
            configurableProvider.addAlgorithm("Cipher", ccatch16, str + "$CFB");
            org.bouncycastle.asn1.Ccatch ccatch17 = NISTObjectIdentifiers.id_aes192_CFB;
            configurableProvider.addAlgorithm("Cipher", ccatch17, str + "$CFB");
            org.bouncycastle.asn1.Ccatch ccatch18 = NISTObjectIdentifiers.id_aes256_CFB;
            configurableProvider.addAlgorithm("Cipher", ccatch18, str + "$CFB");
            configurableProvider.addAttributes("Cipher.AESWRAP", Cdo.f31415do);
            configurableProvider.addAlgorithm("Cipher.AESWRAP", str + "$Wrap");
            org.bouncycastle.asn1.Ccatch ccatch19 = NISTObjectIdentifiers.id_aes128_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch19, "AESWRAP");
            org.bouncycastle.asn1.Ccatch ccatch20 = NISTObjectIdentifiers.id_aes192_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch20, "AESWRAP");
            org.bouncycastle.asn1.Ccatch ccatch21 = NISTObjectIdentifiers.id_aes256_wrap;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch21, "AESWRAP");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.AESKW", "AESWRAP");
            configurableProvider.addAttributes("Cipher.AESWRAPPAD", Cdo.f31415do);
            configurableProvider.addAlgorithm("Cipher.AESWRAPPAD", str + "$WrapPad");
            org.bouncycastle.asn1.Ccatch ccatch22 = NISTObjectIdentifiers.id_aes128_wrap_pad;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch22, "AESWRAPPAD");
            org.bouncycastle.asn1.Ccatch ccatch23 = NISTObjectIdentifiers.id_aes192_wrap_pad;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch23, "AESWRAPPAD");
            org.bouncycastle.asn1.Ccatch ccatch24 = NISTObjectIdentifiers.id_aes256_wrap_pad;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch24, "AESWRAPPAD");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.AESKWP", "AESWRAPPAD");
            configurableProvider.addAlgorithm("Cipher.AESRFC3211WRAP", str + "$RFC3211Wrap");
            configurableProvider.addAlgorithm("Cipher.AESRFC5649WRAP", str + "$RFC5649Wrap");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.CCM", str + "$AlgParamGenCCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch7, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch8, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch9, "CCM");
            configurableProvider.addAttributes("Cipher.CCM", Cdo.f31415do);
            configurableProvider.addAlgorithm("Cipher.CCM", str + "$CCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch7, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch8, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch9, "CCM");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.GCM", str + "$AlgParamGenGCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch4, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch5, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch6, "GCM");
            configurableProvider.addAttributes("Cipher.GCM", Cdo.f31415do);
            configurableProvider.addAlgorithm("Cipher.GCM", str + "$GCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch4, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch5, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch6, "GCM");
            configurableProvider.addAlgorithm("KeyGenerator.AES", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator.2.16.840.1.101.3.4.2", str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator.2.16.840.1.101.3.4.22", str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator.2.16.840.1.101.3.4.42", str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch10, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch13, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch16, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch11, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch2, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch14, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch17, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch12, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch3, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch15, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch18, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator.AESWRAP", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch19, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch20, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch21, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch4, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch5, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch6, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch7, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch8, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch9, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator.AESWRAPPAD", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch22, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch23, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch24, str + "$KeyGen256");
            configurableProvider.addAlgorithm("Mac.AESCMAC", str + "$AESCMAC");
            configurableProvider.addAlgorithm("Mac.AESCCMMAC", str + "$AESCCMMAC");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + ccatch7.m32795super(), "AESCCMMAC");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + ccatch8.m32795super(), "AESCCMMAC");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + ccatch9.m32795super(), "AESCCMMAC");
            org.bouncycastle.asn1.Ccatch ccatch25 = BCObjectIdentifiers.bc_pbe_sha1_pkcs12_aes128_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch25, "PBEWITHSHAAND128BITAES-CBC-BC");
            org.bouncycastle.asn1.Ccatch ccatch26 = BCObjectIdentifiers.bc_pbe_sha1_pkcs12_aes192_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch26, "PBEWITHSHAAND192BITAES-CBC-BC");
            org.bouncycastle.asn1.Ccatch ccatch27 = BCObjectIdentifiers.bc_pbe_sha1_pkcs12_aes256_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch27, "PBEWITHSHAAND256BITAES-CBC-BC");
            org.bouncycastle.asn1.Ccatch ccatch28 = BCObjectIdentifiers.bc_pbe_sha256_pkcs12_aes128_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch28, "PBEWITHSHA256AND128BITAES-CBC-BC");
            org.bouncycastle.asn1.Ccatch ccatch29 = BCObjectIdentifiers.bc_pbe_sha256_pkcs12_aes192_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch29, "PBEWITHSHA256AND192BITAES-CBC-BC");
            org.bouncycastle.asn1.Ccatch ccatch30 = BCObjectIdentifiers.bc_pbe_sha256_pkcs12_aes256_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch30, "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHAAND128BITAES-CBC-BC", str + "$PBEWithSHA1AESCBC128");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHAAND192BITAES-CBC-BC", str + "$PBEWithSHA1AESCBC192");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHAAND256BITAES-CBC-BC", str + "$PBEWithSHA1AESCBC256");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHA256AND128BITAES-CBC-BC", str + "$PBEWithSHA256AESCBC128");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHA256AND192BITAES-CBC-BC", str + "$PBEWithSHA256AESCBC192");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHA256AND256BITAES-CBC-BC", str + "$PBEWithSHA256AESCBC256");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHAAND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHAAND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHAAND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL", str + "$PBEWithAESCBC");
            configurableProvider.addAlgorithm("Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL", str + "$PBEWithAESCBC");
            configurableProvider.addAlgorithm("Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL", str + "$PBEWithAESCBC");
            configurableProvider.addAlgorithm("SecretKeyFactory.AES", str + "$KeyFactory");
            configurableProvider.addAlgorithm("SecretKeyFactory", NISTObjectIdentifiers.aes, str + "$KeyFactory");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL", str + "$PBEWithMD5And128BitAESCBCOpenSSL");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL", str + "$PBEWithMD5And192BitAESCBCOpenSSL");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL", str + "$PBEWithMD5And256BitAESCBCOpenSSL");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC", str + "$PBEWithSHAAnd128BitAESBC");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC", str + "$PBEWithSHAAnd192BitAESBC");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC", str + "$PBEWithSHAAnd256BitAESBC");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC", str + "$PBEWithSHA256And128BitAESBC");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC", str + "$PBEWithSHA256And192BitAESBC");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC", str + "$PBEWithSHA256And256BitAESBC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch25, "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch26, "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch27, "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch28, "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch29, "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch30, "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch25.m32795super(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch26.m32795super(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch27.m32795super(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch28.m32795super(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch29.m32795super(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch30.m32795super(), "PKCS12PBE");
            m34865for(configurableProvider, "AES", str + "$AESGMAC", str + "$KeyGen128");
            m34867new(configurableProvider, "AES", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$static, reason: invalid class name */
    public static class Cstatic extends BaseBlockCipher {
        public Cstatic() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cnative(new android.support.v4.Ccase(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$strictfp, reason: invalid class name */
    public static class Cstrictfp extends BaseBlockCipher {
        public Cstrictfp() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()), 2, 4, 256, 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$super, reason: invalid class name */
    public static class Csuper extends BaseBlockCipher {
        public Csuper() {
            super(new org.bouncycastle.crypto.modes.Ccatch(new android.support.v4.Ccase()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$switch, reason: invalid class name */
    public static class Cswitch extends BaseBlockCipher {
        public Cswitch() {
            super(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$synchronized, reason: invalid class name */
    public static class Csynchronized extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Csynchronized() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new android.support.v4.Ccase()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        private me f31423do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() throws IOException {
            return this.f31423do.getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (m34897do(str)) {
                return this.f31423do.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34862try(algorithmParameterSpec)) {
                this.f31423do = me.m4905try(org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34858do(algorithmParameterSpec));
                return;
            }
            if (algorithmParameterSpec instanceof android.support.v4.Cfor) {
                android.support.v4.Cfor cfor = (android.support.v4.Cfor) algorithmParameterSpec;
                this.f31423do = new me(cfor.m2381for(), cfor.m2382if() / 8);
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            this.f31423do = me.m4905try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!m34897do(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31423do = me.m4905try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "CCM";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34861new(cls)) {
                return org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34859for() ? org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34860if(this.f31423do.toASN1Primitive()) : new android.support.v4.Cfor(this.f31423do.m4906case(), this.f31423do.m4907new() * 8);
            }
            if (cls == android.support.v4.Cfor.class) {
                return new android.support.v4.Cfor(this.f31423do.m4906case(), this.f31423do.m4907new() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31423do.m4906case());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$throw, reason: invalid class name */
    public static class Cthrow extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {
        public Cthrow() {
            super("AES", null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$throws, reason: invalid class name */
    public static class Cthrows extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cthrows() {
            super("PBEWithMD5And128BitAES-CBC-OpenSSL", null, true, 3, 0, 128, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$transient, reason: invalid class name */
    public static class Ctransient extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Ctransient() {
            super("PBEWithSHA1And128BitAES-CBC-BC", null, true, 2, 1, 128, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = new SecureRandom();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("AES");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$volatile, reason: invalid class name */
    public static class Cvolatile extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Cvolatile() {
            super("PBEWithSHA256And128BitAES-CBC-BC", null, true, 2, 4, 128, 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.do$while, reason: invalid class name */
    public static class Cwhile extends Cpublic {
        public Cwhile() {
            super(128);
        }
    }

    static {
        HashMap map = new HashMap();
        f31415do = map;
        map.put("SupportedKeyClasses", "javax.crypto.SecretKey");
        map.put("SupportedKeyFormats", "RAW");
    }

    private Cdo() {
    }
}
