package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.p72;
import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class x implements TlsCipher {

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30838do;

    /* renamed from: for, reason: not valid java name */
    public p72 f30839for;

    /* renamed from: if, reason: not valid java name */
    public p72 f30840if;

    public x(TlsContext tlsContext) {
        this.f30838do = tlsContext;
        this.f30840if = null;
        this.f30839for = null;
    }

    public x(TlsContext tlsContext, Digest digest, Digest digest2) throws IOException {
        p72 p72Var;
        if ((digest == null) != (digest2 == null)) {
            throw new n72((short) 80);
        }
        this.f30838do = tlsContext;
        p72 p72Var2 = null;
        if (digest != null) {
            int digestSize = digest.getDigestSize() + digest2.getDigestSize();
            byte[] bArrM34216try = l0.m34216try(tlsContext, digestSize);
            p72 p72Var3 = new p72(tlsContext, digest, bArrM34216try, 0, digest.getDigestSize());
            int digestSize2 = digest.getDigestSize() + 0;
            p72Var = new p72(tlsContext, digest2, bArrM34216try, digestSize2, digest2.getDigestSize());
            if (digestSize2 + digest2.getDigestSize() != digestSize) {
                throw new n72((short) 80);
            }
            p72Var2 = p72Var3;
        } else {
            p72Var = null;
        }
        if (tlsContext.isServer()) {
            this.f30840if = p72Var;
            this.f30839for = p72Var2;
        } else {
            this.f30840if = p72Var2;
            this.f30839for = p72Var;
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        p72 p72Var = this.f30839for;
        if (p72Var == null) {
            return q3.m6378instanceof(bArr, i, i2 + i);
        }
        int iM5912try = p72Var.m5912try();
        if (i2 < iM5912try) {
            throw new n72((short) 50);
        }
        int i3 = i2 - iM5912try;
        int i4 = i + i3;
        if (q3.m6360abstract(q3.m6378instanceof(bArr, i4, i2 + i), this.f30839for.m5908do(j, s, bArr, i, i3))) {
            return q3.m6378instanceof(bArr, i, i4);
        }
        throw new n72((short) 20);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        p72 p72Var = this.f30840if;
        if (p72Var == null) {
            return q3.m6378instanceof(bArr, i, i2 + i);
        }
        byte[] bArrM5908do = p72Var.m5908do(j, s, bArr, i, i2);
        byte[] bArr2 = new byte[bArrM5908do.length + i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        System.arraycopy(bArrM5908do, 0, bArr2, i2, bArrM5908do.length);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        p72 p72Var = this.f30840if;
        return p72Var != null ? i - p72Var.m5912try() : i;
    }
}
