package android.support.v4;

import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public abstract class x3 extends ul {

    /* renamed from: case, reason: not valid java name */
    public int f7751case;

    /* renamed from: else, reason: not valid java name */
    public int f7752else;

    /* renamed from: new, reason: not valid java name */
    public AlgorithmParameterSpec f7753new;

    /* renamed from: try, reason: not valid java name */
    public ByteArrayOutputStream f7754try = new ByteArrayOutputStream();

    @Override // android.support.v4.ul
    /* renamed from: break */
    public final AlgorithmParameterSpec mo8478break() {
        return this.f7753new;
    }

    @Override // android.support.v4.ul
    /* renamed from: case */
    public final byte[] mo8479case() {
        return null;
    }

    @Override // android.support.v4.ul
    /* renamed from: catch */
    public final void mo8480catch(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f6923do = 2;
        mo9368native(key, algorithmParameterSpec);
    }

    @Override // android.support.v4.ul
    /* renamed from: class */
    public final void mo8481class(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f6923do = 1;
        mo9369public(key, algorithmParameterSpec, secureRandom);
    }

    @Override // android.support.v4.ul
    /* renamed from: const */
    public final void mo8482const(String str) {
    }

    /* renamed from: default, reason: not valid java name */
    public abstract byte[] mo9365default(byte[] bArr) throws BadPaddingException, IllegalBlockSizeException;

    @Override // android.support.v4.ul
    /* renamed from: do */
    public final int mo8483do(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        if (bArr2.length < mo8491this(i2)) {
            throw new ShortBufferException("Output buffer too short.");
        }
        byte[] bArrMo8489new = mo8489new(bArr, i, i2);
        System.arraycopy(bArrMo8489new, 0, bArr2, i3, bArrMo8489new.length);
        return bArrMo8489new.length;
    }

    /* renamed from: extends, reason: not valid java name */
    public abstract byte[] mo9366extends(byte[] bArr) throws BadPaddingException, IllegalBlockSizeException;

    @Override // android.support.v4.ul
    /* renamed from: final */
    public final void mo8485final(String str) {
    }

    /* renamed from: import, reason: not valid java name */
    public void m9367import(int i) throws IllegalBlockSizeException {
        int size = i + this.f7754try.size();
        int i2 = this.f6923do;
        if (i2 == 1) {
            if (size <= this.f7751case) {
                return;
            }
            throw new IllegalBlockSizeException("The length of the plaintext (" + size + " bytes) is not supported by the cipher (max. " + this.f7751case + " bytes).");
        }
        if (i2 != 2 || size == this.f7752else) {
            return;
        }
        throw new IllegalBlockSizeException("Illegal ciphertext length (expected " + this.f7752else + " bytes, was " + size + " bytes).");
    }

    /* renamed from: native, reason: not valid java name */
    public abstract void mo9368native(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    @Override // android.support.v4.ul
    /* renamed from: new */
    public final byte[] mo8489new(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        m9367import(i2);
        mo8494while(bArr, i, i2);
        byte[] byteArray = this.f7754try.toByteArray();
        this.f7754try.reset();
        int i3 = this.f6923do;
        if (i3 == 1) {
            return mo9366extends(byteArray);
        }
        if (i3 != 2) {
            return null;
        }
        return mo9365default(byteArray);
    }

    /* renamed from: public, reason: not valid java name */
    public abstract void mo9369public(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    /* renamed from: return, reason: not valid java name */
    public final void m9370return(Key key) throws InvalidKeyException {
        try {
            mo8480catch(key, null);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final void m9371static(Key key) throws InvalidKeyException {
        try {
            mo8481class(key, null, Cfor.m33599case());
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: super */
    public final int mo8490super(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        mo8494while(bArr, i, i2);
        return 0;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m9372switch(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            mo8481class(key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: this */
    public final int mo8491this(int i) {
        if (i + this.f7754try.size() > mo8493try()) {
            return 0;
        }
        return this.f6923do == 1 ? this.f7752else : this.f7751case;
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m9373throws(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        mo8481class(key, algorithmParameterSpec, Cfor.m33599case());
    }

    @Override // android.support.v4.ul
    /* renamed from: try */
    public final int mo8493try() {
        return this.f6923do == 1 ? this.f7751case : this.f7752else;
    }

    @Override // android.support.v4.ul
    /* renamed from: while */
    public final byte[] mo8494while(byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            this.f7754try.write(bArr, i, i2);
        }
        return new byte[0];
    }
}
