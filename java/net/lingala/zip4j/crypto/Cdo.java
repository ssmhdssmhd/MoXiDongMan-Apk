package net.lingala.zip4j.crypto;

import android.support.v4.Celse;
import android.support.v4.Cgoto;
import android.support.v4.rj2;
import android.support.v4.s91;
import android.support.v4.v0;
import android.support.v4.w0;
import java.security.InvalidKeyException;
import java.util.Arrays;
import net.lingala.zip4j.crypto.PBKDF2.Cfor;
import net.lingala.zip4j.crypto.PBKDF2.Cif;

/* renamed from: net.lingala.zip4j.crypto.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements Decrypter {

    /* renamed from: goto, reason: not valid java name */
    public static final int f28085goto = 2;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f28087do;

    /* renamed from: for, reason: not valid java name */
    private Celse f28089for;

    /* renamed from: if, reason: not valid java name */
    private char[] f28090if;

    /* renamed from: new, reason: not valid java name */
    private Cif f28091new;

    /* renamed from: try, reason: not valid java name */
    private int f28092try = 1;

    /* renamed from: case, reason: not valid java name */
    private byte[] f28086case = new byte[16];

    /* renamed from: else, reason: not valid java name */
    private byte[] f28088else = new byte[16];

    public Cdo(Cgoto cgoto, char[] cArr, byte[] bArr, byte[] bArr2) throws InvalidKeyException, rj2 {
        this.f28087do = cgoto;
        this.f28090if = cArr;
        m31438for(bArr, bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m31437do(byte[] bArr, char[] cArr, int i, int i2) {
        return new Cfor(new s91("HmacSHA1", "ISO-8859-1", bArr, 1000)).m31429else(cArr, i + i2 + 2);
    }

    /* renamed from: for, reason: not valid java name */
    private void m31438for(byte[] bArr, byte[] bArr2) throws InvalidKeyException, rj2 {
        w0 w0VarM2758for = this.f28087do.m2758for();
        char[] cArr = this.f28090if;
        if (cArr == null || cArr.length <= 0) {
            throw new rj2("empty or null password provided for AES Decryptor");
        }
        byte[] bArrM31437do = m31437do(bArr, cArr, w0VarM2758for.getKeyLength(), w0VarM2758for.getMacLength());
        if (bArrM31437do == null || bArrM31437do.length != w0VarM2758for.getKeyLength() + w0VarM2758for.getMacLength() + 2) {
            throw new rj2("invalid derived key");
        }
        byte[] bArr3 = new byte[w0VarM2758for.getKeyLength()];
        byte[] bArr4 = new byte[w0VarM2758for.getMacLength()];
        byte[] bArr5 = new byte[2];
        System.arraycopy(bArrM31437do, 0, bArr3, 0, w0VarM2758for.getKeyLength());
        System.arraycopy(bArrM31437do, w0VarM2758for.getKeyLength(), bArr4, 0, w0VarM2758for.getMacLength());
        System.arraycopy(bArrM31437do, w0VarM2758for.getKeyLength() + w0VarM2758for.getMacLength(), bArr5, 0, 2);
        if (!Arrays.equals(bArr2, bArr5)) {
            throw new rj2("Wrong Password", rj2.Cdo.WRONG_PASSWORD);
        }
        this.f28089for = new Celse(bArr3);
        Cif cif = new Cif("HmacSHA1");
        this.f28091new = cif;
        cif.init(bArr4);
    }

    @Override // net.lingala.zip4j.crypto.Decrypter
    public int decryptData(byte[] bArr, int i, int i2) throws IllegalStateException, rj2 {
        int i3 = i;
        while (true) {
            int i4 = i + i2;
            if (i3 >= i4) {
                return i2;
            }
            int i5 = i3 + 16;
            int i6 = i5 <= i4 ? 16 : i4 - i3;
            this.f28091new.m31433for(bArr, i3, i6);
            v0.m8706do(this.f28086case, this.f28092try);
            this.f28089for.m1956try(this.f28086case, this.f28088else);
            for (int i7 = 0; i7 < i6; i7++) {
                int i8 = i3 + i7;
                bArr[i8] = (byte) (bArr[i8] ^ this.f28088else[i7]);
            }
            this.f28092try++;
            i3 = i5;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m31439if() {
        return this.f28091new.m31432do();
    }
}
