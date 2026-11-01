package net.lingala.zip4j.io.inputstream;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* renamed from: net.lingala.zip4j.io.inputstream.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cfor {

    /* renamed from: case, reason: not valid java name */
    private int f28137case;

    /* renamed from: for, reason: not valid java name */
    private Inflater f28138for;

    /* renamed from: new, reason: not valid java name */
    private byte[] f28139new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f28140try;

    public Cnew(Cif cif) {
        super(cif);
        this.f28140try = new byte[1];
        this.f28138for = new Inflater(true);
        this.f28139new = new byte[512];
    }

    /* renamed from: new, reason: not valid java name */
    private void m31478new() throws IOException {
        byte[] bArr = this.f28139new;
        int i = super.read(bArr, 0, bArr.length);
        this.f28137case = i;
        if (i == -1) {
            throw new EOFException("Unexpected end of ZLIB input stream");
        }
        this.f28138for.setInput(this.f28139new, 0, i);
    }

    @Override // net.lingala.zip4j.io.inputstream.Cfor, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() throws IOException {
        super.close();
    }

    @Override // net.lingala.zip4j.io.inputstream.Cfor
    /* renamed from: do */
    public /* bridge */ /* synthetic */ void mo31466do(InputStream inputStream) throws IOException {
        super.mo31466do(inputStream);
    }

    @Override // net.lingala.zip4j.io.inputstream.Cfor
    /* renamed from: for */
    public void mo31467for(PushbackInputStream pushbackInputStream) throws IOException {
        int remaining = this.f28138for.getRemaining();
        if (remaining > 0) {
            pushbackInputStream.unread(m31468if(), this.f28137case - remaining, remaining);
        }
    }

    @Override // net.lingala.zip4j.io.inputstream.Cfor, java.io.InputStream
    public int read() throws IOException {
        if (read(this.f28140try) == -1) {
            return -1;
        }
        return this.f28140try[0];
    }

    @Override // net.lingala.zip4j.io.inputstream.Cfor, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.inputstream.Cfor, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws DataFormatException, IOException {
        while (true) {
            try {
                int iInflate = this.f28138for.inflate(bArr, i, i2);
                if (iInflate != 0) {
                    return iInflate;
                }
                if (!this.f28138for.finished() && !this.f28138for.needsDictionary()) {
                    if (this.f28138for.needsInput()) {
                        m31478new();
                    }
                }
                return -1;
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
    }
}
