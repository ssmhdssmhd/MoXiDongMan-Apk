package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.bc1;
import android.support.v4.ca1;
import android.support.v4.d6;
import android.support.v4.da1;
import android.support.v4.gr0;
import android.support.v4.tw;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Celse implements PBE {

    /* renamed from: const, reason: not valid java name */
    private Class[] f31490const;

    /* renamed from: final, reason: not valid java name */
    private StreamCipher f31491final;

    /* renamed from: import, reason: not valid java name */
    private int f31492import;

    /* renamed from: native, reason: not valid java name */
    private PBEParameterSpec f31493native;

    /* renamed from: public, reason: not valid java name */
    private String f31494public;

    /* renamed from: super, reason: not valid java name */
    private int f31495super;

    /* renamed from: throw, reason: not valid java name */
    private int f31496throw;

    /* renamed from: while, reason: not valid java name */
    private bc1 f31497while;

    public Ccase(StreamCipher streamCipher, int i) {
        this(streamCipher, i, -1, -1);
    }

    public Ccase(StreamCipher streamCipher, int i, int i2, int i3) {
        this.f31490const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31492import = 0;
        this.f31493native = null;
        this.f31494public = null;
        this.f31491final = streamCipher;
        this.f31492import = i;
        this.f31495super = i2;
        this.f31496throw = i3;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw, ShortBufferException {
        if (i3 + i2 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (i2 != 0) {
            this.f31491final.processBytes(bArr, i, i2, bArr2, i3);
        }
        this.f31491final.reset();
        return i2;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws tw {
        if (i2 == 0) {
            this.f31491final.reset();
            return new byte[0];
        }
        byte[] bArrEngineUpdate = engineUpdate(bArr, i, i2);
        this.f31491final.reset();
        return bArrEngineUpdate;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        bc1 bc1Var = this.f31497while;
        if (bc1Var != null) {
            return bc1Var.m514do();
        }
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return i;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f31502case == null) {
            if (this.f31493native != null) {
                try {
                    AlgorithmParameters algorithmParametersM34893do = m34893do(this.f31494public);
                    algorithmParametersM34893do.init(this.f31493native);
                    return algorithmParametersM34893do;
                } catch (Exception unused) {
                    return null;
                }
            }
            if (this.f31497while != null) {
                String algorithmName = this.f31491final.getAlgorithmName();
                if (algorithmName.indexOf(47) >= 0) {
                    algorithmName = algorithmName.substring(0, algorithmName.indexOf(47));
                }
                if (algorithmName.startsWith("ChaCha7539")) {
                    algorithmName = "ChaCha7539";
                } else if (algorithmName.startsWith("Grain")) {
                    algorithmName = "Grainv1";
                } else if (algorithmName.startsWith("HC")) {
                    int iIndexOf = algorithmName.indexOf(45);
                    algorithmName = algorithmName.substring(0, iIndexOf) + algorithmName.substring(iIndexOf + 1);
                }
                try {
                    AlgorithmParameters algorithmParametersM34893do2 = m34893do(algorithmName);
                    this.f31502case = algorithmParametersM34893do2;
                    algorithmParametersM34893do2.init(new IvParameterSpec(this.f31497while.m514do()));
                } catch (Exception e) {
                    throw new RuntimeException(e.toString());
                }
            }
        }
        return this.f31502case;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec = null;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (true) {
                Class[] clsArr = this.f31490const;
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
        engineInit(i, key, parameterSpec, secureRandom);
        this.f31502case = algorithmParameters;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters cipherParametersM34888goto;
        CipherParameters gr0Var;
        this.f31493native = null;
        this.f31494public = null;
        this.f31502case = null;
        if (!(key instanceof SecretKey)) {
            throw new InvalidKeyException("Key for algorithm " + key.getAlgorithm() + " not suitable for symmetric enryption.");
        }
        if (key instanceof ca1) {
            ca1 ca1Var = (ca1) key;
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31493native = pBEParameterSpec;
            if ((ca1Var instanceof da1) && pBEParameterSpec == null) {
                da1 da1Var = (da1) ca1Var;
                this.f31493native = new PBEParameterSpec(da1Var.getSalt(), da1Var.getIterationCount());
            }
            cipherParametersM34888goto = PBE.Cdo.m34888goto(ca1Var.getEncoded(), 2, this.f31496throw, this.f31495super, this.f31492import * 8, this.f31493native, this.f31491final.getAlgorithmName());
        } else {
            if (key instanceof d6) {
                d6 d6Var = (d6) key;
                this.f31494public = d6Var.getOID() != null ? d6Var.getOID().m32795super() : d6Var.getAlgorithm();
                if (d6Var.getParam() != null) {
                    gr0Var = d6Var.getParam();
                    this.f31493native = new PBEParameterSpec(d6Var.getSalt(), d6Var.getIterationCount());
                } else {
                    if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                        throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                    }
                    CipherParameters cipherParametersM34884case = PBE.Cdo.m34884case(d6Var, algorithmParameterSpec, this.f31491final.getAlgorithmName());
                    this.f31493native = (PBEParameterSpec) algorithmParameterSpec;
                    gr0Var = cipherParametersM34884case;
                }
                if (d6Var.getIvSize() != 0) {
                    this.f31497while = (bc1) gr0Var;
                }
            } else if (algorithmParameterSpec == null) {
                if (this.f31496throw > 0) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                gr0Var = new gr0(key.getEncoded());
            } else {
                if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("unknown parameter type.");
                }
                bc1 bc1Var = new bc1(new gr0(key.getEncoded()), ((IvParameterSpec) algorithmParameterSpec).getIV());
                this.f31497while = bc1Var;
                cipherParametersM34888goto = bc1Var;
            }
            cipherParametersM34888goto = gr0Var;
        }
        if (this.f31492import != 0 && !(cipherParametersM34888goto instanceof bc1)) {
            if (secureRandom == null) {
                secureRandom = Cfor.m33599case();
            }
            if (i != 1 && i != 3) {
                throw new InvalidAlgorithmParameterException("no IV set when one expected");
            }
            byte[] bArr = new byte[this.f31492import];
            secureRandom.nextBytes(bArr);
            bc1 bc1Var2 = new bc1(cipherParametersM34888goto, bArr);
            this.f31497while = bc1Var2;
            cipherParametersM34888goto = bc1Var2;
        }
        try {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new InvalidParameterException("unknown opmode " + i + " passed");
                        }
                    }
                }
                this.f31491final.init(false, cipherParametersM34888goto);
                return;
            }
            this.f31491final.init(true, cipherParametersM34888goto);
        } catch (Exception e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        if (str.equalsIgnoreCase("ECB") || str.equals("NONE")) {
            return;
        }
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        if (str.equalsIgnoreCase("NoPadding")) {
            return;
        }
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        if (i3 + i2 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        try {
            this.f31491final.processBytes(bArr, i, i2, bArr2, i3);
            return i2;
        } catch (tw e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) throws tw {
        byte[] bArr2 = new byte[i2];
        this.f31491final.processBytes(bArr, i, i2, bArr2, 0);
        return bArr2;
    }
}
