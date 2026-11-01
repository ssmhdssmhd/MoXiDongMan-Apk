package android.support.v4;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class c52 extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private final InputStream f606do;

    /* renamed from: if, reason: not valid java name */
    private final OutputStream f607if;

    public c52(InputStream inputStream, OutputStream outputStream) {
        this.f606do = inputStream;
        this.f607if = outputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f606do.close();
        this.f607if.close();
    }

    /* renamed from: do, reason: not valid java name */
    public OutputStream m752do() {
        return this.f607if;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.f606do.read();
        if (i >= 0) {
            this.f607if.write(i);
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f606do.read(bArr, i, i2);
        if (i3 > 0) {
            this.f607if.write(bArr, i, i3);
        }
        return i3;
    }
}
