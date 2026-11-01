package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.a7;
import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.kk1;
import android.support.v4.qy0;
import android.support.v4.t00;
import android.support.v4.tn0;
import android.support.v4.w5;
import androidx.exifinterface.media.ExifInterface;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.engines.Creturn;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cfor;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends org.bouncycastle.jcajce.provider.asymmetric.util.Cfor {

    /* renamed from: break, reason: not valid java name */
    private AlgorithmParameters f31230break;

    /* renamed from: catch, reason: not valid java name */
    private boolean f31231catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f31232class;

    /* renamed from: const, reason: not valid java name */
    private Cfor.Cif f31233const;

    /* renamed from: else, reason: not valid java name */
    private final JcaJceHelper f31234else;

    /* renamed from: goto, reason: not valid java name */
    private AsymmetricBlockCipher f31235goto;

    /* renamed from: this, reason: not valid java name */
    private AlgorithmParameterSpec f31236this;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try$case, reason: invalid class name */
    public static class Ccase extends Ctry {
        public Ccase() {
            super(true, false, new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try$do, reason: invalid class name */
    public static class Cdo extends Ctry {
        public Cdo() {
            super(new org.bouncycastle.crypto.encodings.Cdo(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super(OAEPParameterSpec.DEFAULT);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super(new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        public Cnew() {
            super(new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0425try extends Ctry {
        public C0425try() {
            super(false, true, new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    public Ctry(OAEPParameterSpec oAEPParameterSpec) {
        this.f31234else = new w5();
        this.f31231catch = false;
        this.f31232class = false;
        this.f31233const = new Cfor.Cif();
        try {
            m34723for(oAEPParameterSpec);
        } catch (NoSuchPaddingException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public Ctry(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f31234else = new w5();
        this.f31231catch = false;
        this.f31232class = false;
        this.f31233const = new Cfor.Cif();
        this.f31235goto = asymmetricBlockCipher;
    }

    public Ctry(boolean z, boolean z2, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f31234else = new w5();
        this.f31231catch = false;
        this.f31232class = false;
        this.f31233const = new Cfor.Cif();
        this.f31231catch = z;
        this.f31232class = z2;
        this.f31235goto = asymmetricBlockCipher;
    }

    /* renamed from: for, reason: not valid java name */
    private void m34723for(OAEPParameterSpec oAEPParameterSpec) throws NoSuchPaddingException {
        MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
        Digest digestM7670do = t00.m7670do(mGF1ParameterSpec.getDigestAlgorithm());
        if (digestM7670do != null) {
            this.f31235goto = new org.bouncycastle.crypto.encodings.Cif(new Creturn(), digestM7670do, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
            this.f31236this = oAEPParameterSpec;
        } else {
            throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
        }
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m34724if() throws BadPaddingException {
        try {
            try {
                return this.f31235goto.processBlock(this.f31233const.m34746if(), 0, this.f31233const.size());
            } catch (tn0 e) {
                throw new a7("unable to decrypt block", e);
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new a7("unable to decrypt block", e2);
            }
        } finally {
            this.f31233const.m34745do();
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        if (engineGetOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (bArr != null) {
            this.f31233const.write(bArr, i, i2);
        }
        if (this.f31235goto instanceof Creturn) {
            if (this.f31233const.size() > this.f31235goto.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
            }
        } else if (this.f31233const.size() > this.f31235goto.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        byte[] bArrM34724if = m34724if();
        for (int i4 = 0; i4 != bArrM34724if.length; i4++) {
            bArr2[i3 + i4] = bArrM34724if[i4];
        }
        return bArrM34724if.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        if (bArr != null) {
            this.f31233const.write(bArr, i, i2);
        }
        if (this.f31235goto instanceof Creturn) {
            if (this.f31233const.size() > this.f31235goto.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
            }
        } else if (this.f31233const.size() > this.f31235goto.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        return m34724if();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        try {
            return this.f31235goto.getInputBlockSize();
        } catch (NullPointerException unused) {
            throw new IllegalStateException("RSA Cipher not initialised");
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        BigInteger modulus;
        if (key instanceof RSAPrivateKey) {
            modulus = ((RSAPrivateKey) key).getModulus();
        } else {
            if (!(key instanceof RSAPublicKey)) {
                throw new IllegalArgumentException("not an RSA key!");
            }
            modulus = ((RSAPublicKey) key).getModulus();
        }
        return modulus.bitLength();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        try {
            return this.f31235goto.getOutputBlockSize();
        } catch (NullPointerException unused) {
            throw new IllegalStateException("RSA Cipher not initialised");
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f31230break == null && this.f31236this != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.f31234else.createAlgorithmParameters("OAEP");
                this.f31230break = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.f31236this);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f31230break;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(OAEPParameterSpec.class);
            } catch (InvalidParameterSpecException e) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e.toString(), e);
            }
        } else {
            parameterSpec = null;
        }
        this.f31230break = algorithmParameters;
        engineInit(i, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException("Eeeek! " + e.toString(), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v26, types: [android.support.v4.cc1] */
    /* JADX WARN: Type inference failed for: r8v27, types: [android.support.v4.cc1] */
    /* JADX WARN: Type inference failed for: r8v9, types: [android.support.v4.cc1] */
    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        ck1 ck1VarM4430for;
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof OAEPParameterSpec)) {
            throw new InvalidAlgorithmParameterException("unknown parameter type: " + algorithmParameterSpec.getClass().getName());
        }
        if (key instanceof RSAPublicKey) {
            if (this.f31232class && i == 1) {
                throw new InvalidKeyException("mode 1 requires RSAPrivateKey");
            }
            ck1VarM4430for = kk1.m4432new((RSAPublicKey) key);
        } else {
            if (!(key instanceof RSAPrivateKey)) {
                throw new InvalidKeyException("unknown key type passed to RSA");
            }
            if (this.f31231catch && i == 1) {
                throw new InvalidKeyException("mode 2 requires RSAPublicKey");
            }
            ck1VarM4430for = kk1.m4430for((RSAPrivateKey) key);
        }
        if (algorithmParameterSpec != null) {
            OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameterSpec;
            this.f31236this = algorithmParameterSpec;
            if (!oAEPParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1") && !oAEPParameterSpec.getMGFAlgorithm().equals(PKCSObjectIdentifiers.id_mgf1.m32795super())) {
                throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
            }
            if (!(oAEPParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unkown MGF parameters");
            }
            Digest digestM7670do = t00.m7670do(oAEPParameterSpec.getDigestAlgorithm());
            if (digestM7670do == null) {
                throw new InvalidAlgorithmParameterException("no match on digest algorithm: " + oAEPParameterSpec.getDigestAlgorithm());
            }
            MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
            Digest digestM7670do2 = t00.m7670do(mGF1ParameterSpec.getDigestAlgorithm());
            if (digestM7670do2 == null) {
                throw new InvalidAlgorithmParameterException("no match on MGF digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
            }
            this.f31235goto = new org.bouncycastle.crypto.encodings.Cif(new Creturn(), digestM7670do, digestM7670do2, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
        }
        if (!(this.f31235goto instanceof Creturn)) {
            ck1VarM4430for = secureRandom != null ? new cc1(ck1VarM4430for, secureRandom) : new cc1(ck1VarM4430for, org.bouncycastle.crypto.Cfor.m33599case());
        }
        this.f31233const.reset();
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new InvalidParameterException("unknown opmode " + i + " passed to RSA");
                    }
                }
            }
            this.f31235goto.init(false, ck1VarM4430for);
            return;
        }
        this.f31235goto.init(true, ck1VarM4430for);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NONE") || strM36356final.equals("ECB")) {
            return;
        }
        if (strM36356final.equals("1")) {
            this.f31232class = true;
            this.f31231catch = false;
        } else if (strM36356final.equals(ExifInterface.GPS_MEASUREMENT_2D)) {
            this.f31232class = false;
            this.f31231catch = true;
        } else {
            throw new NoSuchAlgorithmException("can't support mode " + str);
        }
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        OAEPParameterSpec oAEPParameterSpec;
        AsymmetricBlockCipher cdo;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NOPADDING")) {
            cdo = new Creturn();
        } else if (strM36356final.equals("PKCS1PADDING")) {
            cdo = new org.bouncycastle.crypto.encodings.Cfor(new Creturn());
        } else {
            if (!strM36356final.equals("ISO9796-1PADDING")) {
                if (strM36356final.equals("OAEPWITHMD5ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("MD5", "MGF1", new MGF1ParameterSpec("MD5"), PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPPADDING") || strM36356final.equals("OAEPWITHSHA1ANDMGF1PADDING") || strM36356final.equals("OAEPWITHSHA-1ANDMGF1PADDING")) {
                    oAEPParameterSpec = OAEPParameterSpec.DEFAULT;
                } else if (strM36356final.equals("OAEPWITHSHA224ANDMGF1PADDING") || strM36356final.equals("OAEPWITHSHA-224ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec(qy0.f5542else, "MGF1", new MGF1ParameterSpec(qy0.f5542else), PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPWITHSHA256ANDMGF1PADDING") || strM36356final.equals("OAEPWITHSHA-256ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPWITHSHA384ANDMGF1PADDING") || strM36356final.equals("OAEPWITHSHA-384ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec(qy0.f5544this, "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPWITHSHA512ANDMGF1PADDING") || strM36356final.equals("OAEPWITHSHA-512ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPWITHSHA3-224ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPWITHSHA3-256ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-256", "MGF1", new MGF1ParameterSpec("SHA3-256"), PSource.PSpecified.DEFAULT);
                } else if (strM36356final.equals("OAEPWITHSHA3-384ANDMGF1PADDING")) {
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), PSource.PSpecified.DEFAULT);
                } else {
                    if (!strM36356final.equals("OAEPWITHSHA3-512ANDMGF1PADDING")) {
                        throw new NoSuchPaddingException(str + " unavailable with RSA.");
                    }
                    oAEPParameterSpec = new OAEPParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), PSource.PSpecified.DEFAULT);
                }
                m34723for(oAEPParameterSpec);
                return;
            }
            cdo = new org.bouncycastle.crypto.encodings.Cdo(new Creturn());
        }
        this.f31235goto = cdo;
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f31233const.write(bArr, i, i2);
        if (this.f31235goto instanceof Creturn) {
            if (this.f31233const.size() <= this.f31235goto.getInputBlockSize() + 1) {
                return 0;
            }
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        if (this.f31233const.size() <= this.f31235goto.getInputBlockSize()) {
            return 0;
        }
        throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.f31233const.write(bArr, i, i2);
        if (this.f31235goto instanceof Creturn) {
            if (this.f31233const.size() <= this.f31235goto.getInputBlockSize() + 1) {
                return null;
            }
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        if (this.f31233const.size() <= this.f31235goto.getInputBlockSize()) {
            return null;
        }
        throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
    }
}
