package android.support.v4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes3.dex */
public class zw0 extends FilterInputStream {

    /* renamed from: do, reason: not valid java name */
    public Mac f8668do;

    public zw0(InputStream inputStream, Mac mac) {
        super(inputStream);
        this.f8668do = mac;
    }

    /* renamed from: do, reason: not valid java name */
    public Mac m10312do() {
        return this.f8668do;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IllegalStateException, IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i >= 0) {
            this.f8668do.update((byte) i);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 >= 0) {
            this.f8668do.update(bArr, i, i3);
        }
        return i3;
    }
}
