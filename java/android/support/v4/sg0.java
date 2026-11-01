package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Committer;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class sg0 implements Committer {

    /* renamed from: do, reason: not valid java name */
    private final Digest f6146do;

    /* renamed from: for, reason: not valid java name */
    private final SecureRandom f6147for;

    /* renamed from: if, reason: not valid java name */
    private final int f6148if;

    public sg0(ExtendedDigest extendedDigest, SecureRandom secureRandom) {
        this.f6146do = extendedDigest;
        this.f6148if = extendedDigest.getByteLength();
        this.f6147for = secureRandom;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m7399do(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[this.f6146do.getDigestSize()];
        this.f6146do.update(bArr, 0, bArr.length);
        this.f6146do.update(bArr2, 0, bArr2.length);
        this.f6146do.update((byte) (bArr2.length >>> 8));
        this.f6146do.update((byte) bArr2.length);
        this.f6146do.doFinal(bArr3, 0);
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.Committer
    public ap commit(byte[] bArr) {
        int length = bArr.length;
        int i = this.f6148if;
        if (length > i / 2) {
            throw new tw("Message to be committed to too large for digest.");
        }
        byte[] bArr2 = new byte[i - bArr.length];
        this.f6147for.nextBytes(bArr2);
        return new ap(bArr2, m7399do(bArr2, bArr));
    }

    @Override // org.bouncycastle.crypto.Committer
    public boolean isRevealed(ap apVar, byte[] bArr) {
        if (bArr.length + apVar.m295if().length != this.f6148if) {
            throw new tw("Message and witness secret lengths do not match.");
        }
        return q3.m6360abstract(apVar.m294do(), m7399do(apVar.m295if(), bArr));
    }
}
