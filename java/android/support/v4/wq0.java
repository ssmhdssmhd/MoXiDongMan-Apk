package android.support.v4;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.ShortBufferException;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cdo;
import org.bouncycastle.pqc.crypto.newhope.Cfor;
import org.bouncycastle.pqc.crypto.newhope.Cnew;

/* loaded from: classes3.dex */
public class wq0 extends Cdo {

    /* renamed from: break, reason: not valid java name */
    private c6 f7672break;

    /* renamed from: catch, reason: not valid java name */
    private Cnew f7673catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f7674class;

    /* renamed from: this, reason: not valid java name */
    private Cfor f7675this;

    public wq0() {
        super("NH", null);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo
    /* renamed from: do, reason: not valid java name */
    public byte[] mo9261do() {
        return engineGenerateSecret();
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) throws IllegalStateException, InvalidKeyException {
        if (!z) {
            throw new IllegalStateException("NewHope can only be between two parties.");
        }
        c6 c6Var = (c6) key;
        this.f7672break = c6Var;
        Cnew cnew = this.f7673catch;
        if (cnew == null) {
            this.f7674class = this.f7675this.m35653do(c6Var.getKeyParams());
            return null;
        }
        v80 v80VarGenerateExchange = cnew.generateExchange((a4) c6Var.getKeyParams());
        this.f7674class = v80VarGenerateExchange.m8776if();
        return new c6((s11) v80VarGenerateExchange.m8775do());
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo, javax.crypto.KeyAgreementSpi
    public int engineGenerateSecret(byte[] bArr, int i) throws IllegalStateException, ShortBufferException {
        byte[] bArr2 = this.f7674class;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
        q3.c(this.f7674class, (byte) 0);
        return this.f7674class.length;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo, javax.crypto.KeyAgreementSpi
    public byte[] engineGenerateSecret() throws IllegalStateException {
        byte[] bArrM6371final = q3.m6371final(this.f7674class);
        q3.c(this.f7674class, (byte) 0);
        return bArrM6371final;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (key == null) {
            this.f7673catch = new Cnew(secureRandom);
            return;
        }
        Cfor cfor = new Cfor();
        this.f7675this = cfor;
        cfor.m35654if(((b6) key).getKeyParams());
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("NewHope does not require parameters");
    }
}
