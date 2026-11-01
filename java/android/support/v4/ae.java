package android.support.v4;

import java.io.InputStream;
import org.bouncycastle.crypto.tls.Cgoto;

/* loaded from: classes3.dex */
public class ae extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f112do = new Cgoto();

    @Override // java.io.InputStream
    public int available() {
        return this.f112do.m34126if();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: do, reason: not valid java name */
    public void m184do(byte[] bArr) {
        this.f112do.m34122do(bArr, 0, bArr.length);
    }

    /* renamed from: if, reason: not valid java name */
    public int m185if(byte[] bArr) {
        int iMin = Math.min(this.f112do.m34126if(), bArr.length);
        this.f112do.m34128try(bArr, 0, iMin, 0);
        return iMin;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f112do.m34126if() == 0) {
            return -1;
        }
        return this.f112do.m34127this(1, 0)[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int iMin = Math.min(this.f112do.m34126if(), i2);
        this.f112do.m34125goto(bArr, i, iMin, 0);
        return iMin;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        int iMin = Math.min((int) j, this.f112do.m34126if());
        this.f112do.m34123else(iMin);
        return iMin;
    }
}
