package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Committer;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class bj0 implements Committer {

    /* renamed from: do, reason: not valid java name */
    private final Digest f458do;

    /* renamed from: for, reason: not valid java name */
    private final SecureRandom f459for;

    /* renamed from: if, reason: not valid java name */
    private final int f460if;

    public bj0(ExtendedDigest extendedDigest, SecureRandom secureRandom) {
        this.f458do = extendedDigest;
        this.f460if = extendedDigest.getByteLength();
        this.f459for = secureRandom;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m560do(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[this.f458do.getDigestSize()];
        this.f458do.update(bArr, 0, bArr.length);
        this.f458do.update(bArr2, 0, bArr2.length);
        this.f458do.doFinal(bArr3, 0);
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.Committer
    public ap commit(byte[] bArr) {
        int length = bArr.length;
        int i = this.f460if;
        if (length > i / 2) {
            throw new tw("Message to be committed to too large for digest.");
        }
        byte[] bArr2 = new byte[i - bArr.length];
        this.f459for.nextBytes(bArr2);
        return new ap(bArr2, m560do(bArr2, bArr));
    }

    @Override // org.bouncycastle.crypto.Committer
    public boolean isRevealed(ap apVar, byte[] bArr) {
        if (bArr.length + apVar.m295if().length != this.f460if) {
            throw new tw("Message and witness secret lengths do not match.");
        }
        return q3.m6360abstract(apVar.m294do(), m560do(apVar.m295if(), bArr));
    }
}
