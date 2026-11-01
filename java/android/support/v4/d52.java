package android.support.v4;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class d52 extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private OutputStream f940do;

    /* renamed from: if, reason: not valid java name */
    private OutputStream f941if;

    public d52(OutputStream outputStream, OutputStream outputStream2) {
        this.f940do = outputStream;
        this.f941if = outputStream2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f940do.close();
        this.f941if.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f940do.flush();
        this.f941if.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f940do.write(i);
        this.f941if.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f940do.write(bArr);
        this.f941if.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f940do.write(bArr, i, i2);
        this.f941if.write(bArr, i, i2);
    }
}
