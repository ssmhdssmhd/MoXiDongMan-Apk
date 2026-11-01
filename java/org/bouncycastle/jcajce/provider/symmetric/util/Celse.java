package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.d6;
import android.support.v4.dc1;
import android.support.v4.fc1;
import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.qf0;
import android.support.v4.tn0;
import android.support.v4.w5;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.else, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Celse extends CipherSpi implements PBE {

    /* renamed from: break, reason: not valid java name */
    private Cdo f31501break;

    /* renamed from: case, reason: not valid java name */
    public AlgorithmParameters f31502case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f31503catch;

    /* renamed from: class, reason: not valid java name */
    private final JcaJceHelper f31504class;

    /* renamed from: do, reason: not valid java name */
    private Class[] f31505do;

    /* renamed from: else, reason: not valid java name */
    public Wrapper f31506else;

    /* renamed from: for, reason: not valid java name */
    public int f31507for;

    /* renamed from: goto, reason: not valid java name */
    private int f31508goto;

    /* renamed from: if, reason: not valid java name */
    public int f31509if;

    /* renamed from: new, reason: not valid java name */
    public int f31510new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f31511this;

    /* renamed from: try, reason: not valid java name */
    public int f31512try;

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.else$do, reason: invalid class name */
    public static final class Cdo extends ByteArrayOutputStream {
        /* renamed from: do, reason: not valid java name */
        public void m34894do() {
            q3.c(((ByteArrayOutputStream) this).buf, (byte) 0);
            reset();
        }

        /* renamed from: if, reason: not valid java name */
        public byte[] m34895if() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.else$if, reason: invalid class name */
    public static class Cif extends InvalidKeyException {
        private final Throwable cause;

        public Cif(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    public Celse() {
        this.f31505do = new Class[]{qf0.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class};
        this.f31509if = 2;
        this.f31507for = 1;
        this.f31502case = null;
        this.f31506else = null;
        this.f31501break = null;
        this.f31504class = new w5();
    }

    public Celse(Wrapper wrapper) {
        this(wrapper, 0);
    }

    public Celse(Wrapper wrapper, int i) {
        this.f31505do = new Class[]{qf0.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class};
        this.f31509if = 2;
        this.f31507for = 1;
        this.f31502case = null;
        this.f31506else = null;
        this.f31501break = null;
        this.f31504class = new w5();
        this.f31506else = wrapper;
        this.f31508goto = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final AlgorithmParameters m34893do(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f31504class.createAlgorithmParameters(str);
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        byte[] bArrWrap;
        Cdo cdo = this.f31501break;
        if (cdo == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        cdo.write(bArr, i, i2);
        try {
            if (this.f31503catch) {
                try {
                    bArrWrap = this.f31506else.wrap(this.f31501break.m34895if(), 0, this.f31501break.size());
                } catch (Exception e) {
                    throw new IllegalBlockSizeException(e.getMessage());
                }
            } else {
                try {
                    bArrWrap = this.f31506else.unwrap(this.f31501break.m34895if(), 0, this.f31501break.size());
                } catch (tn0 e2) {
                    throw new BadPaddingException(e2.getMessage());
                }
            }
            if (bArrWrap.length + i3 > bArr2.length) {
                throw new ShortBufferException("output buffer too short for input.");
            }
            System.arraycopy(bArrWrap, 0, bArr2, i3, bArrWrap.length);
            return bArrWrap.length;
        } finally {
            this.f31501break.m34894do();
        }
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrWrap;
        Cdo cdo = this.f31501break;
        if (cdo == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        cdo.write(bArr, i, i2);
        try {
            if (this.f31503catch) {
                try {
                    bArrWrap = this.f31506else.wrap(this.f31501break.m34895if(), 0, this.f31501break.size());
                } catch (Exception e) {
                    throw new IllegalBlockSizeException(e.getMessage());
                }
            } else {
                try {
                    bArrWrap = this.f31506else.unwrap(this.f31501break.m34895if(), 0, this.f31501break.size());
                } catch (tn0 e2) {
                    throw new BadPaddingException(e2.getMessage());
                }
            }
            return bArrWrap;
        } finally {
            this.f31501break.m34894do();
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return q3.m6371final(this.f31511this);
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return -1;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f31502case == null && this.f31511this != null) {
            String algorithmName = this.f31506else.getAlgorithmName();
            if (algorithmName.indexOf(47) >= 0) {
                algorithmName = algorithmName.substring(0, algorithmName.indexOf(47));
            }
            try {
                AlgorithmParameters algorithmParametersM34893do = m34893do(algorithmName);
                this.f31502case = algorithmParametersM34893do;
                algorithmParametersM34893do.init(new IvParameterSpec(this.f31511this));
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f31502case;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec = null;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (true) {
                Class[] clsArr = this.f31505do;
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
        this.f31502case = algorithmParameters;
        engineInit(i, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new Cif(e.getMessage(), e);
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters gr0Var;
        int i2;
        if (key instanceof d6) {
            d6 d6Var = (d6) key;
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                gr0Var = PBE.Cdo.m34884case(d6Var, algorithmParameterSpec, this.f31506else.getAlgorithmName());
            } else {
                if (d6Var.getParam() == null) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                gr0Var = d6Var.getParam();
            }
        } else {
            gr0Var = new gr0(key.getEncoded());
        }
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            byte[] iv = ((IvParameterSpec) algorithmParameterSpec).getIV();
            this.f31511this = iv;
            gr0Var = new bc1(gr0Var, iv);
        }
        if (algorithmParameterSpec instanceof qf0) {
            qf0 qf0Var = (qf0) algorithmParameterSpec;
            byte[] bArrM6547if = qf0Var.m6547if();
            if (bArrM6547if != null) {
                gr0Var = new dc1(gr0Var, bArrM6547if);
            }
            gr0Var = new fc1(gr0Var, qf0Var.m6546for());
        }
        if ((gr0Var instanceof gr0) && (i2 = this.f31508goto) != 0 && (i == 3 || i == 1)) {
            byte[] bArr = new byte[i2];
            this.f31511this = bArr;
            secureRandom.nextBytes(bArr);
            gr0Var = new bc1(gr0Var, this.f31511this);
        }
        if (secureRandom != null) {
            gr0Var = new cc1(gr0Var, secureRandom);
        }
        try {
            if (i != 1) {
                if (i == 2) {
                    this.f31506else.init(false, gr0Var);
                    this.f31501break = new Cdo();
                } else if (i == 3) {
                    this.f31506else.init(true, gr0Var);
                    this.f31501break = null;
                } else {
                    if (i != 4) {
                        throw new InvalidParameterException("Unknown mode parameter passed to init.");
                    }
                    this.f31506else.init(false, gr0Var);
                    this.f31501break = null;
                }
                this.f31503catch = false;
                return;
            }
            this.f31506else.init(true, gr0Var);
            this.f31501break = new Cdo();
            this.f31503catch = true;
        } catch (Exception e) {
            throw new Cif(e.getMessage(), e);
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override // javax.crypto.CipherSpi
    public Key engineUnwrap(byte[] bArr, String str, int i) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Wrapper wrapper = this.f31506else;
            byte[] bArrEngineDoFinal = wrapper == null ? engineDoFinal(bArr, 0, bArr.length) : wrapper.unwrap(bArr, 0, bArr.length);
            if (i == 3) {
                return new SecretKeySpec(bArrEngineDoFinal, str);
            }
            if (str.equals("") && i == 2) {
                try {
                    org.bouncycastle.asn1.pkcs.Cdo cdoM33100try = org.bouncycastle.asn1.pkcs.Cdo.m33100try(bArrEngineDoFinal);
                    PrivateKey privateKey = org.bouncycastle.jce.provider.Cdo.getPrivateKey(cdoM33100try);
                    if (privateKey != null) {
                        return privateKey;
                    }
                    throw new InvalidKeyException("algorithm " + cdoM33100try.m33104else().m420new() + " not supported");
                } catch (Exception unused) {
                    throw new InvalidKeyException("Invalid key encoding.");
                }
            }
            try {
                KeyFactory keyFactoryCreateKeyFactory = this.f31504class.createKeyFactory(str);
                if (i == 1) {
                    return keyFactoryCreateKeyFactory.generatePublic(new X509EncodedKeySpec(bArrEngineDoFinal));
                }
                if (i == 2) {
                    return keyFactoryCreateKeyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrEngineDoFinal));
                }
                throw new InvalidKeyException("Unknown key type " + i);
            } catch (NoSuchProviderException e) {
                throw new InvalidKeyException("Unknown key type " + e.getMessage());
            } catch (InvalidKeySpecException e2) {
                throw new InvalidKeyException("Unknown key type " + e2.getMessage());
            }
        } catch (tn0 e3) {
            throw new InvalidKeyException(e3.getMessage());
        } catch (BadPaddingException e4) {
            throw new InvalidKeyException(e4.getMessage());
        } catch (IllegalBlockSizeException e5) {
            throw new InvalidKeyException(e5.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        Cdo cdo = this.f31501break;
        if (cdo == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        cdo.write(bArr, i, i2);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        Cdo cdo = this.f31501break;
        if (cdo == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        cdo.write(bArr, i, i2);
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            Wrapper wrapper = this.f31506else;
            return wrapper == null ? engineDoFinal(encoded, 0, encoded.length) : wrapper.wrap(encoded, 0, encoded.length);
        } catch (BadPaddingException e) {
            throw new IllegalBlockSizeException(e.getMessage());
        }
    }
}
