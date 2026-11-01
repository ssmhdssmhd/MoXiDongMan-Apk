package org.bouncycastle.asn1.x509;

import java.io.IOException;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.m;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.asn1.x509.this, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthis {
    /* renamed from: do, reason: not valid java name */
    public boolean m33289do(String str) {
        return m.m33080final(str);
    }

    /* renamed from: for */
    public abstract Cfinal mo1338for(Ccatch ccatch, String str);

    /* renamed from: if, reason: not valid java name */
    public Cfinal m33290if(String str, int i) throws IOException {
        String strM36349break = Cfor.m36349break(str);
        int length = (strM36349break.length() - i) / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            int i3 = (i2 * 2) + i;
            char cCharAt = strM36349break.charAt(i3);
            char cCharAt2 = strM36349break.charAt(i3 + 1);
            if (cCharAt < 'a') {
                bArr[i2] = (byte) ((cCharAt - '0') << 4);
            } else {
                bArr[i2] = (byte) (((cCharAt - 'a') + 10) << 4);
            }
            if (cCharAt2 < 'a') {
                bArr[i2] = (byte) (((byte) (cCharAt2 - '0')) | bArr[i2]);
            } else {
                bArr[i2] = (byte) (((byte) ((cCharAt2 - 'a') + 10)) | bArr[i2]);
            }
        }
        return new Celse(bArr).m33002break();
    }
}
