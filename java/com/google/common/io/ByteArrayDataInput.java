package com.google.common.io;

import android.support.v4.lf;
import android.support.v4.li0;
import java.io.DataInput;

@li0
/* loaded from: classes2.dex */
public interface ByteArrayDataInput extends DataInput {
    @Override // java.io.DataInput
    @lf
    boolean readBoolean();

    @Override // java.io.DataInput
    @lf
    byte readByte();

    @Override // java.io.DataInput
    @lf
    char readChar();

    @Override // java.io.DataInput
    @lf
    double readDouble();

    @Override // java.io.DataInput
    @lf
    float readFloat();

    @Override // java.io.DataInput
    void readFully(byte[] bArr);

    @Override // java.io.DataInput
    void readFully(byte[] bArr, int i, int i2);

    @Override // java.io.DataInput
    @lf
    int readInt();

    @Override // java.io.DataInput
    @lf
    String readLine();

    @Override // java.io.DataInput
    @lf
    long readLong();

    @Override // java.io.DataInput
    @lf
    short readShort();

    @Override // java.io.DataInput
    @lf
    String readUTF();

    @Override // java.io.DataInput
    @lf
    int readUnsignedByte();

    @Override // java.io.DataInput
    @lf
    int readUnsignedShort();

    @Override // java.io.DataInput
    int skipBytes(int i);
}
