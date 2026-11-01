package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import android.support.v4.Creturn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public class z extends Cdo {
    public z(int i, Cimport cimport) {
        super(true, i, m33307import(cimport));
    }

    public z(int i, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i, aSN1Encodable);
    }

    public z(int i, byte[] bArr) {
        this(false, i, bArr);
    }

    public z(boolean z, int i, ASN1Encodable aSN1Encodable) throws IOException {
        super(z || aSN1Encodable.toASN1Primitive().mo32749goto(), i, m33308native(z, aSN1Encodable));
    }

    public z(boolean z, int i, byte[] bArr) {
        super(z, i, bArr);
    }

    /* renamed from: import, reason: not valid java name */
    private static byte[] m33307import(Cimport cimport) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != cimport.m3519new(); i++) {
            try {
                byteArrayOutputStream.write(((Cbreak) cimport.m3517for(i)).m32764do(ASN1Encoding.DL));
            } catch (IOException e) {
                throw new Creturn("malformed object: " + e, e);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: native, reason: not valid java name */
    private static byte[] m33308native(boolean z, ASN1Encodable aSN1Encodable) throws IOException {
        byte[] bArrM32764do = aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DL);
        if (z) {
            return bArrM32764do;
        }
        int iM32916final = Cdo.m32916final(bArrM32764do);
        int length = bArrM32764do.length - iM32916final;
        byte[] bArr = new byte[length];
        System.arraycopy(bArrM32764do, iM32916final, bArr, 0, length);
        return bArr;
    }

    @Override // org.bouncycastle.asn1.Cdo, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32906goto(this.f28989do ? 96 : 64, this.f28991if, this.f28990for);
    }
}
