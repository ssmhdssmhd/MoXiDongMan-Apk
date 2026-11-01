package android.support.v4;

import java.security.spec.KeySpec;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class d6 implements PBEKey {
    public String algorithm;
    public int digest;
    public int ivSize;
    public int keySize;
    public Ccatch oid;
    public CipherParameters param;
    public PBEKeySpec pbeKeySpec;
    public boolean tryWrong = false;
    public int type;

    public d6(String str, KeySpec keySpec, CipherParameters cipherParameters) {
        this.algorithm = str;
        this.param = cipherParameters;
    }

    public d6(String str, Ccatch ccatch, int i, int i2, int i3, int i4, PBEKeySpec pBEKeySpec, CipherParameters cipherParameters) {
        this.algorithm = str;
        this.oid = ccatch;
        this.type = i;
        this.digest = i2;
        this.keySize = i3;
        this.ivSize = i4;
        this.pbeKeySpec = pBEKeySpec;
        this.param = cipherParameters;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    public int getDigest() {
        return this.digest;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        CipherParameters cipherParametersM515if = this.param;
        if (cipherParametersM515if == null) {
            int i = this.type;
            return i == 2 ? l91.m4619do(this.pbeKeySpec.getPassword()) : i == 5 ? l91.m4620for(this.pbeKeySpec.getPassword()) : l91.m4621if(this.pbeKeySpec.getPassword());
        }
        if (cipherParametersM515if instanceof bc1) {
            cipherParametersM515if = ((bc1) cipherParametersM515if).m515if();
        }
        return ((gr0) cipherParametersM515if).m2770do();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "RAW";
    }

    @Override // javax.crypto.interfaces.PBEKey
    public int getIterationCount() {
        return this.pbeKeySpec.getIterationCount();
    }

    public int getIvSize() {
        return this.ivSize;
    }

    public int getKeySize() {
        return this.keySize;
    }

    public Ccatch getOID() {
        return this.oid;
    }

    public CipherParameters getParam() {
        return this.param;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public char[] getPassword() {
        return this.pbeKeySpec.getPassword();
    }

    @Override // javax.crypto.interfaces.PBEKey
    public byte[] getSalt() {
        return this.pbeKeySpec.getSalt();
    }

    public int getType() {
        return this.type;
    }

    public void setTryWrongPKCS12Zero(boolean z) {
        this.tryWrong = z;
    }

    public boolean shouldTryWrongPKCS12() {
        return this.tryWrong;
    }
}
