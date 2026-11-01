package org.bouncycastle.jcajce.provider.asymmetric.util;

import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.w5;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor extends CipherSpi {

    /* renamed from: case, reason: not valid java name */
    private byte[] f31248case;

    /* renamed from: try, reason: not valid java name */
    private int f31253try;

    /* renamed from: do, reason: not valid java name */
    private Class[] f31249do = {IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};

    /* renamed from: if, reason: not valid java name */
    private final JcaJceHelper f31251if = new w5();

    /* renamed from: for, reason: not valid java name */
    public AlgorithmParameters f31250for = null;

    /* renamed from: new, reason: not valid java name */
    public Wrapper f31252new = null;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.for$do, reason: invalid class name */
    public class Cdo extends InvalidKeyException {
        public final /* synthetic */ BadPaddingException val$e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, BadPaddingException badPaddingException) {
            super(str);
            this.val$e = badPaddingException;
        }

        @Override // java.lang.Throwable
        public synchronized Throwable getCause() {
            return this.val$e;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.for$if, reason: invalid class name */
    public static final class Cif extends ByteArrayOutputStream {
        /* renamed from: do, reason: not valid java name */
        public void m34745do() {
            q3.c(((ByteArrayOutputStream) this).buf, (byte) 0);
            reset();
        }

        /* renamed from: if, reason: not valid java name */
        public byte[] m34746if() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final AlgorithmParameters m34744do(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f31251if.createAlgorithmParameters(str);
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return -1;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        return null;
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
    public Key engineUnwrap(byte[] bArr, String str, int i) throws InvalidKeyException {
        try {
            Wrapper wrapper = this.f31252new;
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
                KeyFactory keyFactoryCreateKeyFactory = this.f31251if.createKeyFactory(str);
                if (i == 1) {
                    return keyFactoryCreateKeyFactory.generatePublic(new X509EncodedKeySpec(bArrEngineDoFinal));
                }
                if (i == 2) {
                    return keyFactoryCreateKeyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrEngineDoFinal));
                }
                throw new InvalidKeyException("Unknown key type " + i);
            } catch (NoSuchAlgorithmException e) {
                throw new InvalidKeyException("Unknown key type " + e.getMessage());
            } catch (NoSuchProviderException e2) {
                throw new InvalidKeyException("Unknown key type " + e2.getMessage());
            } catch (InvalidKeySpecException e3) {
                throw new InvalidKeyException("Unknown key type " + e3.getMessage());
            }
        } catch (tn0 e4) {
            throw new InvalidKeyException(e4.getMessage());
        } catch (BadPaddingException e5) {
            throw new Cdo("unable to unwrap", e5);
        } catch (IllegalBlockSizeException e6) {
            throw new InvalidKeyException(e6.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            Wrapper wrapper = this.f31252new;
            return wrapper == null ? engineDoFinal(encoded, 0, encoded.length) : wrapper.wrap(encoded, 0, encoded.length);
        } catch (BadPaddingException e) {
            throw new IllegalBlockSizeException(e.getMessage());
        }
    }
}
