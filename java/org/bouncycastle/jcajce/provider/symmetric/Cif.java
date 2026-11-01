package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.me;
import android.support.v4.me0;
import android.support.v4.me1;
import android.support.v4.rl;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.nsri.NSRIObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$break, reason: invalid class name */
    public static class Cbreak extends Cconst {
        public Cbreak() {
            super(128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$case, reason: invalid class name */
    public static class Ccase extends BaseBlockCipher {
        public Ccase() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new org.bouncycastle.crypto.engines.Cdo(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$catch, reason: invalid class name */
    public static class Ccatch extends Cconst {
        public Ccatch() {
            super(192);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$class, reason: invalid class name */
    public static class Cclass extends Cconst {
        public Cclass() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$const, reason: invalid class name */
    public static class Cconst extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cconst() {
            this(256);
        }

        public Cconst(int i) {
            super("ARIA", i, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[16];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("ARIA");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for ARIA parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$else, reason: invalid class name */
    public static class Celse extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$else$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new org.bouncycastle.crypto.engines.Cdo();
            }
        }

        public Celse() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$final, reason: invalid class name */
    public static class Cfinal extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31436do = Cif.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31436do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.ARIA", sb.toString());
            org.bouncycastle.asn1.Ccatch ccatch = NSRIObjectIdentifiers.id_aria128_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch2 = NSRIObjectIdentifiers.id_aria192_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch2, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch3 = NSRIObjectIdentifiers.id_aria256_cbc;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch3, "ARIA");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.ARIA", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch, "ARIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch2, "ARIA");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch3, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch4 = NSRIObjectIdentifiers.id_aria128_ofb;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch4, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch5 = NSRIObjectIdentifiers.id_aria192_ofb;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch5, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch6 = NSRIObjectIdentifiers.id_aria256_ofb;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch6, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch7 = NSRIObjectIdentifiers.id_aria128_cfb;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch7, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch8 = NSRIObjectIdentifiers.id_aria192_cfb;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch8, "ARIA");
            org.bouncycastle.asn1.Ccatch ccatch9 = NSRIObjectIdentifiers.id_aria256_cfb;
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator", ccatch9, "ARIA");
            configurableProvider.addAlgorithm("Cipher.ARIA", str + "$ECB");
            org.bouncycastle.asn1.Ccatch ccatch10 = NSRIObjectIdentifiers.id_aria128_ecb;
            configurableProvider.addAlgorithm("Cipher", ccatch10, str + "$ECB");
            org.bouncycastle.asn1.Ccatch ccatch11 = NSRIObjectIdentifiers.id_aria192_ecb;
            configurableProvider.addAlgorithm("Cipher", ccatch11, str + "$ECB");
            org.bouncycastle.asn1.Ccatch ccatch12 = NSRIObjectIdentifiers.id_aria256_ecb;
            configurableProvider.addAlgorithm("Cipher", ccatch12, str + "$ECB");
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch2, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch3, str + "$CBC");
            configurableProvider.addAlgorithm("Cipher", ccatch7, str + "$CFB");
            configurableProvider.addAlgorithm("Cipher", ccatch8, str + "$CFB");
            configurableProvider.addAlgorithm("Cipher", ccatch9, str + "$CFB");
            configurableProvider.addAlgorithm("Cipher", ccatch4, str + "$OFB");
            configurableProvider.addAlgorithm("Cipher", ccatch5, str + "$OFB");
            configurableProvider.addAlgorithm("Cipher", ccatch6, str + "$OFB");
            configurableProvider.addAlgorithm("Cipher.ARIARFC3211WRAP", str + "$RFC3211Wrap");
            configurableProvider.addAlgorithm("Cipher.ARIAWRAP", str + "$Wrap");
            org.bouncycastle.asn1.Ccatch ccatch13 = NSRIObjectIdentifiers.id_aria128_kw;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch13, "ARIAWRAP");
            org.bouncycastle.asn1.Ccatch ccatch14 = NSRIObjectIdentifiers.id_aria192_kw;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch14, "ARIAWRAP");
            org.bouncycastle.asn1.Ccatch ccatch15 = NSRIObjectIdentifiers.id_aria256_kw;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch15, "ARIAWRAP");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.ARIAKW", "ARIAWRAP");
            configurableProvider.addAlgorithm("Cipher.ARIAWRAPPAD", str + "$WrapPad");
            org.bouncycastle.asn1.Ccatch ccatch16 = NSRIObjectIdentifiers.id_aria128_kwp;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch16, "ARIAWRAPPAD");
            org.bouncycastle.asn1.Ccatch ccatch17 = NSRIObjectIdentifiers.id_aria192_kwp;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch17, "ARIAWRAPPAD");
            org.bouncycastle.asn1.Ccatch ccatch18 = NSRIObjectIdentifiers.id_aria256_kwp;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch18, "ARIAWRAPPAD");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.ARIAKWP", "ARIAWRAPPAD");
            configurableProvider.addAlgorithm("KeyGenerator.ARIA", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch13, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch14, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch15, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch16, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch17, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch18, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch10, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch11, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch12, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch2, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch3, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch7, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch8, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch9, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch4, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch5, str + "$KeyGen192");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch6, str + "$KeyGen256");
            org.bouncycastle.asn1.Ccatch ccatch19 = NSRIObjectIdentifiers.id_aria128_ccm;
            configurableProvider.addAlgorithm("KeyGenerator", ccatch19, str + "$KeyGen128");
            org.bouncycastle.asn1.Ccatch ccatch20 = NSRIObjectIdentifiers.id_aria192_ccm;
            configurableProvider.addAlgorithm("KeyGenerator", ccatch20, str + "$KeyGen192");
            org.bouncycastle.asn1.Ccatch ccatch21 = NSRIObjectIdentifiers.id_aria256_ccm;
            configurableProvider.addAlgorithm("KeyGenerator", ccatch21, str + "$KeyGen256");
            org.bouncycastle.asn1.Ccatch ccatch22 = NSRIObjectIdentifiers.id_aria128_gcm;
            configurableProvider.addAlgorithm("KeyGenerator", ccatch22, str + "$KeyGen128");
            org.bouncycastle.asn1.Ccatch ccatch23 = NSRIObjectIdentifiers.id_aria192_gcm;
            configurableProvider.addAlgorithm("KeyGenerator", ccatch23, str + "$KeyGen192");
            org.bouncycastle.asn1.Ccatch ccatch24 = NSRIObjectIdentifiers.id_aria256_gcm;
            configurableProvider.addAlgorithm("KeyGenerator", ccatch24, str + "$KeyGen256");
            configurableProvider.addAlgorithm("SecretKeyFactory.ARIA", str + "$KeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch, "ARIA");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch2, "ARIA");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch3, "ARIA");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.ARIACCM", str + "$AlgParamGenCCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch19, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch20, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch21, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch19, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch20, "CCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch21, "CCM");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.ARIAGCM", str + "$AlgParamGenGCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch22, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch23, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch24, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch22, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch23, "GCM");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch24, "GCM");
            m34865for(configurableProvider, "ARIA", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "ARIA", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        private me f31437do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() throws IOException {
            return this.f31437do.getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (m34897do(str)) {
                return this.f31437do.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34862try(algorithmParameterSpec)) {
                this.f31437do = me.m4905try(org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34858do(algorithmParameterSpec));
                return;
            }
            if (algorithmParameterSpec instanceof android.support.v4.Cfor) {
                android.support.v4.Cfor cfor = (android.support.v4.Cfor) algorithmParameterSpec;
                this.f31437do = new me(cfor.m2381for(), cfor.m2382if() / 8);
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            this.f31437do = me.m4905try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!m34897do(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31437do = me.m4905try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "CCM";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34861new(cls)) {
                return org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34859for() ? org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34860if(this.f31437do.toASN1Primitive()) : new android.support.v4.Cfor(this.f31437do.m4906case(), this.f31437do.m4907new() * 8);
            }
            if (cls == android.support.v4.Cfor.class) {
                return new android.support.v4.Cfor(this.f31437do.m4906case(), this.f31437do.m4907new() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31437do.m4906case());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cgoto() {
            super(new org.bouncycastle.crypto.macs.Cnew(new org.bouncycastle.crypto.modes.Ccatch(new org.bouncycastle.crypto.engines.Cdo())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0447if extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "ARIA IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$import, reason: invalid class name */
    public static class Cimport extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Cimport() {
            super(new org.bouncycastle.crypto.engines.Cimport(new org.bouncycastle.crypto.engines.Cdo()), 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$native, reason: invalid class name */
    public static class Cnative extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Cnative() {
            super(new android.support.v4.Cfinal());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        private me0 f31438do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() throws IOException {
            return this.f31438do.getEncoded();
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (m34897do(str)) {
                return this.f31438do.getEncoded();
            }
            throw new IOException("unknown format specified");
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34862try(algorithmParameterSpec)) {
                this.f31438do = org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34858do(algorithmParameterSpec);
                return;
            }
            if (algorithmParameterSpec instanceof android.support.v4.Cfor) {
                android.support.v4.Cfor cfor = (android.support.v4.Cfor) algorithmParameterSpec;
                this.f31438do = new me0(cfor.m2381for(), cfor.m2382if() / 8);
            } else {
                throw new InvalidParameterSpecException("AlgorithmParameterSpec class not recognized: " + algorithmParameterSpec.getClass().getName());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            this.f31438do = me0.m4908try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!m34897do(str)) {
                throw new IOException("unknown format specified");
            }
            this.f31438do = me0.m4908try(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "GCM";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == AlgorithmParameterSpec.class || org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34861new(cls)) {
                return org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34859for() ? org.bouncycastle.jcajce.provider.symmetric.Cbreak.m34860if(this.f31438do.toASN1Primitive()) : new android.support.v4.Cfor(this.f31438do.m4909case(), this.f31438do.m4910new() * 8);
            }
            if (cls == android.support.v4.Cfor.class) {
                return new android.support.v4.Cfor(this.f31438do.m4909case(), this.f31438do.m4910new() * 8);
            }
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.f31438do.m4909case());
            }
            throw new InvalidParameterSpecException("AlgorithmParameterSpec not recognized: " + cls.getName());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$public, reason: invalid class name */
    public static class Cpublic extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Cpublic() {
            super(new android.support.v4.Csuper());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$super, reason: invalid class name */
    public static class Csuper extends BaseBlockCipher {
        public Csuper() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cnative(new org.bouncycastle.crypto.engines.Cdo(), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {
        public Cthis() {
            super("ARIA", null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$throw, reason: invalid class name */
    public static class Cthrow extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cthrow() {
            super(new org.bouncycastle.crypto.macs.Cgoto(new org.bouncycastle.crypto.engines.Cdo()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$try, reason: invalid class name */
    public static class Ctry extends BaseBlockCipher {
        public Ctry() {
            super(new org.bouncycastle.crypto.modes.Cdo(new org.bouncycastle.crypto.engines.Cdo()), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.if$while, reason: invalid class name */
    public static class Cwhile extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cwhile() {
            super("Poly1305-ARIA", 256, new me1());
        }
    }

    private Cif() {
    }
}
