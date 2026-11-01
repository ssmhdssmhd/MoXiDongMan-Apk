package android.support.v4;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class x00 extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    public Digest f7736do;

    public x00(Digest digest) {
        this.f7736do = digest;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m9319do() {
        byte[] bArr = new byte[this.f7736do.getDigestSize()];
        this.f7736do.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f7736do.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f7736do.update(bArr, i, i2);
    }
}
