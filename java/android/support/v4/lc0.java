package android.support.v4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class lc0 extends SecureRandom {
    private byte[] _data;
    private int _index;
    private int _intPad;

    public lc0(boolean z, byte[] bArr) {
        this(z, new byte[][]{bArr});
    }

    public lc0(boolean z, byte[][] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != bArr.length; i++) {
            try {
                byteArrayOutputStream.write(bArr[i]);
            } catch (IOException unused) {
                throw new IllegalArgumentException("can't save value array.");
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this._data = byteArray;
        if (z) {
            this._intPad = byteArray.length % 4;
        }
    }

    public lc0(byte[] bArr) {
        this(false, new byte[][]{bArr});
    }

    public lc0(byte[][] bArr) {
        this(false, bArr);
    }

    /* renamed from: do, reason: not valid java name */
    private int m4636do() {
        byte[] bArr = this._data;
        int i = this._index;
        this._index = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i) {
        byte[] bArr = new byte[i];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        int iM4636do = (m4636do() << 24) | 0 | (m4636do() << 16);
        int i = this._intPad;
        if (i == 2) {
            this._intPad = i - 1;
        } else {
            iM4636do |= m4636do() << 8;
        }
        int i2 = this._intPad;
        if (i2 != 1) {
            return iM4636do | m4636do();
        }
        this._intPad = i2 - 1;
        return iM4636do;
    }

    @Override // java.util.Random
    public long nextLong() {
        return (m4636do() << 56) | 0 | (m4636do() << 48) | (m4636do() << 40) | (m4636do() << 32) | (m4636do() << 24) | (m4636do() << 16) | (m4636do() << 8) | m4636do();
    }
}
