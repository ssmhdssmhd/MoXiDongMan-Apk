package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.prng.Cdo;
import org.bouncycastle.crypto.prng.EntropySourceProvider;

/* loaded from: classes3.dex */
public class qh2 {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f5423do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f5424for;

    /* renamed from: if, reason: not valid java name */
    private EntropySourceProvider f5425if;

    public qh2() {
        this(Cfor.m33599case(), false);
    }

    public qh2(SecureRandom secureRandom, boolean z) {
        this.f5423do = secureRandom;
        this.f5425if = new Cdo(secureRandom, z);
    }

    public qh2(EntropySourceProvider entropySourceProvider) {
        this.f5423do = null;
        this.f5425if = entropySourceProvider;
    }

    /* renamed from: do, reason: not valid java name */
    public ph2 m6600do(BlockCipher blockCipher, gr0 gr0Var, boolean z) throws IllegalArgumentException {
        if (this.f5424for == null) {
            this.f5424for = new byte[blockCipher.getBlockSize()];
            ib1.m3369static(System.currentTimeMillis(), this.f5424for, 0);
        }
        blockCipher.init(true, gr0Var);
        return new ph2(this.f5423do, new oh2(blockCipher, this.f5424for, this.f5425if.get(blockCipher.getBlockSize() * 8)), z);
    }

    /* renamed from: if, reason: not valid java name */
    public qh2 m6601if(byte[] bArr) {
        this.f5424for = q3.m6371final(bArr);
        return this;
    }
}
