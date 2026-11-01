package net.lingala.zip4j.crypto;

import android.support.v4.qj2;
import android.support.v4.rj2;
import android.support.v4.t3;

/* renamed from: net.lingala.zip4j.crypto.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements Decrypter {

    /* renamed from: do, reason: not valid java name */
    private char[] f28093do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f28095if;

    /* renamed from: for, reason: not valid java name */
    private byte[] f28094for = new byte[4];

    /* renamed from: new, reason: not valid java name */
    private qj2 f28096new = new qj2();

    public Cfor(char[] cArr, byte[] bArr, byte[] bArr2) throws rj2 {
        this.f28093do = cArr;
        this.f28095if = bArr;
        m31440do(bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    private void m31440do(byte[] bArr) throws rj2 {
        byte[] bArr2 = this.f28094for;
        byte[] bArr3 = this.f28095if;
        bArr2[3] = (byte) (bArr3[3] & 255);
        bArr2[2] = (byte) ((bArr3[3] >> 8) & 255);
        bArr2[1] = (byte) ((bArr3[3] >> 16) & 255);
        int i = 0;
        bArr2[0] = (byte) ((bArr3[3] >> t3.f6397package) & 255);
        if (bArr2[2] > 0 || bArr2[1] > 0 || bArr2[0] > 0) {
            throw new IllegalStateException("Invalid CRC in File Header");
        }
        char[] cArr = this.f28093do;
        if (cArr == null || cArr.length <= 0) {
            throw new rj2("Wrong password!", rj2.Cdo.WRONG_PASSWORD);
        }
        this.f28096new.m6607for(cArr);
        byte b = bArr[0];
        while (i < 12) {
            qj2 qj2Var = this.f28096new;
            qj2Var.m6609new((byte) (qj2Var.m6608if() ^ b));
            i++;
            if (i != 12) {
                b = bArr[i];
            }
        }
    }

    @Override // net.lingala.zip4j.crypto.Decrypter
    public int decryptData(byte[] bArr, int i, int i2) throws rj2 {
        if (i < 0 || i2 < 0) {
            throw new rj2("one of the input parameters were null in standard decrypt data");
        }
        for (int i3 = i; i3 < i + i2; i3++) {
            byte bM6608if = (byte) (((bArr[i3] & 255) ^ this.f28096new.m6608if()) & 255);
            this.f28096new.m6609new(bM6608if);
            bArr[i3] = bM6608if;
        }
        return i2;
    }
}
