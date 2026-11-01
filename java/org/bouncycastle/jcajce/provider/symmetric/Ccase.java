package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.bc1;
import android.support.v4.d6;
import android.support.v4.dr0;
import android.support.v4.f1;
import android.support.v4.gr0;
import android.support.v4.jl0;
import android.support.v4.ke;
import android.support.v4.n91;
import android.support.v4.rt;
import android.support.v4.tt;
import android.support.v4.ue;
import android.support.v4.ut;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {

        /* renamed from: case, reason: not valid java name */
        private int f31403case;

        /* renamed from: else, reason: not valid java name */
        private int f31404else;

        /* renamed from: for, reason: not valid java name */
        private boolean f31405for;

        /* renamed from: new, reason: not valid java name */
        private int f31406new;

        /* renamed from: try, reason: not valid java name */
        private int f31407try;

        public Cbreak(String str, org.bouncycastle.asn1.Ccatch ccatch, boolean z, int i, int i2, int i3, int i4) {
            super(str, ccatch);
            this.f31405for = z;
            this.f31406new = i;
            this.f31407try = i2;
            this.f31403case = i3;
            this.f31404else = i4;
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof PBEKeySpec)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
            if (pBEKeySpec.getSalt() != null) {
                CipherParameters cipherParametersM34886else = this.f31405for ? PBE.Cdo.m34886else(pBEKeySpec, this.f31406new, this.f31407try, this.f31403case, this.f31404else) : PBE.Cdo.m34891try(pBEKeySpec, this.f31406new, this.f31407try, this.f31403case);
                ut.m8637for((cipherParametersM34886else instanceof bc1 ? (gr0) ((bc1) cipherParametersM34886else).m515if() : (gr0) cipherParametersM34886else).m2770do());
                return new d6(this.f31525do, this.f31526if, this.f31406new, this.f31407try, this.f31403case, this.f31404else, pBEKeySpec, cipherParametersM34886else);
            }
            int i = this.f31406new;
            if (i == 0 || i == 4) {
                return new n91(pBEKeySpec.getPassword(), this.f31406new == 0 ? org.bouncycastle.crypto.Cnew.ASCII : org.bouncycastle.crypto.Cnew.UTF8);
            }
            return new d6(this.f31525do, this.f31526if, i, this.f31407try, this.f31403case, this.f31404else, pBEKeySpec, null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$case, reason: invalid class name and collision with other inner class name */
    public static class C0440case extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public C0440case() {
            super(new ke(new rt(), 64, new org.bouncycastle.crypto.paddings.Cif()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$catch, reason: invalid class name */
    public static class Ccatch extends BaseBlockCipher {
        public Ccatch() {
            super(new rt());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$class, reason: invalid class name */
    public static class Cclass extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {
        public Cclass() {
            super("DES", null);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            return keySpec instanceof DESKeySpec ? new SecretKeySpec(((DESKeySpec) keySpec).getKey(), "DES") : super.engineGenerateSecret(keySpec);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public KeySpec engineGetKeySpec(SecretKey secretKey, Class cls) throws InvalidKeySpecException {
            if (cls == null) {
                throw new InvalidKeySpecException("keySpec parameter is null");
            }
            if (secretKey == null) {
                throw new InvalidKeySpecException("key parameter is null");
            }
            if (SecretKeySpec.class.isAssignableFrom(cls)) {
                return new SecretKeySpec(secretKey.getEncoded(), this.f31525do);
            }
            if (!DESKeySpec.class.isAssignableFrom(cls)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            try {
                return new DESKeySpec(secretKey.getEncoded());
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$const, reason: invalid class name */
    public static class Cconst extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cconst() {
            super("DES", 64, new tt());
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cfor, javax.crypto.KeyGeneratorSpi
        public SecretKey engineGenerateKey() {
            if (this.f31517try) {
                this.f31516new.mo4915if(new dr0(org.bouncycastle.crypto.Cfor.m33599case(), this.f31514for));
                this.f31517try = false;
            }
            return new SecretKeySpec(this.f31516new.mo4914do(), this.f31513do);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cfor, javax.crypto.KeyGeneratorSpi
        public void engineInit(int i, SecureRandom secureRandom) {
            super.engineInit(i, secureRandom);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cdo {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
            byte[] bArr = new byte[8];
            if (this.f31500if == null) {
                this.f31500if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            this.f31500if.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParametersM34892do = m34892do("DES");
                algorithmParametersM34892do.init(new IvParameterSpec(bArr));
                return algorithmParametersM34892do;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DES parameter generation.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new jl0(new rt()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$final, reason: invalid class name */
    public static class Cfinal extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31408do = Ccase.class.getName();

        /* renamed from: if, reason: not valid java name */
        private static final String f31409if = "org.bouncycastle.jcajce.provider.symmetric";

        /* renamed from: if, reason: not valid java name */
        private void m34863if(ConfigurableProvider configurableProvider, org.bouncycastle.asn1.Ccatch ccatch, String str) {
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator." + ccatch.m32795super(), str);
            configurableProvider.addAlgorithm("Alg.Alias.KeyFactory." + ccatch.m32795super(), str);
        }

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31408do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.DES", sb.toString());
            org.bouncycastle.asn1.Ccatch ccatch = OIWObjectIdentifiers.desCBC;
            configurableProvider.addAlgorithm("Cipher", ccatch, str + "$CBC");
            m34863if(configurableProvider, ccatch, "DES");
            configurableProvider.addAlgorithm("Cipher.DESRFC3211WRAP", str + "$RFC3211");
            configurableProvider.addAlgorithm("KeyGenerator.DES", str + "$KeyGenerator");
            configurableProvider.addAlgorithm("SecretKeyFactory.DES", str + "$KeyFactory");
            configurableProvider.addAlgorithm("Mac.DESCMAC", str + "$CMAC");
            configurableProvider.addAlgorithm("Mac.DESMAC", str + "$CBCMAC");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DES", "DESMAC");
            configurableProvider.addAlgorithm("Mac.DESMAC/CFB8", str + "$DESCFB8");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DES/CFB8", "DESMAC/CFB8");
            configurableProvider.addAlgorithm("Mac.DESMAC64", str + "$DES64");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DES64", "DESMAC64");
            configurableProvider.addAlgorithm("Mac.DESMAC64WITHISO7816-4PADDING", str + "$DES64with7816d4");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DES64WITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DESISO9797ALG1MACWITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DESISO9797ALG1WITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
            configurableProvider.addAlgorithm("Mac.DESWITHISO9797", str + "$DES9797Alg3");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.DESISO9797MAC", "DESWITHISO9797");
            configurableProvider.addAlgorithm("Mac.ISO9797ALG3MAC", str + "$DES9797Alg3");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.ISO9797ALG3", "ISO9797ALG3MAC");
            configurableProvider.addAlgorithm("Mac.ISO9797ALG3WITHISO7816-4PADDING", str + "$DES9797Alg3with7816d4");
            configurableProvider.addAlgorithm("Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING", "ISO9797ALG3WITHISO7816-4PADDING");
            configurableProvider.addAlgorithm("AlgorithmParameters.DES", "org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters", ccatch, "DES");
            configurableProvider.addAlgorithm("AlgorithmParameterGenerator.DES", str + "$AlgParamGen");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch, "DES");
            configurableProvider.addAlgorithm("Cipher.PBEWITHMD2ANDDES", str + "$PBEWithMD2");
            configurableProvider.addAlgorithm("Cipher.PBEWITHMD5ANDDES", str + "$PBEWithMD5");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHA1ANDDES", str + "$PBEWithSHA1");
            org.bouncycastle.asn1.Ccatch ccatch2 = PKCSObjectIdentifiers.pbeWithMD2AndDES_CBC;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch2, "PBEWITHMD2ANDDES");
            org.bouncycastle.asn1.Ccatch ccatch3 = PKCSObjectIdentifiers.pbeWithMD5AndDES_CBC;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch3, "PBEWITHMD5ANDDES");
            org.bouncycastle.asn1.Ccatch ccatch4 = PKCSObjectIdentifiers.pbeWithSHA1AndDES_CBC;
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch4, "PBEWITHSHA1ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHMD2ANDDES-CBC", "PBEWITHMD2ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHMD5ANDDES-CBC", "PBEWITHMD5ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1ANDDES-CBC", "PBEWITHSHA1ANDDES");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHMD2ANDDES", str + "$PBEWithMD2KeyFactory");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHMD5ANDDES", str + "$PBEWithMD5KeyFactory");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHA1ANDDES", str + "$PBEWithSHA1KeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC", "PBEWITHMD2ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC", "PBEWITHMD5ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC", "PBEWITHSHA1ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch2, "PBEWITHMD2ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch3, "PBEWITHMD5ANDDES");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch4, "PBEWITHSHA1ANDDES");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new ke(new rt()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cgoto() {
            super(new jl0(new rt(), new org.bouncycastle.crypto.paddings.Cif()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {
        public Cif() {
            super(new org.bouncycastle.crypto.modes.Cdo(new rt()), 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$import, reason: invalid class name */
    public static class Cimport extends Cbreak {
        public Cimport() {
            super("PBEwithMD5andDES", PKCSObjectIdentifiers.pbeWithMD5AndDES_CBC, true, 0, 0, 64, 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$native, reason: invalid class name */
    public static class Cnative extends BaseBlockCipher {
        public Cnative() {
            super(new org.bouncycastle.crypto.modes.Cdo(new rt()), 0, 1, 64, 8);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new ue(new rt()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$public, reason: invalid class name */
    public static class Cpublic extends Cbreak {
        public Cpublic() {
            super("PBEwithSHA1andDES", PKCSObjectIdentifiers.pbeWithSHA1AndDES_CBC, true, 0, 1, 64, 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$return, reason: invalid class name */
    public static class Creturn extends org.bouncycastle.jcajce.provider.symmetric.util.Celse {
        public Creturn() {
            super(new org.bouncycastle.crypto.engines.Cimport(new rt()), 8);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$super, reason: invalid class name */
    public static class Csuper extends BaseBlockCipher {
        public Csuper() {
            super(new org.bouncycastle.crypto.modes.Cdo(new rt()), 0, 5, 64, 8);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cthis() {
            super(new org.bouncycastle.crypto.macs.Cdo(new rt()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$throw, reason: invalid class name */
    public static class Cthrow extends Cbreak {
        public Cthrow() {
            super("PBEwithMD2andDES", PKCSObjectIdentifiers.pbeWithMD2AndDES_CBC, true, 0, 5, 64, 64);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new ke(new rt(), 64));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.case$while, reason: invalid class name */
    public static class Cwhile extends BaseBlockCipher {
        public Cwhile() {
            super(new org.bouncycastle.crypto.modes.Cdo(new rt()), 0, 0, 64, 8);
        }
    }

    private Ccase() {
    }
}
