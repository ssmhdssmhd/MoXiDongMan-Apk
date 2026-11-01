package org.bouncycastle.crypto.tls;

import android.support.v4.bc1;
import android.support.v4.gr0;
import android.support.v4.n72;
import android.support.v4.p72;
import android.support.v4.q3;
import android.support.v4.tw;
import java.io.IOException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.StreamCipher;

/* loaded from: classes3.dex */
public class k0 implements TlsCipher {

    /* renamed from: case, reason: not valid java name */
    public boolean f30660case;

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30661do;

    /* renamed from: for, reason: not valid java name */
    public StreamCipher f30662for;

    /* renamed from: if, reason: not valid java name */
    public StreamCipher f30663if;

    /* renamed from: new, reason: not valid java name */
    public p72 f30664new;

    /* renamed from: try, reason: not valid java name */
    public p72 f30665try;

    public k0(TlsContext tlsContext, StreamCipher streamCipher, StreamCipher streamCipher2, Digest digest, Digest digest2, int i, boolean z) throws IOException, IllegalArgumentException {
        boolean zIsServer = tlsContext.isServer();
        this.f30661do = tlsContext;
        this.f30660case = z;
        this.f30663if = streamCipher;
        this.f30662for = streamCipher2;
        int digestSize = (i * 2) + digest.getDigestSize() + digest2.getDigestSize();
        byte[] bArrM34216try = l0.m34216try(tlsContext, digestSize);
        p72 p72Var = new p72(tlsContext, digest, bArrM34216try, 0, digest.getDigestSize());
        int digestSize2 = digest.getDigestSize() + 0;
        p72 p72Var2 = new p72(tlsContext, digest2, bArrM34216try, digestSize2, digest2.getDigestSize());
        int digestSize3 = digestSize2 + digest2.getDigestSize();
        CipherParameters gr0Var = new gr0(bArrM34216try, digestSize3, i);
        int i2 = digestSize3 + i;
        CipherParameters gr0Var2 = new gr0(bArrM34216try, i2, i);
        if (i2 + i != digestSize) {
            throw new n72((short) 80);
        }
        if (zIsServer) {
            this.f30664new = p72Var2;
            this.f30665try = p72Var;
            this.f30663if = streamCipher2;
            this.f30662for = streamCipher;
            gr0Var2 = gr0Var;
            gr0Var = gr0Var2;
        } else {
            this.f30664new = p72Var;
            this.f30665try = p72Var2;
            this.f30663if = streamCipher;
            this.f30662for = streamCipher2;
        }
        if (z) {
            byte[] bArr = new byte[8];
            CipherParameters bc1Var = new bc1(gr0Var, bArr);
            gr0Var2 = new bc1(gr0Var2, bArr);
            gr0Var = bc1Var;
        }
        this.f30663if.init(true, gr0Var);
        this.f30662for.init(false, gr0Var2);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws tw, IOException, IllegalArgumentException {
        if (this.f30660case) {
            m34174if(this.f30662for, false, j);
        }
        int iM5912try = this.f30665try.m5912try();
        if (i2 < iM5912try) {
            throw new n72((short) 50);
        }
        int i3 = i2 - iM5912try;
        byte[] bArr2 = new byte[i2];
        this.f30662for.processBytes(bArr, i, i2, bArr2, 0);
        m34173do(j, s, bArr2, i3, i2, bArr2, 0, i3);
        return q3.m6378instanceof(bArr2, 0, i3);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34173do(long j, short s, byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) throws IOException {
        if (!q3.m6360abstract(q3.m6378instanceof(bArr, i, i2), this.f30665try.m5908do(j, s, bArr2, i3, i4))) {
            throw new n72((short) 20);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        if (this.f30660case) {
            m34174if(this.f30663if, true, j);
        }
        byte[] bArr2 = new byte[i2 + this.f30664new.m5912try()];
        this.f30663if.processBytes(bArr, i, i2, bArr2, 0);
        byte[] bArrM5908do = this.f30664new.m5908do(j, s, bArr, i, i2);
        this.f30663if.processBytes(bArrM5908do, 0, bArrM5908do.length, bArr2, i2);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        return i - this.f30664new.m5912try();
    }

    /* renamed from: if, reason: not valid java name */
    public void m34174if(StreamCipher streamCipher, boolean z, long j) throws IllegalArgumentException {
        byte[] bArr = new byte[8];
        l0.E0(j, bArr, 0);
        streamCipher.init(z, new bc1(null, bArr));
    }
}
