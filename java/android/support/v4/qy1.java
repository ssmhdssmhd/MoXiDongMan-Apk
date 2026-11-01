package android.support.v4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
public class qy1 extends FilterInputStream {

    /* renamed from: do, reason: not valid java name */
    public Signer f5550do;

    public qy1(InputStream inputStream, Signer signer) {
        super(inputStream);
        this.f5550do = signer;
    }

    /* renamed from: do, reason: not valid java name */
    public Signer m6689do() {
        return this.f5550do;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i >= 0) {
            this.f5550do.update((byte) i);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 > 0) {
            this.f5550do.update(bArr, i, i3);
        }
        return i3;
    }
}
