package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class rw0 implements BasicAgreement {

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f5957if = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    public lu f5958do;

    /* renamed from: do, reason: not valid java name */
    private BigInteger m7185do(ou ouVar, pu puVar, ru ruVar, pu puVar2, ru ruVar2, ru ruVar3) {
        BigInteger bigIntegerM5758else = ouVar.m5758else();
        BigInteger bigIntegerPow = BigInteger.valueOf(2L).pow((bigIntegerM5758else.bitLength() + 1) / 2);
        return ruVar3.m7126for().multiply(ruVar.m7126for().modPow(ruVar3.m7126for().mod(bigIntegerPow).add(bigIntegerPow), ouVar.m5757case())).modPow(puVar2.m6221for().add(ruVar2.m7126for().mod(bigIntegerPow).add(bigIntegerPow).multiply(puVar.m6221for())).mod(bigIntegerM5758else), ouVar.m5757case());
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public BigInteger calculateAgreement(CipherParameters cipherParameters) {
        mu muVar = (mu) cipherParameters;
        pu puVarM4772for = this.f5958do.m4772for();
        if (!this.f5958do.m4772for().m4512if().equals(muVar.m5002if().m4512if())) {
            throw new IllegalStateException("MQV public key components have wrong domain parameters");
        }
        if (this.f5958do.m4772for().m4512if().m5758else() == null) {
            throw new IllegalStateException("MQV key domain parameters do not have Q set");
        }
        BigInteger bigIntegerM7185do = m7185do(puVarM4772for.m4512if(), puVarM4772for, muVar.m5002if(), this.f5958do.m4771do(), this.f5958do.m4773if(), muVar.m5001do());
        if (bigIntegerM7185do.equals(f5957if)) {
            throw new IllegalStateException("1 is not a valid agreement value for MQV");
        }
        return bigIntegerM7185do;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public int getFieldSize() {
        return (this.f5958do.m4772for().m4512if().m5757case().bitLength() + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public void init(CipherParameters cipherParameters) {
        this.f5958do = (lu) cipherParameters;
    }
}
