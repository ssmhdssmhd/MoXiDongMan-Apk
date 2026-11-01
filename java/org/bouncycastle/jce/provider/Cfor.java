package org.bouncycastle.jce.provider;

import android.support.v4.bc1;
import android.support.v4.d6;
import android.support.v4.e92;
import android.support.v4.gr0;
import android.support.v4.ij1;
import android.support.v4.mj1;
import android.support.v4.rt;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.wt;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.modes.Cnative;
import org.bouncycastle.jce.provider.BrokenPBE;

/* renamed from: org.bouncycastle.jce.provider.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements BrokenPBE {

    /* renamed from: case, reason: not valid java name */
    private int f31616case;

    /* renamed from: do, reason: not valid java name */
    private Class[] f31617do;

    /* renamed from: else, reason: not valid java name */
    private int f31618else;

    /* renamed from: for, reason: not valid java name */
    private bc1 f31619for;

    /* renamed from: goto, reason: not valid java name */
    private int f31620goto;

    /* renamed from: if, reason: not valid java name */
    private org.bouncycastle.crypto.Cif f31621if;

    /* renamed from: new, reason: not valid java name */
    private int f31622new;

    /* renamed from: this, reason: not valid java name */
    private AlgorithmParameters f31623this;

    /* renamed from: try, reason: not valid java name */
    private int f31624try;

    /* renamed from: org.bouncycastle.jce.provider.for$case, reason: invalid class name */
    public static class Ccase extends Cfor {
        public Ccase() {
            super(new org.bouncycastle.crypto.modes.Cdo(new e92()), 3, 1, 256, 128);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.for$do, reason: invalid class name */
    public static class Cdo extends Cfor {
        public Cdo() {
            super(new org.bouncycastle.crypto.modes.Cdo(new rt()), 0, 0, 64, 64);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0456for extends Cfor {
        public C0456for() {
            super(new org.bouncycastle.crypto.modes.Cdo(new wt()), 2, 1, 128, 64);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.for$if, reason: invalid class name */
    public static class Cif extends Cfor {
        public Cif() {
            super(new org.bouncycastle.crypto.modes.Cdo(new rt()), 0, 1, 64, 64);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.for$new, reason: invalid class name */
    public static class Cnew extends Cfor {
        public Cnew() {
            super(new org.bouncycastle.crypto.modes.Cdo(new wt()), 2, 1, 192, 64);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.for$try, reason: invalid class name */
    public static class Ctry extends Cfor {
        public Ctry() {
            super(new org.bouncycastle.crypto.modes.Cdo(new wt()), 3, 1, 192, 64);
        }
    }

    public Cfor(BlockCipher blockCipher) {
        this.f31617do = new Class[]{IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};
        this.f31622new = 2;
        this.f31624try = 1;
        this.f31620goto = 0;
        this.f31623this = null;
        this.f31621if = new org.bouncycastle.crypto.paddings.Cnew(blockCipher);
    }

    public Cfor(BlockCipher blockCipher, int i, int i2, int i3, int i4) {
        this.f31617do = new Class[]{IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};
        this.f31622new = 2;
        this.f31624try = 1;
        this.f31620goto = 0;
        this.f31623this = null;
        this.f31621if = new org.bouncycastle.crypto.paddings.Cnew(blockCipher);
        this.f31622new = i;
        this.f31624try = i2;
        this.f31616case = i3;
        this.f31618else = i4;
    }

    /* renamed from: break, reason: not valid java name */
    public void m35028break(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, IllegalArgumentException, InvalidAlgorithmParameterException {
        bc1 bc1Var;
        CipherParameters cipherParameters;
        CipherParameters cipherParameters2;
        CipherParameters gr0Var;
        if (key instanceof d6) {
            CipherParameters cipherParametersM34951for = BrokenPBE.Cdo.m34951for((d6) key, algorithmParameterSpec, this.f31622new, this.f31624try, this.f31621if.m33682new().getAlgorithmName(), this.f31616case, this.f31618else);
            cipherParameters2 = cipherParametersM34951for;
            if (this.f31618else != 0) {
                this.f31619for = (bc1) cipherParametersM34951for;
                cipherParameters2 = cipherParametersM34951for;
            }
        } else {
            if (algorithmParameterSpec == null) {
                gr0Var = new gr0(key.getEncoded());
            } else {
                if (algorithmParameterSpec instanceof IvParameterSpec) {
                    if (this.f31620goto != 0) {
                        bc1 bc1Var2 = new bc1(new gr0(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
                        this.f31619for = bc1Var2;
                        cipherParameters = bc1Var2;
                    } else {
                        gr0Var = new gr0(key.getEncoded());
                    }
                } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
                    RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
                    CipherParameters ij1Var = new ij1(key.getEncoded(), rC2ParameterSpec.getEffectiveKeyBits());
                    cipherParameters = ij1Var;
                    if (rC2ParameterSpec.getIV() != null) {
                        cipherParameters = ij1Var;
                        if (this.f31620goto != 0) {
                            bc1Var = new bc1(ij1Var, rC2ParameterSpec.getIV());
                            this.f31619for = bc1Var;
                            cipherParameters2 = bc1Var;
                        }
                    }
                } else {
                    if (!(algorithmParameterSpec instanceof RC5ParameterSpec)) {
                        throw new InvalidAlgorithmParameterException("unknown parameter type.");
                    }
                    RC5ParameterSpec rC5ParameterSpec = (RC5ParameterSpec) algorithmParameterSpec;
                    CipherParameters mj1Var = new mj1(key.getEncoded(), rC5ParameterSpec.getRounds());
                    if (rC5ParameterSpec.getWordSize() != 32) {
                        throw new IllegalArgumentException("can only accept RC5 word size 32 (at the moment...)");
                    }
                    cipherParameters = mj1Var;
                    if (rC5ParameterSpec.getIV() != null) {
                        cipherParameters = mj1Var;
                        if (this.f31620goto != 0) {
                            bc1Var = new bc1(mj1Var, rC5ParameterSpec.getIV());
                            this.f31619for = bc1Var;
                            cipherParameters2 = bc1Var;
                        }
                    }
                }
                cipherParameters2 = cipherParameters;
            }
            cipherParameters2 = gr0Var;
        }
        CipherParameters cipherParameters3 = cipherParameters2;
        if (this.f31620goto != 0) {
            boolean z = cipherParameters2 instanceof bc1;
            cipherParameters3 = cipherParameters2;
            if (!z) {
                if (secureRandom == null) {
                    secureRandom = org.bouncycastle.crypto.Cfor.m33599case();
                }
                if (i != 1 && i != 3) {
                    throw new InvalidAlgorithmParameterException("no IV set when one expected");
                }
                byte[] bArr = new byte[this.f31620goto];
                secureRandom.nextBytes(bArr);
                bc1 bc1Var3 = new bc1(cipherParameters2, bArr);
                this.f31619for = bc1Var3;
                cipherParameters3 = bc1Var3;
            }
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        System.out.println("eeek!");
                        return;
                    }
                }
            }
            this.f31621if.mo7550case(false, cipherParameters3);
            return;
        }
        this.f31621if.mo7550case(true, cipherParameters3);
    }

    /* renamed from: case, reason: not valid java name */
    public int m35029case(int i) {
        return this.f31621if.mo7553for(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m35030catch(String str) throws NumberFormatException {
        org.bouncycastle.crypto.paddings.Cnew cnew;
        org.bouncycastle.crypto.paddings.Cnew cnew2;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("ECB")) {
            this.f31620goto = 0;
            cnew = new org.bouncycastle.crypto.paddings.Cnew(this.f31621if.m33682new());
        } else if (strM36356final.equals("CBC")) {
            this.f31620goto = this.f31621if.m33682new().getBlockSize();
            cnew = new org.bouncycastle.crypto.paddings.Cnew(new org.bouncycastle.crypto.modes.Cdo(this.f31621if.m33682new()));
        } else if (strM36356final.startsWith("OFB")) {
            this.f31620goto = this.f31621if.m33682new().getBlockSize();
            if (strM36356final.length() != 3) {
                cnew2 = new org.bouncycastle.crypto.paddings.Cnew(new Cnative(this.f31621if.m33682new(), Integer.parseInt(strM36356final.substring(3))));
                this.f31621if = cnew2;
                return;
            }
            cnew = new org.bouncycastle.crypto.paddings.Cnew(new Cnative(this.f31621if.m33682new(), this.f31621if.m33681if() * 8));
        } else {
            if (!strM36356final.startsWith("CFB")) {
                throw new IllegalArgumentException("can't support mode " + str);
            }
            this.f31620goto = this.f31621if.m33682new().getBlockSize();
            if (strM36356final.length() != 3) {
                cnew2 = new org.bouncycastle.crypto.paddings.Cnew(new org.bouncycastle.crypto.modes.Cfor(this.f31621if.m33682new(), Integer.parseInt(strM36356final.substring(3))));
                this.f31621if = cnew2;
                return;
            }
            cnew = new org.bouncycastle.crypto.paddings.Cnew(new org.bouncycastle.crypto.modes.Cfor(this.f31621if.m33682new(), this.f31621if.m33681if() * 8));
        }
        this.f31621if = cnew;
    }

    /* renamed from: class, reason: not valid java name */
    public void m35031class(String str) throws NoSuchPaddingException {
        org.bouncycastle.crypto.Cif cnew;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NOPADDING")) {
            cnew = new org.bouncycastle.crypto.Cif(this.f31621if.m33682new());
        } else if (strM36356final.equals("PKCS5PADDING") || strM36356final.equals("PKCS7PADDING") || strM36356final.equals("ISO10126PADDING")) {
            cnew = new org.bouncycastle.crypto.paddings.Cnew(this.f31621if.m33682new());
        } else {
            if (!strM36356final.equals("WITHCTS")) {
                throw new NoSuchPaddingException("Padding " + str + " unknown.");
            }
            cnew = new org.bouncycastle.crypto.modes.Cnew(this.f31621if.m33682new());
        }
        this.f31621if = cnew;
    }

    /* renamed from: const, reason: not valid java name */
    public Key m35032const(byte[] bArr, String str, int i) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        try {
            byte[] bArrM35038if = m35038if(bArr, 0, bArr.length);
            if (i == 3) {
                return new SecretKeySpec(bArrM35038if, str);
            }
            try {
                KeyFactory keyFactory = KeyFactory.getInstance(str, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME);
                if (i == 1) {
                    return keyFactory.generatePublic(new X509EncodedKeySpec(bArrM35038if));
                }
                if (i == 2) {
                    return keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrM35038if));
                }
                throw new InvalidKeyException("Unknown key type " + i);
            } catch (NoSuchAlgorithmException e) {
                throw new InvalidKeyException("Unknown key type " + e.getMessage());
            } catch (NoSuchProviderException e2) {
                throw new InvalidKeyException("Unknown key type " + e2.getMessage());
            } catch (InvalidKeySpecException e3) {
                throw new InvalidKeyException("Unknown key type " + e3.getMessage());
            }
        } catch (BadPaddingException e4) {
            throw new InvalidKeyException(e4.getMessage());
        } catch (IllegalBlockSizeException e5) {
            throw new InvalidKeyException(e5.getMessage());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m35033do(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException {
        int iMo7554goto = i2 != 0 ? this.f31621if.mo7554goto(bArr, i, i2, bArr2, i3) : 0;
        try {
            return iMo7554goto + this.f31621if.mo7551do(bArr2, i3 + iMo7554goto);
        } catch (tn0 e) {
            throw new BadPaddingException(e.getMessage());
        } catch (tw e2) {
            throw new IllegalBlockSizeException(e2.getMessage());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public AlgorithmParameters m35034else() throws NoSuchAlgorithmException, IOException, NoSuchProviderException {
        if (this.f31623this == null && this.f31619for != null) {
            String algorithmName = this.f31621if.m33682new().getAlgorithmName();
            if (algorithmName.indexOf(47) >= 0) {
                algorithmName = algorithmName.substring(0, algorithmName.indexOf(47));
            }
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(algorithmName, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME);
                this.f31623this = algorithmParameters;
                algorithmParameters.init(this.f31619for.m514do());
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f31623this;
    }

    /* renamed from: final, reason: not valid java name */
    public int m35035final(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        return this.f31621if.mo7554goto(bArr, i, i2, bArr2, i3);
    }

    /* renamed from: for, reason: not valid java name */
    public int m35036for() {
        return this.f31621if.m33681if();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m35037goto(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, IllegalArgumentException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec = null;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (true) {
                Class[] clsArr = this.f31617do;
                if (i2 == clsArr.length) {
                    break;
                }
                try {
                    parameterSpec = algorithmParameters.getParameterSpec(clsArr[i2]);
                    break;
                } catch (Exception unused) {
                    i2++;
                }
            }
            if (parameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        }
        this.f31623this = algorithmParameters;
        m35028break(i, key, parameterSpec, secureRandom);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m35038if(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArr2 = new byte[m35029case(i2)];
        int iMo7554goto = i2 != 0 ? this.f31621if.mo7554goto(bArr, i, i2, bArr2, 0) : 0;
        try {
            int iMo7551do = iMo7554goto + this.f31621if.mo7551do(bArr2, iMo7554goto);
            byte[] bArr3 = new byte[iMo7551do];
            System.arraycopy(bArr2, 0, bArr3, 0, iMo7551do);
            return bArr3;
        } catch (tn0 e) {
            throw new BadPaddingException(e.getMessage());
        } catch (tw e2) {
            throw new IllegalBlockSizeException(e2.getMessage());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m35039new() {
        bc1 bc1Var = this.f31619for;
        if (bc1Var != null) {
            return bc1Var.m514do();
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public byte[] m35040super(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        int iMo7556try = this.f31621if.mo7556try(i2);
        if (iMo7556try <= 0) {
            this.f31621if.mo7554goto(bArr, i, i2, null, 0);
            return null;
        }
        byte[] bArr2 = new byte[iMo7556try];
        this.f31621if.mo7554goto(bArr, i, i2, bArr2, 0);
        return bArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public void m35041this(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException, IllegalArgumentException {
        try {
            m35028break(i, key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public byte[] m35042throw(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            return m35038if(encoded, 0, encoded.length);
        } catch (BadPaddingException e) {
            throw new IllegalBlockSizeException(e.getMessage());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m35043try(Key key) {
        return key.getEncoded().length;
    }
}
