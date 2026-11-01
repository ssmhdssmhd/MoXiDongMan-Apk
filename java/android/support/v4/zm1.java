package android.support.v4;

import javax.crypto.SecretKey;

/* loaded from: classes3.dex */
public class zm1 implements SecretKey {
    private String algorithm;

    public zm1(String str) {
        this.algorithm = str;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return null;
    }

    @Override // java.security.Key
    public String getFormat() {
        return null;
    }
}
