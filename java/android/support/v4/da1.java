package android.support.v4;

import javax.crypto.interfaces.PBEKey;

/* loaded from: classes3.dex */
public class da1 extends ca1 implements PBEKey {
    private final int iterationCount;
    private final byte[] salt;

    public da1(char[] cArr, boolean z, byte[] bArr, int i) {
        super(cArr, z);
        this.salt = q3.m6371final(bArr);
        this.iterationCount = i;
    }

    public da1(char[] cArr, byte[] bArr, int i) {
        super(cArr);
        this.salt = q3.m6371final(bArr);
        this.iterationCount = i;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public int getIterationCount() {
        return this.iterationCount;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public byte[] getSalt() {
        return this.salt;
    }
}
