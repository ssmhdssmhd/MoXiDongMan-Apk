package net.lingala.zip4j.crypto;

import android.support.v4.qj2;
import android.support.v4.rj2;
import java.util.Objects;
import java.util.Random;

/* renamed from: net.lingala.zip4j.crypto.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements Encrypter {

    /* renamed from: do, reason: not valid java name */
    private qj2 f28109do = new qj2();

    /* renamed from: if, reason: not valid java name */
    private byte[] f28110if = new byte[12];

    public Cnew(char[] cArr, long j) throws rj2 {
        m31447new(cArr, j);
    }

    /* renamed from: new, reason: not valid java name */
    private void m31447new(char[] cArr, long j) throws rj2 {
        if (cArr == null || cArr.length <= 0) {
            throw new rj2("input password is null or empty, cannot initialize standard encrypter");
        }
        this.f28109do.m6607for(cArr);
        this.f28110if = m31450if(12);
        this.f28109do.m6607for(cArr);
        byte[] bArr = this.f28110if;
        bArr[11] = (byte) (j >>> 24);
        bArr[10] = (byte) (j >>> 16);
        if (bArr.length < 12) {
            throw new rj2("invalid header bytes generated, cannot perform standard encryption");
        }
        encryptData(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte m31448do(byte b) {
        byte bM6608if = (byte) ((this.f28109do.m6608if() & 255) ^ b);
        this.f28109do.m6609new(b);
        return bM6608if;
    }

    @Override // net.lingala.zip4j.crypto.Encrypter
    public int encryptData(byte[] bArr) throws rj2 {
        Objects.requireNonNull(bArr);
        return encryptData(bArr, 0, bArr.length);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m31449for() {
        return this.f28110if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m31450if(int i) throws rj2 {
        if (i <= 0) {
            throw new rj2("size is either 0 or less than 0, cannot generate header for standard encryptor");
        }
        byte[] bArr = new byte[i];
        Random random = new Random();
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = m31448do((byte) random.nextInt(256));
        }
        return bArr;
    }

    @Override // net.lingala.zip4j.crypto.Encrypter
    public int encryptData(byte[] bArr, int i, int i2) throws rj2 {
        if (i2 < 0) {
            throw new rj2("invalid length specified to decrpyt data");
        }
        for (int i3 = i; i3 < i + i2; i3++) {
            bArr[i3] = m31448do(bArr[i3]);
        }
        return i2;
    }
}
