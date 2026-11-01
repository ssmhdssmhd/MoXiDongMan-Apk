package android.support.v4;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
public class sy1 extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    public Signer f6340do;

    public sy1(Signer signer) {
        this.f6340do = signer;
    }

    /* renamed from: do, reason: not valid java name */
    public Signer m7662do() {
        return this.f6340do;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f6340do.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f6340do.update(bArr, i, i2);
    }
}
