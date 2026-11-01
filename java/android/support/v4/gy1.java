package android.support.v4;

import java.io.IOException;
import java.security.SignatureException;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class gy1 extends fy1 {
    @Override // android.support.v4.fy1, java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        byte[] bArrMo5490const = Cclass.m32796catch(super.engineSign()).mo5490const();
        m2827if(bArrMo5490const);
        try {
            return new org.bouncycastle.asn1.j(bArrMo5490const).getEncoded();
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // android.support.v4.fy1, java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        try {
            byte[] bArrMo5490const = ((Cclass) Cfinal.m33015else(bArr)).mo5490const();
            m2827if(bArrMo5490const);
            try {
                return super.engineVerify(new org.bouncycastle.asn1.j(bArrMo5490const).getEncoded());
            } catch (SignatureException e) {
                throw e;
            } catch (Exception e2) {
                throw new SignatureException(e2.toString());
            }
        } catch (IOException unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m2827if(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
    }
}
