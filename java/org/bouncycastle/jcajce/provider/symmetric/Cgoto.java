package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.rl;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$a */
    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public a() {
            super(new org.bouncycastle.crypto.engines.Celse(128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$abstract, reason: invalid class name */
    public static class Cabstract extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cabstract() {
            super(new org.bouncycastle.crypto.macs.Ccase(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(512)), 512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$b */
    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public b() {
            super(new org.bouncycastle.crypto.engines.Celse(256));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$break, reason: invalid class name */
    public static class Cbreak extends BaseBlockCipher {
        public Cbreak() {
            super(new org.bouncycastle.crypto.modes.Cfinal(new org.bouncycastle.crypto.engines.Ccase(256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$c */
    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public c() {
            super(new org.bouncycastle.crypto.engines.Celse(512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$case, reason: invalid class name */
    public static class Ccase extends BaseBlockCipher {
        public Ccase() {
            super(new org.bouncycastle.crypto.modes.Cdo(new org.bouncycastle.crypto.engines.Ccase(128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$catch, reason: invalid class name */
    public static class Ccatch extends BaseBlockCipher {
        public Ccatch() {
            super(new org.bouncycastle.crypto.modes.Cfinal(new org.bouncycastle.crypto.engines.Ccase(512)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$class, reason: invalid class name */
    public static class Cclass extends BaseBlockCipher {
        public Cclass() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new org.bouncycastle.crypto.engines.Ccase(128), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$const, reason: invalid class name */
    public static class Cconst extends BaseBlockCipher {
        public Cconst() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new org.bouncycastle.crypto.engines.Ccase(256), 256)), 256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$continue, reason: invalid class name */
    public static class Ccontinue extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccontinue() {
            super(new org.bouncycastle.crypto.macs.Ccase(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(128)), 128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$d */
    public static class d extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public d() {
            super(new org.bouncycastle.crypto.engines.Celse(128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$default, reason: invalid class name */
    public static class Cdefault extends BaseBlockCipher {
        public Cdefault() {
            super(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(128)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$do, reason: invalid class name */
    public static class Cdo extends Cnew {
        public Cdo() {
            super(128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$else, reason: invalid class name */
    public static class Celse extends BaseBlockCipher {
        public Celse() {
            super(new org.bouncycastle.crypto.modes.Cdo(new org.bouncycastle.crypto.engines.Ccase(256)), 256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$extends, reason: invalid class name */
    public static class Cextends extends BaseBlockCipher {
        public Cextends() {
            super(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$final, reason: invalid class name */
    public static class Cfinal extends BaseBlockCipher {
        public Cfinal() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cfor(new org.bouncycastle.crypto.engines.Ccase(512), 512)), 512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$finally, reason: invalid class name */
    public static class Cfinally extends BaseBlockCipher {
        public Cfinally() {
            super(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(512)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$for, reason: invalid class name */
    public static class Cfor extends Cnew {
        public Cfor() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$goto, reason: invalid class name and collision with other inner class name */
    public static class C0446goto extends BaseBlockCipher {
        public C0446goto() {
            super(new org.bouncycastle.crypto.modes.Cdo(new org.bouncycastle.crypto.engines.Ccase(512)), 512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$if, reason: invalid class name */
    public static class Cif extends Cnew {
        public Cif() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$implements, reason: invalid class name */
    public static class Cimplements extends BaseBlockCipher {
        public Cimplements() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cnative(new org.bouncycastle.crypto.engines.Ccase(128), 128)), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$import, reason: invalid class name */
    public static class Cimport extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$import$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new org.bouncycastle.crypto.engines.Ccase(128);
            }
        }

        public Cimport() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$instanceof, reason: invalid class name */
    public static class Cinstanceof extends BaseBlockCipher {
        public Cinstanceof() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cnative(new org.bouncycastle.crypto.engines.Ccase(256), 256)), 256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$interface, reason: invalid class name */
    public static class Cinterface extends Cprotected {
        public Cinterface() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$native, reason: invalid class name */
    public static class Cnative extends BaseBlockCipher {
        public Cnative() {
            super(new org.bouncycastle.crypto.engines.Ccase(128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {

        /* renamed from: new, reason: not valid java name */
        private final int f31434new;

        public Cnew(int i) {
            this.f31434new = i / 8;
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[this.f31434new];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("DSTU7624");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSTU7624 parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$package, reason: invalid class name */
    public static class Cpackage extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cpackage() {
            super(new org.bouncycastle.crypto.macs.Ccase(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(128)), 128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$private, reason: invalid class name */
    public static class Cprivate extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cprivate() {
            super(new org.bouncycastle.crypto.macs.Ccase(new org.bouncycastle.crypto.modes.Cthrow(new org.bouncycastle.crypto.engines.Ccase(256)), 256));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$protected, reason: invalid class name */
    public static class Cprotected extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cprotected() {
            this(256);
        }

        public Cprotected(int i) {
            super("DSTU7624", i, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$public, reason: invalid class name */
    public static class Cpublic extends BaseBlockCipher {
        public Cpublic() {
            super(new org.bouncycastle.crypto.engines.Ccase(256));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$return, reason: invalid class name */
    public static class Creturn extends BaseBlockCipher {
        public Creturn() {
            super(new org.bouncycastle.crypto.engines.Ccase(512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$static, reason: invalid class name */
    public static class Cstatic extends BaseBlockCipher {
        public Cstatic() {
            super(new org.bouncycastle.crypto.engines.Ccase(128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$strictfp, reason: invalid class name */
    public static class Cstrictfp extends Cprotected {
        public Cstrictfp() {
            super(128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$super, reason: invalid class name */
    public static class Csuper extends BaseBlockCipher {
        public Csuper() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Csuper(new org.bouncycastle.crypto.engines.Ccase(128))), 128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$switch, reason: invalid class name */
    public static class Cswitch extends BaseBlockCipher {
        public Cswitch() {
            super(new org.bouncycastle.crypto.engines.Ccase(256));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$synchronized, reason: invalid class name */
    public static class Csynchronized extends BaseBlockCipher {
        public Csynchronized() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Cnative(new org.bouncycastle.crypto.engines.Ccase(512), 512)), 512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$this, reason: invalid class name */
    public static class Cthis extends BaseBlockCipher {
        public Cthis() {
            super(new org.bouncycastle.crypto.modes.Cfinal(new org.bouncycastle.crypto.engines.Ccase(128)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$throw, reason: invalid class name */
    public static class Cthrow extends BaseBlockCipher {
        public Cthrow() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Csuper(new org.bouncycastle.crypto.engines.Ccase(256))), 256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$throws, reason: invalid class name */
    public static class Cthrows extends BaseBlockCipher {
        public Cthrows() {
            super(new org.bouncycastle.crypto.engines.Ccase(512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$transient, reason: invalid class name */
    public static class Ctransient extends org.bouncycastle.jcajce.provider.symmetric.Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31435do = Cgoto.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31435do;
            sb.append(str);
            sb.append("$AlgParams128");
            configurableProvider.addAlgorithm("AlgorithmParameters.DSTU7624", sb.toString());
            org.bouncycastle.asn1.Ccatch ccatch = UAObjectIdentifiers.dstu7624cbc_128;
            configurableProvider.addAlgorithm("AlgorithmParameters", ccatch, str + "$AlgParams");
            org.bouncycastle.asn1.Ccatch ccatch2 = UAObjectIdentifiers.dstu7624cbc_256;
            configurableProvider.addAlgorithm("AlgorithmParameters", ccatch2, str + "$AlgParams");
            org.bouncycastle.asn1.Ccatch ccatch3 = UAObjectIdentifiers.dstu7624cbc_512;
            configurableProvider.addAlgorithm("AlgorithmParameters", ccatch3, str + "$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.DSTU7624", str + "$AlgParamGen128");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator", ccatch, str + "$AlgParamGen128");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator", ccatch2, str + "$AlgParamGen256");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator", ccatch3, str + "$AlgParamGen512");
            configurableProvider.addAlgorithm("Cipher.DSTU7624", str + "$ECB_128");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-128", str + "$ECB_128");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-256", str + "$ECB_256");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-512", str + "$ECB_512");
            org.bouncycastle.asn1.Ccatch ccatch4 = UAObjectIdentifiers.dstu7624ecb_128;
            configurableProvider.addAlgorithm("Cipher", ccatch4, str + "$ECB128");
            org.bouncycastle.asn1.Ccatch ccatch5 = UAObjectIdentifiers.dstu7624ecb_256;
            configurableProvider.addAlgorithm("Cipher", ccatch5, str + "$ECB256");
            org.bouncycastle.asn1.Ccatch ccatch6 = UAObjectIdentifiers.dstu7624ecb_512;
            configurableProvider.addAlgorithm("Cipher", ccatch6, str + "$ECB512");
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC128");
            configurableProvider.addAlgorithm("Cipher", ccatch2, str + "$CBC256");
            configurableProvider.addAlgorithm("Cipher", ccatch3, str + "$CBC512");
            org.bouncycastle.asn1.Ccatch ccatch7 = UAObjectIdentifiers.dstu7624ofb_128;
            configurableProvider.addAlgorithm("Cipher", ccatch7, str + "$OFB128");
            org.bouncycastle.asn1.Ccatch ccatch8 = UAObjectIdentifiers.dstu7624ofb_256;
            configurableProvider.addAlgorithm("Cipher", ccatch8, str + "$OFB256");
            org.bouncycastle.asn1.Ccatch ccatch9 = UAObjectIdentifiers.dstu7624ofb_512;
            configurableProvider.addAlgorithm("Cipher", ccatch9, str + "$OFB512");
            org.bouncycastle.asn1.Ccatch ccatch10 = UAObjectIdentifiers.dstu7624cfb_128;
            configurableProvider.addAlgorithm("Cipher", ccatch10, str + "$CFB128");
            org.bouncycastle.asn1.Ccatch ccatch11 = UAObjectIdentifiers.dstu7624cfb_256;
            configurableProvider.addAlgorithm("Cipher", ccatch11, str + "$CFB256");
            org.bouncycastle.asn1.Ccatch ccatch12 = UAObjectIdentifiers.dstu7624cfb_512;
            configurableProvider.addAlgorithm("Cipher", ccatch12, str + "$CFB512");
            org.bouncycastle.asn1.Ccatch ccatch13 = UAObjectIdentifiers.dstu7624ctr_128;
            configurableProvider.addAlgorithm("Cipher", ccatch13, str + "$CTR128");
            org.bouncycastle.asn1.Ccatch ccatch14 = UAObjectIdentifiers.dstu7624ctr_256;
            configurableProvider.addAlgorithm("Cipher", ccatch14, str + "$CTR256");
            org.bouncycastle.asn1.Ccatch ccatch15 = UAObjectIdentifiers.dstu7624ctr_512;
            configurableProvider.addAlgorithm("Cipher", ccatch15, str + "$CTR512");
            org.bouncycastle.asn1.Ccatch ccatch16 = UAObjectIdentifiers.dstu7624ccm_128;
            configurableProvider.addAlgorithm("Cipher", ccatch16, str + "$CCM128");
            org.bouncycastle.asn1.Ccatch ccatch17 = UAObjectIdentifiers.dstu7624ccm_256;
            configurableProvider.addAlgorithm("Cipher", ccatch17, str + "$CCM256");
            org.bouncycastle.asn1.Ccatch ccatch18 = UAObjectIdentifiers.dstu7624ccm_512;
            configurableProvider.addAlgorithm("Cipher", ccatch18, str + "$CCM512");
            configurableProvider.addAlgorithm("Cipher.DSTU7624KW", str + "$Wrap");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624WRAP", "DSTU7624KW");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-128KW", str + "$Wrap128");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            org.bouncycastle.asn1.Ccatch ccatch19 = UAObjectIdentifiers.dstu7624kw_128;
            sb2.append(ccatch19.m32795super());
            configurableProvider.addAlgorithm(sb2.toString(), "DSTU7624-128KW");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624-128WRAP", "DSTU7624-128KW");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-256KW", str + "$Wrap256");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.Cipher.");
            org.bouncycastle.asn1.Ccatch ccatch20 = UAObjectIdentifiers.dstu7624kw_256;
            sb3.append(ccatch20.m32795super());
            configurableProvider.addAlgorithm(sb3.toString(), "DSTU7624-256KW");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624-256WRAP", "DSTU7624-256KW");
            configurableProvider.addAlgorithm("Cipher.DSTU7624-512KW", str + "$Wrap512");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Alg.Alias.Cipher.");
            org.bouncycastle.asn1.Ccatch ccatch21 = UAObjectIdentifiers.dstu7624kw_512;
            sb4.append(ccatch21.m32795super());
            configurableProvider.addAlgorithm(sb4.toString(), "DSTU7624-512KW");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.DSTU7624-512WRAP", "DSTU7624-512KW");
            configurableProvider.addAlgorithm("Mac.DSTU7624GMAC", str + "$GMAC");
            configurableProvider.addAlgorithm("Mac.DSTU7624-128GMAC", str + "$GMAC128");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Alg.Alias.Mac.");
            org.bouncycastle.asn1.Ccatch ccatch22 = UAObjectIdentifiers.dstu7624gmac_128;
            sb5.append(ccatch22.m32795super());
            configurableProvider.addAlgorithm(sb5.toString(), "DSTU7624-128GMAC");
            configurableProvider.addAlgorithm("Mac.DSTU7624-256GMAC", str + "$GMAC256");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Alg.Alias.Mac.");
            org.bouncycastle.asn1.Ccatch ccatch23 = UAObjectIdentifiers.dstu7624gmac_256;
            sb6.append(ccatch23.m32795super());
            configurableProvider.addAlgorithm(sb6.toString(), "DSTU7624-256GMAC");
            configurableProvider.addAlgorithm("Mac.DSTU7624-512GMAC", str + "$GMAC512");
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Alg.Alias.Mac.");
            org.bouncycastle.asn1.Ccatch ccatch24 = UAObjectIdentifiers.dstu7624gmac_512;
            sb7.append(ccatch24.m32795super());
            configurableProvider.addAlgorithm(sb7.toString(), "DSTU7624-512GMAC");
            configurableProvider.addAlgorithm("KeyGenerator.DSTU7624", str + "$KeyGen");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch19, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch20, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch21, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch4, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch5, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch6, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch2, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch3, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch7, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch8, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch9, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch10, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch11, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch12, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch13, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch14, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch15, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch16, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch17, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch18, str + "$KeyGen512");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch22, str + "$KeyGen128");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch23, str + "$KeyGen256");
            configurableProvider.addAlgorithm("KeyGenerator", ccatch24, str + "$KeyGen512");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "DSTU7624 IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$volatile, reason: invalid class name */
    public static class Cvolatile extends Cprotected {
        public Cvolatile() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.goto$while, reason: invalid class name */
    public static class Cwhile extends BaseBlockCipher {
        public Cwhile() {
            super(new org.bouncycastle.crypto.Cif(new org.bouncycastle.crypto.modes.Csuper(new org.bouncycastle.crypto.engines.Ccase(512))), 512);
        }
    }

    private Cgoto() {
    }
}
