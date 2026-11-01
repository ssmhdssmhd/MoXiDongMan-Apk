package org.bouncycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.tls.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
class Cstrictfp extends ByteArrayOutputStream {
    /* renamed from: do, reason: not valid java name */
    public void m34356do(Digest digest) {
        digest.update(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
    }
}
