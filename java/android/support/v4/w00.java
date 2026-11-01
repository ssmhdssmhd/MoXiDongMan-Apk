package android.support.v4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class w00 extends FilterInputStream {

    /* renamed from: do, reason: not valid java name */
    public Digest f7367do;

    public w00(InputStream inputStream, Digest digest) {
        super(inputStream);
        this.f7367do = digest;
    }

    /* renamed from: do, reason: not valid java name */
    public Digest m9010do() {
        return this.f7367do;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i >= 0) {
            this.f7367do.update((byte) i);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 > 0) {
            this.f7367do.update(bArr, i, i3);
        }
        return i3;
    }
}
