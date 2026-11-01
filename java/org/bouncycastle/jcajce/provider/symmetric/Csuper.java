package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.d6;
import android.support.v4.f1;
import android.support.v4.hn0;
import android.support.v4.p91;
import android.support.v4.q91;
import android.support.v4.t91;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.KeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper {

    /* renamed from: do, reason: not valid java name */
    private static final Map f31447do;

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$break, reason: invalid class name */
    public static class Cbreak extends Cif {
        public Cbreak() {
            super("PBKDF2", 5, 11);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$case, reason: invalid class name */
    public static class Ccase extends Cif {
        public Ccase() {
            super("PBKDF2", 5, 7);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$catch, reason: invalid class name */
    public static class Ccatch extends Cif {
        public Ccatch() {
            super("PBKDF2", 5, 12);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$class, reason: invalid class name */
    public static class Cclass extends Cif {
        public Cclass() {
            super("PBKDF2", 5, 13);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$const, reason: invalid class name */
    public static class Cconst extends Cif {
        public Cconst() {
            super("PBKDF2", 5, 9);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        public t91 f31448do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return this.f31448do.m32764do(ASN1Encoding.DER);
            } catch (IOException e) {
                throw new RuntimeException("Oooops! " + e.toString());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (m34897do(str)) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PBKDF2 PBE parameters algorithm parameters object");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31448do = new t91(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            this.f31448do = t91.m7786new(org.bouncycastle.asn1.Cfinal.m33015else(bArr));
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!m34897do(str)) {
                throw new IOException("Unknown parameters format in PBKDF2 parameters object");
            }
            engineInit(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "PBKDF2 Parameters";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == PBEParameterSpec.class) {
                return new PBEParameterSpec(this.f31448do.m7789goto(), this.f31448do.m7791try().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PBKDF2 PBE parameters object.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$else, reason: invalid class name */
    public static class Celse extends Cif {
        public Celse() {
            super("PBKDF2", 5, 4);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$final, reason: invalid class name */
    public static class Cfinal extends Cif {
        public Cfinal() {
            super("PBKDF2", 5);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$for, reason: invalid class name */
    public static class Cfor extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31449do = Csuper.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31449do;
            sb.append(str);
            sb.append("$AlgParams");
            configurableProvider.addAlgorithm("AlgorithmParameters.PBKDF2", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.AlgorithmParameters.");
            org.bouncycastle.asn1.Ccatch ccatch = PKCSObjectIdentifiers.id_PBKDF2;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), "PBKDF2");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2", str + "$PBKDF2withUTF8");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBKDF2WITHHMACSHA1", "PBKDF2");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBKDF2WITHHMACSHA1ANDUTF8", "PBKDF2");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch, "PBKDF2");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHASCII", str + "$PBKDF2with8BIT");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBKDF2WITH8BIT", "PBKDF2WITHASCII");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBKDF2WITHHMACSHA1AND8BIT", "PBKDF2WITHASCII");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA224", str + "$PBKDF2withSHA224");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA256", str + "$PBKDF2withSHA256");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA384", str + "$PBKDF2withSHA384");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA512", str + "$PBKDF2withSHA512");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA3-224", str + "$PBKDF2withSHA3_224");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA3-256", str + "$PBKDF2withSHA3_256");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA3-384", str + "$PBKDF2withSHA3_384");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACSHA3-512", str + "$PBKDF2withSHA3_512");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF2WITHHMACGOST3411", str + "$PBKDF2withGOST3411");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$goto, reason: invalid class name */
    public static class Cgoto extends Cif {
        public Cgoto() {
            super("PBKDF2", 5, 8);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {

        /* renamed from: for, reason: not valid java name */
        private int f31450for;

        /* renamed from: new, reason: not valid java name */
        private int f31451new;

        public Cif(String str, int i) {
            this(str, i, 1);
        }

        public Cif(String str, int i, int i2) {
            super(str, PKCSObjectIdentifiers.id_PBKDF2);
            this.f31450for = i;
            this.f31451new = i2;
        }

        /* renamed from: do, reason: not valid java name */
        private int m34874do(org.bouncycastle.asn1.Ccatch ccatch) throws InvalidKeySpecException {
            Integer num = (Integer) Csuper.f31447do.get(ccatch);
            if (num != null) {
                return num.intValue();
            }
            throw new InvalidKeySpecException("Invalid KeySpec: unknown PRF algorithm " + ccatch);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof PBEKeySpec)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
            if (pBEKeySpec.getSalt() == null) {
                return new p91(pBEKeySpec.getPassword(), this.f31450for == 1 ? org.bouncycastle.crypto.Cnew.ASCII : org.bouncycastle.crypto.Cnew.UTF8);
            }
            if (pBEKeySpec.getIterationCount() <= 0) {
                throw new InvalidKeySpecException("positive iteration count required: " + pBEKeySpec.getIterationCount());
            }
            if (pBEKeySpec.getKeyLength() <= 0) {
                throw new InvalidKeySpecException("positive key length required: " + pBEKeySpec.getKeyLength());
            }
            if (pBEKeySpec.getPassword().length == 0) {
                throw new IllegalArgumentException("password empty");
            }
            if (pBEKeySpec instanceof q91) {
                int iM34874do = m34874do(((q91) pBEKeySpec).m6447do().m420new());
                int keyLength = pBEKeySpec.getKeyLength();
                return new d6(this.f31525do, this.f31526if, this.f31450for, iM34874do, keyLength, -1, pBEKeySpec, PBE.Cdo.m34891try(pBEKeySpec, this.f31450for, iM34874do, keyLength));
            }
            int i = this.f31451new;
            int keyLength2 = pBEKeySpec.getKeyLength();
            return new d6(this.f31525do, this.f31526if, this.f31450for, i, keyLength2, -1, pBEKeySpec, PBE.Cdo.m34891try(pBEKeySpec, this.f31450for, i, keyLength2));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$new, reason: invalid class name */
    public static class Cnew extends Cif {
        public Cnew() {
            super("PBKDF2", 1);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$this, reason: invalid class name */
    public static class Cthis extends Cif {
        public Cthis() {
            super("PBKDF2", 5, 10);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.super$try, reason: invalid class name */
    public static class Ctry extends Cif {
        public Ctry() {
            super("PBKDF2", 5, 6);
        }
    }

    static {
        HashMap map = new HashMap();
        f31447do = map;
        map.put(CryptoProObjectIdentifiers.gostR3411Hmac, hn0.m3072for(6));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA1, hn0.m3072for(1));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA256, hn0.m3072for(4));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA224, hn0.m3072for(7));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA384, hn0.m3072for(8));
        map.put(PKCSObjectIdentifiers.id_hmacWithSHA512, hn0.m3072for(9));
        map.put(NISTObjectIdentifiers.id_hmacWithSHA3_256, hn0.m3072for(11));
        map.put(NISTObjectIdentifiers.id_hmacWithSHA3_224, hn0.m3072for(10));
        map.put(NISTObjectIdentifiers.id_hmacWithSHA3_384, hn0.m3072for(12));
        map.put(NISTObjectIdentifiers.id_hmacWithSHA3_512, hn0.m3072for(13));
    }

    private Csuper() {
    }
}
