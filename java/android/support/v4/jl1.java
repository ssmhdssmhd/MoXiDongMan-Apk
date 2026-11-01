package android.support.v4;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* loaded from: classes3.dex */
public class jl1 {

    /* renamed from: do, reason: not valid java name */
    private byte[] f3142do = new byte[2];

    /* renamed from: if, reason: not valid java name */
    private byte[] f3144if = new byte[4];

    /* renamed from: for, reason: not valid java name */
    private byte[] f3143for = new byte[8];

    /* renamed from: do, reason: not valid java name */
    private void m3914do(InputStream inputStream, byte[] bArr, int i) throws IOException {
        if (inputStream.read(bArr, 0, i) != i) {
            throw new rj2("Could not fill buffer");
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m3915final(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public long m3916break(byte[] bArr, int i) {
        if (bArr.length < 8) {
            m3915final(this.f3143for);
        }
        System.arraycopy(bArr, i, this.f3143for, 0, bArr.length < 8 ? bArr.length : 8);
        byte[] bArr2 = this.f3143for;
        return ((((((((((((((0 | (bArr2[7] & 255)) << 8) | (bArr2[6] & 255)) << 8) | (bArr2[5] & 255)) << 8) | (bArr2[4] & 255)) << 8) | (bArr2[3] & 255)) << 8) | (bArr2[2] & 255)) << 8) | (bArr2[1] & 255)) << 8) | (bArr2[0] & 255);
    }

    /* renamed from: case, reason: not valid java name */
    public long m3917case(InputStream inputStream) throws IOException {
        byte[] bArr = this.f3143for;
        m3914do(inputStream, bArr, bArr.length);
        return m3916break(this.f3143for, 0);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m3918catch(InputStream inputStream) throws IOException {
        byte[] bArr = this.f3142do;
        m3914do(inputStream, bArr, bArr.length);
        return m3920const(this.f3142do, 0);
    }

    /* renamed from: class, reason: not valid java name */
    public int m3919class(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f3142do);
        return m3920const(this.f3142do, 0);
    }

    /* renamed from: const, reason: not valid java name */
    public int m3920const(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* renamed from: else, reason: not valid java name */
    public long m3921else(InputStream inputStream, int i) throws IOException {
        m3915final(this.f3143for);
        m3914do(inputStream, this.f3143for, i);
        return m3916break(this.f3143for, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public int m3922for(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f3144if);
        return m3927new(this.f3144if);
    }

    /* renamed from: goto, reason: not valid java name */
    public long m3923goto(RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.readFully(this.f3143for);
        return m3916break(this.f3143for, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public int m3924if(InputStream inputStream) throws IOException {
        m3914do(inputStream, this.f3144if, 4);
        return m3927new(this.f3144if);
    }

    /* renamed from: import, reason: not valid java name */
    public void m3925import(byte[] bArr, int i, long j) {
        bArr[i + 7] = (byte) (j >>> 56);
        bArr[i + 6] = (byte) (j >>> 48);
        bArr[i + 5] = (byte) (j >>> 40);
        bArr[i + 4] = (byte) (j >>> 32);
        bArr[i + 3] = (byte) (j >>> 24);
        bArr[i + 2] = (byte) (j >>> 16);
        bArr[i + 1] = (byte) (j >>> 8);
        bArr[i] = (byte) (j & 255);
    }

    /* renamed from: native, reason: not valid java name */
    public void m3926native(OutputStream outputStream, int i) throws IOException {
        m3928public(this.f3142do, 0, i);
        outputStream.write(this.f3142do);
    }

    /* renamed from: new, reason: not valid java name */
    public int m3927new(byte[] bArr) {
        return m3932try(bArr, 0);
    }

    /* renamed from: public, reason: not valid java name */
    public void m3928public(byte[] bArr, int i, int i2) {
        bArr[i + 1] = (byte) (i2 >>> 8);
        bArr[i] = (byte) (i2 & 255);
    }

    /* renamed from: super, reason: not valid java name */
    public void m3929super(OutputStream outputStream, int i) throws IOException {
        m3931throw(this.f3144if, 0, i);
        outputStream.write(this.f3144if);
    }

    /* renamed from: this, reason: not valid java name */
    public long m3930this(RandomAccessFile randomAccessFile, int i) throws IOException {
        m3915final(this.f3143for);
        randomAccessFile.readFully(this.f3143for, 0, i);
        return m3916break(this.f3143for, 0);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m3931throw(byte[] bArr, int i, int i2) {
        bArr[i + 3] = (byte) (i2 >>> 24);
        bArr[i + 2] = (byte) (i2 >>> 16);
        bArr[i + 1] = (byte) (i2 >>> 8);
        bArr[i] = (byte) (i2 & 255);
    }

    /* renamed from: try, reason: not valid java name */
    public int m3932try(byte[] bArr, int i) {
        return ((((bArr[i + 3] & 255) << 8) | (bArr[i + 2] & 255)) << 16) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    /* renamed from: while, reason: not valid java name */
    public void m3933while(OutputStream outputStream, long j) throws IOException {
        m3925import(this.f3143for, 0, j);
        outputStream.write(this.f3143for);
    }
}
