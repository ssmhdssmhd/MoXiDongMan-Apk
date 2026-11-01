package net.lingala.zip4j.crypto.PBKDF2;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: net.lingala.zip4j.crypto.PBKDF2.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements PRF {

    /* renamed from: do, reason: not valid java name */
    private Mac f28082do;

    /* renamed from: for, reason: not valid java name */
    private String f28083for;

    /* renamed from: if, reason: not valid java name */
    private int f28084if;

    public Cif(String str) throws NoSuchAlgorithmException {
        this.f28083for = str;
        try {
            Mac mac = Mac.getInstance(str);
            this.f28082do = mac;
            this.f28084if = mac.getMacLength();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m31432do() {
        return this.f28082do.doFinal();
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.PRF
    public byte[] doFinal(byte[] bArr) {
        return this.f28082do.doFinal(bArr);
    }

    /* renamed from: for, reason: not valid java name */
    public void m31433for(byte[] bArr, int i, int i2) throws IllegalStateException {
        try {
            this.f28082do.update(bArr, i, i2);
        } catch (IllegalStateException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.PRF
    public int getHLen() {
        return this.f28084if;
    }

    /* renamed from: if, reason: not valid java name */
    public void m31434if(byte[] bArr) throws IllegalStateException {
        try {
            this.f28082do.update(bArr);
        } catch (IllegalStateException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.PRF
    public void init(byte[] bArr) throws InvalidKeyException {
        try {
            this.f28082do.init(new SecretKeySpec(bArr, this.f28083for));
        } catch (InvalidKeyException e) {
            throw new RuntimeException(e);
        }
    }
}
