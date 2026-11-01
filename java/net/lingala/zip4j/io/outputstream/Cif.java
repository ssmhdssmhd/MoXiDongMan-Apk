package net.lingala.zip4j.io.outputstream;

import android.support.v4.sk2;
import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.crypto.Encrypter;

/* renamed from: net.lingala.zip4j.io.outputstream.if, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cif<T extends Encrypter> extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private Cthis f28169do;

    /* renamed from: if, reason: not valid java name */
    private T f28170if;

    public Cif(Cthis cthis, sk2 sk2Var, char[] cArr) throws IOException {
        this.f28169do = cthis;
        this.f28170if = (T) mo31510new(cthis, sk2Var, cArr);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28169do.close();
    }

    /* renamed from: do */
    public void mo31515do() throws IOException {
        this.f28169do.m31538do();
    }

    /* renamed from: for, reason: not valid java name */
    public long m31528for() {
        return this.f28169do.m31539if();
    }

    /* renamed from: if, reason: not valid java name */
    public T m31529if() {
        return this.f28170if;
    }

    /* renamed from: new */
    public abstract T mo31510new(OutputStream outputStream, sk2 sk2Var, char[] cArr) throws IOException;

    /* renamed from: try, reason: not valid java name */
    public void m31530try(byte[] bArr) throws IOException {
        this.f28169do.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f28169do.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f28169do.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f28170if.encryptData(bArr, i, i2);
        this.f28169do.write(bArr, i, i2);
    }
}
