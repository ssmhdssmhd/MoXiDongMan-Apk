package android.support.v4;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;

/* loaded from: classes3.dex */
public abstract class ul extends CipherSpi {

    /* renamed from: for, reason: not valid java name */
    public static final int f6921for = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f6922if = 1;

    /* renamed from: do, reason: not valid java name */
    public int f6923do;

    /* renamed from: break, reason: not valid java name */
    public abstract AlgorithmParameterSpec mo8478break();

    /* renamed from: case, reason: not valid java name */
    public abstract byte[] mo8479case();

    /* renamed from: catch, reason: not valid java name */
    public abstract void mo8480catch(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    /* renamed from: class, reason: not valid java name */
    public abstract void mo8481class(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    /* renamed from: const, reason: not valid java name */
    public abstract void mo8482const(String str) throws NoSuchAlgorithmException;

    /* renamed from: do, reason: not valid java name */
    public abstract int mo8483do(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException;

    /* renamed from: else, reason: not valid java name */
    public abstract int mo8484else(Key key) throws InvalidKeyException;

    @Override // javax.crypto.CipherSpi
    public final int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        return mo8483do(bArr, i, i2, bArr2, i3);
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        return mo8489new(bArr, i, i2);
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetBlockSize() {
        return mo8493try();
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineGetIV() {
        return mo8479case();
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetKeySize(Key key) throws InvalidKeyException {
        if (key instanceof Key) {
            return mo8484else(key);
        }
        throw new InvalidKeyException("Unsupported key.");
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetOutputSize(int i) {
        return mo8491this(i);
    }

    @Override // javax.crypto.CipherSpi
    public final AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i, key, secureRandom);
        } else {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        }
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidParameterException(e.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (key == null) {
            throw new InvalidKeyException();
        }
        this.f6923do = i;
        if (i == 1) {
            mo8481class(key, algorithmParameterSpec, secureRandom);
        } else if (i == 2) {
            mo8480catch(key, algorithmParameterSpec);
        }
    }

    @Override // javax.crypto.CipherSpi
    public final void engineSetMode(String str) throws NoSuchAlgorithmException {
        mo8482const(str);
    }

    @Override // javax.crypto.CipherSpi
    public final void engineSetPadding(String str) throws NoSuchPaddingException {
        mo8485final(str);
    }

    @Override // javax.crypto.CipherSpi
    public final int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        return mo8490super(bArr, i, i2, bArr2, i3);
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineUpdate(byte[] bArr, int i, int i2) {
        return mo8494while(bArr, i, i2);
    }

    /* renamed from: final, reason: not valid java name */
    public abstract void mo8485final(String str) throws NoSuchPaddingException;

    /* renamed from: for, reason: not valid java name */
    public final byte[] m8486for(byte[] bArr) throws BadPaddingException, IllegalBlockSizeException {
        return mo8489new(bArr, 0, bArr.length);
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract String mo8487goto();

    /* renamed from: if, reason: not valid java name */
    public final byte[] m8488if() throws BadPaddingException, IllegalBlockSizeException {
        return mo8489new(null, 0, 0);
    }

    /* renamed from: new, reason: not valid java name */
    public abstract byte[] mo8489new(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException;

    /* renamed from: super, reason: not valid java name */
    public abstract int mo8490super(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException;

    /* renamed from: this, reason: not valid java name */
    public abstract int mo8491this(int i);

    /* renamed from: throw, reason: not valid java name */
    public final byte[] m8492throw(byte[] bArr) {
        return mo8494while(bArr, 0, bArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    public abstract int mo8493try();

    /* renamed from: while, reason: not valid java name */
    public abstract byte[] mo8494while(byte[] bArr, int i, int i2);
}
