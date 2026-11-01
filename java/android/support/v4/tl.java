package android.support.v4;

import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cfor;
import org.bouncycastle.jce.interfaces.ElGamalKey;

/* loaded from: classes3.dex */
public class tl extends Cfor {

    /* renamed from: break, reason: not valid java name */
    private Cfor.Cif f6606break = new Cfor.Cif();

    /* renamed from: else, reason: not valid java name */
    private AsymmetricBlockCipher f6607else;

    /* renamed from: goto, reason: not valid java name */
    private AlgorithmParameterSpec f6608goto;

    /* renamed from: this, reason: not valid java name */
    private AlgorithmParameters f6609this;

    /* renamed from: android.support.v4.tl$do, reason: invalid class name */
    public static class Cdo extends tl {
        public Cdo() {
            super(new e60());
        }
    }

    /* renamed from: android.support.v4.tl$if, reason: invalid class name */
    public static class Cif extends tl {
        public Cif() {
            super(new org.bouncycastle.crypto.encodings.Cfor(new e60()));
        }
    }

    public tl(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f6607else = asymmetricBlockCipher;
    }

    /* renamed from: for, reason: not valid java name */
    private void m7990for(OAEPParameterSpec oAEPParameterSpec) throws NoSuchPaddingException {
        MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
        Digest digestM7670do = t00.m7670do(mGF1ParameterSpec.getDigestAlgorithm());
        if (digestM7670do != null) {
            this.f6607else = new org.bouncycastle.crypto.encodings.Cif(new e60(), digestM7670do, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
            this.f6608goto = oAEPParameterSpec;
        } else {
            throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
        }
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m7991if() throws BadPaddingException {
        try {
            try {
                return this.f6607else.processBlock(this.f6606break.m34746if(), 0, this.f6606break.size());
            } catch (tn0 e) {
                throw new a7("unable to decrypt block", e);
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new a7("unable to decrypt block", e2);
            }
        } finally {
            this.f6606break.m34745do();
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        if (engineGetOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (bArr != null) {
            this.f6606break.write(bArr, i, i2);
        }
        if (this.f6607else instanceof e60) {
            if (this.f6606break.size() > this.f6607else.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
            }
        } else if (this.f6606break.size() > this.f6607else.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
        }
        byte[] bArrM7991if = m7991if();
        for (int i4 = 0; i4 != bArrM7991if.length; i4++) {
            bArr2[i3 + i4] = bArrM7991if[i4];
        }
        return bArrM7991if.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        if (bArr != null) {
            this.f6606break.write(bArr, i, i2);
        }
        if (this.f6607else instanceof e60) {
            if (this.f6606break.size() > this.f6607else.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
            }
        } else if (this.f6606break.size() > this.f6607else.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for ElGamal block");
        }
        return m7991if();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return this.f6607else.getInputBlockSize();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        BigInteger p;
        if (key instanceof ElGamalKey) {
            p = ((ElGamalKey) key).getParameters().m4265if();
        } else {
            if (!(key instanceof DHKey)) {
                throw new IllegalArgumentException("not an ElGamal key!");
            }
            p = ((DHKey) key).getParams().getP();
        }
        return p.bitLength();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return this.f6607else.getOutputBlockSize();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f6609this == null && this.f6608goto != null) {
            try {
                AlgorithmParameters algorithmParametersM34744do = m34744do("OAEP");
                this.f6609this = algorithmParametersM34744do;
                algorithmParametersM34744do.init(this.f6608goto);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f6609this;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("can't handle parameters in ElGamal");
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException("Eeeek! " + e.toString(), e);
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters cipherParametersM6420do;
        AsymmetricBlockCipher asymmetricBlockCipher;
        if (key instanceof DHPublicKey) {
            cipherParametersM6420do = q60.m6421if((PublicKey) key);
        } else {
            if (!(key instanceof DHPrivateKey)) {
                throw new InvalidKeyException("unknown key type passed to ElGamal");
            }
            cipherParametersM6420do = q60.m6420do((PrivateKey) key);
        }
        if (algorithmParameterSpec instanceof OAEPParameterSpec) {
            OAEPParameterSpec oAEPParameterSpec = (OAEPParameterSpec) algorithmParameterSpec;
            this.f6608goto = algorithmParameterSpec;
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
            this.f6607else = new org.bouncycastle.crypto.encodings.Cif(new e60(), digestM7670do, digestM7670do2, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
        } else if (algorithmParameterSpec != null) {
            throw new InvalidAlgorithmParameterException("unknown parameter type.");
        }
        if (secureRandom != null) {
            cipherParametersM6420do = new cc1(cipherParametersM6420do, secureRandom);
        }
        boolean z = true;
        if (i == 1) {
            asymmetricBlockCipher = this.f6607else;
        } else {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new InvalidParameterException("unknown opmode " + i + " passed to ElGamal");
                    }
                }
                asymmetricBlockCipher = this.f6607else;
            }
            asymmetricBlockCipher = this.f6607else;
            z = false;
        }
        asymmetricBlockCipher.init(z, cipherParametersM6420do);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NONE") || strM36356final.equals("ECB")) {
            return;
        }
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cfor, javax.crypto.CipherSpi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        OAEPParameterSpec oAEPParameterSpec;
        AsymmetricBlockCipher cdo;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NOPADDING")) {
            cdo = new e60();
        } else if (strM36356final.equals("PKCS1PADDING")) {
            cdo = new org.bouncycastle.crypto.encodings.Cfor(new e60());
        } else {
            if (!strM36356final.equals("ISO9796-1PADDING")) {
                if (!strM36356final.equals("OAEPPADDING")) {
                    if (strM36356final.equals("OAEPWITHMD5ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec("MD5", "MGF1", new MGF1ParameterSpec("MD5"), PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA1ANDMGF1PADDING")) {
                        oAEPParameterSpec = OAEPParameterSpec.DEFAULT;
                    } else if (strM36356final.equals("OAEPWITHSHA224ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec(qy0.f5542else, "MGF1", new MGF1ParameterSpec(qy0.f5542else), PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA256ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA384ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec(qy0.f5544this, "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA512ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA3-224ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA3-256ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec("SHA3-256", "MGF1", new MGF1ParameterSpec("SHA3-256"), PSource.PSpecified.DEFAULT);
                    } else if (strM36356final.equals("OAEPWITHSHA3-384ANDMGF1PADDING")) {
                        oAEPParameterSpec = new OAEPParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), PSource.PSpecified.DEFAULT);
                    } else {
                        if (!strM36356final.equals("OAEPWITHSHA3-512ANDMGF1PADDING")) {
                            throw new NoSuchPaddingException(str + " unavailable with ElGamal.");
                        }
                        oAEPParameterSpec = new OAEPParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), PSource.PSpecified.DEFAULT);
                    }
                }
                m7990for(oAEPParameterSpec);
                return;
            }
            cdo = new org.bouncycastle.crypto.encodings.Cdo(new e60());
        }
        this.f6607else = cdo;
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f6606break.write(bArr, i, i2);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.f6606break.write(bArr, i, i2);
        return null;
    }
}
