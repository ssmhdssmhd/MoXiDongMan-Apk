package android.support.v4;

/* loaded from: classes3.dex */
public class qv extends r40 {
    @Override // android.support.v4.r40, org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        k50 k50Var = (k50) super.generateKeyPair().m9727if();
        return new y3((a4) new k50(k50Var.m4252for().mo377private(), k50Var.m7258if()), r0.m9726do());
    }
}
