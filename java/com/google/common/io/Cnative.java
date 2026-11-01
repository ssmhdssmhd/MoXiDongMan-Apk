package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.primitives.Cbreak;
import com.google.common.primitives.Cthis;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

@li0
@o8
/* renamed from: com.google.common.io.native, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnative extends FilterInputStream implements DataInput {
    public Cnative(InputStream inputStream) {
        super((InputStream) af1.m205continue(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    private byte m17076do() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (-1 != i) {
            return (byte) i;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    @lf
    public boolean readBoolean() throws IOException {
        return readUnsignedByte() != 0;
    }

    @Override // java.io.DataInput
    @lf
    public byte readByte() throws IOException {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    @lf
    public char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    @lf
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    @lf
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        Ctry.m17189throw(this, bArr);
    }

    @Override // java.io.DataInput
    @lf
    public int readInt() throws IOException {
        byte bM17076do = m17076do();
        byte bM17076do2 = m17076do();
        return Cthis.m17679catch(m17076do(), m17076do(), bM17076do2, bM17076do);
    }

    @Override // java.io.DataInput
    @lf
    public String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override // java.io.DataInput
    @lf
    public long readLong() throws IOException {
        byte bM17076do = m17076do();
        byte bM17076do2 = m17076do();
        byte bM17076do3 = m17076do();
        byte bM17076do4 = m17076do();
        byte bM17076do5 = m17076do();
        byte bM17076do6 = m17076do();
        return Cbreak.m17466break(m17076do(), m17076do(), bM17076do6, bM17076do5, bM17076do4, bM17076do3, bM17076do2, bM17076do);
    }

    @Override // java.io.DataInput
    @lf
    public short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    @lf
    public String readUTF() throws IOException {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    @lf
    public int readUnsignedByte() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i >= 0) {
            return i;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    @lf
    public int readUnsignedShort() throws IOException {
        return Cthis.m17679catch((byte) 0, (byte) 0, m17076do(), m17076do());
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) throws IOException {
        return (int) ((FilterInputStream) this).in.skip(i);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        Ctry.m17191while(this, bArr, i, i2);
    }
}
