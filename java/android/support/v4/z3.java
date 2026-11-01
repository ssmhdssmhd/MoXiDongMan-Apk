package android.support.v4;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public abstract class z3 extends ul {

    /* renamed from: new, reason: not valid java name */
    public AlgorithmParameterSpec f8436new;

    @Override // android.support.v4.ul
    /* renamed from: break */
    public final AlgorithmParameterSpec mo8478break() {
        return this.f8436new;
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
        mo10050public(key, algorithmParameterSpec);
    }

    @Override // android.support.v4.ul
    /* renamed from: class */
    public final void mo8481class(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f6923do = 1;
        mo10051return(key, algorithmParameterSpec, secureRandom);
    }

    @Override // android.support.v4.ul
    /* renamed from: const */
    public final void mo8482const(String str) {
    }

    /* renamed from: default, reason: not valid java name */
    public final void m10047default(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        mo8481class(key, algorithmParameterSpec, Cfor.m33599case());
    }

    @Override // android.support.v4.ul
    /* renamed from: do */
    public final int mo8483do(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, ShortBufferException {
        if (bArr2.length < mo8491this(i2)) {
            throw new ShortBufferException("Output buffer too short.");
        }
        byte[] bArrMo8489new = mo8489new(bArr, i, i2);
        System.arraycopy(bArrMo8489new, 0, bArr2, i3, bArrMo8489new.length);
        return bArrMo8489new.length;
    }

    @Override // android.support.v4.ul
    /* renamed from: final */
    public final void mo8485final(String str) {
    }

    /* renamed from: import, reason: not valid java name */
    public abstract int mo10048import(int i);

    /* renamed from: native, reason: not valid java name */
    public abstract int mo10049native(int i);

    @Override // android.support.v4.ul
    /* renamed from: new */
    public abstract byte[] mo8489new(byte[] bArr, int i, int i2) throws BadPaddingException;

    /* renamed from: public, reason: not valid java name */
    public abstract void mo10050public(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    /* renamed from: return, reason: not valid java name */
    public abstract void mo10051return(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    /* renamed from: static, reason: not valid java name */
    public final void m10052static(Key key) throws InvalidKeyException {
        try {
            mo8480catch(key, null);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: super */
    public final int mo8490super(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        if (bArr2.length < mo8491this(i2)) {
            throw new ShortBufferException("output");
        }
        byte[] bArrMo8494while = mo8494while(bArr, i, i2);
        System.arraycopy(bArrMo8494while, 0, bArr2, i3, bArrMo8494while.length);
        return bArrMo8494while.length;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m10053switch(Key key) throws InvalidKeyException {
        try {
            mo8481class(key, null, Cfor.m33599case());
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: this */
    public final int mo8491this(int i) {
        return this.f6923do == 1 ? mo10049native(i) : mo10048import(i);
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m10054throws(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            mo8481class(key, null, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("This cipher needs algorithm parameters for initialization (cannot be null).");
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: try */
    public final int mo8493try() {
        return 0;
    }

    @Override // android.support.v4.ul
    /* renamed from: while */
    public abstract byte[] mo8494while(byte[] bArr, int i, int i2);
}
