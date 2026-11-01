package net.lingala.zip4j.io.outputstream;

import android.support.v4.rj2;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: net.lingala.zip4j.io.outputstream.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private OutputStream f28171do;

    /* renamed from: if, reason: not valid java name */
    private long f28172if = 0;

    public Cnew(OutputStream outputStream) {
        this.f28171do = outputStream;
    }

    /* renamed from: case, reason: not valid java name */
    public long m31531case() {
        if (m31533else()) {
            return ((Celse) this.f28171do).m31524new();
        }
        return 0L;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28171do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m31532do(int i) throws rj2 {
        if (m31533else()) {
            return ((Celse) this.f28171do).m31519do(i);
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m31533else() {
        OutputStream outputStream = this.f28171do;
        return (outputStream instanceof Celse) && ((Celse) outputStream).m31520else();
    }

    /* renamed from: for, reason: not valid java name */
    public long m31534for() throws IOException {
        OutputStream outputStream = this.f28171do;
        return outputStream instanceof Celse ? ((Celse) outputStream).m31521for() : this.f28172if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m31535if() {
        if (m31533else()) {
            return ((Celse) this.f28171do).m31523if();
        }
        return 0;
    }

    /* renamed from: new, reason: not valid java name */
    public long m31536new() throws IOException {
        OutputStream outputStream = this.f28171do;
        return outputStream instanceof Celse ? ((Celse) outputStream).m31521for() : this.f28172if;
    }

    /* renamed from: try, reason: not valid java name */
    public long m31537try() throws IOException {
        OutputStream outputStream = this.f28171do;
        return outputStream instanceof Celse ? ((Celse) outputStream).m31521for() : this.f28172if;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f28171do.write(bArr, i, i2);
        this.f28172if += i2;
    }
}
