package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Date;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class d extends Ccase {
    public d(String str) {
        super(str);
    }

    public d(Date date) {
        super(date);
    }

    public d(byte[] bArr) {
        super(bArr);
    }

    /* renamed from: static, reason: not valid java name */
    private byte[] m32911static() {
        byte[] bArr = this.f28908do;
        if (bArr[bArr.length - 1] != 90) {
            return bArr;
        }
        if (!m32778native()) {
            byte[] bArr2 = this.f28908do;
            byte[] bArr3 = new byte[bArr2.length + 4];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length - 1);
            System.arraycopy(Cfor.m36358goto("0000Z"), 0, bArr3, this.f28908do.length - 1, 5);
            return bArr3;
        }
        if (!m32779public()) {
            byte[] bArr4 = this.f28908do;
            byte[] bArr5 = new byte[bArr4.length + 2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 1);
            System.arraycopy(Cfor.m36358goto("00Z"), 0, bArr5, this.f28908do.length - 1, 3);
            return bArr5;
        }
        if (!m32777import()) {
            return this.f28908do;
        }
        int length = this.f28908do.length - 2;
        while (length > 0 && this.f28908do[length] == 48) {
            length--;
        }
        byte[] bArr6 = this.f28908do;
        if (bArr6[length] == 46) {
            byte[] bArr7 = new byte[length + 1];
            System.arraycopy(bArr6, 0, bArr7, 0, length);
            bArr7[length] = 90;
            return bArr7;
        }
        byte[] bArr8 = new byte[length + 2];
        int i = length + 1;
        System.arraycopy(bArr6, 0, bArr8, 0, i);
        bArr8[i] = 90;
        return bArr8;
    }

    @Override // org.bouncycastle.asn1.Ccase, org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        int length = m32911static().length;
        return m0.m33082do(length) + 1 + length;
    }

    @Override // org.bouncycastle.asn1.Ccase, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(24, m32911static());
    }
}
