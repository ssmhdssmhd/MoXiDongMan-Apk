package org.bouncycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
class j extends ByteArrayOutputStream {
    /* renamed from: do, reason: not valid java name */
    public void m34171do(Signer signer) {
        signer.update(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
    }
}
