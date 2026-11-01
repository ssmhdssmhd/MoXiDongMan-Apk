package net.lingala.zip4j.crypto;

import android.support.v4.Celse;
import android.support.v4.rj2;
import android.support.v4.s91;
import android.support.v4.v0;
import android.support.v4.w0;
import java.security.InvalidKeyException;
import java.util.Random;
import net.lingala.zip4j.crypto.PBKDF2.Cfor;

/* renamed from: net.lingala.zip4j.crypto.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Encrypter {

    /* renamed from: class, reason: not valid java name */
    private static final int f28097class = 2;

    /* renamed from: break, reason: not valid java name */
    private byte[] f28098break;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f28100catch;

    /* renamed from: do, reason: not valid java name */
    private char[] f28101do;

    /* renamed from: for, reason: not valid java name */
    private Celse f28103for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f28104goto;

    /* renamed from: if, reason: not valid java name */
    private w0 f28105if;

    /* renamed from: new, reason: not valid java name */
    private net.lingala.zip4j.crypto.PBKDF2.Cif f28106new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f28107this;

    /* renamed from: try, reason: not valid java name */
    private boolean f28108try;

    /* renamed from: case, reason: not valid java name */
    private int f28099case = 1;

    /* renamed from: else, reason: not valid java name */
    private int f28102else = 0;

    public Cif(char[] cArr, w0 w0Var) throws InvalidKeyException, rj2 {
        if (cArr == null || cArr.length == 0) {
            throw new rj2("input password is empty or null");
        }
        if (w0Var != w0.KEY_STRENGTH_128 && w0Var != w0.KEY_STRENGTH_256) {
            throw new rj2("Invalid AES key strength");
        }
        this.f28101do = cArr;
        this.f28105if = w0Var;
        this.f28108try = false;
        this.f28107this = new byte[16];
        this.f28104goto = new byte[16];
        m31441case();
    }

    /* renamed from: case, reason: not valid java name */
    private void m31441case() throws InvalidKeyException, rj2 {
        int keyLength = this.f28105if.getKeyLength();
        int macLength = this.f28105if.getMacLength();
        byte[] bArrM31443if = m31443if(this.f28105if.getSaltLength());
        this.f28100catch = bArrM31443if;
        byte[] bArrM31442do = m31442do(bArrM31443if, this.f28101do, keyLength, macLength);
        if (bArrM31442do != null) {
            int i = keyLength + macLength;
            if (bArrM31442do.length == i + 2) {
                byte[] bArr = new byte[keyLength];
                byte[] bArr2 = new byte[macLength];
                this.f28098break = new byte[2];
                System.arraycopy(bArrM31442do, 0, bArr, 0, keyLength);
                System.arraycopy(bArrM31442do, keyLength, bArr2, 0, macLength);
                System.arraycopy(bArrM31442do, i, this.f28098break, 0, 2);
                this.f28103for = new Celse(bArr);
                net.lingala.zip4j.crypto.PBKDF2.Cif cif = new net.lingala.zip4j.crypto.PBKDF2.Cif("HmacSHA1");
                this.f28106new = cif;
                cif.init(bArr2);
                return;
            }
        }
        throw new rj2("invalid key generated, cannot decrypt file");
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m31442do(byte[] bArr, char[] cArr, int i, int i2) throws rj2 {
        try {
            return new Cfor(new s91("HmacSHA1", "ISO-8859-1", bArr, 1000)).m31429else(cArr, i + i2 + 2);
        } catch (Exception e) {
            throw new rj2(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static byte[] m31443if(int i) throws rj2 {
        if (i != 8 && i != 16) {
            throw new rj2("invalid salt size, cannot generate salt");
        }
        int i2 = i == 8 ? 2 : 0;
        if (i == 16) {
            i2 = 4;
        }
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i2; i3++) {
            int iNextInt = new Random().nextInt();
            int i4 = i3 * 4;
            bArr[i4 + 0] = (byte) (iNextInt >> 24);
            bArr[i4 + 1] = (byte) (iNextInt >> 16);
            bArr[i4 + 2] = (byte) (iNextInt >> 8);
            bArr[i4 + 3] = (byte) iNextInt;
        }
        return bArr;
    }

    @Override // net.lingala.zip4j.crypto.Encrypter
    public int encryptData(byte[] bArr) throws rj2 {
        if (bArr != null) {
            return encryptData(bArr, 0, bArr.length);
        }
        throw new rj2("input bytes are null, cannot perform AES encrpytion");
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m31444for() {
        return this.f28098break;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m31445new() {
        byte[] bArr = new byte[10];
        System.arraycopy(this.f28106new.m31432do(), 0, bArr, 0, 10);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m31446try() {
        return this.f28100catch;
    }

    @Override // net.lingala.zip4j.crypto.Encrypter
    public int encryptData(byte[] bArr, int i, int i2) throws IllegalStateException, rj2 {
        int i3;
        if (!this.f28108try) {
            if (i2 % 16 != 0) {
                this.f28108try = true;
            }
            int i4 = i;
            while (true) {
                int i5 = i + i2;
                if (i4 >= i5) {
                    return i2;
                }
                int i6 = i4 + 16;
                this.f28102else = i6 <= i5 ? 16 : i5 - i4;
                v0.m8706do(this.f28104goto, this.f28099case);
                this.f28103for.m1956try(this.f28104goto, this.f28107this);
                int i7 = 0;
                while (true) {
                    i3 = this.f28102else;
                    if (i7 < i3) {
                        int i8 = i4 + i7;
                        bArr[i8] = (byte) (bArr[i8] ^ this.f28107this[i7]);
                        i7++;
                    }
                }
                this.f28106new.m31433for(bArr, i4, i3);
                this.f28099case++;
                i4 = i6;
            }
        } else {
            throw new rj2("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
    }
}
