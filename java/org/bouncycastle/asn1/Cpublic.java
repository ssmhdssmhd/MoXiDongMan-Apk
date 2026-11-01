package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import android.support.v4.Creturn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic extends Cdo {
    public Cpublic(int i, Cimport cimport) {
        super(true, i, m33109import(cimport));
    }

    public Cpublic(int i, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i, aSN1Encodable);
    }

    public Cpublic(boolean z, int i, ASN1Encodable aSN1Encodable) throws IOException {
        super(z || aSN1Encodable.toASN1Primitive().mo32749goto(), i, m33110native(z, aSN1Encodable));
    }

    public Cpublic(boolean z, int i, byte[] bArr) {
        super(z, i, bArr);
    }

    /* renamed from: import, reason: not valid java name */
    private static byte[] m33109import(Cimport cimport) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != cimport.m3519new(); i++) {
            try {
                byteArrayOutputStream.write(((Cbreak) cimport.m3517for(i)).m32764do(ASN1Encoding.BER));
            } catch (IOException e) {
                throw new Creturn("malformed object: " + e, e);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: native, reason: not valid java name */
    private static byte[] m33110native(boolean z, ASN1Encodable aSN1Encodable) throws IOException {
        byte[] bArrM32764do = aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.BER);
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
        cconst.m32904final(this.f28989do ? 96 : 64, this.f28991if);
        cconst.mo32910try(128);
        cconst.m32899case(this.f28990for);
        cconst.mo32910try(0);
        cconst.mo32910try(0);
    }
}
