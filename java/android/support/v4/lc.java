package android.support.v4;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class lc extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private final OutputStream f3618do;

    /* renamed from: for, reason: not valid java name */
    private int f3619for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f3620if;

    public lc(OutputStream outputStream) {
        this.f3618do = outputStream;
        this.f3620if = new byte[4096];
    }

    public lc(OutputStream outputStream, int i) {
        this.f3618do = outputStream;
        this.f3620if = new byte[i];
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.f3618do.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f3618do.write(this.f3620if, 0, this.f3619for);
        this.f3619for = 0;
        q3.c(this.f3620if, (byte) 0);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f3620if;
        int i2 = this.f3619for;
        int i3 = i2 + 1;
        this.f3619for = i3;
        bArr[i2] = (byte) i;
        if (i3 == bArr.length) {
            flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2;
        byte[] bArr3 = this.f3620if;
        int length = bArr3.length;
        int i3 = this.f3619for;
        if (i2 < length - i3) {
            System.arraycopy(bArr, i, bArr3, i3, i2);
        } else {
            int length2 = bArr3.length - i3;
            System.arraycopy(bArr, i, bArr3, i3, length2);
            this.f3619for += length2;
            flush();
            int length3 = i + length2;
            i2 -= length2;
            while (true) {
                bArr2 = this.f3620if;
                if (i2 < bArr2.length) {
                    break;
                }
                this.f3618do.write(bArr, length3, bArr2.length);
                byte[] bArr4 = this.f3620if;
                length3 += bArr4.length;
                i2 -= bArr4.length;
            }
            if (i2 <= 0) {
                return;
            } else {
                System.arraycopy(bArr, length3, bArr2, this.f3619for, i2);
            }
        }
        this.f3619for += i2;
    }
}
